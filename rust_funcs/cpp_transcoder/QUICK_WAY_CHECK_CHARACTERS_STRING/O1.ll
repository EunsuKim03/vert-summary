; ModuleID = 'QUICK_WAY_CHECK_CHARACTERS_STRING_emit.5321caff4d583233-cgu.0'
source_filename = "QUICK_WAY_CHECK_CHARACTERS_STRING_emit.5321caff4d583233-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_db51a71a1b6b25b4224d4dc5277f93e7 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h74f580270dc95f74E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
start:
  %xtraiter = and i64 %chunks, 1
  %0 = icmp eq i64 %chunks, 1
  br i1 %0, label %bb4.unr-lcssa, label %start.new

start.new:                                        ; preds = %start
  %unroll_iter = and i64 %chunks, -2
  br label %bb3

bb4.unr-lcssa:                                    ; preds = %bb3, %start
  %iter.sroa.0.02.unr = phi i64 [ 0, %start ], [ %_18.1, %bb3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb4, label %bb3.epil

bb3.epil:                                         ; preds = %bb4.unr-lcssa
  %_11.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02.unr
  %_13.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02.unr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !6, !noalias !3
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::iter::traits::iterator::Iterator::nth
; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 1114113) i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %self, i64 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %start_bytes.i = alloca [32 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i)
  %_3.i = icmp ugt i64 %n, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %start
  %self5.i = load ptr, ptr %self, align 8, !alias.scope !12, !nonnull !15, !noundef !15
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_57.i = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !15, !noundef !15
  %1 = ptrtoint ptr %_57.i to i64
  %2 = ptrtoint ptr %self5.i to i64
  %3 = sub nuw i64 %1, %2
  %4 = lshr i64 %3, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %self5.i, i64 %4
  %_1042.not.i = icmp eq i64 %n, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i.preheader

bb4.i.preheader:                                  ; preds = %bb1.i
  %_92.sroa.34.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 1
  br label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %start
  %remainder.sroa.0.0.i = phi i64 [ %n, %start ], [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb5.critedge, label %bb27.lr.ph.i

bb27.lr.ph.i:                                     ; preds = %bb25.i
  %self.promoted55.i = load ptr, ptr %self, align 8, !alias.scope !12
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_116.i = load ptr, ptr %5, align 8, !alias.scope !12, !nonnull !15, !noundef !15
  %6 = ptrtoint ptr %_116.i to i64
  br label %bb27.i

bb4.i:                                            ; preds = %bb4.i.preheader, %bb2.i.i.i
  %remainder.sroa.0.145.i = phi i64 [ %8, %bb2.i.i.i ], [ %n, %bb4.i.preheader ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb2.i.i.i ], [ %self5.i, %bb4.i.preheader ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %7, %bb2.i.i.i ], [ 0, %bb4.i.preheader ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  %chunks.sroa.0.1.idx.i = select i1 %_73.i, i64 0, i64 32
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %chunks.sroa.0.1.idx.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb2.i.i.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %7, %bb2.i.i.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ %n, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %8, %bb2.i.i.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %self5.i, i64 %bytes_skipped.sroa.0.0.lcssa.i
  store ptr %_19.i.i, ptr %self, align 8, !alias.scope !16
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %3
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp eq ptr %_57.i, %_19.i.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i, i8 0, i64 32, i1 false), !noalias !12
  br label %bb10.i

bb2.i.i.i:                                        ; preds = %bb10.i
  %_92.sroa.34.0.copyload.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.33.0.copyload.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.32.0.copyload.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.31.0.copyload.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.30.0.copyload.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.29.0.copyload.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.28.0.copyload.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.27.0.copyload.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.26.0.copyload.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.25.0.copyload.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.24.0.copyload.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.23.0.copyload.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.22.0.copyload.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.21.0.copyload.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.20.0.copyload.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.19.0.copyload.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.18.0.copyload.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.17.0.copyload.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.16.0.copyload.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.15.0.copyload.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.14.0.copyload.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.13.0.copyload.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.12.0.copyload.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.11.0.copyload.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.10.0.copyload.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.9.0.copyload.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.8.0.copyload.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.7.0.copyload.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.6.0.copyload.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.5.0.copyload.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.4.0.copyload.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i, align 1, !noalias !12
  %_92.sroa.0.0.copyload.i = load i8, ptr %start_bytes.i, align 1, !noalias !12
  %_4.0.i.i.i.i.i.i.1.i = add i8 %_92.sroa.33.0.copyload.i, %_92.sroa.34.0.copyload.i
  %_4.0.i.i.i.i.i.i.2.i = add i8 %_4.0.i.i.i.i.i.i.1.i, %_92.sroa.32.0.copyload.i
  %_4.0.i.i.i.i.i.i.3.i = add i8 %_4.0.i.i.i.i.i.i.2.i, %_92.sroa.31.0.copyload.i
  %_4.0.i.i.i.i.i.i.4.i = add i8 %_4.0.i.i.i.i.i.i.3.i, %_92.sroa.30.0.copyload.i
  %_4.0.i.i.i.i.i.i.5.i = add i8 %_4.0.i.i.i.i.i.i.4.i, %_92.sroa.29.0.copyload.i
  %_4.0.i.i.i.i.i.i.6.i = add i8 %_4.0.i.i.i.i.i.i.5.i, %_92.sroa.28.0.copyload.i
  %_4.0.i.i.i.i.i.i.7.i = add i8 %_4.0.i.i.i.i.i.i.6.i, %_92.sroa.27.0.copyload.i
  %_4.0.i.i.i.i.i.i.8.i = add i8 %_4.0.i.i.i.i.i.i.7.i, %_92.sroa.26.0.copyload.i
  %_4.0.i.i.i.i.i.i.9.i = add i8 %_4.0.i.i.i.i.i.i.8.i, %_92.sroa.25.0.copyload.i
  %_4.0.i.i.i.i.i.i.10.i = add i8 %_4.0.i.i.i.i.i.i.9.i, %_92.sroa.24.0.copyload.i
  %_4.0.i.i.i.i.i.i.11.i = add i8 %_4.0.i.i.i.i.i.i.10.i, %_92.sroa.23.0.copyload.i
  %_4.0.i.i.i.i.i.i.12.i = add i8 %_4.0.i.i.i.i.i.i.11.i, %_92.sroa.22.0.copyload.i
  %_4.0.i.i.i.i.i.i.13.i = add i8 %_4.0.i.i.i.i.i.i.12.i, %_92.sroa.21.0.copyload.i
  %_4.0.i.i.i.i.i.i.14.i = add i8 %_4.0.i.i.i.i.i.i.13.i, %_92.sroa.20.0.copyload.i
  %_4.0.i.i.i.i.i.i.15.i = add i8 %_4.0.i.i.i.i.i.i.14.i, %_92.sroa.19.0.copyload.i
  %_4.0.i.i.i.i.i.i.16.i = add i8 %_4.0.i.i.i.i.i.i.15.i, %_92.sroa.18.0.copyload.i
  %_4.0.i.i.i.i.i.i.17.i = add i8 %_4.0.i.i.i.i.i.i.16.i, %_92.sroa.17.0.copyload.i
  %_4.0.i.i.i.i.i.i.18.i = add i8 %_4.0.i.i.i.i.i.i.17.i, %_92.sroa.16.0.copyload.i
  %_4.0.i.i.i.i.i.i.19.i = add i8 %_4.0.i.i.i.i.i.i.18.i, %_92.sroa.15.0.copyload.i
  %_4.0.i.i.i.i.i.i.20.i = add i8 %_4.0.i.i.i.i.i.i.19.i, %_92.sroa.14.0.copyload.i
  %_4.0.i.i.i.i.i.i.21.i = add i8 %_4.0.i.i.i.i.i.i.20.i, %_92.sroa.13.0.copyload.i
  %_4.0.i.i.i.i.i.i.22.i = add i8 %_4.0.i.i.i.i.i.i.21.i, %_92.sroa.12.0.copyload.i
  %_4.0.i.i.i.i.i.i.23.i = add i8 %_4.0.i.i.i.i.i.i.22.i, %_92.sroa.11.0.copyload.i
  %_4.0.i.i.i.i.i.i.24.i = add i8 %_4.0.i.i.i.i.i.i.23.i, %_92.sroa.10.0.copyload.i
  %_4.0.i.i.i.i.i.i.25.i = add i8 %_4.0.i.i.i.i.i.i.24.i, %_92.sroa.9.0.copyload.i
  %_4.0.i.i.i.i.i.i.26.i = add i8 %_4.0.i.i.i.i.i.i.25.i, %_92.sroa.8.0.copyload.i
  %_4.0.i.i.i.i.i.i.27.i = add i8 %_4.0.i.i.i.i.i.i.26.i, %_92.sroa.7.0.copyload.i
  %_4.0.i.i.i.i.i.i.28.i = add i8 %_4.0.i.i.i.i.i.i.27.i, %_92.sroa.6.0.copyload.i
  %_4.0.i.i.i.i.i.i.29.i = add i8 %_4.0.i.i.i.i.i.i.28.i, %_92.sroa.5.0.copyload.i
  %_4.0.i.i.i.i.i.i.30.i = add i8 %_4.0.i.i.i.i.i.i.29.i, %_92.sroa.4.0.copyload.i
  %_4.0.i.i.i.i.i.i.31.i = add i8 %_4.0.i.i.i.i.i.i.30.i, %_92.sroa.0.0.copyload.i
  %7 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %8 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %8, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb10.i:                                           ; preds = %bb10.i, %bb5.i
  %iter.sroa.0.041.i = phi i64 [ 0, %bb5.i ], [ %_88.i.3, %bb10.i ]
  %_88.i = or disjoint i64 %iter.sroa.0.041.i, 1
  %9 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %iter.sroa.0.041.i
  %byte.i = load i8, ptr %9, align 1, !noalias !12, !noundef !15
  %_22.i = icmp sgt i8 %byte.i, -65
  %10 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %iter.sroa.0.041.i
  %11 = zext i1 %_22.i to i8
  store i8 %11, ptr %10, align 1, !noalias !12
  %_88.i.1 = or disjoint i64 %iter.sroa.0.041.i, 2
  %12 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i
  %byte.i.1 = load i8, ptr %12, align 1, !noalias !12, !noundef !15
  %_22.i.1 = icmp sgt i8 %byte.i.1, -65
  %13 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i
  %14 = zext i1 %_22.i.1 to i8
  store i8 %14, ptr %13, align 1, !noalias !12
  %_88.i.2 = or disjoint i64 %iter.sroa.0.041.i, 3
  %15 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.1
  %byte.i.2 = load i8, ptr %15, align 1, !noalias !12, !noundef !15
  %_22.i.2 = icmp sgt i8 %byte.i.2, -65
  %16 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.1
  %17 = zext i1 %_22.i.2 to i8
  store i8 %17, ptr %16, align 1, !noalias !12
  %_88.i.3 = add nuw nsw i64 %iter.sroa.0.041.i, 4
  %18 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.2
  %byte.i.3 = load i8, ptr %18, align 1, !noalias !12, !noundef !15
  %_22.i.3 = icmp sgt i8 %byte.i.3, -65
  %19 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.2
  %20 = zext i1 %_22.i.3 to i8
  store i8 %20, ptr %19, align 1, !noalias !12
  %exitcond.not.i.3 = icmp eq i64 %_88.i.3, 32
  br i1 %exitcond.not.i.3, label %bb2.i.i.i, label %bb10.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_19.i335254.i = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_19.i335254.i, align 1, !noalias !12, !noundef !15
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_19.i335254.i, i64 1
  store ptr %_19.i33.i, ptr %self, align 8, !alias.scope !19
  %_30.not.i = icmp eq ptr %_57.i, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb28.i, %bb27.lr.ph.i
  %remainder.sroa.0.259.i = phi i64 [ %remainder.sroa.0.0.i, %bb27.lr.ph.i ], [ %23, %bb28.i ]
  %_19.i385658.i = phi ptr [ %self.promoted55.i, %bb27.lr.ph.i ], [ %_19.i38.i, %bb28.i ]
  %_41.not.i = icmp eq ptr %_116.i, %_19.i385658.i
  br i1 %_41.not.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit", label %bb28.i

bb28.i:                                           ; preds = %bb27.i
  %21 = ptrtoint ptr %_19.i385658.i to i64
  %22 = sub nuw i64 %6, %21
  %23 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_19.i385658.i, align 1, !noalias !12, !noundef !15
  %_130.i = zext i8 %b15.i to i64
  %24 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %24, align 1, !noalias !12, !noundef !15
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i, i64 %slurp.i
  store ptr %_19.i38.i, ptr %self, align 8, !alias.scope !22
  %.not28.i = icmp uge i64 %22, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %23, 0
  br i1 %_39.not.i, label %bb5.critedge, label %bb27.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit": ; preds = %bb27.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  br label %bb3

bb5.critedge:                                     ; preds = %bb28.i, %bb25.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %ptr.i.i.i = load ptr, ptr %self, align 8, !alias.scope !31, !nonnull !15, !noundef !15
  %25 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %end_or_len.i.i.i = load ptr, ptr %25, align 8, !alias.scope !31, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp eq ptr %ptr.i.i.i, %end_or_len.i.i.i
  br i1 %_7.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb5.critedge
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i.i, i64 1
  store ptr %_18.i.i.i, ptr %self, align 8, !alias.scope !31
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i": ; preds = %bb6.i.i.i, %bb5.critedge
  %_0.sroa.0.0.i.i.i = phi ptr [ %ptr.i.i.i, %bb6.i.i.i ], [ null, %bb5.critedge ]
  %.not.i.not.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.not.i, label %bb3, label %bb14.i.i

bb14.i.i:                                         ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i"
  %x.i.i = load i8, ptr %_0.sroa.0.0.i.i.i, align 1, !noalias !34, !noundef !15
  %_6.i.i = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %ptr.i8.i.i = load ptr, ptr %self, align 8, !alias.scope !35, !nonnull !15, !noundef !15
  %_7.i10.i.i = icmp ne ptr %ptr.i8.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 1
  store ptr %_18.i12.i.i, ptr %self, align 8, !alias.scope !35
  %y.i.i = load i8, ptr %ptr.i8.i.i, align 1, !noalias !34, !noundef !15
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %26 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb3

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb3

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 2
  store ptr %_18.i19.i.i, ptr %self, align 8, !alias.scope !38
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !34, !noundef !15
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %27 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb3

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 3
  store ptr %_18.i26.i.i, ptr %self, align 8, !alias.scope !41
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !34, !noundef !15
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %28 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb3

bb3:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit", %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i"
  %_0.sroa.0.0 = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit" ], [ %_7.i.i, %bb3.i.i ], [ 1114112, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E.exit.i.i" ], [ %28, %bb8.i.i ], [ %27, %bb6.i.i ], [ %26, %bb4.i.i ]
  ret i32 %_0.sroa.0.0
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7c4ae355659df841E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7c4ae355659df841E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7c4ae355659df841E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7c4ae355659df841E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !52
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !67, !noalias !68, !noundef !15
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !69, !noalias !70, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !71, !noalias !80, !noundef !15
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !105, !noalias !106, !noundef !15
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !106, !noalias !105, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %start, %bb10
  ret void

