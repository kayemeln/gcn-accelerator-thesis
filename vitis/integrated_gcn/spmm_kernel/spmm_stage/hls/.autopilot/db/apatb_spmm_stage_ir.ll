; ModuleID = '/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/vitis/integrated_gcn/spmm_kernel/spmm_stage/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6>" = type { %"struct.ap_fixed_base<16, 6>" }
%"struct.ap_fixed_base<16, 6>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::vector<ap_fixed<16, 6>, 32>" = type { %"struct.std::array<ap_fixed<16, 6>, 32>" }
%"struct.std::array<ap_fixed<16, 6>, 32>" = type { [32 x %"struct.ap_fixed<16, 6>"] }

; Function Attrs: noinline willreturn
define void @apatb_spmm_stage_ir(i32* noalias nocapture nonnull readonly "maxi" %row_length, i32* noalias nocapture nonnull readonly "maxi" %colind, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly "maxi" %values, %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias nocapture nonnull readonly align 64 "maxi" %H_temp, i32 %nnz_total, %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias nocapture nonnull align 64 "maxi" %H_out) local_unnamed_addr #0 {
entry:
  %row_length_copy = alloca i32, align 512
  %colind_copy = alloca i32, align 512
  %values_copy = alloca i16, align 512
  %H_temp_copy = alloca i512, align 512
  %H_out_copy = alloca i512, align 512
  call fastcc void @copy_in(i32* nonnull %row_length, i32* nonnull align 512 %row_length_copy, i32* nonnull %colind, i32* nonnull align 512 %colind_copy, %"struct.ap_fixed<16, 6>"* nonnull %values, i16* nonnull align 512 %values_copy, %"class.hls::vector<ap_fixed<16, 6>, 32>"* nonnull align 64 %H_temp, i512* nonnull align 512 %H_temp_copy, %"class.hls::vector<ap_fixed<16, 6>, 32>"* nonnull align 64 %H_out, i512* nonnull align 512 %H_out_copy)
  call void @apatb_spmm_stage_hw(i32* %row_length_copy, i32* %colind_copy, i16* %values_copy, i512* %H_temp_copy, i32 %nnz_total, i512* %H_out_copy)
  call void @copy_back(i32* %row_length, i32* %row_length_copy, i32* %colind, i32* %colind_copy, %"struct.ap_fixed<16, 6>"* %values, i16* %values_copy, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %H_temp, i512* %H_temp_copy, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %H_out, i512* %H_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(i32* noalias readonly "unpacked"="0", i32* noalias align 512 "unpacked"="1", i32* noalias readonly "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias readonly align 64 "unpacked"="6", i512* noalias align 512 "unpacked"="7", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias readonly align 64 "unpacked"="8", i512* noalias align 512 "unpacked"="9") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %5, %"struct.ap_fixed<16, 6>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>"(i512* align 512 %7, %"class.hls::vector<ap_fixed<16, 6>, 32>"* align 64 %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>"(i512* align 512 %9, %"class.hls::vector<ap_fixed<16, 6>, 32>"* align 64 %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<16, 6>", %"struct.ap_fixed<16, 6>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias align 64 "unpacked"="6", i512* noalias readonly align 512 "unpacked"="7", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias align 64 "unpacked"="8", i512* noalias readonly align 512 "unpacked"="9") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.12"(%"struct.ap_fixed<16, 6>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>.29"(%"class.hls::vector<ap_fixed<16, 6>, 32>"* align 64 %6, i512* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>.29"(%"class.hls::vector<ap_fixed<16, 6>, 32>"* align 64 %8, i512* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.12"(%"struct.ap_fixed<16, 6>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<16, 6>", %"struct.ap_fixed<16, 6>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>"(i512* noalias align 64 %dst, %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias readonly align 64 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i512* %dst, null
  %1 = icmp eq %"class.hls::vector<ap_fixed<16, 6>, 32>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.01 = getelementptr %"class.hls::vector<ap_fixed<16, 6>, 32>", %"class.hls::vector<ap_fixed<16, 6>, 32>"* %src, i64 0, i32 0, i32 0
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6>.23"(i512* nonnull %dst, i64 0, [32 x %"struct.ap_fixed<16, 6>"]* %src.0.01, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6>.23"(i512* %dst, i64 %dst_idx, [32 x %"struct.ap_fixed<16, 6>"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6>"]* %src, null
  %1 = icmp eq i512* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<16, 6>"], [32 x %"struct.ap_fixed<16, 6>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = mul i64 16, %for.loop.idx8
  %4 = add i64 %dst_idx, %3
  %5 = load i16, i16* %src.addr.0.0.05, align 2
  %6 = load i512, i512* %dst, align 2
  %7 = zext i64 %4 to i512
  %8 = shl i512 65535, %7
  %9 = zext i16 %5 to i512
  %10 = shl i512 %9, %7
  %thr.xor1 = xor i512 %8, -1
  %thr.and2 = and i512 %6, %thr.xor1
  %thr.or3 = or i512 %10, %thr.and2
  store i512 %thr.or3, i512* %dst, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>.29"(%"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias align 64 %dst, i512* noalias readonly align 64 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::vector<ap_fixed<16, 6>, 32>"* %dst, null
  %1 = icmp eq i512* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.02 = getelementptr %"class.hls::vector<ap_fixed<16, 6>, 32>", %"class.hls::vector<ap_fixed<16, 6>, 32>"* %dst, i64 0, i32 0, i32 0
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6>.32"([32 x %"struct.ap_fixed<16, 6>"]* %dst.0.02, i512* nonnull %src, i64 0, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6>.32"([32 x %"struct.ap_fixed<16, 6>"]* %dst, i512* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq i512* %src, null
  %1 = icmp eq [32 x %"struct.ap_fixed<16, 6>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 16, %for.loop.idx8
  %4 = add i64 %src_idx, %3
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<16, 6>"], [32 x %"struct.ap_fixed<16, 6>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %5 = load i512, i512* %src, align 2
  %6 = zext i64 %4 to i512
  %7 = lshr i512 %5, %6
  %.partselect = trunc i512 %7 to i16
  store i16 %.partselect, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_spmm_stage_hw(i32*, i32*, i16*, i512*, i32, i512*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias align 64 "unpacked"="6", i512* noalias readonly align 512 "unpacked"="7", %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias align 64 "unpacked"="8", i512* noalias readonly align 512 "unpacked"="9") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6>, 32>.29"(%"class.hls::vector<ap_fixed<16, 6>, 32>"* align 64 %8, i512* align 512 %9)
  ret void
}

declare void @spmm_stage_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly, %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias nocapture nonnull readonly, i32, %"class.hls::vector<ap_fixed<16, 6>, 32>"* noalias nocapture nonnull)

define void @spmm_stage_hw_stub_wrapper(i32*, i32*, i16*, i512*, i32, i512*) #5 {
entry:
  %6 = call i8* @malloc(i64 2)
  %7 = bitcast i8* %6 to %"struct.ap_fixed<16, 6>"*
  %8 = call i8* @malloc(i64 64)
  %9 = bitcast i8* %8 to %"class.hls::vector<ap_fixed<16, 6>, 32>"*
  %10 = call i8* @malloc(i64 64)
  %11 = bitcast i8* %10 to %"class.hls::vector<ap_fixed<16, 6>, 32>"*
  call void @copy_out(i32* null, i32* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %7, i16* %2, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %9, i512* %3, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %11, i512* %5)
  call void @spmm_stage_hw_stub(i32* %0, i32* %1, %"struct.ap_fixed<16, 6>"* %7, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %9, i32 %4, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %11)
  call void @copy_in(i32* null, i32* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %7, i16* %2, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %9, i512* %3, %"class.hls::vector<ap_fixed<16, 6>, 32>"* %11, i512* %5)
  call void @free(i8* %6)
  call void @free(i8* %8)
  call void @free(i8* %10)
  ret void
}

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
