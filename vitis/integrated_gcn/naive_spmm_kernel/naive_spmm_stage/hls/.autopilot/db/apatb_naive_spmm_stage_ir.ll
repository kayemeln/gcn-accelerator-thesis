; ModuleID = '/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/vitis/integrated_gcn/naive_spmm_kernel/naive_spmm_stage/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6>" = type { %"struct.ap_fixed_base<16, 6>" }
%"struct.ap_fixed_base<16, 6>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_naive_spmm_stage_ir(i32* noalias nocapture nonnull readonly "maxi" %rowptr, i32* noalias nocapture nonnull readonly "maxi" %colind, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly "maxi" %values, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly "maxi" %H_temp, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull "maxi" %H_out) local_unnamed_addr #0 {
entry:
  %rowptr_copy = alloca i32, align 512
  %colind_copy = alloca i32, align 512
  %values_copy = alloca i16, align 512
  %H_temp_copy = alloca i16, align 512
  %H_out_copy = alloca i16, align 512
  call fastcc void @copy_in(i32* nonnull %rowptr, i32* nonnull align 512 %rowptr_copy, i32* nonnull %colind, i32* nonnull align 512 %colind_copy, %"struct.ap_fixed<16, 6>"* nonnull %values, i16* nonnull align 512 %values_copy, %"struct.ap_fixed<16, 6>"* nonnull %H_temp, i16* nonnull align 512 %H_temp_copy, %"struct.ap_fixed<16, 6>"* nonnull %H_out, i16* nonnull align 512 %H_out_copy)
  call void @apatb_naive_spmm_stage_hw(i32* %rowptr_copy, i32* %colind_copy, i16* %values_copy, i16* %H_temp_copy, i16* %H_out_copy)
  call void @copy_back(i32* %rowptr, i32* %rowptr_copy, i32* %colind, i32* %colind_copy, %"struct.ap_fixed<16, 6>"* %values, i16* %values_copy, %"struct.ap_fixed<16, 6>"* %H_temp, i16* %H_temp_copy, %"struct.ap_fixed<16, 6>"* %H_out, i16* %H_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(i32* noalias readonly "unpacked"="0", i32* noalias align 512 "unpacked"="1", i32* noalias readonly "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="6", i16* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %5, %"struct.ap_fixed<16, 6>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %7, %"struct.ap_fixed<16, 6>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %9, %"struct.ap_fixed<16, 6>"* %8)
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
define internal fastcc void @copy_out(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="6", i16* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.4"(%"struct.ap_fixed<16, 6>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.4"(%"struct.ap_fixed<16, 6>"* %6, i16* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.4"(%"struct.ap_fixed<16, 6>"* %8, i16* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.4"(%"struct.ap_fixed<16, 6>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
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

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_naive_spmm_stage_hw(i32*, i32*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="6", i16* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.4"(%"struct.ap_fixed<16, 6>"* %8, i16* align 512 %9)
  ret void
}

declare void @naive_spmm_stage_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull)

define void @naive_spmm_stage_hw_stub_wrapper(i32*, i32*, i16*, i16*, i16*) #4 {
entry:
  %5 = call i8* @malloc(i64 2)
  %6 = bitcast i8* %5 to %"struct.ap_fixed<16, 6>"*
  %7 = call i8* @malloc(i64 2)
  %8 = bitcast i8* %7 to %"struct.ap_fixed<16, 6>"*
  %9 = call i8* @malloc(i64 2)
  %10 = bitcast i8* %9 to %"struct.ap_fixed<16, 6>"*
  call void @copy_out(i32* null, i32* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %6, i16* %2, %"struct.ap_fixed<16, 6>"* %8, i16* %3, %"struct.ap_fixed<16, 6>"* %10, i16* %4)
  call void @naive_spmm_stage_hw_stub(i32* %0, i32* %1, %"struct.ap_fixed<16, 6>"* %6, %"struct.ap_fixed<16, 6>"* %8, %"struct.ap_fixed<16, 6>"* %10)
  call void @copy_in(i32* null, i32* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %6, i16* %2, %"struct.ap_fixed<16, 6>"* %8, i16* %3, %"struct.ap_fixed<16, 6>"* %10, i16* %4)
  call void @free(i8* %5)
  call void @free(i8* %7)
  call void @free(i8* %9)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

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