bb4:                                              ; preds = %start, %bb6
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %bb6 ], [ %tail, %start ]
  %sift.sroa.0.0 = phi ptr [ %2, %bb6 ], [ %0, %start ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !107, !noalias !116, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !121
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f5d3763b6a50f98E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !146, !noalias !147, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !147, !noalias !146, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !168, !noalias !169, !noundef !15
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !169, !noalias !168, !noundef !15
  %_0.i9 = icmp slt i32 %_3.i.i.i.i7, %_4.i.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !190, !noalias !191, !noundef !15
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !191, !noalias !190, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !212, !noalias !213, !noundef !15
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !213, !noalias !212, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !234, !noalias !235, !noundef !15
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !235, !noalias !234, !noundef !15
  %_0.i18 = icmp slt i32 %_3.i.i.i.i16, %_4.i.i.i.i17
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %.val = load i32, ptr %4, align 4
  %.val19 = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18, i32 %.val, i32 %.val19
  store i32 %6, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %.val20 = load i32, ptr %2, align 4
  %.val21 = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18, i32 %.val20, i32 %.val21
  store i32 %7, ptr %dst6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %b.val = load i32, ptr %b, align 4
  %d.val = load i32, ptr %d, align 4
  %9 = select i1 %_0.i15, i32 %b.val, i32 %d.val
  store i32 %9, ptr %8, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h45ce74fac3d14040E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !256, !noalias !257, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !257, !noalias !256, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !278, !noalias !279, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !279, !noalias !278, !noundef !15
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !300, !noalias !301, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !301, !noalias !300, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !322, !noalias !323, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !323, !noalias !322, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !344, !noalias !345, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !345, !noalias !344, !noundef !15
  %_0.i18.i = icmp slt i32 %_3.i.i.i.i16.i, %_4.i.i.i.i17.i
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %9 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %9, ptr %8, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !366, !noalias !367, !noundef !15
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !367, !noalias !366, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !388, !noalias !389, !noundef !15
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !389, !noalias !388, !noundef !15
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i.i7.i7, %_4.i.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !410, !noalias !411, !noundef !15
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !411, !noalias !410, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !432, !noalias !433, !noundef !15
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !433, !noalias !432, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !454, !noalias !455, !noundef !15
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !455, !noalias !454, !noundef !15
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i.i16.i25, %_4.i.i.i.i17.i26
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %14, align 4
  %.val19.i30 = load i32, ptr %12, align 4
  %16 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %16, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %12, align 4
  %.val21.i33 = load i32, ptr %14, align 4
  %17 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %17, ptr %dst6.i31, align 4
  %18 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %19 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %19, ptr %18, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480), !noalias !467
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !482, !noalias !483, !noundef !15
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !484, !noalias !485, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !486
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !496
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !511, !noalias !512, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !513, !noalias !514, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !515
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531), !noalias !467
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !533, !noalias !534, !noundef !15
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !535, !noalias !536, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !486
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !496
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !553, !noalias !554, !noundef !15
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !555, !noalias !556, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !515
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571), !noalias !467
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !573, !noalias !574, !noundef !15
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !575, !noalias !576, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !486
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591), !noalias !496
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !593, !noalias !594, !noundef !15
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !595, !noalias !596, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !515
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609), !noalias !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611), !noalias !467
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !613, !noalias !614, !noundef !15
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !615, !noalias !616, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !486
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !496
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !633, !noalias !634, !noundef !15
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !635, !noalias !636, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !515
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E.exit, !prof !637

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25, !noalias !456
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  %3 = getelementptr i32, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %bb15
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.029 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.028 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.027 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.026 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.025 = phi ptr [ %10, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.024 = phi ptr [ %9, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.023 = phi ptr [ %11, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.028, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643), !noalias !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651), !noalias !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !noalias !646
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !661, !noalias !662, !noundef !15
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !663, !noalias !664, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !665
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !675
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !690, !noalias !691, !noundef !15
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !692, !noalias !693, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !694
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr i32, ptr %right_rev.sroa.0.024, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i21 to i64
  %10 = getelementptr i32, ptr %left_rev.sroa.0.025, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw i32, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw i32, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !637

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0672a9c432993fe7E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %_11.not1 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not1, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !716, !noalias !717, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !717, !noalias !716, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !718, !noalias !727, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !732
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8d8f5e88bad7f848E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %iter = alloca [32 x i8], align 8
  %_5 = icmp samesign ult i64 %v.1, 2
  br i1 %_5, label %bb29, label %bb2

bb2:                                              ; preds = %start
  %_8 = add nuw nsw i64 %v.1, 16
  %_6 = icmp samesign ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %len_div_211 = lshr i64 %v.1, 1
  %_14 = icmp samesign ugt i64 %v.1, 15
  br i1 %_14, label %bb6, label %bb9

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb9:                                              ; preds = %bb4
  %_22 = icmp samesign ugt i64 %v.1, 7
  br i1 %_22, label %bb10, label %bb46

bb6:                                              ; preds = %bb4
  %_16 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h45ce74fac3d14040E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h45ce74fac3d14040E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !757, !noalias !758, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !758, !noalias !757, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !779, !noalias !780, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !780, !noalias !779, !noundef !15
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !801, !noalias !802, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !802, !noalias !801, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !823, !noalias !824, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !824, !noalias !823, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !845, !noalias !846, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !846, !noalias !845, !noundef !15
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i, i32 %_4.i.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !867, !noalias !868, !noundef !15
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !868, !noalias !867, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !889, !noalias !890, !noundef !15
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !890, !noalias !889, !noundef !15
  %_0.i9.i21 = icmp slt i32 %_3.i.i.i.i7.i19, %_4.i.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !911, !noalias !912, !noundef !15
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !912, !noalias !911, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !933, !noalias !934, !noundef !15
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !934, !noalias !933, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !955, !noalias !956, !noundef !15
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !956, !noalias !955, !noundef !15
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i34, i32 %_4.i.i.i.i14.i35)
  store i32 %19, ptr %18, align 4
  br label %bb15

