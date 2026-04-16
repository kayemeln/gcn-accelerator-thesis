; ModuleID = '/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/vitis/integrated_gcn/integrated_gcn/integrated_gcn/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6, AP_RND, AP_SAT>" = type { %"struct.ap_fixed_base<16, 6, true, AP_RND, AP_SAT>" }
%"struct.ap_fixed_base<16, 6, true, AP_RND, AP_SAT>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>" = type { %"struct.std::array<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>" }
%"struct.std::array<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>" = type { [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"] }

; Function Attrs: noinline willreturn
define void @apatb_integrated_gcn_ir(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull readonly align 64 "maxi" %X, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull readonly align 64 "maxi" %W, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull align 64 "maxi" %H_temp, i32* noalias nocapture nonnull readonly "maxi" %row_length, i32* noalias nocapture nonnull readonly "maxi" %colind, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias nocapture nonnull readonly "maxi" %values, i32 %nnz_total, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull align 64 "maxi" %H_out) local_unnamed_addr #0 {
entry:
  %X_copy = alloca i512, align 512
  %W_copy = alloca i512, align 512
  %H_temp_copy = alloca i512, align 512
  %row_length_copy = alloca i32, align 512
  %colind_copy = alloca i32, align 512
  %values_copy = alloca i16, align 512
  %H_out_copy = alloca i512, align 512
  call fastcc void @copy_in(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* nonnull align 64 %X, i512* nonnull align 512 %X_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* nonnull align 64 %W, i512* nonnull align 512 %W_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* nonnull align 64 %H_temp, i512* nonnull align 512 %H_temp_copy, i32* nonnull %row_length, i32* nonnull align 512 %row_length_copy, i32* nonnull %colind, i32* nonnull align 512 %colind_copy, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* nonnull %values, i16* nonnull align 512 %values_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* nonnull align 64 %H_out, i512* nonnull align 512 %H_out_copy)
  call void @apatb_integrated_gcn_hw(i512* %X_copy, i512* %W_copy, i512* %H_temp_copy, i32* %row_length_copy, i32* %colind_copy, i16* %values_copy, i32 %nnz_total, i512* %H_out_copy)
  call void @copy_back(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %X, i512* %X_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %W, i512* %W_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %H_temp, i512* %H_temp_copy, i32* %row_length, i32* %row_length_copy, i32* %colind, i32* %colind_copy, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %values, i16* %values_copy, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %H_out, i512* %H_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias readonly align 64 "unpacked"="0", i512* noalias align 512 "unpacked"="1", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias readonly align 64 "unpacked"="2", i512* noalias align 512 "unpacked"="3", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias readonly align 64 "unpacked"="4", i512* noalias align 512 "unpacked"="5", i32* noalias readonly "unpacked"="6", i32* noalias align 512 "unpacked"="7", i32* noalias readonly "unpacked"="8", i32* noalias align 512 "unpacked"="9", %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias readonly "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias readonly align 64 "unpacked"="12", i512* noalias align 512 "unpacked"="13") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"(i512* align 512 %1, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"(i512* align 512 %3, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"(i512* align 512 %5, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6, AP_RND, AP_SAT>"(i16* align 512 %11, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"(i512* align 512 %13, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_RND, AP_SAT>"([32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %src, null
  %1 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"], [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"], [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6, AP_RND, AP_SAT>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>", %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="0", i512* noalias readonly align 512 "unpacked"="1", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="2", i512* noalias readonly align 512 "unpacked"="3", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="4", i512* noalias readonly align 512 "unpacked"="5", i32* noalias "unpacked"="6", i32* noalias readonly align 512 "unpacked"="7", i32* noalias "unpacked"="8", i32* noalias readonly align 512 "unpacked"="9", %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="12", i512* noalias readonly align 512 "unpacked"="13") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %0, i512* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %2, i512* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %4, i512* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6, AP_RND, AP_SAT>.16"(%"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %10, i16* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %12, i512* align 512 %13)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6, AP_RND, AP_SAT>.16"(%"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>", %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"(i512* noalias align 64 %dst, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias readonly align 64 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i512* %dst, null
  %1 = icmp eq %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.01 = getelementptr %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %src, i64 0, i32 0, i32 0
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_RND, AP_SAT>.34"(i512* nonnull %dst, i64 0, [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %src.0.01, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_RND, AP_SAT>.34"(i512* %dst, i64 %dst_idx, [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %src, null
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
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"], [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 %dst, i512* noalias readonly align 64 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %dst, null
  %1 = icmp eq i512* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.02 = getelementptr %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %dst, i64 0, i32 0, i32 0
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_RND, AP_SAT>.44"([32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst.0.02, i512* nonnull %src, i64 0, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_RND, AP_SAT>.44"([32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, i512* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq i512* %src, null
  %1 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, null
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
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"], [32 x %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
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

declare void @apatb_integrated_gcn_hw(i512*, i512*, i512*, i32*, i32*, i16*, i32, i512*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="0", i512* noalias readonly align 512 "unpacked"="1", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="2", i512* noalias readonly align 512 "unpacked"="3", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="4", i512* noalias readonly align 512 "unpacked"="5", i32* noalias "unpacked"="6", i32* noalias readonly align 512 "unpacked"="7", i32* noalias "unpacked"="8", i32* noalias readonly align 512 "unpacked"="9", %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias align 64 "unpacked"="12", i512* noalias readonly align 512 "unpacked"="13") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %4, i512* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>.41"(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* align 64 %12, i512* align 512 %13)
  ret void
}

declare void @integrated_gcn_hw_stub(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull readonly, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull readonly, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* noalias nocapture nonnull readonly, i32, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* noalias nocapture nonnull)

define void @integrated_gcn_hw_stub_wrapper(i512*, i512*, i512*, i32*, i32*, i16*, i32, i512*) #5 {
entry:
  %8 = call i8* @malloc(i64 64)
  %9 = bitcast i8* %8 to %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"*
  %10 = call i8* @malloc(i64 64)
  %11 = bitcast i8* %10 to %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"*
  %12 = call i8* @malloc(i64 64)
  %13 = bitcast i8* %12 to %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"*
  %14 = call i8* @malloc(i64 2)
  %15 = bitcast i8* %14 to %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"*
  %16 = call i8* @malloc(i64 64)
  %17 = bitcast i8* %16 to %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"*
  call void @copy_out(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %9, i512* %0, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %11, i512* %1, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %13, i512* %2, i32* null, i32* %3, i32* null, i32* %4, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %15, i16* %5, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %17, i512* %7)
  call void @integrated_gcn_hw_stub(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %9, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %11, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %13, i32* %3, i32* %4, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %15, i32 %6, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %17)
  call void @copy_in(%"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %9, i512* %0, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %11, i512* %1, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %13, i512* %2, i32* null, i32* %3, i32* null, i32* %4, %"struct.ap_fixed<16, 6, AP_RND, AP_SAT>"* %15, i16* %5, %"class.hls::vector<ap_fixed<16, 6, AP_RND, AP_SAT>, 32>"* %17, i512* %7)
  call void @free(i8* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  ret void
}

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
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
