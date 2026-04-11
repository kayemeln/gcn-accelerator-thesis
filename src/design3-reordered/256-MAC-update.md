Let's walk through it from first principles. The goal is to issue 256 multiply-accumulates **every clock cycle**, and there are three independent things the HLS tool needs in order to generate that hardware.

## 1. The loop structure — where the parallelism comes from

Before:
```cpp
for (int i = 0; i < M; i++) {          // 64 iterations, pipelined II=1
#pragma HLS PIPELINE II=1
    DTYPE A_temp = A_line[i];
    for (int j = 0; j < M; j++) {       // 64 iterations, unrolled
#pragma HLS UNROLL
        AB_block[i][j] += A_temp * B_line[j];
    }
}
```

The `j` loop being fully unrolled means the synthesiser replaces those 64 iterations with **64 physical multiplier-adder units in parallel**. The `i` loop being pipelined with `II=1` means one new `i` iteration starts every clock. So each cycle:

- 1 value of `i` is "in flight"
- 64 parallel `j` multiplies happen for that `i`
- = **64 MACs/cycle**

That's where the old ~9.65 GOPS came from (64 × 2 ops × ~300 MHz ≈ 38 GOPS ceiling, with overhead eating the rest).

After:
```cpp
for (int i_outer = 0; i_outer < MI; i_outer += UI) {   // 16 iterations, pipelined II=1
#pragma HLS PIPELINE II=1
    for (int iu = 0; iu < UI; iu++) {                   // 4 iterations, UNROLLED
#pragma HLS UNROLL
        DTYPE A_temp = A_line[i_outer + iu];
        for (int j = 0; j < MJ; j++) {                  // 64 iterations, UNROLLED
#pragma HLS UNROLL
            AB_block[i_outer + iu][j] += A_temp * B_line[j];
        }
    }
}
```

The `i_outer` loop steps by `UI=4` and still pipelines `II=1`. The `iu` loop is fully unrolled **and nested inside** the `j` unroll. When a loop is unrolled, its body gets duplicated in silicon — and if there's another unrolled loop inside, those duplicates get duplicated too. So the innermost statement
```
AB_block[i_outer + iu][j] += A_temp * B_line[j];
```
is instantiated `UI × MJ = 4 × 64 = 256` times as physical hardware. With `II=1` pipelining on the outer loop, a new `i_outer` enters the pipe every clock, and one cycle's worth of work is those 256 MACs. That's the 256 number.

The total compute cycles per `(kb, k)` dropped from 64 to 16 — that's the ~4× speedup in the compute phase.

## 2. Why the memory partitions matter

This is the non-obvious part. **Unrolling loops alone doesn't give you parallelism** — if the 256 duplicated MAC units all try to read/write the same memory in the same cycle, the HLS tool will serialise them and silently raise your II. The partitions tell HLS how to split the arrays across independent memory banks so every parallel access gets its own port.

For the MAC inner body, in a single cycle, we need to do 256 simultaneous accesses to `AB_block`:
```
AB_block[i_outer + 0][0], AB_block[i_outer + 0][1], ..., AB_block[i_outer + 0][63]   (row 0 of tile: 64 reads + 64 writes)
AB_block[i_outer + 1][0], AB_block[i_outer + 1][1], ..., AB_block[i_outer + 1][63]   (row 1 of tile)
AB_block[i_outer + 2][0], ...                                                         (row 2 of tile)
AB_block[i_outer + 3][0], ...                                                         (row 3 of tile)
```
Four different rows, sixty-four different columns each.

The partition pragmas:
```cpp
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=AB_block
#pragma HLS ARRAY_PARTITION dim=1 type=cyclic  factor=UI variable=AB_block
```

- **`dim=2 type=complete`**: "explode the second dimension entirely." Every column `j ∈ [0..63]` becomes its own BRAM/register file. So the 64 different `j` values in one cycle go to 64 different memories and never conflict with each other. This alone handles the `j`-axis unroll.

- **`dim=1 type=cyclic factor=UI`**: "split the first dimension into 4 interleaved banks." Bank 0 holds rows `{0, 4, 8, 12, …}`, bank 1 holds `{1, 5, 9, 13, …}`, bank 2 holds `{2, 6, 10, 14, …}`, bank 3 holds `{3, 7, 11, 15, …}`. Because `i_outer` steps by 4 and `iu ∈ {0, 1, 2, 3}`, the four simultaneously-touched rows are **always one from each bank**. No collision.

Combine the two partitions and `AB_block` physically becomes a `UI × MJ = 4 × 64 = 256` grid of tiny independent storages, each with its own read port and write port. Every one of the 256 unrolled MACs talks to its own dedicated memory, so the whole inner body really can happen in one clock.

I also need `A_line` and `B_line` fully partitioned (`type=complete`) for the same reason — the 256-MAC body reads 4 different `A_line` entries and 64 different `B_line` entries simultaneously:
```cpp
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=B_line
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=A_line
```
Both turn into fully-parallel register files.

## 3. Why `UI=4` and not bigger

Three pressures:

1. **It has to divide MI cleanly.** `MI=64`, and `UI ∈ {2, 4, 8, 16, …}` all work arithmetically.
2. **DSP budget.** 256 DSPs out of 1248 on the xck26 — comfortable. `UI=8` → 512 DSPs, still fits; `UI=16` → 1024, pushing the limit.
3. **Routing / fan-out.** Every extra doubling of `UI` doubles the wires fanning out of `A_line` and the accumulator banks, which can hurt the achievable clock frequency. 4 is a sweet spot that usually routes cleanly; 8 is worth trying; 16 often trades Fmax for DSP count and you lose the win.

## Putting it all together

| Effect | Source |
|---|---|
| 256 parallel multipliers exist in silicon | nested `UNROLL` on `iu` and `j` |
| All 256 run in the same cycle | `PIPELINE II=1` on `i_outer` |
| No memory port contention | 2D partition on `AB_block`, complete partition on `A_line`/`B_line` |
| A/B data arrives in time | earlier dataflow + wide-vector loads |

Drop any one of those and the II goes up or the unroll collapses, and you're back to 64 or fewer MACs per cycle. All four conditions are load-bearing.

(no content)