bb46:                                             ; preds = %bb9
  %20 = load i32, ptr %v.0, align 4
  store i32 %20, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %21 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %22 = load i32, ptr %_31, align 4
  store i32 %22, ptr %21, align 4
  br label %bb15

bb15:                                             ; preds = %bb46, %bb10, %bb6
  %presorted_len.sroa.0.0 = phi i64 [ 8, %bb6 ], [ 4, %bb10 ], [ 1, %bb46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter)
  store i64 0, ptr %iter, align 8
  %_37.sroa.4.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 8
  store i64 2, ptr %_37.sroa.4.0.iter.sroa_idx, align 8
  %_37.sroa.5.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 16
  store i64 0, ptr %_37.sroa.5.0.iter.sroa_idx, align 8
  %_37.sroa.6.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 24
  store i64 %len_div_211, ptr %_37.sroa.6.0.iter.sroa_idx, align 8
  %23 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.161 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %24 = phi i64 [ 0, %bb15 ], [ %25, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %24, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !957
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !957, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %count1.i = add nsw i64 %v.1, -1
  %26 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1.i
  %27 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i
  %28 = getelementptr i32, ptr %scratch.0, i64 %len_div_211
  %29 = getelementptr i8, ptr %28, i64 -4
  br label %bb15.i

bb16.i:                                           ; preds = %bb15.i
  %30 = getelementptr i8, ptr %35, i64 4
  %31 = getelementptr i8, ptr %34, i64 4
  %_44.i = and i64 %v.1, 1
  %_22.i = icmp eq i64 %_44.i, 0
  br i1 %_22.i, label %bb9.i, label %bb5.i

bb15.i:                                           ; preds = %bb15.i, %bb19
  %dst.sroa.0.029.i = phi ptr [ %_16.i.i, %bb15.i ], [ %v.0, %bb19 ]
  %iter.sroa.0.028.i = phi i64 [ %_39.i, %bb15.i ], [ 0, %bb19 ]
  %left.sroa.0.027.i = phi ptr [ %_14.i.i, %bb15.i ], [ %scratch.0, %bb19 ]
  %right.sroa.0.026.i = phi ptr [ %_12.i.i, %bb15.i ], [ %28, %bb19 ]
  %left_rev.sroa.0.025.i = phi ptr [ %35, %bb15.i ], [ %29, %bb19 ]
  %right_rev.sroa.0.024.i = phi ptr [ %34, %bb15.i ], [ %27, %bb19 ]
  %dst_rev.sroa.0.023.i = phi ptr [ %36, %bb15.i ], [ %26, %bb19 ]
  %_39.i = add nuw nsw i64 %iter.sroa.0.028.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !noalias !971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !noalias !971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976), !noalias !971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !noalias !971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981), !noalias !971
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !971
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !986, !noalias !987, !noundef !15
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !988, !noalias !989, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !990
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997), !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008), !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013), !noalias !1000
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1015, !noalias !1016, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1017, !noalias !1018, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1019
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %34 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %35 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %36 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_211
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i:                                            ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %30
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !960
  store i32 %37, ptr %_16.i.i, align 4, !noalias !960
  %count2.i52 = zext i1 %left_nonempty.i to i64
  %_26.i = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i52
  %_30.i = xor i1 %left_nonempty.i, true
  %count3.i53 = zext i1 %_30.i to i64
  %_28.i = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count3.i53
  br label %bb9.i

bb9.i:                                            ; preds = %bb5.i, %bb16.i
  %right.sroa.0.1.i = phi ptr [ %_12.i.i, %bb16.i ], [ %_28.i, %bb5.i ]
  %left.sroa.0.1.i = phi ptr [ %_14.i.i, %bb16.i ], [ %_26.i, %bb5.i ]
  %_31.i = icmp ne ptr %left.sroa.0.1.i, %30
  %_32.i = icmp ne ptr %right.sroa.0.1.i, %31
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !637

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1021
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1026, !noalias !1035, !noundef !15
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1040, !noalias !1049, !noundef !15
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1054
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h710bf67d58fcc4c5E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h6cecf04592418851E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 1025
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1059
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1062, !noalias !1059, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1063, !noalias !1059, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit", !prof !1064

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1059
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1059, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1059
  store i64 %err.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %this.1.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

cleanup:                                          ; preds = %bb3.i.i, %bb4, %bb8
  %_24.sroa.0.0 = phi i8 [ %_24.sroa.0.1, %bb8 ], [ 0, %bb4 ], [ 0, %bb3.i.i ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = trunc nuw i8 %_24.sroa.0.0 to i1
  br i1 %4, label %bb13, label %bb11

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h5cd778910741b372E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %3

bb13:                                             ; preds = %cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h2e5401446cf311a9E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #7 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h6b044897cb021f3bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1085, !noalias !1086, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1086, !noalias !1085, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1107, !noalias !1108, !noundef !15
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1108, !noalias !1107, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1129, !noalias !1130, !noundef !15
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1130, !noalias !1129, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb6d22a440796ecb5E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i8, 1
  %_34 = or disjoint i64 %_35, 1
  br label %bb12

bb12:                                             ; preds = %bb5, %bb8, %bb11
  %_0.sroa.0.0 = phi i64 [ %_26, %bb5 ], [ %_34, %bb8 ], [ %_36, %bb11 ]
  ret i64 %_0.sroa.0.0

bb5.loopexit.unr-lcssa:                           ; preds = %bb5.i.i, %bb5.i.i.preheader
  %i.sroa.0.016.i.i.unr = phi i64 [ 0, %bb5.i.i.preheader ], [ %15, %bb5.i.i ]
  %4 = and i64 %_0.sroa.0.0.i, 2
  %lcmp.mod.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not, label %bb5, label %bb5.i.i.epil

bb5.i.i.epil:                                     ; preds = %bb5.loopexit.unr-lcssa
  %5 = xor i64 %i.sroa.0.016.i.i.unr, -1
  %x.i.i.epil = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr i32, ptr %end.i, i64 %5
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1131, !noalias !1136, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1138, !noalias !1139
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1131, !noalias !1136
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1138, !noalias !1139
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep26 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %9
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1131, !noalias !1136, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1138, !noalias !1139
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1131, !noalias !1136
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1138, !noalias !1139
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1131, !noalias !1136, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1138, !noalias !1139
  store i32 %14, ptr %gep27, align 4, !alias.scope !1131, !noalias !1136
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1138, !noalias !1139
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h1de518a0fe6c728eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h5cd778910741b372E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %_6 = icmp samesign ult i64 %v.1, 2
  br i1 %_6, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %d = udiv i64 4611686018427387904, %v.1
  %r = urem i64 4611686018427387904, %v.1
  %_73.not = icmp ne i64 %r, 0
  %0 = zext i1 %_73.not to i64
  %scale_factor.sroa.0.0 = add nuw nsw i64 %d, %0
  %_9 = icmp samesign ult i64 %v.1, 4097
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; call core::slice::sort::stable::drift::sqrt_approx
  %1 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef %v.1)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_1135 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_1135
  %_0.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %v1, i64 64)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %min_good_run_len.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i36, %bb3 ], [ %1, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %run_storage)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %desired_depth_storage)
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %22, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %21, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3748 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3748, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h6b044897cb021f3bE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %2, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %reass.add = shl i64 %scan_idx.sroa.0.0, 1
  %y = add i64 %_35, %reass.add
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %4 = trunc nuw nsw i64 %3 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !15
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.149, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.149, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.149
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %7
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #28
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1145
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1166, !noalias !1167, !noundef !15
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1170, !noalias !1171, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1140, !noalias !1172
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %11, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i = getelementptr inbounds nuw i32, ptr %12, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i40, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i37, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %spec.select.i, %bb5.i37 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i37 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i37 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1193, !noalias !1194, !noundef !15
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1197, !noalias !1198, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1140, !noalias !1199
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i38
  %_10.i.i = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i40

bb16.i40:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %16 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %17 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %18 = sub nuw i64 %16, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1145, !noalias !1200
  br label %_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit

_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #28
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h55566e24bf221d42E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %21 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %22 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i44 = or i64 %v.1, 1
  %23 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i44, i1 true)
  %24 = trunc nuw nsw i64 %23 to i32
  %log.i45 = shl nuw nsw i32 %24, 1
  %limit.i46 = xor i32 %log.i45, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7fb84419fdbbb37fE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted9 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %_2110 = phi ptr [ %.promoted9, %start ], [ %_21, %bb1 ]
  %_188 = phi ptr [ %.promoted, %start ], [ %_18, %bb1 ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %bb1 ]
  %3 = getelementptr inbounds i8, ptr %_188, i64 -4
  %4 = getelementptr inbounds i8, ptr %_2110, i64 -4
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1225, !noalias !1226, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1226, !noalias !1225, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw i32, ptr %3, i64 %count
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw i32, ptr %4, i64 %count4
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %bb1
  store ptr %_18, ptr %1, align 8
  store ptr %_21, ptr %2, align 8
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hb6867732fdc2e402E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !15
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb1.bb9_crit_edge:                                ; preds = %bb3
  store ptr %_25, ptr %2, align 8
  store ptr %_20, ptr %self, align 8
  br label %bb9

bb9:                                              ; preds = %bb1.bb9_crit_edge, %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %bb3
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %bb3 ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %bb3 ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1247, !noalias !1248, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1248, !noalias !1247, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %_2059, i64 %count
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %bb1.i
  %_2110.i = phi ptr [ %_21.i, %bb1.i ], [ %_22, %bb5 ]
  %_188.i = phi ptr [ %_18.i, %bb1.i ], [ %spec.select, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %bb1.i ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %_188.i, i64 -4
  %3 = getelementptr inbounds i8, ptr %_2110.i, i64 -4
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1269, !noalias !1270, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1273, !noalias !1274, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1275
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw i32, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw i32, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i17, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i16, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1296, !noalias !1297, !noundef !15
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1300, !noalias !1301, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1302
  %count.i15 = zext i1 %consume_left.i to i64
  %_20.i16 = getelementptr inbounds nuw i32, ptr %_2059.i, i64 %count.i15
  %count2.i = zext i1 %_0.i.i14 to i64
  %_23.i17 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 4
  %_7.i = icmp ne ptr %_20.i16, %_22
  %_10.i = icmp ne ptr %_23.i17, %v_end
  %or.cond.i18 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i18, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i16, %bb3.i ]
  %7 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %8 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %9 = sub nuw i64 %7, %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1303
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d41161b91c8988eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1308

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1334, !noalias !1335, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1335, !noalias !1334, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1336
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1364, !noalias !1365, !noundef !15
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1365, !noalias !1364, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1366
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1394, !noalias !1395, !noundef !15
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1395, !noalias !1394, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1396
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1424, !noalias !1425, !noundef !15
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1425, !noalias !1424, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1426
  %_8.i53 = zext i1 %_0.i.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1454, !noalias !1455, !noundef !15
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1455, !noalias !1454, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1456
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1459
  store i32 %13, ptr %dst.i68, align 4, !noalias !1459
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1462

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9f91c09d3c33a181E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1308

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1484, !noalias !1485, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1485, !noalias !1484, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1486
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1509, !noalias !1510, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1510, !noalias !1509, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1511
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1534, !noalias !1535, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1535, !noalias !1534, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1536
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1559, !noalias !1560, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1560, !noalias !1559, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1561
  %_8.i53 = zext i1 %_0.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1584, !noalias !1585, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1585, !noalias !1584, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1586
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1589
  store i32 %13, ptr %dst.i68, align 4, !noalias !1589
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1592

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !15
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !15
  %5 = load i32, ptr %src, align 4
  store i32 %5, ptr %dst, align 4
  %_8 = zext i1 %towards_left to i64
  %6 = add i64 %count, %_8
  store i64 %6, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 4
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_83238 = icmp samesign ult i64 %1, 33
  br i1 %_83238, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph42 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph41 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph40 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph39 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph39, null
  %.sink77 = ptrtoint ptr %v.sroa.0.0.ph42 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8d8f5e88bad7f848E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.033, -1
  %len_div_84.i = lshr i64 %v.sroa.16.034, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.034, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7c4ae355659df841E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1604), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1606), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1609), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1611), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1614), !noalias !1601
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1616, !noalias !1619, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1621, !noalias !1622, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1623, !noalias !1632, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !15
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h5cd778910741b372E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1637, !noalias !1646, !noundef !15
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9f91c09d3c33a181E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit", !prof !1064

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #25, !noalias !1651
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17c16f278db81791E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d41161b91c8988eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1064

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #25
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #4 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1062, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1063, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd1b7017c7d31d77aE.exit", !prof !1064

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd1b7017c7d31d77aE.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %_7.i = icmp ule i64 %capacity, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %_0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %4, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hdb230993842837bbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1655, !noundef !15
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hee03ed3757ee81edE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #7 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b3804c91d851acfE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #4 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f7d430126ab805E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %_5 = load ptr, ptr %self, align 8, !noundef !15
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0072bd361bff1b6E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #7 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !15
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #12 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1656, !noalias !1659, !noundef !15
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1659, !noalias !1656, !noundef !15
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i6 = icmp samesign ugt i64 %_0.i, 1
  br i1 %_0.i.i.i6, label %bb6.lr.ph, label %bb19

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 1
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 2
  %_7.i17.i.i.i = icmp samesign ne i64 %_0.i, 2
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 3
  %_7.i24.i.i.i = icmp samesign ne i64 %_0.i, 3
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb15
  %spec.select10 = phi i64 [ 2, %bb6.lr.ph ], [ %spec.select, %bb15 ]
  %iter.sroa.0.09 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select10, %bb15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_6.i.i, ptr %_16, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.09)
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1669, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb19:                                             ; preds = %bb12, %bb15, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb12 ], [ 1, %bb15 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb19
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb1.i.i unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb1.i.i:                                          ; preds = %cleanup.i.i
  resume { ptr, i32 } %4

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit": ; preds = %bb19
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0

bb4.i.i.i:                                        ; preds = %bb6
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1669, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %6 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb12

bb3.i.i.i:                                        ; preds = %bb6
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb12

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1669, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %7 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb12

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1669, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %8 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb12

bb12:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ %8, %bb8.i.i.i ], [ %7, %bb6.i.i.i ], [ %6, %bb4.i.i.i ]
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %_0.sroa.0.0.i, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb15, label %bb19

bb15:                                             ; preds = %bb12
  %_0.i.i.i = icmp ult i64 %spec.select10, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select10, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #7 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1676
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1679
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE.exit", label %bb7.i.i, !prof !1683

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1683

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h6cecf04592418851E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0672a9c432993fe7E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1676
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #4

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #18

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #4

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #22

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { noinline noreturn }
attributes #26 = { noreturn }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17hf93f867cadce67acE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17hf93f867cadce67acE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17hf93f867cadce67acE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17hf93f867cadce67acE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17hf93f867cadce67acE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E: %self"}
!14 = distinct !{!14, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"}
!15 = !{}
!16 = !{!17, !13}
!17 = distinct !{!17, !18, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E: %self"}
!18 = distinct !{!18, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E"}
!19 = !{!20, !13}
!20 = distinct !{!20, !21, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E: %self"}
!21 = distinct !{!21, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E"}
!22 = !{!23, !13}
!23 = distinct !{!23, !24, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E: %self"}
!24 = distinct !{!24, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17hf030dacb07ed8bd8E"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!27 = distinct !{!27, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4core3str11validations15next_code_point17ha0787ec7e839ad35E: %bytes"}
!30 = distinct !{!30, !"_ZN4core3str11validations15next_code_point17ha0787ec7e839ad35E"}
!31 = !{!32, !29, !26}
!32 = distinct !{!32, !33, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E: %self"}
!33 = distinct !{!33, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E"}
!34 = !{!29, !26}
!35 = !{!36, !29, !26}
!36 = distinct !{!36, !37, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E: %self"}
!37 = distinct !{!37, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E"}
!38 = !{!39, !29, !26}
!39 = distinct !{!39, !40, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E: %self"}
!40 = distinct !{!40, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E"}
!41 = !{!42, !29, !26}
!42 = distinct !{!42, !43, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E: %self"}
!43 = distinct !{!43, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94c2aa30788d4010E"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!46 = distinct !{!46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!51 = distinct !{!51, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4core5slice4sort6shared5pivot7median317h3d3b60eefd468160E: %c"}
!54 = distinct !{!54, !"_ZN4core5slice4sort6shared5pivot7median317h3d3b60eefd468160E"}
!55 = !{!56}
!56 = distinct !{!56, !51, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"cmpfunc: %a"}
!59 = distinct !{!59, !"cmpfunc"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"cmpfunc: %b"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!64 = distinct !{!64, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!67 = !{!63, !58, !50, !45}
!68 = !{!66, !61, !56, !48, !53}
!69 = !{!66, !61, !56, !48}
!70 = !{!63, !58, !50, !45, !53}
!71 = !{!72, !74, !76, !78}
!72 = distinct !{!72, !73, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!73 = distinct !{!73, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!74 = distinct !{!74, !75, !"cmpfunc: %b"}
!75 = distinct !{!75, !"cmpfunc"}
!76 = distinct !{!76, !77, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!77 = distinct !{!77, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!78 = distinct !{!78, !79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!79 = distinct !{!79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !73, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!82 = distinct !{!82, !75, !"cmpfunc: %a"}
!83 = distinct !{!83, !77, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!84 = distinct !{!84, !79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!87 = distinct !{!87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!92 = distinct !{!92, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"cmpfunc: %a"}
!97 = distinct !{!97, !"cmpfunc"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"cmpfunc: %b"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!102 = distinct !{!102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!105 = !{!101, !96, !91, !86}
!106 = !{!104, !99, !94, !89}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!109 = distinct !{!109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!110 = distinct !{!110, !111, !"cmpfunc: %b"}
!111 = distinct !{!111, !"cmpfunc"}
!112 = distinct !{!112, !113, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!113 = distinct !{!113, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!116 = !{!117, !118, !119, !120}
!117 = distinct !{!117, !109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!118 = distinct !{!118, !111, !"cmpfunc: %a"}
!119 = distinct !{!119, !113, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!120 = distinct !{!120, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E: %self"}
!123 = distinct !{!123, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E"}
!124 = distinct !{!124, !125, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE: %_1"}
!125 = distinct !{!125, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!128 = distinct !{!128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!133 = distinct !{!133, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"cmpfunc: %a"}
!138 = distinct !{!138, !"cmpfunc"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"cmpfunc: %b"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!143 = distinct !{!143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!146 = !{!142, !137, !132, !127}
!147 = !{!145, !140, !135, !130}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!150 = distinct !{!150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!155 = distinct !{!155, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"cmpfunc: %a"}
!160 = distinct !{!160, !"cmpfunc"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"cmpfunc: %b"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!165 = distinct !{!165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!168 = !{!164, !159, !154, !149}
!169 = !{!167, !162, !157, !152}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!172 = distinct !{!172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!177 = distinct !{!177, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"cmpfunc: %a"}
!182 = distinct !{!182, !"cmpfunc"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"cmpfunc: %b"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!187 = distinct !{!187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!190 = !{!186, !181, !176, !171}
!191 = !{!189, !184, !179, !174}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!194 = distinct !{!194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!199 = distinct !{!199, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"cmpfunc: %a"}
!204 = distinct !{!204, !"cmpfunc"}
!205 = !{!206}
!206 = distinct !{!206, !204, !"cmpfunc: %b"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!209 = distinct !{!209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!212 = !{!208, !203, !198, !193}
!213 = !{!211, !206, !201, !196}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!216 = distinct !{!216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!221 = distinct !{!221, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!222 = !{!223}
!223 = distinct !{!223, !221, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"cmpfunc: %a"}
!226 = distinct !{!226, !"cmpfunc"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"cmpfunc: %b"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!231 = distinct !{!231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!234 = !{!230, !225, !220, !215}
!235 = !{!233, !228, !223, !218}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!238 = distinct !{!238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!243 = distinct !{!243, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"cmpfunc: %a"}
!248 = distinct !{!248, !"cmpfunc"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"cmpfunc: %b"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!253 = distinct !{!253, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!256 = !{!252, !247, !242, !237}
!257 = !{!255, !250, !245, !240}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!260 = distinct !{!260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!265 = distinct !{!265, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"cmpfunc: %a"}
!270 = distinct !{!270, !"cmpfunc"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"cmpfunc: %b"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!275 = distinct !{!275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!278 = !{!274, !269, !264, !259}
!279 = !{!277, !272, !267, !262}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!282 = distinct !{!282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!287 = distinct !{!287, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"cmpfunc: %a"}
!292 = distinct !{!292, !"cmpfunc"}
!293 = !{!294}
!294 = distinct !{!294, !292, !"cmpfunc: %b"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!297 = distinct !{!297, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!300 = !{!296, !291, !286, !281}
!301 = !{!299, !294, !289, !284}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!304 = distinct !{!304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!309 = distinct !{!309, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"cmpfunc: %a"}
!314 = distinct !{!314, !"cmpfunc"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"cmpfunc: %b"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!319 = distinct !{!319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!322 = !{!318, !313, !308, !303}
!323 = !{!321, !316, !311, !306}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!326 = distinct !{!326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!331 = distinct !{!331, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"cmpfunc: %a"}
!336 = distinct !{!336, !"cmpfunc"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"cmpfunc: %b"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!341 = distinct !{!341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!344 = !{!340, !335, !330, !325}
!345 = !{!343, !338, !333, !328}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!348 = distinct !{!348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!353 = distinct !{!353, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"cmpfunc: %a"}
!358 = distinct !{!358, !"cmpfunc"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"cmpfunc: %b"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!363 = distinct !{!363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!366 = !{!362, !357, !352, !347}
!367 = !{!365, !360, !355, !350}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!370 = distinct !{!370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!375 = distinct !{!375, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!376 = !{!377}
!377 = distinct !{!377, !375, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"cmpfunc: %a"}
!380 = distinct !{!380, !"cmpfunc"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"cmpfunc: %b"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!385 = distinct !{!385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!388 = !{!384, !379, !374, !369}
!389 = !{!387, !382, !377, !372}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!392 = distinct !{!392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!397 = distinct !{!397, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!398 = !{!399}
!399 = distinct !{!399, !397, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"cmpfunc: %a"}
!402 = distinct !{!402, !"cmpfunc"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"cmpfunc: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!407 = distinct !{!407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!410 = !{!406, !401, !396, !391}
!411 = !{!409, !404, !399, !394}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!414 = distinct !{!414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!419 = distinct !{!419, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"cmpfunc: %a"}
!424 = distinct !{!424, !"cmpfunc"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"cmpfunc: %b"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!429 = distinct !{!429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!432 = !{!428, !423, !418, !413}
!433 = !{!431, !426, !421, !416}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!436 = distinct !{!436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!441 = distinct !{!441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"cmpfunc: %a"}
!446 = distinct !{!446, !"cmpfunc"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"cmpfunc: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!451 = distinct !{!451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!454 = !{!450, !445, !440, !435}
!455 = !{!453, !448, !443, !438}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E: %v.0"}
!458 = distinct !{!458, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!461 = distinct !{!461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!466 = distinct !{!466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %_0"}
!469 = distinct !{!469, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E"}
!470 = !{!471}
!471 = distinct !{!471, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"cmpfunc: %a"}
!474 = distinct !{!474, !"cmpfunc"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"cmpfunc: %b"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!479 = distinct !{!479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!482 = !{!478, !473, !465, !460, !457}
!483 = !{!481, !476, !471, !463, !468}
!484 = !{!481, !476, !471, !463, !457}
!485 = !{!478, !473, !465, !460, !468}
!486 = !{!468, !487, !457}
!487 = distinct !{!487, !469, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %is_less"}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!490 = distinct !{!490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!495 = distinct !{!495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %_0"}
!498 = distinct !{!498, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E"}
!499 = !{!500}
!500 = distinct !{!500, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"cmpfunc: %a"}
!503 = distinct !{!503, !"cmpfunc"}
!504 = !{!505}
!505 = distinct !{!505, !503, !"cmpfunc: %b"}
!506 = !{!507}
!507 = distinct !{!507, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!508 = distinct !{!508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!509 = !{!510}
!510 = distinct !{!510, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!511 = !{!507, !502, !494, !489, !457}
!512 = !{!510, !505, !500, !492, !497}
!513 = !{!510, !505, !500, !492, !457}
!514 = !{!507, !502, !494, !489, !497}
!515 = !{!497, !516, !457}
!516 = distinct !{!516, !498, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %is_less"}
!517 = !{!518}
!518 = distinct !{!518, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It1"}
!519 = !{!520}
!520 = distinct !{!520, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It1"}
!521 = !{!522}
!522 = distinct !{!522, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It1"}
!523 = !{!524}
!524 = distinct !{!524, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It1"}
!525 = !{!526}
!526 = distinct !{!526, !474, !"cmpfunc: %a:It1"}
!527 = !{!528}
!528 = distinct !{!528, !474, !"cmpfunc: %b:It1"}
!529 = !{!530}
!530 = distinct !{!530, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!531 = !{!532}
!532 = distinct !{!532, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!533 = !{!530, !526, !522, !518, !457}
!534 = !{!532, !528, !524, !520, !468}
!535 = !{!532, !528, !524, !520, !457}
!536 = !{!530, !526, !522, !518, !468}
!537 = !{!538}
!538 = distinct !{!538, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It1"}
!539 = !{!540}
!540 = distinct !{!540, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It1"}
!541 = !{!542}
!542 = distinct !{!542, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It1"}
!543 = !{!544}
!544 = distinct !{!544, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It1"}
!545 = !{!546}
!546 = distinct !{!546, !503, !"cmpfunc: %a:It1"}
!547 = !{!548}
!548 = distinct !{!548, !503, !"cmpfunc: %b:It1"}
!549 = !{!550}
!550 = distinct !{!550, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!551 = !{!552}
!552 = distinct !{!552, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!553 = !{!550, !546, !542, !538, !457}
!554 = !{!552, !548, !544, !540, !497}
!555 = !{!552, !548, !544, !540, !457}
!556 = !{!550, !546, !542, !538, !497}
!557 = !{!558}
!558 = distinct !{!558, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It2"}
!559 = !{!560}
!560 = distinct !{!560, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It2"}
!561 = !{!562}
!562 = distinct !{!562, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It2"}
!563 = !{!564}
!564 = distinct !{!564, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It2"}
!565 = !{!566}
!566 = distinct !{!566, !474, !"cmpfunc: %a:It2"}
!567 = !{!568}
!568 = distinct !{!568, !474, !"cmpfunc: %b:It2"}
!569 = !{!570}
!570 = distinct !{!570, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!571 = !{!572}
!572 = distinct !{!572, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!573 = !{!570, !566, !562, !558, !457}
!574 = !{!572, !568, !564, !560, !468}
!575 = !{!572, !568, !564, !560, !457}
!576 = !{!570, !566, !562, !558, !468}
!577 = !{!578}
!578 = distinct !{!578, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It2"}
!579 = !{!580}
!580 = distinct !{!580, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It2"}
!581 = !{!582}
!582 = distinct !{!582, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It2"}
!583 = !{!584}
!584 = distinct !{!584, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It2"}
!585 = !{!586}
!586 = distinct !{!586, !503, !"cmpfunc: %a:It2"}
!587 = !{!588}
!588 = distinct !{!588, !503, !"cmpfunc: %b:It2"}
!589 = !{!590}
!590 = distinct !{!590, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!591 = !{!592}
!592 = distinct !{!592, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!593 = !{!590, !586, !582, !578, !457}
!594 = !{!592, !588, !584, !580, !497}
!595 = !{!592, !588, !584, !580, !457}
!596 = !{!590, !586, !582, !578, !497}
!597 = !{!598}
!598 = distinct !{!598, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It3"}
!599 = !{!600}
!600 = distinct !{!600, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It3"}
!601 = !{!602}
!602 = distinct !{!602, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It3"}
!603 = !{!604}
!604 = distinct !{!604, !466, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It3"}
!605 = !{!606}
!606 = distinct !{!606, !474, !"cmpfunc: %a:It3"}
!607 = !{!608}
!608 = distinct !{!608, !474, !"cmpfunc: %b:It3"}
!609 = !{!610}
!610 = distinct !{!610, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!611 = !{!612}
!612 = distinct !{!612, !479, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!613 = !{!610, !606, !602, !598, !457}
!614 = !{!612, !608, !604, !600, !468}
!615 = !{!612, !608, !604, !600, !457}
!616 = !{!610, !606, !602, !598, !468}
!617 = !{!618}
!618 = distinct !{!618, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a:It3"}
!619 = !{!620}
!620 = distinct !{!620, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b:It3"}
!621 = !{!622}
!622 = distinct !{!622, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0:It3"}
!623 = !{!624}
!624 = distinct !{!624, !495, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1:It3"}
!625 = !{!626}
!626 = distinct !{!626, !503, !"cmpfunc: %a:It3"}
!627 = !{!628}
!628 = distinct !{!628, !503, !"cmpfunc: %b:It3"}
!629 = !{!630}
!630 = distinct !{!630, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!631 = !{!632}
!632 = distinct !{!632, !508, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!633 = !{!630, !626, !622, !618, !457}
!634 = !{!632, !628, !624, !620, !497}
!635 = !{!632, !628, !624, !620, !457}
!636 = !{!630, !626, !622, !618, !497}
!637 = !{!"branch_weights", i32 4001, i32 4000000}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!640 = distinct !{!640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!641 = !{!642}
!642 = distinct !{!642, !640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!645 = distinct !{!645, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %_0"}
!648 = distinct !{!648, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E"}
!649 = !{!650}
!650 = distinct !{!650, !645, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"cmpfunc: %a"}
!653 = distinct !{!653, !"cmpfunc"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"cmpfunc: %b"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!658 = distinct !{!658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!659 = !{!660}
!660 = distinct !{!660, !658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!661 = !{!657, !652, !644, !639}
!662 = !{!660, !655, !650, !642, !647}
!663 = !{!660, !655, !650, !642}
!664 = !{!657, !652, !644, !639, !647}
!665 = !{!647, !666}
!666 = distinct !{!666, !648, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %is_less"}
!667 = !{!668}
!668 = distinct !{!668, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!669 = distinct !{!669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!670 = !{!671}
!671 = distinct !{!671, !669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!672 = !{!673}
!673 = distinct !{!673, !674, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!674 = distinct !{!674, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %_0"}
!677 = distinct !{!677, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E"}
!678 = !{!679}
!679 = distinct !{!679, !674, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"cmpfunc: %a"}
!682 = distinct !{!682, !"cmpfunc"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"cmpfunc: %b"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!687 = distinct !{!687, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!688 = !{!689}
!689 = distinct !{!689, !687, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!690 = !{!686, !681, !673, !668}
!691 = !{!689, !684, !679, !671, !676}
!692 = !{!689, !684, !679, !671}
!693 = !{!686, !681, !673, !668, !676}
!694 = !{!676, !695}
!695 = distinct !{!695, !677, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %is_less"}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!698 = distinct !{!698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!699 = !{!700}
!700 = distinct !{!700, !698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!701 = !{!702}
!702 = distinct !{!702, !703, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!703 = distinct !{!703, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!704 = !{!705}
!705 = distinct !{!705, !703, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"cmpfunc: %a"}
!708 = distinct !{!708, !"cmpfunc"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"cmpfunc: %b"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!713 = distinct !{!713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!716 = !{!712, !707, !702, !697}
!717 = !{!715, !710, !705, !700}
!718 = !{!719, !721, !723, !725}
!719 = distinct !{!719, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!720 = distinct !{!720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!721 = distinct !{!721, !722, !"cmpfunc: %b"}
!722 = distinct !{!722, !"cmpfunc"}
!723 = distinct !{!723, !724, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!724 = distinct !{!724, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!725 = distinct !{!725, !726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!726 = distinct !{!726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!727 = !{!728, !729, !730, !731}
!728 = distinct !{!728, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!729 = distinct !{!729, !722, !"cmpfunc: %a"}
!730 = distinct !{!730, !724, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!731 = distinct !{!731, !726, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!732 = !{!733, !735}
!733 = distinct !{!733, !734, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E: %self"}
!734 = distinct !{!734, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E"}
!735 = distinct !{!735, !736, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE: %_1"}
!736 = distinct !{!736, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE"}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!739 = distinct !{!739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!740 = !{!741}
!741 = distinct !{!741, !739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!742 = !{!743}
!743 = distinct !{!743, !744, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!744 = distinct !{!744, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!745 = !{!746}
!746 = distinct !{!746, !744, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"cmpfunc: %a"}
!749 = distinct !{!749, !"cmpfunc"}
!750 = !{!751}
!751 = distinct !{!751, !749, !"cmpfunc: %b"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!754 = distinct !{!754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!757 = !{!753, !748, !743, !738}
!758 = !{!756, !751, !746, !741}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!761 = distinct !{!761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!762 = !{!763}
!763 = distinct !{!763, !761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!766 = distinct !{!766, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!767 = !{!768}
!768 = distinct !{!768, !766, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"cmpfunc: %a"}
!771 = distinct !{!771, !"cmpfunc"}
!772 = !{!773}
!773 = distinct !{!773, !771, !"cmpfunc: %b"}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!776 = distinct !{!776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!777 = !{!778}
!778 = distinct !{!778, !776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!779 = !{!775, !770, !765, !760}
!780 = !{!778, !773, !768, !763}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!783 = distinct !{!783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!784 = !{!785}
!785 = distinct !{!785, !783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!786 = !{!787}
!787 = distinct !{!787, !788, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!788 = distinct !{!788, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!789 = !{!790}
!790 = distinct !{!790, !788, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"cmpfunc: %a"}
!793 = distinct !{!793, !"cmpfunc"}
!794 = !{!795}
!795 = distinct !{!795, !793, !"cmpfunc: %b"}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!798 = distinct !{!798, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!799 = !{!800}
!800 = distinct !{!800, !798, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!801 = !{!797, !792, !787, !782}
!802 = !{!800, !795, !790, !785}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!805 = distinct !{!805, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!806 = !{!807}
!807 = distinct !{!807, !805, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!808 = !{!809}
!809 = distinct !{!809, !810, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!810 = distinct !{!810, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!811 = !{!812}
!812 = distinct !{!812, !810, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!813 = !{!814}
!814 = distinct !{!814, !815, !"cmpfunc: %a"}
!815 = distinct !{!815, !"cmpfunc"}
!816 = !{!817}
!817 = distinct !{!817, !815, !"cmpfunc: %b"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!820 = distinct !{!820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!821 = !{!822}
!822 = distinct !{!822, !820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!823 = !{!819, !814, !809, !804}
!824 = !{!822, !817, !812, !807}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!827 = distinct !{!827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!832 = distinct !{!832, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!835 = !{!836}
!836 = distinct !{!836, !837, !"cmpfunc: %a"}
!837 = distinct !{!837, !"cmpfunc"}
!838 = !{!839}
!839 = distinct !{!839, !837, !"cmpfunc: %b"}
!840 = !{!841}
!841 = distinct !{!841, !842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!842 = distinct !{!842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!843 = !{!844}
!844 = distinct !{!844, !842, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!845 = !{!841, !836, !831, !826}
!846 = !{!844, !839, !834, !829}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!849 = distinct !{!849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!850 = !{!851}
!851 = distinct !{!851, !849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!852 = !{!853}
!853 = distinct !{!853, !854, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!854 = distinct !{!854, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!855 = !{!856}
!856 = distinct !{!856, !854, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!857 = !{!858}
!858 = distinct !{!858, !859, !"cmpfunc: %a"}
!859 = distinct !{!859, !"cmpfunc"}
!860 = !{!861}
!861 = distinct !{!861, !859, !"cmpfunc: %b"}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!864 = distinct !{!864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!865 = !{!866}
!866 = distinct !{!866, !864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!867 = !{!863, !858, !853, !848}
!868 = !{!866, !861, !856, !851}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!871 = distinct !{!871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!876 = distinct !{!876, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"cmpfunc: %a"}
!881 = distinct !{!881, !"cmpfunc"}
!882 = !{!883}
!883 = distinct !{!883, !881, !"cmpfunc: %b"}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!886 = distinct !{!886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!889 = !{!885, !880, !875, !870}
!890 = !{!888, !883, !878, !873}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!898 = distinct !{!898, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!901 = !{!902}
!902 = distinct !{!902, !903, !"cmpfunc: %a"}
!903 = distinct !{!903, !"cmpfunc"}
!904 = !{!905}
!905 = distinct !{!905, !903, !"cmpfunc: %b"}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!908 = distinct !{!908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!911 = !{!907, !902, !897, !892}
!912 = !{!910, !905, !900, !895}
!913 = !{!914}
!914 = distinct !{!914, !915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!915 = distinct !{!915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!916 = !{!917}
!917 = distinct !{!917, !915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!918 = !{!919}
!919 = distinct !{!919, !920, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!920 = distinct !{!920, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!921 = !{!922}
!922 = distinct !{!922, !920, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!923 = !{!924}
!924 = distinct !{!924, !925, !"cmpfunc: %a"}
!925 = distinct !{!925, !"cmpfunc"}
!926 = !{!927}
!927 = distinct !{!927, !925, !"cmpfunc: %b"}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!930 = distinct !{!930, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!931 = !{!932}
!932 = distinct !{!932, !930, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!933 = !{!929, !924, !919, !914}
!934 = !{!932, !927, !922, !917}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!937 = distinct !{!937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!942 = distinct !{!942, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!943 = !{!944}
!944 = distinct !{!944, !942, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"cmpfunc: %a"}
!947 = distinct !{!947, !"cmpfunc"}
!948 = !{!949}
!949 = distinct !{!949, !947, !"cmpfunc: %b"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!952 = distinct !{!952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!955 = !{!951, !946, !941, !936}
!956 = !{!954, !949, !944, !939}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E: %self.0"}
!959 = distinct !{!959, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2f85a0a78f688b60E"}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E: %v.0"}
!962 = distinct !{!962, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h19080ab487c5a1f3E"}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!965 = distinct !{!965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!966 = !{!967}
!967 = distinct !{!967, !965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!968 = !{!969}
!969 = distinct !{!969, !970, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!970 = distinct !{!970, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %_0"}
!973 = distinct !{!973, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E"}
!974 = !{!975}
!975 = distinct !{!975, !970, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!976 = !{!977}
!977 = distinct !{!977, !978, !"cmpfunc: %a"}
!978 = distinct !{!978, !"cmpfunc"}
!979 = !{!980}
!980 = distinct !{!980, !978, !"cmpfunc: %b"}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!983 = distinct !{!983, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!984 = !{!985}
!985 = distinct !{!985, !983, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!986 = !{!982, !977, !969, !964, !961}
!987 = !{!985, !980, !975, !967, !972}
!988 = !{!985, !980, !975, !967, !961}
!989 = !{!982, !977, !969, !964, !972}
!990 = !{!972, !991, !961}
!991 = distinct !{!991, !973, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0beb9b5bd31b3fc5E: %is_less"}
!992 = !{!993}
!993 = distinct !{!993, !994, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!994 = distinct !{!994, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!995 = !{!996}
!996 = distinct !{!996, !994, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!997 = !{!998}
!998 = distinct !{!998, !999, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!999 = distinct !{!999, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !1002, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %_0"}
!1002 = distinct !{!1002, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !999, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"cmpfunc: %a"}
!1007 = distinct !{!1007, !"cmpfunc"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1007, !"cmpfunc: %b"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1012 = distinct !{!1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1012, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1015 = !{!1011, !1006, !998, !993, !961}
!1016 = !{!1014, !1009, !1004, !996, !1001}
!1017 = !{!1014, !1009, !1004, !996, !961}
!1018 = !{!1011, !1006, !998, !993, !1001}
!1019 = !{!1001, !1020, !961}
!1020 = distinct !{!1020, !1002, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h80246afbd839b3d2E: %is_less"}
!1021 = !{!1022, !1024}
!1022 = distinct !{!1022, !1023, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E: %self"}
!1023 = distinct !{!1023, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E"}
!1024 = distinct !{!1024, !1025, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE: %_1"}
!1025 = distinct !{!1025, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE"}
!1026 = !{!1027, !1029, !1031, !1033}
!1027 = distinct !{!1027, !1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1028 = distinct !{!1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1029 = distinct !{!1029, !1030, !"cmpfunc: %b"}
!1030 = distinct !{!1030, !"cmpfunc"}
!1031 = distinct !{!1031, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1032 = distinct !{!1032, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1033 = distinct !{!1033, !1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1034 = distinct !{!1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1035 = !{!1036, !1037, !1038, !1039}
!1036 = distinct !{!1036, !1028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1037 = distinct !{!1037, !1030, !"cmpfunc: %a"}
!1038 = distinct !{!1038, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1039 = distinct !{!1039, !1034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1040 = !{!1041, !1043, !1045, !1047}
!1041 = distinct !{!1041, !1042, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1042 = distinct !{!1042, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1043 = distinct !{!1043, !1044, !"cmpfunc: %b"}
!1044 = distinct !{!1044, !"cmpfunc"}
!1045 = distinct !{!1045, !1046, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1046 = distinct !{!1046, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1047 = distinct !{!1047, !1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1048 = distinct !{!1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1049 = !{!1050, !1051, !1052, !1053}
!1050 = distinct !{!1050, !1042, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1051 = distinct !{!1051, !1044, !"cmpfunc: %a"}
!1052 = distinct !{!1052, !1046, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1053 = distinct !{!1053, !1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1054 = !{!1055, !1057}
!1055 = distinct !{!1055, !1056, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E: %self"}
!1056 = distinct !{!1056, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h38418977890df823E"}
!1057 = distinct !{!1057, !1058, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE: %_1"}
!1058 = distinct !{!1058, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hfbb528a7e0cc6f1dE"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE: %_0"}
!1061 = distinct !{!1061, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hec9c035058cb911eE"}
!1062 = !{i64 0, i64 2}
!1063 = !{i64 0, i64 -9223372036854775807}
!1064 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1067 = distinct !{!1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1072, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"cmpfunc: %a"}
!1077 = distinct !{!1077, !"cmpfunc"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1077, !"cmpfunc: %b"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1082 = distinct !{!1082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1085 = !{!1081, !1076, !1071, !1066}
!1086 = !{!1084, !1079, !1074, !1069}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1089 = distinct !{!1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1089, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1094 = distinct !{!1094, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1099, !"cmpfunc: %a"}
!1099 = distinct !{!1099, !"cmpfunc"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1099, !"cmpfunc: %b"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1104 = distinct !{!1104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1107 = !{!1103, !1098, !1093, !1088}
!1108 = !{!1106, !1101, !1096, !1091}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1111 = distinct !{!1111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1111, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1116, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1116 = distinct !{!1116, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1116, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"cmpfunc: %a"}
!1121 = distinct !{!1121, !"cmpfunc"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1121, !"cmpfunc: %b"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1126 = distinct !{!1126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1129 = !{!1125, !1120, !1115, !1110}
!1130 = !{!1128, !1123, !1118, !1113}
!1131 = !{!1132, !1134}
!1132 = distinct !{!1132, !1133, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h12c9a542b6bd79a0E: %a.0"}
!1133 = distinct !{!1133, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h12c9a542b6bd79a0E"}
!1134 = distinct !{!1134, !1135, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h311a595dee5662f5E: %self.0"}
!1135 = distinct !{!1135, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h311a595dee5662f5E"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1133, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h12c9a542b6bd79a0E: %b.0"}
!1138 = !{!1137, !1134}
!1139 = !{!1132}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E: %v.0"}
!1142 = distinct !{!1142, !"_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZN4core5slice4sort6stable5merge5merge17hc3371248ba2f98c6E: %scratch.0"}
!1145 = !{!1141, !1144}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1148 = distinct !{!1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1153 = distinct !{!1153, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1153, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1158, !"cmpfunc: %a"}
!1158 = distinct !{!1158, !"cmpfunc"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1158, !"cmpfunc: %b"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1163 = distinct !{!1163, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1163, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1166 = !{!1162, !1157, !1152, !1147, !1144}
!1167 = !{!1165, !1160, !1155, !1150, !1168, !1141}
!1168 = distinct !{!1168, !1169, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7fb84419fdbbb37fE: %self"}
!1169 = distinct !{!1169, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7fb84419fdbbb37fE"}
!1170 = !{!1165, !1160, !1155, !1150, !1141}
!1171 = !{!1162, !1157, !1152, !1147, !1168, !1144}
!1172 = !{!1168, !1144}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1175 = distinct !{!1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1180 = distinct !{!1180, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1180, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1185, !"cmpfunc: %a"}
!1185 = distinct !{!1185, !"cmpfunc"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1185, !"cmpfunc: %b"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1190 = distinct !{!1190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1193 = !{!1189, !1184, !1179, !1174, !1141}
!1194 = !{!1192, !1187, !1182, !1177, !1195, !1144}
!1195 = distinct !{!1195, !1196, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hb6867732fdc2e402E: %self"}
!1196 = distinct !{!1196, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hb6867732fdc2e402E"}
!1197 = !{!1192, !1187, !1182, !1177, !1144}
!1198 = !{!1189, !1184, !1179, !1174, !1195, !1141}
!1199 = !{!1195, !1144}
!1200 = !{!1201, !1203}
!1201 = distinct !{!1201, !1202, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f7d430126ab805E: %self"}
!1202 = distinct !{!1202, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f7d430126ab805E"}
!1203 = distinct !{!1203, !1204, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h55c80824f01ec33cE: %_1"}
!1204 = distinct !{!1204, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h55c80824f01ec33cE"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1207 = distinct !{!1207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1212, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1212 = distinct !{!1212, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1212, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"cmpfunc: %a"}
!1217 = distinct !{!1217, !"cmpfunc"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1217, !"cmpfunc: %b"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1222 = distinct !{!1222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1225 = !{!1221, !1216, !1211, !1206}
!1226 = !{!1224, !1219, !1214, !1209}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1229 = distinct !{!1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1234 = distinct !{!1234, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"cmpfunc: %a"}
!1239 = distinct !{!1239, !"cmpfunc"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1239, !"cmpfunc: %b"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1244 = distinct !{!1244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1247 = !{!1243, !1238, !1233, !1228}
!1248 = !{!1246, !1241, !1236, !1231}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1251 = distinct !{!1251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1256 = distinct !{!1256, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1256, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"cmpfunc: %a"}
!1261 = distinct !{!1261, !"cmpfunc"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1261, !"cmpfunc: %b"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1266 = distinct !{!1266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1269 = !{!1265, !1260, !1255, !1250}
!1270 = !{!1268, !1263, !1258, !1253, !1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7fb84419fdbbb37fE: %self"}
!1272 = distinct !{!1272, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7fb84419fdbbb37fE"}
!1273 = !{!1268, !1263, !1258, !1253}
!1274 = !{!1265, !1260, !1255, !1250, !1271}
!1275 = !{!1271}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1278 = distinct !{!1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1283 = distinct !{!1283, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"cmpfunc: %a"}
!1288 = distinct !{!1288, !"cmpfunc"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288, !"cmpfunc: %b"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1293 = distinct !{!1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1296 = !{!1292, !1287, !1282, !1277}
!1297 = !{!1295, !1290, !1285, !1280, !1298}
!1298 = distinct !{!1298, !1299, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hb6867732fdc2e402E: %self"}
!1299 = distinct !{!1299, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hb6867732fdc2e402E"}
!1300 = !{!1295, !1290, !1285, !1280}
!1301 = !{!1292, !1287, !1282, !1277, !1298}
!1302 = !{!1298}
!1303 = !{!1304, !1306}
!1304 = distinct !{!1304, !1305, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f7d430126ab805E: %self"}
!1305 = distinct !{!1305, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f7d430126ab805E"}
!1306 = distinct !{!1306, !1307, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h55c80824f01ec33cE: %_1"}
!1307 = distinct !{!1307, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h55c80824f01ec33cE"}
!1308 = !{!"branch_weights", i32 4000000, i32 4001}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %a"}
!1311 = distinct !{!1311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %b"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1316 = distinct !{!1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1321 = distinct !{!1321, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"cmpfunc: %a"}
!1326 = distinct !{!1326, !"cmpfunc"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"cmpfunc: %b"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1331 = distinct !{!1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1334 = !{!1330, !1325, !1320, !1315, !1313}
!1335 = !{!1333, !1328, !1323, !1318, !1310}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1338 = distinct !{!1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %a"}
!1341 = distinct !{!1341, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %b"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1346, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1346 = distinct !{!1346, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1346, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1351 = distinct !{!1351, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1351, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"cmpfunc: %a"}
!1356 = distinct !{!1356, !"cmpfunc"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1356, !"cmpfunc: %b"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1361 = distinct !{!1361, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1364 = !{!1360, !1355, !1350, !1345, !1343}
!1365 = !{!1363, !1358, !1353, !1348, !1340}
!1366 = !{!1367}
!1367 = distinct !{!1367, !1368, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1368 = distinct !{!1368, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %a"}
!1371 = distinct !{!1371, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1371, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %b"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1376 = distinct !{!1376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1379 = !{!1380}
!1380 = distinct !{!1380, !1381, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1381 = distinct !{!1381, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1381, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1386, !"cmpfunc: %a"}
!1386 = distinct !{!1386, !"cmpfunc"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1386, !"cmpfunc: %b"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1391 = distinct !{!1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1394 = !{!1390, !1385, !1380, !1375, !1373}
!1395 = !{!1393, !1388, !1383, !1378, !1370}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1398, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1398 = distinct !{!1398, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %a"}
!1401 = distinct !{!1401, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1401, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %b"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1406 = distinct !{!1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1411, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1411 = distinct !{!1411, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1411, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"cmpfunc: %a"}
!1416 = distinct !{!1416, !"cmpfunc"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1416, !"cmpfunc: %b"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1421 = distinct !{!1421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1424 = !{!1420, !1415, !1410, !1405, !1403}
!1425 = !{!1423, !1418, !1413, !1408, !1400}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1428 = distinct !{!1428, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %a"}
!1431 = distinct !{!1431, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1431, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h60c73c2014549c91E: %b"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1436 = distinct !{!1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1441 = distinct !{!1441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1441, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"cmpfunc: %a"}
!1446 = distinct !{!1446, !"cmpfunc"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"cmpfunc: %b"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1451 = distinct !{!1451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1451, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1454 = !{!1450, !1445, !1440, !1435, !1433}
!1455 = !{!1453, !1448, !1443, !1438, !1430}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1458, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1458 = distinct !{!1458, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1461, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1461 = distinct !{!1461, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1462 = distinct !{!1462, !1463}
!1463 = !{!"llvm.loop.unroll.disable"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1466 = distinct !{!1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1471 = distinct !{!1471, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1471, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"cmpfunc: %a"}
!1476 = distinct !{!1476, !"cmpfunc"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"cmpfunc: %b"}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1481 = distinct !{!1481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1484 = !{!1480, !1475, !1470, !1465}
!1485 = !{!1483, !1478, !1473, !1468}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1488 = distinct !{!1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1491 = distinct !{!1491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1496 = distinct !{!1496, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"cmpfunc: %a"}
!1501 = distinct !{!1501, !"cmpfunc"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1501, !"cmpfunc: %b"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1506 = distinct !{!1506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1509 = !{!1505, !1500, !1495, !1490}
!1510 = !{!1508, !1503, !1498, !1493}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1513 = distinct !{!1513, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1516 = distinct !{!1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1521 = distinct !{!1521, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"cmpfunc: %a"}
!1526 = distinct !{!1526, !"cmpfunc"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1526, !"cmpfunc: %b"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1531 = distinct !{!1531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1534 = !{!1530, !1525, !1520, !1515}
!1535 = !{!1533, !1528, !1523, !1518}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1538 = distinct !{!1538, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1541 = distinct !{!1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1546 = distinct !{!1546, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1546, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1551, !"cmpfunc: %a"}
!1551 = distinct !{!1551, !"cmpfunc"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1551, !"cmpfunc: %b"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1556 = distinct !{!1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1556, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1559 = !{!1555, !1550, !1545, !1540}
!1560 = !{!1558, !1553, !1548, !1543}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1563 = distinct !{!1563, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1566 = distinct !{!1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1569 = !{!1570}
!1570 = distinct !{!1570, !1571, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1571 = distinct !{!1571, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1571, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1576, !"cmpfunc: %a"}
!1576 = distinct !{!1576, !"cmpfunc"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1576, !"cmpfunc: %b"}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1581 = distinct !{!1581, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1581, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1584 = !{!1580, !1575, !1570, !1565}
!1585 = !{!1583, !1578, !1573, !1568}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1588 = distinct !{!1588, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE: %self"}
!1591 = distinct !{!1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h35923f99a2d68e6dE"}
!1592 = distinct !{!1592, !1463}
!1593 = !{!1594}
!1594 = distinct !{!1594, !1595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1595 = distinct !{!1595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1600 = distinct !{!1600, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1603, !"_ZN4core5slice4sort6shared5pivot7median317h3d3b60eefd468160E: %c"}
!1603 = distinct !{!1603, !"_ZN4core5slice4sort6shared5pivot7median317h3d3b60eefd468160E"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1600, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1608, !"cmpfunc: %a"}
!1608 = distinct !{!1608, !"cmpfunc"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1608, !"cmpfunc: %b"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1613 = distinct !{!1613, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1613, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1616 = !{!1612, !1607, !1599, !1594, !1617}
!1617 = distinct !{!1617, !1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE: %v.0"}
!1618 = distinct !{!1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE"}
!1619 = !{!1615, !1610, !1605, !1597, !1602, !1620}
!1620 = distinct !{!1620, !1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd42d22d6ceb3dd8fE: %is_less"}
!1621 = !{!1615, !1610, !1605, !1597, !1617}
!1622 = !{!1612, !1607, !1599, !1594, !1602, !1620}
!1623 = !{!1624, !1626, !1628, !1630, !1617}
!1624 = distinct !{!1624, !1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1625 = distinct !{!1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1626 = distinct !{!1626, !1627, !"cmpfunc: %b"}
!1627 = distinct !{!1627, !"cmpfunc"}
!1628 = distinct !{!1628, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1629 = distinct !{!1629, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1630 = distinct !{!1630, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1631 = distinct !{!1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1632 = !{!1633, !1634, !1635, !1636, !1620}
!1633 = distinct !{!1633, !1625, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1634 = distinct !{!1634, !1627, !"cmpfunc: %a"}
!1635 = distinct !{!1635, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1636 = distinct !{!1636, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1637 = !{!1638, !1640, !1642, !1644}
!1638 = distinct !{!1638, !1639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1639 = distinct !{!1639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1640 = distinct !{!1640, !1641, !"cmpfunc: %a"}
!1641 = distinct !{!1641, !"cmpfunc"}
!1642 = distinct !{!1642, !1643, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 0"}
!1643 = distinct !{!1643, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E"}
!1644 = distinct !{!1644, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %a"}
!1645 = distinct !{!1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E"}
!1646 = !{!1647, !1648, !1649, !1650}
!1647 = distinct !{!1647, !1639, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1648 = distinct !{!1648, !1641, !"cmpfunc: %b"}
!1649 = distinct !{!1649, !1643, !"_ZN4core3ops8function5FnMut8call_mut17h35f0a147616dc353E: argument 1"}
!1650 = distinct !{!1650, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfe44cd1a4bf02f21E: %b"}
!1651 = !{!1652, !1654}
!1652 = distinct !{!1652, !1653, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E: %pair"}
!1653 = distinct !{!1653, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E"}
!1654 = distinct !{!1654, !1653, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h69ffdb83e6093402E: %self.0"}
!1655 = !{i64 0, i64 -9223372036854775808}
!1656 = !{!1657}
!1657 = distinct !{!1657, !1658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1658 = distinct !{!1658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1659 = !{!1660}
!1660 = distinct !{!1660, !1658, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!1663 = distinct !{!1663, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!1664 = !{!1665, !1667}
!1665 = distinct !{!1665, !1666, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!1666 = distinct !{!1666, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!1667 = distinct !{!1667, !1668, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!1668 = distinct !{!1668, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!1669 = !{!1670, !1672, !1674}
!1670 = distinct !{!1670, !1671, !"_ZN4core3str11validations15next_code_point17ha0787ec7e839ad35E: %bytes"}
!1671 = distinct !{!1671, !"_ZN4core3str11validations15next_code_point17ha0787ec7e839ad35E"}
!1672 = distinct !{!1672, !1673, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!1673 = distinct !{!1673, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!1674 = distinct !{!1674, !1675, !"_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E: %self"}
!1675 = distinct !{!1675, !"_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE: %self.0"}
!1678 = distinct !{!1678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hcd27ea68cf42783cE"}
!1679 = !{!1680, !1682, !1677}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice11stable_sort17h75e88b88137e9a5aE: %v.0"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice11stable_sort17h75e88b88137e9a5aE"}
!1682 = distinct !{!1682, !1681, !"_ZN5alloc5slice11stable_sort17h75e88b88137e9a5aE: argument 1"}
!1683 = !{!"branch_weights", !"expected", i32 2000, i32 1}
