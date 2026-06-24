; ModuleID = 'SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit.359775103fa42952-cgu.0'
source_filename = "SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit.359775103fa42952-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb713df77e1650625E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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

; core::iter::traits::iterator::Iterator::sum
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef i32 @_ZN4core4iter6traits8iterator8Iterator3sum17h1e04be24bae479dcE(ptr noundef nonnull %self.0, ptr noundef %self.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = icmp ne ptr %self.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = icmp eq ptr %self.0, %self.1
  br i1 %1, label %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit", label %bb5.i.i

bb5.i.i:                                          ; preds = %start
  %2 = ptrtoint ptr %self.1 to i64
  %3 = ptrtoint ptr %self.0 to i64
  %4 = sub nuw i64 %2, %3
  %5 = lshr exact i64 %4, 2
  %xtraiter = and i64 %5, 7
  %6 = icmp ult i64 %4, 32
  br i1 %6, label %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa", label %bb5.i.i.new

bb5.i.i.new:                                      ; preds = %bb5.i.i
  %unroll_iter = and i64 %5, 4611686018427387896
  %invariant.gep = getelementptr i8, ptr %self.0, i64 4
  %invariant.gep2 = getelementptr i8, ptr %self.0, i64 8
  %invariant.gep4 = getelementptr i8, ptr %self.0, i64 12
  %invariant.gep6 = getelementptr i8, ptr %self.0, i64 16
  %invariant.gep8 = getelementptr i8, ptr %self.0, i64 20
  %invariant.gep10 = getelementptr i8, ptr %self.0, i64 24
  %invariant.gep12 = getelementptr i8, ptr %self.0, i64 28
  br label %bb10.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i.new
  %i.sroa.0.0.i.i = phi i64 [ 0, %bb5.i.i.new ], [ %_27.i.i.7, %bb10.i.i ]
  %acc.sroa.0.0.i.i = phi i32 [ 0, %bb5.i.i.new ], [ %_5.0.i.i.i.7, %bb10.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.new ], [ %niter.next.7, %bb10.i.i ]
  %_36.i.i = getelementptr inbounds nuw i32, ptr %self.0, i64 %i.sroa.0.0.i.i
  %other.i.i.i = load i32, ptr %_36.i.i, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i = add i32 %other.i.i.i, %acc.sroa.0.0.i.i
  %gep = getelementptr i32, ptr %invariant.gep, i64 %i.sroa.0.0.i.i
  %other.i.i.i.1 = load i32, ptr %gep, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.1 = add i32 %other.i.i.i.1, %_5.0.i.i.i
  %gep3 = getelementptr i32, ptr %invariant.gep2, i64 %i.sroa.0.0.i.i
  %other.i.i.i.2 = load i32, ptr %gep3, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.2 = add i32 %other.i.i.i.2, %_5.0.i.i.i.1
  %gep5 = getelementptr i32, ptr %invariant.gep4, i64 %i.sroa.0.0.i.i
  %other.i.i.i.3 = load i32, ptr %gep5, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.3 = add i32 %other.i.i.i.3, %_5.0.i.i.i.2
  %gep7 = getelementptr i32, ptr %invariant.gep6, i64 %i.sroa.0.0.i.i
  %other.i.i.i.4 = load i32, ptr %gep7, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.4 = add i32 %other.i.i.i.4, %_5.0.i.i.i.3
  %gep9 = getelementptr i32, ptr %invariant.gep8, i64 %i.sroa.0.0.i.i
  %other.i.i.i.5 = load i32, ptr %gep9, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.5 = add i32 %other.i.i.i.5, %_5.0.i.i.i.4
  %gep11 = getelementptr i32, ptr %invariant.gep10, i64 %i.sroa.0.0.i.i
  %other.i.i.i.6 = load i32, ptr %gep11, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.6 = add i32 %other.i.i.i.6, %_5.0.i.i.i.5
  %gep13 = getelementptr i32, ptr %invariant.gep12, i64 %i.sroa.0.0.i.i
  %other.i.i.i.7 = load i32, ptr %gep13, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.7 = add i32 %other.i.i.i.7, %_5.0.i.i.i.6
  %_27.i.i.7 = add nuw i64 %i.sroa.0.0.i.i, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa", label %bb10.i.i

"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa": ; preds = %bb10.i.i, %bb5.i.i
  %_5.0.i.i.i.lcssa.ph = phi i32 [ poison, %bb5.i.i ], [ %_5.0.i.i.i.7, %bb10.i.i ]
  %i.sroa.0.0.i.i.unr = phi i64 [ 0, %bb5.i.i ], [ %_27.i.i.7, %bb10.i.i ]
  %acc.sroa.0.0.i.i.unr = phi i32 [ 0, %bb5.i.i ], [ %_5.0.i.i.i.7, %bb10.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit", label %bb10.i.i.epil

bb10.i.i.epil:                                    ; preds = %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa", %bb10.i.i.epil
  %i.sroa.0.0.i.i.epil = phi i64 [ %_27.i.i.epil, %bb10.i.i.epil ], [ %i.sroa.0.0.i.i.unr, %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa" ]
  %acc.sroa.0.0.i.i.epil = phi i32 [ %_5.0.i.i.i.epil, %bb10.i.i.epil ], [ %acc.sroa.0.0.i.i.unr, %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa" ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb10.i.i.epil ], [ 0, %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa" ]
  %_36.i.i.epil = getelementptr inbounds nuw i32, ptr %self.0, i64 %i.sroa.0.0.i.i.epil
  %other.i.i.i.epil = load i32, ptr %_36.i.i.epil, align 4, !alias.scope !12, !noundef !15
  %_5.0.i.i.i.epil = add i32 %other.i.i.i.epil, %acc.sroa.0.0.i.i.epil
  %_27.i.i.epil = add nuw i64 %i.sroa.0.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit", label %bb10.i.i.epil, !llvm.loop !16

"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit": ; preds = %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa", %bb10.i.i.epil, %start
  %_0.sroa.0.0.i.i = phi i32 [ 0, %start ], [ %_5.0.i.i.i.lcssa.ph, %"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE.exit.loopexit.unr-lcssa" ], [ %_5.0.i.i.i.epil, %bb10.i.i.epil ]
  ret i32 %_0.sroa.0.0.i.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5d8777bb9481923fE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5d8777bb9481923fE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5d8777bb9481923fE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5d8777bb9481923fE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31), !noalias !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !26
  %_3.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !36, !noalias !37, !noundef !15
  %_4.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !38, !noalias !39, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_3.i.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !40, !noalias !47, !noundef !15
  %_0.i7 = icmp slt i32 %_3.i.i.i5, %_4.i.i.i
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_3.i.i.i5, %_3.i.i.i
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6fc303e5e17fba29E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6fc303e5e17fba29E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6fc303e5e17fba29E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6fc303e5e17fba29E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72), !noalias !59
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !74, !noalias !75, !noundef !15
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !76, !noalias !77, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !78, !noalias !87, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %_3.i.i.i = load i32, ptr %0, align 4, !alias.scope !107, !noalias !108, !noundef !15
  %_4.i.i.i = load i32, ptr %tail, align 4, !alias.scope !108, !noalias !107, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
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
  %_3.i.i.i1 = load i32, ptr %2, align 4, !alias.scope !109, !noalias !116, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !120
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !145, !noalias !146, !noundef !15
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !146, !noalias !145, !noundef !15
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !147, !noalias !156, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !161
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4bfd885ea35a8e63E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %_3.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !181, !noalias !182, !noundef !15
  %_4.i.i.i = load i32, ptr %_7, align 4, !alias.scope !182, !noalias !181, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %_3.i.i.i7 = load i32, ptr %_14, align 4, !alias.scope !198, !noalias !199, !noundef !15
  %_4.i.i.i8 = load i32, ptr %_12, align 4, !alias.scope !199, !noalias !198, !noundef !15
  %_0.i9 = icmp slt i32 %_3.i.i.i7, %_4.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %_3.i.i.i10 = load i32, ptr %a, align 4, !alias.scope !215, !noalias !216, !noundef !15
  %_4.i.i.i11 = load i32, ptr %c, align 4, !alias.scope !216, !noalias !215, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i10, %_4.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %_3.i.i.i13 = load i32, ptr %b, align 4, !alias.scope !232, !noalias !233, !noundef !15
  %_4.i.i.i14 = load i32, ptr %d, align 4, !alias.scope !233, !noalias !232, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i13, %_4.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %_3.i.i.i16 = load i32, ptr %2, align 4, !alias.scope !249, !noalias !250, !noundef !15
  %_4.i.i.i17 = load i32, ptr %4, align 4, !alias.scope !250, !noalias !249, !noundef !15
  %_0.i18 = icmp slt i32 %_3.i.i.i16, %_4.i.i.i17
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

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5ba1a2ca0247e3b9E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !271, !noalias !272, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !272, !noalias !271, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !293, !noalias !294, !noundef !15
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !294, !noalias !293, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !315, !noalias !316, !noundef !15
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !316, !noalias !315, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !337, !noalias !338, !noundef !15
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !338, !noalias !337, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !359, !noalias !360, !noundef !15
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !360, !noalias !359, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h876d3e9a9d27ae47E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %_3.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !376, !noalias !377, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !377, !noalias !376, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !393, !noalias !394, !noundef !15
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !394, !noalias !393, !noundef !15
  %_0.i9.i = icmp slt i32 %_3.i.i.i7.i, %_4.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !410, !noalias !411, !noundef !15
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !411, !noalias !410, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !427, !noalias !428, !noundef !15
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !428, !noalias !427, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !444, !noalias !445, !noundef !15
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !445, !noalias !444, !noundef !15
  %_0.i18.i = icmp slt i32 %_3.i.i.i16.i, %_4.i.i.i17.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %_3.i.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !461, !noalias !462, !noundef !15
  %_4.i.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !462, !noalias !461, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %_3.i.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !478, !noalias !479, !noundef !15
  %_4.i.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !479, !noalias !478, !noundef !15
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i7.i7, %_4.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %_3.i.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !495, !noalias !496, !noundef !15
  %_4.i.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !496, !noalias !495, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %_3.i.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !512, !noalias !513, !noundef !15
  %_4.i.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !513, !noalias !512, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %_3.i.i.i16.i25 = load i32, ptr %12, align 4, !alias.scope !529, !noalias !530, !noundef !15
  %_4.i.i.i17.i26 = load i32, ptr %14, align 4, !alias.scope !530, !noalias !529, !noundef !15
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i16.i25, %_4.i.i.i17.i26
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !542
  %_3.i.i.i.i36 = load i32, ptr %scratch_base, align 4, !alias.scope !552, !noalias !553, !noundef !15
  %_4.i.i.i.i37 = load i32, ptr %_10, align 4, !alias.scope !554, !noalias !555, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i36, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36, i32 %_4.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !556
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !566
  %_3.i.i.i19.i = load i32, ptr %20, align 4, !alias.scope !576, !noalias !577, !noundef !15
  %_4.i.i.i20.i = load i32, ptr %21, align 4, !alias.scope !578, !noalias !579, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !580
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !542
  %_3.i.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !594, !noalias !595, !noundef !15
  %_4.i.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !596, !noalias !597, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !556
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !566
  %_3.i.i.i19.i.1 = load i32, ptr %26, align 4, !alias.scope !610, !noalias !611, !noundef !15
  %_4.i.i.i20.i.1 = load i32, ptr %25, align 4, !alias.scope !612, !noalias !613, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !580
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !542
  %_3.i.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !626, !noalias !627, !noundef !15
  %_4.i.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !628, !noalias !629, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !556
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !566
  %_3.i.i.i19.i.2 = load i32, ptr %31, align 4, !alias.scope !642, !noalias !643, !noundef !15
  %_4.i.i.i20.i.2 = load i32, ptr %30, align 4, !alias.scope !644, !noalias !645, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !580
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !542
  %_3.i.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !658, !noalias !659, !noundef !15
  %_4.i.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !660, !noalias !661, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !556
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !566
  %_3.i.i.i19.i.3 = load i32, ptr %36, align 4, !alias.scope !674, !noalias !675, !noundef !15
  %_4.i.i.i20.i.3 = load i32, ptr %35, align 4, !alias.scope !676, !noalias !677, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !580
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE.exit, !prof !678

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !531
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hfc000037cc82ec1eE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !699, !noalias !700, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !700, !noalias !699, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !721, !noalias !722, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !722, !noalias !721, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !743, !noalias !744, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !744, !noalias !743, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !765, !noalias !766, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !766, !noalias !765, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !787, !noalias !788, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !788, !noalias !787, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !809, !noalias !810, !noundef !15
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !810, !noalias !809, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !831, !noalias !832, !noundef !15
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !832, !noalias !831, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !853, !noalias !854, !noundef !15
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !854, !noalias !853, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !875, !noalias !876, !noundef !15
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !876, !noalias !875, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !897, !noalias !898, !noundef !15
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !898, !noalias !897, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923), !noalias !910
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !925, !noalias !926, !noundef !15
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !927, !noalias !928, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !929
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952), !noalias !939
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !954, !noalias !955, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !956, !noalias !957, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !958
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !noalias !910
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !976, !noalias !977, !noundef !15
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !978, !noalias !979, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !929
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994), !noalias !939
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !996, !noalias !997, !noundef !15
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !998, !noalias !999, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !958
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014), !noalias !910
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1016, !noalias !1017, !noundef !15
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1018, !noalias !1019, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !929
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034), !noalias !939
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1036, !noalias !1037, !noundef !15
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1038, !noalias !1039, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !958
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052), !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054), !noalias !910
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1056, !noalias !1057, !noundef !15
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1058, !noalias !1059, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !929
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074), !noalias !939
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1076, !noalias !1077, !noundef !15
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1078, !noalias !1079, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !958
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E.exit, !prof !678

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !899
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085), !noalias !1088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093), !noalias !1088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096), !noalias !1088
  %_3.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1098, !noalias !1099, !noundef !15
  %_4.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1100, !noalias !1101, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1102
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120), !noalias !1112
  %_3.i.i.i19 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1122, !noalias !1123, !noundef !15
  %_4.i.i.i20 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1124, !noalias !1125, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i19, %_4.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19, i32 %_4.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1126
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !678

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1136
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1151, !noalias !1152, !noundef !15
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1153, !noalias !1154, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1155
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162), !noalias !1165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168), !noalias !1165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170), !noalias !1165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173), !noalias !1165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175), !noalias !1165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178), !noalias !1165
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1180, !noalias !1181, !noundef !15
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1182, !noalias !1183, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1184
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !678

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h09f341052f9721d0E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1206, !noalias !1207, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1207, !noalias !1206, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1208, !noalias !1217, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1222
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h31bee44e79a28166E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1242, !noalias !1243, !noundef !15
  %_4.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1243, !noalias !1242, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %4, align 4, !alias.scope !1244, !noalias !1251, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %_4.i.i.i.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1255
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h611f6d0d57b6ddcbE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hfc000037cc82ec1eE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hfc000037cc82ec1eE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1280, !noalias !1281, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1281, !noalias !1280, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1302, !noalias !1303, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1303, !noalias !1302, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1324, !noalias !1325, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1325, !noalias !1324, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1346, !noalias !1347, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1347, !noalias !1346, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1368, !noalias !1369, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1369, !noalias !1368, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1390, !noalias !1391, !noundef !15
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1391, !noalias !1390, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1412, !noalias !1413, !noundef !15
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1413, !noalias !1412, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1434, !noalias !1435, !noundef !15
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1435, !noalias !1434, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1456, !noalias !1457, !noundef !15
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1457, !noalias !1456, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1478, !noalias !1479, !noundef !15
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1479, !noalias !1478, !noundef !15
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1480
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1480, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491), !noalias !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497), !noalias !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502), !noalias !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507), !noalias !1494
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1509, !noalias !1510, !noundef !15
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1511, !noalias !1512, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1513
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520), !noalias !1523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526), !noalias !1523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528), !noalias !1523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533), !noalias !1523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536), !noalias !1523
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1538, !noalias !1539, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1540, !noalias !1541, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1542
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1483
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1483
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !678

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1544
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1549, !noalias !1558, !noundef !15
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1563, !noalias !1572, !noundef !15
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1577
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4ebc8ff3ec031eaeE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17habe264d8eaa7ca6bE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h876d3e9a9d27ae47E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h876d3e9a9d27ae47E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %_3.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1597, !noalias !1598, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1598, !noalias !1597, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !1614, !noalias !1615, !noundef !15
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !1615, !noalias !1614, !noundef !15
  %_0.i9.i = icmp slt i32 %_3.i.i.i7.i, %_4.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !1631, !noalias !1632, !noundef !15
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !1632, !noalias !1631, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !1648, !noalias !1649, !noundef !15
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !1649, !noalias !1648, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !1665, !noalias !1666, !noundef !15
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !1666, !noalias !1665, !noundef !15
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i, i32 %_4.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i, i32 %_4.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i13.i, i32 %_4.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %_3.i.i.i.i14 = load i32, ptr %_27, align 4, !alias.scope !1682, !noalias !1683, !noundef !15
  %_4.i.i.i.i15 = load i32, ptr %_7.i13, align 4, !alias.scope !1683, !noalias !1682, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i14, %_4.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %_3.i.i.i7.i19 = load i32, ptr %_14.i18, align 4, !alias.scope !1699, !noalias !1700, !noundef !15
  %_4.i.i.i8.i20 = load i32, ptr %_12.i17, align 4, !alias.scope !1700, !noalias !1699, !noundef !15
  %_0.i9.i21 = icmp slt i32 %_3.i.i.i7.i19, %_4.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %_3.i.i.i10.i31 = load i32, ptr %a.i23, align 4, !alias.scope !1716, !noalias !1717, !noundef !15
  %_4.i.i.i11.i32 = load i32, ptr %c.i28, align 4, !alias.scope !1717, !noalias !1716, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i10.i31, %_4.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %_3.i.i.i13.i34 = load i32, ptr %b.i26, align 4, !alias.scope !1733, !noalias !1734, !noundef !15
  %_4.i.i.i14.i35 = load i32, ptr %d.i30, align 4, !alias.scope !1734, !noalias !1733, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i13.i34, %_4.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %_3.i.i.i16.i37 = load i32, ptr %12, align 4, !alias.scope !1750, !noalias !1751, !noundef !15
  %_4.i.i.i17.i38 = load i32, ptr %14, align 4, !alias.scope !1751, !noalias !1750, !noundef !15
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37, i32 %_4.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37, i32 %_4.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i13.i34, i32 %_4.i.i.i14.i35)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1752
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1752, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763), !noalias !1766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769), !noalias !1766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771), !noalias !1766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774), !noalias !1766
  %_3.i.i.i.i49 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1776, !noalias !1777, !noundef !15
  %_4.i.i.i.i50 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1778, !noalias !1779, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i49, %_4.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i49, i32 %_4.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1780
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787), !noalias !1790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795), !noalias !1790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798), !noalias !1790
  %_3.i.i.i19.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1800, !noalias !1801, !noundef !15
  %_4.i.i.i20.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1802, !noalias !1803, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1804
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1755
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1755
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !678

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1806
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_3.i.i.i.i55 = load i32, ptr %41, align 4, !alias.scope !1811, !noalias !1818, !noundef !15
  %_0.i.i57 = icmp slt i32 %_3.i.i.i.i55, %40
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %43, align 4, !alias.scope !1822, !noalias !1829, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %40
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1833
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h35940ffb3e55a813E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hdc7829fdd20c593dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1838
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1841, !noalias !1838, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1842, !noalias !1838, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit", !prof !1843

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1838
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1838, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1838
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h9737360566382c61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hef0f68473baa9614E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1844
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1841, !noalias !1844, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1842, !noalias !1844, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit", !prof !1843

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1844
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1844, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1844
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h3752626fa3ed3f63E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h4e806f705905cb4fE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #7 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h7d149607e5c708c9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1867, !noalias !1868, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1868, !noalias !1867, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1889, !noalias !1890, !noundef !15
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1890, !noalias !1889, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1911, !noalias !1912, !noundef !15
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1912, !noalias !1911, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd94afe9c4b59fd2fE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1913, !noalias !1918, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1920, !noalias !1921
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1913, !noalias !1918
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1920, !noalias !1921
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1913, !noalias !1918, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1920, !noalias !1921
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1913, !noalias !1918
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1920, !noalias !1921
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1913, !noalias !1918, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1920, !noalias !1921
  store i32 %14, ptr %gep27, align 4, !alias.scope !1913, !noalias !1918
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1920, !noalias !1921
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h9f69957595ac161bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  %_3.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1937, !noalias !1938, !noundef !15
  %_4.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1938, !noalias !1937, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %_3.i.i.i1 = load i32, ptr %gep, align 4, !alias.scope !1954, !noalias !1955, !noundef !15
  %_4.i.i.i2 = load i32, ptr %0, align 4, !alias.scope !1955, !noalias !1954, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %_3.i.i.i4 = load i32, ptr %gep25, align 4, !alias.scope !1971, !noalias !1972, !noundef !15
  %_4.i.i.i5 = load i32, ptr %2, align 4, !alias.scope !1972, !noalias !1971, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdfaf88aa3f39cf7eE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1973, !noalias !1978, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1980, !noalias !1981
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1973, !noalias !1978
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1980, !noalias !1981
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1973, !noalias !1978, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1980, !noalias !1981
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1973, !noalias !1978
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1980, !noalias !1981
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1973, !noalias !1978, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1980, !noalias !1981
  store i32 %14, ptr %gep27, align 4, !alias.scope !1973, !noalias !1978
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1980, !noalias !1981
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h6a16df35d699bdd8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17ha4ff6d21ec7bec19E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h3752626fa3ed3f63E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h7d149607e5c708c9E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1987
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2008, !noalias !2009, !noundef !15
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2012, !noalias !2013, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1982, !noalias !2014
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2035, !noalias !2036, !noundef !15
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2039, !noalias !2040, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1982, !noalias !2041
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1987, !noalias !2042
  br label %_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit

_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17heb0eeda5cbc7c524E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h9737360566382c61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h9f69957595ac161bE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2052
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  %_3.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2068, !noalias !2069, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2072, !noalias !2073, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %14 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2047, !noalias !2074
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %_3.i.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2090, !noalias !2091, !noundef !15
  %_4.i.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2094, !noalias !2095, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2047, !noalias !2096
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2052, !noalias !2097
  br label %_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit

_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1b0a51cfb0839fa0E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h11458c40e9179ca8E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !2117, !noalias !2118, !noundef !15
  %_4.i.i.i = load i32, ptr %4, align 4, !alias.scope !2118, !noalias !2117, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
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

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he233e272f37291c9E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !2139, !noalias !2140, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2140, !noalias !2139, !noundef !15
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h23d99dfeaf79524fE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2161, !noalias !2162, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2162, !noalias !2161, !noundef !15
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

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3411de5a1e127caE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %_3.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2178, !noalias !2179, !noundef !15
  %_4.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2179, !noalias !2178, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
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
define void @_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2200, !noalias !2201, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2204, !noalias !2205, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2206
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2227, !noalias !2228, !noundef !15
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2231, !noalias !2232, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2233
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2234
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2254, !noalias !2255, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2258, !noalias !2259, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %5 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2260
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %_3.i.i.i.i12 = load i32, ptr %_2059.i, align 4, !alias.scope !2276, !noalias !2277, !noundef !15
  %_4.i.i.i.i13 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2280, !noalias !2281, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i12, %_4.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12, i32 %_4.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2282
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2283
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h87eb40024ae35056E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2288

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2309, !noalias !2310, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2310, !noalias !2309, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2311
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2334, !noalias !2335, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2335, !noalias !2334, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2336
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2359, !noalias !2360, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2360, !noalias !2359, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2361
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2384, !noalias !2385, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2385, !noalias !2384, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2386
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2409, !noalias !2410, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2410, !noalias !2409, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2411
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2414
  store i32 %13, ptr %dst.i68, align 4, !noalias !2414
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2417

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h88df2b3213bd5fb5E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2288

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2433, !noalias !2434, !noundef !15
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2434, !noalias !2433, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !2435
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2453, !noalias !2454, !noundef !15
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2454, !noalias !2453, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !2455
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2473, !noalias !2474, !noundef !15
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2474, !noalias !2473, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !2475
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2493, !noalias !2494, !noundef !15
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2494, !noalias !2493, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !2495
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2513, !noalias !2514, !noundef !15
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2514, !noalias !2513, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !2515
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2518
  store i32 %13, ptr %dst.i68, align 4, !noalias !2518
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2521

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbea89e6f0c4638a5E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2288

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2547, !noalias !2548, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2548, !noalias !2547, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2549
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2577, !noalias !2578, !noundef !15
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2578, !noalias !2577, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2579
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2607, !noalias !2608, !noundef !15
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2608, !noalias !2607, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2609
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2637, !noalias !2638, !noundef !15
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2638, !noalias !2637, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2639
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2667, !noalias !2668, !noundef !15
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2668, !noalias !2667, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2669
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2672
  store i32 %13, ptr %dst.i68, align 4, !noalias !2672
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2675

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he33e3e113b9e2273E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2288

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2696, !noalias !2697, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2697, !noalias !2696, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2698
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2721, !noalias !2722, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2722, !noalias !2721, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2723
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2746, !noalias !2747, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2747, !noalias !2746, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2748
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2771, !noalias !2772, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2772, !noalias !2771, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2773
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2796, !noalias !2797, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2797, !noalias !2796, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2798
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2801
  store i32 %13, ptr %dst.i68, align 4, !noalias !2801
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2804

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #10 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17habe264d8eaa7ca6bE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5d8777bb9481923fE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  call void @llvm.experimental.noalias.scope.decl(metadata !2810), !noalias !2813
  call void @llvm.experimental.noalias.scope.decl(metadata !2816), !noalias !2813
  call void @llvm.experimental.noalias.scope.decl(metadata !2818), !noalias !2813
  call void @llvm.experimental.noalias.scope.decl(metadata !2821), !noalias !2813
  %_3.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2823, !noalias !2826, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2828, !noalias !2829, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_3.i.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !2830, !noalias !2837, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i5.i, %_4.i.i.i.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_3.i.i.i5.i, %_3.i.i.i.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h9737360566382c61E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE.exit
  %_4.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2841, !noalias !2848, !noundef !15
  %_0.i.not = icmp slt i32 %value, %_4.i.i.i
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h88df2b3213bd5fb5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit", !prof !1843

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2852
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h64f373f6a046e4d3E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he33e3e113b9e2273E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1843

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h611f6d0d57b6ddcbE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6fc303e5e17fba29E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  call void @llvm.experimental.noalias.scope.decl(metadata !2861), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2867), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2869), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2872), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2874), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2877), !noalias !2864
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2879, !noalias !2882, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2884, !noalias !2885, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2886, !noalias !2895, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h3752626fa3ed3f63E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2900, !noalias !2909, !noundef !15
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h87eb40024ae35056E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit", !prof !1843

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2914
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h80d9012f9b79c94cE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbea89e6f0c4638a5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1843

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #4 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1841, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1842, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h88981c818b252153E.exit", !prof !1843

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h88981c818b252153E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h8bfa882801273030E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2918, !noundef !15
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <i32 as core::iter::traits::accum::Sum<&i32>>::sum
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef i32 @"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum17hfac9ba1f2a29457cE"(ptr noundef nonnull %iter.0, ptr noundef %iter.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = icmp ne ptr %iter.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = icmp eq ptr %iter.0, %iter.1
  br i1 %1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit", label %bb5.i

bb5.i:                                            ; preds = %start
  %2 = ptrtoint ptr %iter.1 to i64
  %3 = ptrtoint ptr %iter.0 to i64
  %4 = sub nuw i64 %2, %3
  %5 = lshr exact i64 %4, 2
  %xtraiter = and i64 %5, 7
  %6 = icmp ult i64 %4, 32
  br i1 %6, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa", label %bb5.i.new

bb5.i.new:                                        ; preds = %bb5.i
  %unroll_iter = and i64 %5, 4611686018427387896
  %invariant.gep = getelementptr i8, ptr %iter.0, i64 4
  %invariant.gep2 = getelementptr i8, ptr %iter.0, i64 8
  %invariant.gep4 = getelementptr i8, ptr %iter.0, i64 12
  %invariant.gep6 = getelementptr i8, ptr %iter.0, i64 16
  %invariant.gep8 = getelementptr i8, ptr %iter.0, i64 20
  %invariant.gep10 = getelementptr i8, ptr %iter.0, i64 24
  %invariant.gep12 = getelementptr i8, ptr %iter.0, i64 28
  br label %bb10.i

bb10.i:                                           ; preds = %bb10.i, %bb5.i.new
  %i.sroa.0.0.i = phi i64 [ 0, %bb5.i.new ], [ %_27.i.7, %bb10.i ]
  %acc.sroa.0.0.i = phi i32 [ 0, %bb5.i.new ], [ %_5.0.i.i.7, %bb10.i ]
  %niter = phi i64 [ 0, %bb5.i.new ], [ %niter.next.7, %bb10.i ]
  %_36.i = getelementptr inbounds nuw i32, ptr %iter.0, i64 %i.sroa.0.0.i
  %other.i.i = load i32, ptr %_36.i, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i = add i32 %other.i.i, %acc.sroa.0.0.i
  %gep = getelementptr i32, ptr %invariant.gep, i64 %i.sroa.0.0.i
  %other.i.i.1 = load i32, ptr %gep, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.1 = add i32 %other.i.i.1, %_5.0.i.i
  %gep3 = getelementptr i32, ptr %invariant.gep2, i64 %i.sroa.0.0.i
  %other.i.i.2 = load i32, ptr %gep3, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.2 = add i32 %other.i.i.2, %_5.0.i.i.1
  %gep5 = getelementptr i32, ptr %invariant.gep4, i64 %i.sroa.0.0.i
  %other.i.i.3 = load i32, ptr %gep5, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.3 = add i32 %other.i.i.3, %_5.0.i.i.2
  %gep7 = getelementptr i32, ptr %invariant.gep6, i64 %i.sroa.0.0.i
  %other.i.i.4 = load i32, ptr %gep7, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.4 = add i32 %other.i.i.4, %_5.0.i.i.3
  %gep9 = getelementptr i32, ptr %invariant.gep8, i64 %i.sroa.0.0.i
  %other.i.i.5 = load i32, ptr %gep9, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.5 = add i32 %other.i.i.5, %_5.0.i.i.4
  %gep11 = getelementptr i32, ptr %invariant.gep10, i64 %i.sroa.0.0.i
  %other.i.i.6 = load i32, ptr %gep11, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.6 = add i32 %other.i.i.6, %_5.0.i.i.5
  %gep13 = getelementptr i32, ptr %invariant.gep12, i64 %i.sroa.0.0.i
  %other.i.i.7 = load i32, ptr %gep13, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.7 = add i32 %other.i.i.7, %_5.0.i.i.6
  %_27.i.7 = add nuw i64 %i.sroa.0.0.i, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa", label %bb10.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa": ; preds = %bb10.i, %bb5.i
  %_5.0.i.i.lcssa.ph = phi i32 [ poison, %bb5.i ], [ %_5.0.i.i.7, %bb10.i ]
  %i.sroa.0.0.i.unr = phi i64 [ 0, %bb5.i ], [ %_27.i.7, %bb10.i ]
  %acc.sroa.0.0.i.unr = phi i32 [ 0, %bb5.i ], [ %_5.0.i.i.7, %bb10.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit", label %bb10.i.epil

bb10.i.epil:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa", %bb10.i.epil
  %i.sroa.0.0.i.epil = phi i64 [ %_27.i.epil, %bb10.i.epil ], [ %i.sroa.0.0.i.unr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa" ]
  %acc.sroa.0.0.i.epil = phi i32 [ %_5.0.i.i.epil, %bb10.i.epil ], [ %acc.sroa.0.0.i.unr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa" ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb10.i.epil ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa" ]
  %_36.i.epil = getelementptr inbounds nuw i32, ptr %iter.0, i64 %i.sroa.0.0.i.epil
  %other.i.i.epil = load i32, ptr %_36.i.epil, align 4, !alias.scope !2919, !noundef !15
  %_5.0.i.i.epil = add i32 %other.i.i.epil, %acc.sroa.0.0.i.epil
  %_27.i.epil = add nuw i64 %i.sroa.0.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit", label %bb10.i.epil, !llvm.loop !2922

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa", %bb10.i.epil, %start
  %_0.sroa.0.0.i = phi i32 [ 0, %start ], [ %_5.0.i.i.lcssa.ph, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hff5153f0363395f7E.exit.loopexit.unr-lcssa" ], [ %_5.0.i.i.epil, %bb10.i.epil ]
  ret i32 %_0.sroa.0.0.i
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9fbdbcfd5a5fd3eE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #7 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7bb4239e0f4e90a3E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #4 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1013fde8865aedeaE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #7 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2923, !noalias !2926, !noundef !15
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2926, !noalias !2923, !noundef !15
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.5.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.5.0.extract.trunc = trunc nuw i64 %arr.sroa.5.0.extract.shift to i32
  %_5.0.i.i.i.i.1 = add i32 %arr.sroa.5.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_4 = sitofp i32 %_5.0.i.i.i.i.1 to float
  %half_sum = fmul float %_4, 5.000000e-01
  %arr.sroa.0.0 = tail call i32 @llvm.smax.i32(i32 %arr.sroa.0.0.extract.trunc, i32 %arr.sroa.5.0.extract.trunc)
  %_22 = sitofp i32 %arr.sroa.0.0 to float
  %_24 = fcmp olt float %half_sum, %_22
  %res.sroa.0.1 = select i1 %_24, i32 1, i32 2
  ret i32 %res.sroa.0.1
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2928
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2931
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE.exit", label %bb7.i.i, !prof !2935

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2935

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hef0f68473baa9614E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h09f341052f9721d0E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2928
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

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #18

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #19

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
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noinline noreturn }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h87e25bff44cc307cE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h87e25bff44cc307cE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h87e25bff44cc307cE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h87e25bff44cc307cE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h87e25bff44cc307cE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf22ec85e2a14b8ffE: %b"}
!14 = distinct !{!14, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf22ec85e2a14b8ffE"}
!15 = !{}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!20 = distinct !{!20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!25 = distinct !{!25, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core5slice4sort6shared5pivot7median317h11af4fbbde2edb3bE: %c"}
!28 = distinct !{!28, !"_ZN4core5slice4sort6shared5pivot7median317h11af4fbbde2edb3bE"}
!29 = !{!30}
!30 = distinct !{!30, !25, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!33 = distinct !{!33, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!36 = !{!32, !30, !22}
!37 = !{!35, !24, !19, !27}
!38 = !{!35, !24, !19}
!39 = !{!32, !30, !22, !27}
!40 = !{!41, !43, !45}
!41 = distinct !{!41, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!42 = distinct !{!42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!43 = distinct !{!43, !44, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!44 = distinct !{!44, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!45 = distinct !{!45, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!46 = distinct !{!46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!47 = !{!48, !49, !50}
!48 = distinct !{!48, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!49 = distinct !{!49, !44, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!50 = distinct !{!50, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!53 = distinct !{!53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!58 = distinct !{!58, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core5slice4sort6shared5pivot7median317hcf286b786a0972b4E: %c"}
!61 = distinct !{!61, !"_ZN4core5slice4sort6shared5pivot7median317hcf286b786a0972b4E"}
!62 = !{!63}
!63 = distinct !{!63, !58, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"cmpfunc: %a"}
!66 = distinct !{!66, !"cmpfunc"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"cmpfunc: %b"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!71 = distinct !{!71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!74 = !{!70, !65, !57, !52}
!75 = !{!73, !68, !63, !55, !60}
!76 = !{!73, !68, !63, !55}
!77 = !{!70, !65, !57, !52, !60}
!78 = !{!79, !81, !83, !85}
!79 = distinct !{!79, !80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!80 = distinct !{!80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!81 = distinct !{!81, !82, !"cmpfunc: %b"}
!82 = distinct !{!82, !"cmpfunc"}
!83 = distinct !{!83, !84, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!84 = distinct !{!84, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!85 = distinct !{!85, !86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!86 = distinct !{!86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!89 = distinct !{!89, !82, !"cmpfunc: %a"}
!90 = distinct !{!90, !84, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!91 = distinct !{!91, !86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!94 = distinct !{!94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!99 = distinct !{!99, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!104 = distinct !{!104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!107 = !{!103, !101, !96}
!108 = !{!106, !98, !93}
!109 = !{!110, !112, !114}
!110 = distinct !{!110, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!111 = distinct !{!111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!112 = distinct !{!112, !113, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!113 = distinct !{!113, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!116 = !{!117, !118, !119}
!117 = distinct !{!117, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!118 = distinct !{!118, !113, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!119 = distinct !{!119, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!122 = distinct !{!122, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!123 = distinct !{!123, !124, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!124 = distinct !{!124, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!127 = distinct !{!127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!132 = distinct !{!132, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"cmpfunc: %a"}
!137 = distinct !{!137, !"cmpfunc"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"cmpfunc: %b"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!142 = distinct !{!142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!145 = !{!141, !136, !131, !126}
!146 = !{!144, !139, !134, !129}
!147 = !{!148, !150, !152, !154}
!148 = distinct !{!148, !149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!149 = distinct !{!149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!150 = distinct !{!150, !151, !"cmpfunc: %b"}
!151 = distinct !{!151, !"cmpfunc"}
!152 = distinct !{!152, !153, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!153 = distinct !{!153, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!154 = distinct !{!154, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!155 = distinct !{!155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!156 = !{!157, !158, !159, !160}
!157 = distinct !{!157, !149, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!158 = distinct !{!158, !151, !"cmpfunc: %a"}
!159 = distinct !{!159, !153, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!160 = distinct !{!160, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!161 = !{!162, !164}
!162 = distinct !{!162, !163, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!163 = distinct !{!163, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!164 = distinct !{!164, !165, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!165 = distinct !{!165, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!168 = distinct !{!168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!173 = distinct !{!173, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!178 = distinct !{!178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!181 = !{!177, !175, !170}
!182 = !{!180, !172, !167}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!185 = distinct !{!185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!190 = distinct !{!190, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!195 = distinct !{!195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!198 = !{!194, !192, !187}
!199 = !{!197, !189, !184}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!202 = distinct !{!202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!207 = distinct !{!207, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!212 = distinct !{!212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!215 = !{!211, !209, !204}
!216 = !{!214, !206, !201}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!219 = distinct !{!219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!224 = distinct !{!224, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!229 = distinct !{!229, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!232 = !{!228, !226, !221}
!233 = !{!231, !223, !218}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!236 = distinct !{!236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!241 = distinct !{!241, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!242 = !{!243}
!243 = distinct !{!243, !241, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!246 = distinct !{!246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!249 = !{!245, !243, !238}
!250 = !{!248, !240, !235}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!253 = distinct !{!253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!258 = distinct !{!258, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"cmpfunc: %a"}
!263 = distinct !{!263, !"cmpfunc"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"cmpfunc: %b"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!268 = distinct !{!268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!271 = !{!267, !262, !257, !252}
!272 = !{!270, !265, !260, !255}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!275 = distinct !{!275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!280 = distinct !{!280, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"cmpfunc: %a"}
!285 = distinct !{!285, !"cmpfunc"}
!286 = !{!287}
!287 = distinct !{!287, !285, !"cmpfunc: %b"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!290 = distinct !{!290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!293 = !{!289, !284, !279, !274}
!294 = !{!292, !287, !282, !277}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!297 = distinct !{!297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!302 = distinct !{!302, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"cmpfunc: %a"}
!307 = distinct !{!307, !"cmpfunc"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"cmpfunc: %b"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!312 = distinct !{!312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!315 = !{!311, !306, !301, !296}
!316 = !{!314, !309, !304, !299}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!319 = distinct !{!319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!324 = distinct !{!324, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"cmpfunc: %a"}
!329 = distinct !{!329, !"cmpfunc"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"cmpfunc: %b"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!337 = !{!333, !328, !323, !318}
!338 = !{!336, !331, !326, !321}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!341 = distinct !{!341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!346 = distinct !{!346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"cmpfunc: %a"}
!351 = distinct !{!351, !"cmpfunc"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"cmpfunc: %b"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!356 = distinct !{!356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!357 = !{!358}
!358 = distinct !{!358, !356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!359 = !{!355, !350, !345, !340}
!360 = !{!358, !353, !348, !343}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!363 = distinct !{!363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!368 = distinct !{!368, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!373 = distinct !{!373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!376 = !{!372, !370, !365}
!377 = !{!375, !367, !362}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!380 = distinct !{!380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!385 = distinct !{!385, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!390 = distinct !{!390, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!393 = !{!389, !387, !382}
!394 = !{!392, !384, !379}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!397 = distinct !{!397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!398 = !{!399}
!399 = distinct !{!399, !397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!402 = distinct !{!402, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!407 = distinct !{!407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!410 = !{!406, !404, !399}
!411 = !{!409, !401, !396}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!414 = distinct !{!414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!419 = distinct !{!419, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!424 = distinct !{!424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!427 = !{!423, !421, !416}
!428 = !{!426, !418, !413}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!431 = distinct !{!431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!436 = distinct !{!436, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!441 = distinct !{!441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!444 = !{!440, !438, !433}
!445 = !{!443, !435, !430}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!448 = distinct !{!448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!453 = distinct !{!453, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!454 = !{!455}
!455 = distinct !{!455, !453, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!458 = distinct !{!458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!461 = !{!457, !455, !450}
!462 = !{!460, !452, !447}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!465 = distinct !{!465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!470 = distinct !{!470, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!471 = !{!472}
!472 = distinct !{!472, !470, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!475 = distinct !{!475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!478 = !{!474, !472, !467}
!479 = !{!477, !469, !464}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!482 = distinct !{!482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!487 = distinct !{!487, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!488 = !{!489}
!489 = distinct !{!489, !487, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!492 = distinct !{!492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!495 = !{!491, !489, !484}
!496 = !{!494, !486, !481}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!499 = distinct !{!499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!504 = distinct !{!504, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!509 = distinct !{!509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!512 = !{!508, !506, !501}
!513 = !{!511, !503, !498}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!516 = distinct !{!516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!517 = !{!518}
!518 = distinct !{!518, !516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!521 = distinct !{!521, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!522 = !{!523}
!523 = distinct !{!523, !521, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!526 = distinct !{!526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!529 = !{!525, !523, !518}
!530 = !{!528, !520, !515}
!531 = !{!532}
!532 = distinct !{!532, !533, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE: %v.0"}
!533 = distinct !{!533, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE"}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!536 = distinct !{!536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!541 = distinct !{!541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %_0"}
!544 = distinct !{!544, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E"}
!545 = !{!546}
!546 = distinct !{!546, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!549 = distinct !{!549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!552 = !{!548, !546, !538, !532}
!553 = !{!551, !540, !535, !543}
!554 = !{!551, !540, !535, !532}
!555 = !{!548, !546, !538, !543}
!556 = !{!543, !557, !532}
!557 = distinct !{!557, !544, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %is_less"}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!565 = distinct !{!565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %_0"}
!568 = distinct !{!568, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E"}
!569 = !{!570}
!570 = distinct !{!570, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!573 = distinct !{!573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!574 = !{!575}
!575 = distinct !{!575, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!576 = !{!572, !570, !562, !532}
!577 = !{!575, !564, !559, !567}
!578 = !{!575, !564, !559, !532}
!579 = !{!572, !570, !562, !567}
!580 = !{!567, !581, !532}
!581 = distinct !{!581, !568, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %is_less"}
!582 = !{!583}
!583 = distinct !{!583, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It1"}
!584 = !{!585}
!585 = distinct !{!585, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It1"}
!586 = !{!587}
!587 = distinct !{!587, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It1"}
!588 = !{!589}
!589 = distinct !{!589, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It1"}
!590 = !{!591}
!591 = distinct !{!591, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!592 = !{!593}
!593 = distinct !{!593, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!594 = !{!591, !589, !585, !532}
!595 = !{!593, !587, !583, !543}
!596 = !{!593, !587, !583, !532}
!597 = !{!591, !589, !585, !543}
!598 = !{!599}
!599 = distinct !{!599, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It1"}
!600 = !{!601}
!601 = distinct !{!601, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It1"}
!602 = !{!603}
!603 = distinct !{!603, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It1"}
!604 = !{!605}
!605 = distinct !{!605, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It1"}
!606 = !{!607}
!607 = distinct !{!607, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!608 = !{!609}
!609 = distinct !{!609, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!610 = !{!607, !605, !601, !532}
!611 = !{!609, !603, !599, !567}
!612 = !{!609, !603, !599, !532}
!613 = !{!607, !605, !601, !567}
!614 = !{!615}
!615 = distinct !{!615, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It2"}
!616 = !{!617}
!617 = distinct !{!617, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It2"}
!618 = !{!619}
!619 = distinct !{!619, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It2"}
!620 = !{!621}
!621 = distinct !{!621, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It2"}
!622 = !{!623}
!623 = distinct !{!623, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!624 = !{!625}
!625 = distinct !{!625, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!626 = !{!623, !621, !617, !532}
!627 = !{!625, !619, !615, !543}
!628 = !{!625, !619, !615, !532}
!629 = !{!623, !621, !617, !543}
!630 = !{!631}
!631 = distinct !{!631, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It2"}
!632 = !{!633}
!633 = distinct !{!633, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It2"}
!634 = !{!635}
!635 = distinct !{!635, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It2"}
!636 = !{!637}
!637 = distinct !{!637, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It2"}
!638 = !{!639}
!639 = distinct !{!639, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!640 = !{!641}
!641 = distinct !{!641, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!642 = !{!639, !637, !633, !532}
!643 = !{!641, !635, !631, !567}
!644 = !{!641, !635, !631, !532}
!645 = !{!639, !637, !633, !567}
!646 = !{!647}
!647 = distinct !{!647, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It3"}
!648 = !{!649}
!649 = distinct !{!649, !536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It3"}
!650 = !{!651}
!651 = distinct !{!651, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It3"}
!652 = !{!653}
!653 = distinct !{!653, !541, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It3"}
!654 = !{!655}
!655 = distinct !{!655, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!656 = !{!657}
!657 = distinct !{!657, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!658 = !{!655, !653, !649, !532}
!659 = !{!657, !651, !647, !543}
!660 = !{!657, !651, !647, !532}
!661 = !{!655, !653, !649, !543}
!662 = !{!663}
!663 = distinct !{!663, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a:It3"}
!664 = !{!665}
!665 = distinct !{!665, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b:It3"}
!666 = !{!667}
!667 = distinct !{!667, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a:It3"}
!668 = !{!669}
!669 = distinct !{!669, !565, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b:It3"}
!670 = !{!671}
!671 = distinct !{!671, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!672 = !{!673}
!673 = distinct !{!673, !573, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!674 = !{!671, !669, !665, !532}
!675 = !{!673, !667, !663, !567}
!676 = !{!673, !667, !663, !532}
!677 = !{!671, !669, !665, !567}
!678 = !{!"branch_weights", i32 4001, i32 4000000}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!681 = distinct !{!681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!682 = !{!683}
!683 = distinct !{!683, !681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!684 = !{!685}
!685 = distinct !{!685, !686, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!686 = distinct !{!686, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!687 = !{!688}
!688 = distinct !{!688, !686, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!689 = !{!690}
!690 = distinct !{!690, !691, !"cmpfunc: %a"}
!691 = distinct !{!691, !"cmpfunc"}
!692 = !{!693}
!693 = distinct !{!693, !691, !"cmpfunc: %b"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!696 = distinct !{!696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!699 = !{!695, !690, !685, !680}
!700 = !{!698, !693, !688, !683}
!701 = !{!702}
!702 = distinct !{!702, !703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!703 = distinct !{!703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!704 = !{!705}
!705 = distinct !{!705, !703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!708 = distinct !{!708, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"cmpfunc: %a"}
!713 = distinct !{!713, !"cmpfunc"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"cmpfunc: %b"}
!716 = !{!717}
!717 = distinct !{!717, !718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!718 = distinct !{!718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!719 = !{!720}
!720 = distinct !{!720, !718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!721 = !{!717, !712, !707, !702}
!722 = !{!720, !715, !710, !705}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!725 = distinct !{!725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!726 = !{!727}
!727 = distinct !{!727, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!730 = distinct !{!730, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!731 = !{!732}
!732 = distinct !{!732, !730, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!733 = !{!734}
!734 = distinct !{!734, !735, !"cmpfunc: %a"}
!735 = distinct !{!735, !"cmpfunc"}
!736 = !{!737}
!737 = distinct !{!737, !735, !"cmpfunc: %b"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!740 = distinct !{!740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!741 = !{!742}
!742 = distinct !{!742, !740, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!743 = !{!739, !734, !729, !724}
!744 = !{!742, !737, !732, !727}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!747 = distinct !{!747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!753 = !{!754}
!754 = distinct !{!754, !752, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"cmpfunc: %a"}
!757 = distinct !{!757, !"cmpfunc"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"cmpfunc: %b"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!762 = distinct !{!762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!763 = !{!764}
!764 = distinct !{!764, !762, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!765 = !{!761, !756, !751, !746}
!766 = !{!764, !759, !754, !749}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!769 = distinct !{!769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!770 = !{!771}
!771 = distinct !{!771, !769, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!774 = distinct !{!774, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"cmpfunc: %a"}
!779 = distinct !{!779, !"cmpfunc"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"cmpfunc: %b"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!784 = distinct !{!784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!785 = !{!786}
!786 = distinct !{!786, !784, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!787 = !{!783, !778, !773, !768}
!788 = !{!786, !781, !776, !771}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!791 = distinct !{!791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!796 = distinct !{!796, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"cmpfunc: %a"}
!801 = distinct !{!801, !"cmpfunc"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"cmpfunc: %b"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!806 = distinct !{!806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!809 = !{!805, !800, !795, !790}
!810 = !{!808, !803, !798, !793}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!813 = distinct !{!813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!814 = !{!815}
!815 = distinct !{!815, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!816 = !{!817}
!817 = distinct !{!817, !818, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!818 = distinct !{!818, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!819 = !{!820}
!820 = distinct !{!820, !818, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"cmpfunc: %a"}
!823 = distinct !{!823, !"cmpfunc"}
!824 = !{!825}
!825 = distinct !{!825, !823, !"cmpfunc: %b"}
!826 = !{!827}
!827 = distinct !{!827, !828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!828 = distinct !{!828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!831 = !{!827, !822, !817, !812}
!832 = !{!830, !825, !820, !815}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!835 = distinct !{!835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!836 = !{!837}
!837 = distinct !{!837, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!838 = !{!839}
!839 = distinct !{!839, !840, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!840 = distinct !{!840, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!841 = !{!842}
!842 = distinct !{!842, !840, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!843 = !{!844}
!844 = distinct !{!844, !845, !"cmpfunc: %a"}
!845 = distinct !{!845, !"cmpfunc"}
!846 = !{!847}
!847 = distinct !{!847, !845, !"cmpfunc: %b"}
!848 = !{!849}
!849 = distinct !{!849, !850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!850 = distinct !{!850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!851 = !{!852}
!852 = distinct !{!852, !850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!853 = !{!849, !844, !839, !834}
!854 = !{!852, !847, !842, !837}
!855 = !{!856}
!856 = distinct !{!856, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!857 = distinct !{!857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!858 = !{!859}
!859 = distinct !{!859, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!862 = distinct !{!862, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"cmpfunc: %a"}
!867 = distinct !{!867, !"cmpfunc"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"cmpfunc: %b"}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!872 = distinct !{!872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!875 = !{!871, !866, !861, !856}
!876 = !{!874, !869, !864, !859}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!884 = distinct !{!884, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"cmpfunc: %a"}
!889 = distinct !{!889, !"cmpfunc"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"cmpfunc: %b"}
!892 = !{!893}
!893 = distinct !{!893, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!894 = distinct !{!894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!897 = !{!893, !888, !883, !878}
!898 = !{!896, !891, !886, !881}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E: %v.0"}
!901 = distinct !{!901, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E"}
!902 = !{!903}
!903 = distinct !{!903, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!904 = distinct !{!904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!905 = !{!906}
!906 = distinct !{!906, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!909 = distinct !{!909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %_0"}
!912 = distinct !{!912, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E"}
!913 = !{!914}
!914 = distinct !{!914, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!915 = !{!916}
!916 = distinct !{!916, !917, !"cmpfunc: %a"}
!917 = distinct !{!917, !"cmpfunc"}
!918 = !{!919}
!919 = distinct !{!919, !917, !"cmpfunc: %b"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!922 = distinct !{!922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!925 = !{!921, !916, !908, !903, !900}
!926 = !{!924, !919, !914, !906, !911}
!927 = !{!924, !919, !914, !906, !900}
!928 = !{!921, !916, !908, !903, !911}
!929 = !{!911, !930, !900}
!930 = distinct !{!930, !912, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %is_less"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!933 = distinct !{!933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!938 = distinct !{!938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %_0"}
!941 = distinct !{!941, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E"}
!942 = !{!943}
!943 = distinct !{!943, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!944 = !{!945}
!945 = distinct !{!945, !946, !"cmpfunc: %a"}
!946 = distinct !{!946, !"cmpfunc"}
!947 = !{!948}
!948 = distinct !{!948, !946, !"cmpfunc: %b"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!951 = distinct !{!951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!952 = !{!953}
!953 = distinct !{!953, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!954 = !{!950, !945, !937, !932, !900}
!955 = !{!953, !948, !943, !935, !940}
!956 = !{!953, !948, !943, !935, !900}
!957 = !{!950, !945, !937, !932, !940}
!958 = !{!940, !959, !900}
!959 = distinct !{!959, !941, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %is_less"}
!960 = !{!961}
!961 = distinct !{!961, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It1"}
!962 = !{!963}
!963 = distinct !{!963, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It1"}
!964 = !{!965}
!965 = distinct !{!965, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It1"}
!966 = !{!967}
!967 = distinct !{!967, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It1"}
!968 = !{!969}
!969 = distinct !{!969, !917, !"cmpfunc: %a:It1"}
!970 = !{!971}
!971 = distinct !{!971, !917, !"cmpfunc: %b:It1"}
!972 = !{!973}
!973 = distinct !{!973, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!974 = !{!975}
!975 = distinct !{!975, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!976 = !{!973, !969, !965, !961, !900}
!977 = !{!975, !971, !967, !963, !911}
!978 = !{!975, !971, !967, !963, !900}
!979 = !{!973, !969, !965, !961, !911}
!980 = !{!981}
!981 = distinct !{!981, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It1"}
!982 = !{!983}
!983 = distinct !{!983, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It1"}
!984 = !{!985}
!985 = distinct !{!985, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It1"}
!986 = !{!987}
!987 = distinct !{!987, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It1"}
!988 = !{!989}
!989 = distinct !{!989, !946, !"cmpfunc: %a:It1"}
!990 = !{!991}
!991 = distinct !{!991, !946, !"cmpfunc: %b:It1"}
!992 = !{!993}
!993 = distinct !{!993, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!994 = !{!995}
!995 = distinct !{!995, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!996 = !{!993, !989, !985, !981, !900}
!997 = !{!995, !991, !987, !983, !940}
!998 = !{!995, !991, !987, !983, !900}
!999 = !{!993, !989, !985, !981, !940}
!1000 = !{!1001}
!1001 = distinct !{!1001, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It2"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It2"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It2"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It2"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !917, !"cmpfunc: %a:It2"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !917, !"cmpfunc: %b:It2"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1016 = !{!1013, !1009, !1005, !1001, !900}
!1017 = !{!1015, !1011, !1007, !1003, !911}
!1018 = !{!1015, !1011, !1007, !1003, !900}
!1019 = !{!1013, !1009, !1005, !1001, !911}
!1020 = !{!1021}
!1021 = distinct !{!1021, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It2"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It2"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It2"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It2"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !946, !"cmpfunc: %a:It2"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !946, !"cmpfunc: %b:It2"}
!1032 = !{!1033}
!1033 = distinct !{!1033, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1036 = !{!1033, !1029, !1025, !1021, !900}
!1037 = !{!1035, !1031, !1027, !1023, !940}
!1038 = !{!1035, !1031, !1027, !1023, !900}
!1039 = !{!1033, !1029, !1025, !1021, !940}
!1040 = !{!1041}
!1041 = distinct !{!1041, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It3"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It3"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It3"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !909, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It3"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !917, !"cmpfunc: %a:It3"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !917, !"cmpfunc: %b:It3"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !922, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1056 = !{!1053, !1049, !1045, !1041, !900}
!1057 = !{!1055, !1051, !1047, !1043, !911}
!1058 = !{!1055, !1051, !1047, !1043, !900}
!1059 = !{!1053, !1049, !1045, !1041, !911}
!1060 = !{!1061}
!1061 = distinct !{!1061, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a:It3"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b:It3"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0:It3"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !938, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1:It3"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !946, !"cmpfunc: %a:It3"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !946, !"cmpfunc: %b:It3"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1076 = !{!1073, !1069, !1065, !1061, !900}
!1077 = !{!1075, !1071, !1067, !1063, !940}
!1078 = !{!1075, !1071, !1067, !1063, !900}
!1079 = !{!1073, !1069, !1065, !1061, !940}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1082 = distinct !{!1082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1087 = distinct !{!1087, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %_0"}
!1090 = distinct !{!1090, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1087, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1095 = distinct !{!1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1098 = !{!1094, !1092, !1084}
!1099 = !{!1097, !1086, !1081, !1089}
!1100 = !{!1097, !1086, !1081}
!1101 = !{!1094, !1092, !1084, !1089}
!1102 = !{!1089, !1103}
!1103 = distinct !{!1103, !1090, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %is_less"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1106 = distinct !{!1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1111 = distinct !{!1111, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %_0"}
!1114 = distinct !{!1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1111, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1119 = distinct !{!1119, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1122 = !{!1118, !1116, !1108}
!1123 = !{!1121, !1110, !1105, !1113}
!1124 = !{!1121, !1110, !1105}
!1125 = !{!1118, !1116, !1108, !1113}
!1126 = !{!1113, !1127}
!1127 = distinct !{!1127, !1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %is_less"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1130 = distinct !{!1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1135 = distinct !{!1135, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %_0"}
!1138 = distinct !{!1138, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1135, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"cmpfunc: %a"}
!1143 = distinct !{!1143, !"cmpfunc"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1143, !"cmpfunc: %b"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1148 = distinct !{!1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1151 = !{!1147, !1142, !1134, !1129}
!1152 = !{!1150, !1145, !1140, !1132, !1137}
!1153 = !{!1150, !1145, !1140, !1132}
!1154 = !{!1147, !1142, !1134, !1129, !1137}
!1155 = !{!1137, !1156}
!1156 = distinct !{!1156, !1138, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %is_less"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1159 = distinct !{!1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1164 = distinct !{!1164, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %_0"}
!1167 = distinct !{!1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1164, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1172, !"cmpfunc: %a"}
!1172 = distinct !{!1172, !"cmpfunc"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1172, !"cmpfunc: %b"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1177, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1177 = distinct !{!1177, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1177, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1180 = !{!1176, !1171, !1163, !1158}
!1181 = !{!1179, !1174, !1169, !1161, !1166}
!1182 = !{!1179, !1174, !1169, !1161}
!1183 = !{!1176, !1171, !1163, !1158, !1166}
!1184 = !{!1166, !1185}
!1185 = distinct !{!1185, !1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %is_less"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1188 = distinct !{!1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1193 = distinct !{!1193, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"cmpfunc: %a"}
!1198 = distinct !{!1198, !"cmpfunc"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"cmpfunc: %b"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1203 = distinct !{!1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1206 = !{!1202, !1197, !1192, !1187}
!1207 = !{!1205, !1200, !1195, !1190}
!1208 = !{!1209, !1211, !1213, !1215}
!1209 = distinct !{!1209, !1210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1210 = distinct !{!1210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1211 = distinct !{!1211, !1212, !"cmpfunc: %b"}
!1212 = distinct !{!1212, !"cmpfunc"}
!1213 = distinct !{!1213, !1214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1214 = distinct !{!1214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1215 = distinct !{!1215, !1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1216 = distinct !{!1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = distinct !{!1218, !1210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1219 = distinct !{!1219, !1212, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !1214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1221 = distinct !{!1221, !1216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1222 = !{!1223, !1225}
!1223 = distinct !{!1223, !1224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1224 = distinct !{!1224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1225 = distinct !{!1225, !1226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1226 = distinct !{!1226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1229 = distinct !{!1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1234 = distinct !{!1234, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1239 = distinct !{!1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1242 = !{!1238, !1236, !1231}
!1243 = !{!1241, !1233, !1228}
!1244 = !{!1245, !1247, !1249}
!1245 = distinct !{!1245, !1246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1246 = distinct !{!1246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1247 = distinct !{!1247, !1248, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1248 = distinct !{!1248, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1249 = distinct !{!1249, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1250 = distinct !{!1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1251 = !{!1252, !1253, !1254}
!1252 = distinct !{!1252, !1246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1253 = distinct !{!1253, !1248, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1254 = distinct !{!1254, !1250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1255 = !{!1256, !1258}
!1256 = distinct !{!1256, !1257, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1257 = distinct !{!1257, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1259 = distinct !{!1259, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1262 = distinct !{!1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1267 = distinct !{!1267, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"cmpfunc: %a"}
!1272 = distinct !{!1272, !"cmpfunc"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"cmpfunc: %b"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1277 = distinct !{!1277, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1280 = !{!1276, !1271, !1266, !1261}
!1281 = !{!1279, !1274, !1269, !1264}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1284 = distinct !{!1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1289 = distinct !{!1289, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"cmpfunc: %a"}
!1294 = distinct !{!1294, !"cmpfunc"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"cmpfunc: %b"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1299 = distinct !{!1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1302 = !{!1298, !1293, !1288, !1283}
!1303 = !{!1301, !1296, !1291, !1286}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1306 = distinct !{!1306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1311 = distinct !{!1311, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1311, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"cmpfunc: %a"}
!1316 = distinct !{!1316, !"cmpfunc"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"cmpfunc: %b"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1321 = distinct !{!1321, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1324 = !{!1320, !1315, !1310, !1305}
!1325 = !{!1323, !1318, !1313, !1308}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1328 = distinct !{!1328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1333 = distinct !{!1333, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"cmpfunc: %a"}
!1338 = distinct !{!1338, !"cmpfunc"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1338, !"cmpfunc: %b"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1343 = distinct !{!1343, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1343, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1346 = !{!1342, !1337, !1332, !1327}
!1347 = !{!1345, !1340, !1335, !1330}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1350 = distinct !{!1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1355 = distinct !{!1355, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"cmpfunc: %a"}
!1360 = distinct !{!1360, !"cmpfunc"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"cmpfunc: %b"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1365 = distinct !{!1365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1366 = !{!1367}
!1367 = distinct !{!1367, !1365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1368 = !{!1364, !1359, !1354, !1349}
!1369 = !{!1367, !1362, !1357, !1352}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1372 = distinct !{!1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1377 = distinct !{!1377, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"cmpfunc: %a"}
!1382 = distinct !{!1382, !"cmpfunc"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1382, !"cmpfunc: %b"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1387 = distinct !{!1387, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1387, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1390 = !{!1386, !1381, !1376, !1371}
!1391 = !{!1389, !1384, !1379, !1374}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1394 = distinct !{!1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1399 = distinct !{!1399, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"cmpfunc: %a"}
!1404 = distinct !{!1404, !"cmpfunc"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"cmpfunc: %b"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1409 = distinct !{!1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1412 = !{!1408, !1403, !1398, !1393}
!1413 = !{!1411, !1406, !1401, !1396}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1416 = distinct !{!1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1421 = distinct !{!1421, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"cmpfunc: %a"}
!1426 = distinct !{!1426, !"cmpfunc"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1426, !"cmpfunc: %b"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1431 = distinct !{!1431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1434 = !{!1430, !1425, !1420, !1415}
!1435 = !{!1433, !1428, !1423, !1418}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1438 = distinct !{!1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1443 = distinct !{!1443, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1443, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"cmpfunc: %a"}
!1448 = distinct !{!1448, !"cmpfunc"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"cmpfunc: %b"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1453 = distinct !{!1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1456 = !{!1452, !1447, !1442, !1437}
!1457 = !{!1455, !1450, !1445, !1440}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1460 = distinct !{!1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1465 = distinct !{!1465, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"cmpfunc: %a"}
!1470 = distinct !{!1470, !"cmpfunc"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"cmpfunc: %b"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1475 = distinct !{!1475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1478 = !{!1474, !1469, !1464, !1459}
!1479 = !{!1477, !1472, !1467, !1462}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1482, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E: %self.0"}
!1482 = distinct !{!1482, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E: %v.0"}
!1485 = distinct !{!1485, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc2d0ae21c6a828f1E"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1488 = distinct !{!1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1493 = distinct !{!1493, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %_0"}
!1496 = distinct !{!1496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1493, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
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
!1509 = !{!1505, !1500, !1492, !1487, !1484}
!1510 = !{!1508, !1503, !1498, !1490, !1495}
!1511 = !{!1508, !1503, !1498, !1490, !1484}
!1512 = !{!1505, !1500, !1492, !1487, !1495}
!1513 = !{!1495, !1514, !1484}
!1514 = distinct !{!1514, !1496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h2aec04c9c78c5520E: %is_less"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1517 = distinct !{!1517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1522, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1522 = distinct !{!1522, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1525, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %_0"}
!1525 = distinct !{!1525, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1522, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"cmpfunc: %a"}
!1530 = distinct !{!1530, !"cmpfunc"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"cmpfunc: %b"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1535 = distinct !{!1535, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1538 = !{!1534, !1529, !1521, !1516, !1484}
!1539 = !{!1537, !1532, !1527, !1519, !1524}
!1540 = !{!1537, !1532, !1527, !1519, !1484}
!1541 = !{!1534, !1529, !1521, !1516, !1524}
!1542 = !{!1524, !1543, !1484}
!1543 = distinct !{!1543, !1525, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h78433b3947f3b734E: %is_less"}
!1544 = !{!1545, !1547}
!1545 = distinct !{!1545, !1546, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1546 = distinct !{!1546, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1547 = distinct !{!1547, !1548, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1548 = distinct !{!1548, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1549 = !{!1550, !1552, !1554, !1556}
!1550 = distinct !{!1550, !1551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1551 = distinct !{!1551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1552 = distinct !{!1552, !1553, !"cmpfunc: %b"}
!1553 = distinct !{!1553, !"cmpfunc"}
!1554 = distinct !{!1554, !1555, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1555 = distinct !{!1555, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1556 = distinct !{!1556, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1557 = distinct !{!1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1558 = !{!1559, !1560, !1561, !1562}
!1559 = distinct !{!1559, !1551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1560 = distinct !{!1560, !1553, !"cmpfunc: %a"}
!1561 = distinct !{!1561, !1555, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1562 = distinct !{!1562, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1563 = !{!1564, !1566, !1568, !1570}
!1564 = distinct !{!1564, !1565, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1565 = distinct !{!1565, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1566 = distinct !{!1566, !1567, !"cmpfunc: %b"}
!1567 = distinct !{!1567, !"cmpfunc"}
!1568 = distinct !{!1568, !1569, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1569 = distinct !{!1569, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1570 = distinct !{!1570, !1571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1571 = distinct !{!1571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1572 = !{!1573, !1574, !1575, !1576}
!1573 = distinct !{!1573, !1565, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1574 = distinct !{!1574, !1567, !"cmpfunc: %a"}
!1575 = distinct !{!1575, !1569, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1576 = distinct !{!1576, !1571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1577 = !{!1578, !1580}
!1578 = distinct !{!1578, !1579, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1579 = distinct !{!1579, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1580 = distinct !{!1580, !1581, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1581 = distinct !{!1581, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1584 = distinct !{!1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1589 = distinct !{!1589, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1594 = distinct !{!1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1597 = !{!1593, !1591, !1586}
!1598 = !{!1596, !1588, !1583}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1601 = distinct !{!1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1606 = distinct !{!1606, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1606, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1611 = distinct !{!1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1614 = !{!1610, !1608, !1603}
!1615 = !{!1613, !1605, !1600}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1618 = distinct !{!1618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1623, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1623 = distinct !{!1623, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1623, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1628 = distinct !{!1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1629 = !{!1630}
!1630 = distinct !{!1630, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1631 = !{!1627, !1625, !1620}
!1632 = !{!1630, !1622, !1617}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1635 = distinct !{!1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1640 = distinct !{!1640, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1645 = distinct !{!1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1648 = !{!1644, !1642, !1637}
!1649 = !{!1647, !1639, !1634}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1652 = distinct !{!1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1657 = distinct !{!1657, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1662 = distinct !{!1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1663 = !{!1664}
!1664 = distinct !{!1664, !1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1665 = !{!1661, !1659, !1654}
!1666 = !{!1664, !1656, !1651}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1674 = distinct !{!1674, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1674, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1677 = !{!1678}
!1678 = distinct !{!1678, !1679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1679 = distinct !{!1679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1682 = !{!1678, !1676, !1671}
!1683 = !{!1681, !1673, !1668}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1686 = distinct !{!1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1691 = distinct !{!1691, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1694 = !{!1695}
!1695 = distinct !{!1695, !1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1696 = distinct !{!1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1699 = !{!1695, !1693, !1688}
!1700 = !{!1698, !1690, !1685}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1703 = distinct !{!1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1708 = distinct !{!1708, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1708, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1713 = distinct !{!1713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1713, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1716 = !{!1712, !1710, !1705}
!1717 = !{!1715, !1707, !1702}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1720 = distinct !{!1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1723 = !{!1724}
!1724 = distinct !{!1724, !1725, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1725 = distinct !{!1725, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1725, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1730, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1730 = distinct !{!1730, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1730, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1733 = !{!1729, !1727, !1722}
!1734 = !{!1732, !1724, !1719}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1737 = distinct !{!1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1742 = distinct !{!1742, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1742, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1747 = distinct !{!1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1748 = !{!1749}
!1749 = distinct !{!1749, !1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1750 = !{!1746, !1744, !1739}
!1751 = !{!1749, !1741, !1736}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1754, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E: %self.0"}
!1754 = distinct !{!1754, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h73eaf7761f4f1f18E"}
!1755 = !{!1756}
!1756 = distinct !{!1756, !1757, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE: %v.0"}
!1757 = distinct !{!1757, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2aff9e263c33f2eE"}
!1758 = !{!1759}
!1759 = distinct !{!1759, !1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1760 = distinct !{!1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1765, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1765 = distinct !{!1765, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %_0"}
!1768 = distinct !{!1768, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1765, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1773 = distinct !{!1773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1773, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1776 = !{!1772, !1770, !1762, !1756}
!1777 = !{!1775, !1764, !1759, !1767}
!1778 = !{!1775, !1764, !1759, !1756}
!1779 = !{!1772, !1770, !1762, !1767}
!1780 = !{!1767, !1781, !1756}
!1781 = distinct !{!1781, !1768, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h4f5adbdcb9f6fef5E: %is_less"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1784 = distinct !{!1784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1784, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1789, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1789 = distinct !{!1789, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1792, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %_0"}
!1792 = distinct !{!1792, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E"}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1789, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1795 = !{!1796}
!1796 = distinct !{!1796, !1797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1797 = distinct !{!1797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1798 = !{!1799}
!1799 = distinct !{!1799, !1797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1800 = !{!1796, !1794, !1786, !1756}
!1801 = !{!1799, !1788, !1783, !1791}
!1802 = !{!1799, !1788, !1783, !1756}
!1803 = !{!1796, !1794, !1786, !1791}
!1804 = !{!1791, !1805, !1756}
!1805 = distinct !{!1805, !1792, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8e59df7481650f07E: %is_less"}
!1806 = !{!1807, !1809}
!1807 = distinct !{!1807, !1808, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1808 = distinct !{!1808, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1809 = distinct !{!1809, !1810, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1810 = distinct !{!1810, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1811 = !{!1812, !1814, !1816}
!1812 = distinct !{!1812, !1813, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1813 = distinct !{!1813, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1814 = distinct !{!1814, !1815, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1815 = distinct !{!1815, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1816 = distinct !{!1816, !1817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1817 = distinct !{!1817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1818 = !{!1819, !1820, !1821}
!1819 = distinct !{!1819, !1813, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1820 = distinct !{!1820, !1815, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1821 = distinct !{!1821, !1817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1822 = !{!1823, !1825, !1827}
!1823 = distinct !{!1823, !1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1824 = distinct !{!1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1825 = distinct !{!1825, !1826, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1826 = distinct !{!1826, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1827 = distinct !{!1827, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1828 = distinct !{!1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1829 = !{!1830, !1831, !1832}
!1830 = distinct !{!1830, !1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1831 = distinct !{!1831, !1826, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1832 = distinct !{!1832, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1833 = !{!1834, !1836}
!1834 = distinct !{!1834, !1835, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE: %self"}
!1835 = distinct !{!1835, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52f810a8b1dabd0bE"}
!1836 = distinct !{!1836, !1837, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E: %_1"}
!1837 = distinct !{!1837, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc9858563536497f2E"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1840, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE: %_0"}
!1840 = distinct !{!1840, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE"}
!1841 = !{i64 0, i64 2}
!1842 = !{i64 0, i64 -9223372036854775807}
!1843 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1846, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE: %_0"}
!1846 = distinct !{!1846, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h39133293990570bdE"}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1849 = distinct !{!1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1854, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1854 = distinct !{!1854, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1854, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1859, !"cmpfunc: %a"}
!1859 = distinct !{!1859, !"cmpfunc"}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1859, !"cmpfunc: %b"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1864 = distinct !{!1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1864, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1867 = !{!1863, !1858, !1853, !1848}
!1868 = !{!1866, !1861, !1856, !1851}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1871 = distinct !{!1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1876, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1876 = distinct !{!1876, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1876, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1881, !"cmpfunc: %a"}
!1881 = distinct !{!1881, !"cmpfunc"}
!1882 = !{!1883}
!1883 = distinct !{!1883, !1881, !"cmpfunc: %b"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1886 = distinct !{!1886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1887 = !{!1888}
!1888 = distinct !{!1888, !1886, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1889 = !{!1885, !1880, !1875, !1870}
!1890 = !{!1888, !1883, !1878, !1873}
!1891 = !{!1892}
!1892 = distinct !{!1892, !1893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1893 = distinct !{!1893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1894 = !{!1895}
!1895 = distinct !{!1895, !1893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1896 = !{!1897}
!1897 = distinct !{!1897, !1898, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1898 = distinct !{!1898, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1899 = !{!1900}
!1900 = distinct !{!1900, !1898, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1903, !"cmpfunc: %a"}
!1903 = distinct !{!1903, !"cmpfunc"}
!1904 = !{!1905}
!1905 = distinct !{!1905, !1903, !"cmpfunc: %b"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1908 = distinct !{!1908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1908, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1911 = !{!1907, !1902, !1897, !1892}
!1912 = !{!1910, !1905, !1900, !1895}
!1913 = !{!1914, !1916}
!1914 = distinct !{!1914, !1915, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E: %a.0"}
!1915 = distinct !{!1915, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E"}
!1916 = distinct !{!1916, !1917, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfb7b599e4e9be7c3E: %self.0"}
!1917 = distinct !{!1917, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfb7b599e4e9be7c3E"}
!1918 = !{!1919}
!1919 = distinct !{!1919, !1915, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E: %b.0"}
!1920 = !{!1919, !1916}
!1921 = !{!1914}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1924 = distinct !{!1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1929, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1929 = distinct !{!1929, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1929, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1934, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1934 = distinct !{!1934, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1935 = !{!1936}
!1936 = distinct !{!1936, !1934, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1937 = !{!1933, !1931, !1926}
!1938 = !{!1936, !1928, !1923}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1941 = distinct !{!1941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1942 = !{!1943}
!1943 = distinct !{!1943, !1941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1946, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1946 = distinct !{!1946, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1947 = !{!1948}
!1948 = distinct !{!1948, !1946, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1951 = distinct !{!1951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1952 = !{!1953}
!1953 = distinct !{!1953, !1951, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1954 = !{!1950, !1948, !1943}
!1955 = !{!1953, !1945, !1940}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!1958 = distinct !{!1958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!1959 = !{!1960}
!1960 = distinct !{!1960, !1958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1963, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!1963 = distinct !{!1963, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!1964 = !{!1965}
!1965 = distinct !{!1965, !1963, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1968 = distinct !{!1968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1969 = !{!1970}
!1970 = distinct !{!1970, !1968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1971 = !{!1967, !1965, !1960}
!1972 = !{!1970, !1962, !1957}
!1973 = !{!1974, !1976}
!1974 = distinct !{!1974, !1975, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E: %a.0"}
!1975 = distinct !{!1975, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E"}
!1976 = distinct !{!1976, !1977, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfb7b599e4e9be7c3E: %self.0"}
!1977 = distinct !{!1977, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfb7b599e4e9be7c3E"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1975, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h57f225e1df4f4f26E: %b.0"}
!1980 = !{!1979, !1976}
!1981 = !{!1974}
!1982 = !{!1983}
!1983 = distinct !{!1983, !1984, !"_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE: %v.0"}
!1984 = distinct !{!1984, !"_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1984, !"_ZN4core5slice4sort6stable5merge5merge17h124776dae093e60aE: %scratch.0"}
!1987 = !{!1983, !1986}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!1990 = distinct !{!1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!1995 = distinct !{!1995, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"cmpfunc: %a"}
!2000 = distinct !{!2000, !"cmpfunc"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"cmpfunc: %b"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2005 = distinct !{!2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2008 = !{!2004, !1999, !1994, !1989, !1986}
!2009 = !{!2007, !2002, !1997, !1992, !2010, !1983}
!2010 = distinct !{!2010, !2011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he233e272f37291c9E: %self"}
!2011 = distinct !{!2011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he233e272f37291c9E"}
!2012 = !{!2007, !2002, !1997, !1992, !1983}
!2013 = !{!2004, !1999, !1994, !1989, !2010, !1986}
!2014 = !{!2010, !1986}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2017 = distinct !{!2017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2020 = !{!2021}
!2021 = distinct !{!2021, !2022, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2022 = distinct !{!2022, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2023 = !{!2024}
!2024 = distinct !{!2024, !2022, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2025 = !{!2026}
!2026 = distinct !{!2026, !2027, !"cmpfunc: %a"}
!2027 = distinct !{!2027, !"cmpfunc"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2027, !"cmpfunc: %b"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2032 = distinct !{!2032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2035 = !{!2031, !2026, !2021, !2016, !1983}
!2036 = !{!2034, !2029, !2024, !2019, !2037, !1986}
!2037 = distinct !{!2037, !2038, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h23d99dfeaf79524fE: %self"}
!2038 = distinct !{!2038, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h23d99dfeaf79524fE"}
!2039 = !{!2034, !2029, !2024, !2019, !1986}
!2040 = !{!2031, !2026, !2021, !2016, !2037, !1983}
!2041 = !{!2037, !1986}
!2042 = !{!2043, !2045}
!2043 = distinct !{!2043, !2044, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E: %self"}
!2044 = distinct !{!2044, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E"}
!2045 = distinct !{!2045, !2046, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E: %_1"}
!2046 = distinct !{!2046, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E"}
!2047 = !{!2048}
!2048 = distinct !{!2048, !2049, !"_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E: %v.0"}
!2049 = distinct !{!2049, !"_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E"}
!2050 = !{!2051}
!2051 = distinct !{!2051, !2049, !"_ZN4core5slice4sort6stable5merge5merge17hc1321174eb4506e4E: %scratch.0"}
!2052 = !{!2048, !2051}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2055 = distinct !{!2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2060 = distinct !{!2060, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2060, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2065, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2065 = distinct !{!2065, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2065, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2068 = !{!2064, !2062, !2057, !2048}
!2069 = !{!2067, !2059, !2054, !2070, !2051}
!2070 = distinct !{!2070, !2071, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h11458c40e9179ca8E: %self"}
!2071 = distinct !{!2071, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h11458c40e9179ca8E"}
!2072 = !{!2067, !2059, !2054, !2051}
!2073 = !{!2064, !2062, !2057, !2070, !2048}
!2074 = !{!2070, !2051}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2077 = distinct !{!2077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2082 = distinct !{!2082, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2085 = !{!2086}
!2086 = distinct !{!2086, !2087, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2087 = distinct !{!2087, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2088 = !{!2089}
!2089 = distinct !{!2089, !2087, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2090 = !{!2086, !2084, !2079, !2051}
!2091 = !{!2089, !2081, !2076, !2092, !2048}
!2092 = distinct !{!2092, !2093, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3411de5a1e127caE: %self"}
!2093 = distinct !{!2093, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3411de5a1e127caE"}
!2094 = !{!2089, !2081, !2076, !2048}
!2095 = !{!2086, !2084, !2079, !2092, !2051}
!2096 = !{!2092, !2051}
!2097 = !{!2098, !2100}
!2098 = distinct !{!2098, !2099, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E: %self"}
!2099 = distinct !{!2099, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E"}
!2100 = distinct !{!2100, !2101, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E: %_1"}
!2101 = distinct !{!2101, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E"}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2104 = distinct !{!2104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2105 = !{!2106}
!2106 = distinct !{!2106, !2104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2109 = distinct !{!2109, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2109, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2112 = !{!2113}
!2113 = distinct !{!2113, !2114, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2114 = distinct !{!2114, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2114, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2117 = !{!2113, !2111, !2106}
!2118 = !{!2116, !2108, !2103}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2121 = distinct !{!2121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2122 = !{!2123}
!2123 = distinct !{!2123, !2121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2126 = distinct !{!2126, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2126, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"cmpfunc: %a"}
!2131 = distinct !{!2131, !"cmpfunc"}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2131, !"cmpfunc: %b"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2136, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2136 = distinct !{!2136, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2136, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2139 = !{!2135, !2130, !2125, !2120}
!2140 = !{!2138, !2133, !2128, !2123}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2143 = distinct !{!2143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2146 = !{!2147}
!2147 = distinct !{!2147, !2148, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2148 = distinct !{!2148, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2149 = !{!2150}
!2150 = distinct !{!2150, !2148, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2151 = !{!2152}
!2152 = distinct !{!2152, !2153, !"cmpfunc: %a"}
!2153 = distinct !{!2153, !"cmpfunc"}
!2154 = !{!2155}
!2155 = distinct !{!2155, !2153, !"cmpfunc: %b"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2158, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2158 = distinct !{!2158, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2158, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2161 = !{!2157, !2152, !2147, !2142}
!2162 = !{!2160, !2155, !2150, !2145}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2165 = distinct !{!2165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2170, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2170 = distinct !{!2170, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2171 = !{!2172}
!2172 = distinct !{!2172, !2170, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2175 = distinct !{!2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2176 = !{!2177}
!2177 = distinct !{!2177, !2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2178 = !{!2174, !2172, !2167}
!2179 = !{!2177, !2169, !2164}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2182 = distinct !{!2182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2187 = distinct !{!2187, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2187, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2192, !"cmpfunc: %a"}
!2192 = distinct !{!2192, !"cmpfunc"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2192, !"cmpfunc: %b"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2197 = distinct !{!2197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2197, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2200 = !{!2196, !2191, !2186, !2181}
!2201 = !{!2199, !2194, !2189, !2184, !2202}
!2202 = distinct !{!2202, !2203, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he233e272f37291c9E: %self"}
!2203 = distinct !{!2203, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he233e272f37291c9E"}
!2204 = !{!2199, !2194, !2189, !2184}
!2205 = !{!2196, !2191, !2186, !2181, !2202}
!2206 = !{!2202}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2209 = distinct !{!2209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2212 = !{!2213}
!2213 = distinct !{!2213, !2214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2214 = distinct !{!2214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2215 = !{!2216}
!2216 = distinct !{!2216, !2214, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2219, !"cmpfunc: %a"}
!2219 = distinct !{!2219, !"cmpfunc"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2219, !"cmpfunc: %b"}
!2222 = !{!2223}
!2223 = distinct !{!2223, !2224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2224 = distinct !{!2224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2225 = !{!2226}
!2226 = distinct !{!2226, !2224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2227 = !{!2223, !2218, !2213, !2208}
!2228 = !{!2226, !2221, !2216, !2211, !2229}
!2229 = distinct !{!2229, !2230, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h23d99dfeaf79524fE: %self"}
!2230 = distinct !{!2230, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h23d99dfeaf79524fE"}
!2231 = !{!2226, !2221, !2216, !2211}
!2232 = !{!2223, !2218, !2213, !2208, !2229}
!2233 = !{!2229}
!2234 = !{!2235, !2237}
!2235 = distinct !{!2235, !2236, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E: %self"}
!2236 = distinct !{!2236, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E"}
!2237 = distinct !{!2237, !2238, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E: %_1"}
!2238 = distinct !{!2238, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2241 = distinct !{!2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2246 = distinct !{!2246, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2251 = distinct !{!2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2254 = !{!2250, !2248, !2243}
!2255 = !{!2253, !2245, !2240, !2256}
!2256 = distinct !{!2256, !2257, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h11458c40e9179ca8E: %self"}
!2257 = distinct !{!2257, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h11458c40e9179ca8E"}
!2258 = !{!2253, !2245, !2240}
!2259 = !{!2250, !2248, !2243, !2256}
!2260 = !{!2256}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2263 = distinct !{!2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2268 = distinct !{!2268, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2268, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2273 = distinct !{!2273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2276 = !{!2272, !2270, !2265}
!2277 = !{!2275, !2267, !2262, !2278}
!2278 = distinct !{!2278, !2279, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3411de5a1e127caE: %self"}
!2279 = distinct !{!2279, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3411de5a1e127caE"}
!2280 = !{!2275, !2267, !2262}
!2281 = !{!2272, !2270, !2265, !2278}
!2282 = !{!2278}
!2283 = !{!2284, !2286}
!2284 = distinct !{!2284, !2285, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E: %self"}
!2285 = distinct !{!2285, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe28ff309286a49E"}
!2286 = distinct !{!2286, !2287, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E: %_1"}
!2287 = distinct !{!2287, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h999181a786a53779E"}
!2288 = !{!"branch_weights", i32 4000000, i32 4001}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2291 = distinct !{!2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2296 = distinct !{!2296, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"cmpfunc: %a"}
!2301 = distinct !{!2301, !"cmpfunc"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2301, !"cmpfunc: %b"}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2306 = distinct !{!2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2307 = !{!2308}
!2308 = distinct !{!2308, !2306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2309 = !{!2305, !2300, !2295, !2290}
!2310 = !{!2308, !2303, !2298, !2293}
!2311 = !{!2312}
!2312 = distinct !{!2312, !2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2313 = distinct !{!2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2316 = distinct !{!2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2317 = !{!2318}
!2318 = distinct !{!2318, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2321, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2321 = distinct !{!2321, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2322 = !{!2323}
!2323 = distinct !{!2323, !2321, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2324 = !{!2325}
!2325 = distinct !{!2325, !2326, !"cmpfunc: %a"}
!2326 = distinct !{!2326, !"cmpfunc"}
!2327 = !{!2328}
!2328 = distinct !{!2328, !2326, !"cmpfunc: %b"}
!2329 = !{!2330}
!2330 = distinct !{!2330, !2331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2331 = distinct !{!2331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2332 = !{!2333}
!2333 = distinct !{!2333, !2331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2334 = !{!2330, !2325, !2320, !2315}
!2335 = !{!2333, !2328, !2323, !2318}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2338 = distinct !{!2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2341 = distinct !{!2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2346 = distinct !{!2346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2347 = !{!2348}
!2348 = distinct !{!2348, !2346, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2349 = !{!2350}
!2350 = distinct !{!2350, !2351, !"cmpfunc: %a"}
!2351 = distinct !{!2351, !"cmpfunc"}
!2352 = !{!2353}
!2353 = distinct !{!2353, !2351, !"cmpfunc: %b"}
!2354 = !{!2355}
!2355 = distinct !{!2355, !2356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2356 = distinct !{!2356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2357 = !{!2358}
!2358 = distinct !{!2358, !2356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2359 = !{!2355, !2350, !2345, !2340}
!2360 = !{!2358, !2353, !2348, !2343}
!2361 = !{!2362}
!2362 = distinct !{!2362, !2363, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2363 = distinct !{!2363, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2366 = distinct !{!2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2367 = !{!2368}
!2368 = distinct !{!2368, !2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2371 = distinct !{!2371, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2372 = !{!2373}
!2373 = distinct !{!2373, !2371, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2374 = !{!2375}
!2375 = distinct !{!2375, !2376, !"cmpfunc: %a"}
!2376 = distinct !{!2376, !"cmpfunc"}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2376, !"cmpfunc: %b"}
!2379 = !{!2380}
!2380 = distinct !{!2380, !2381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2381 = distinct !{!2381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2384 = !{!2380, !2375, !2370, !2365}
!2385 = !{!2383, !2378, !2373, !2368}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2388 = distinct !{!2388, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2389 = !{!2390}
!2390 = distinct !{!2390, !2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2391 = distinct !{!2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2396 = distinct !{!2396, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2397 = !{!2398}
!2398 = distinct !{!2398, !2396, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2399 = !{!2400}
!2400 = distinct !{!2400, !2401, !"cmpfunc: %a"}
!2401 = distinct !{!2401, !"cmpfunc"}
!2402 = !{!2403}
!2403 = distinct !{!2403, !2401, !"cmpfunc: %b"}
!2404 = !{!2405}
!2405 = distinct !{!2405, !2406, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2406 = distinct !{!2406, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2407 = !{!2408}
!2408 = distinct !{!2408, !2406, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2409 = !{!2405, !2400, !2395, !2390}
!2410 = !{!2408, !2403, !2398, !2393}
!2411 = !{!2412}
!2412 = distinct !{!2412, !2413, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2413 = distinct !{!2413, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2416 = distinct !{!2416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2417 = distinct !{!2417, !17}
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2420 = distinct !{!2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2425 = distinct !{!2425, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2425, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2430 = distinct !{!2430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2431 = !{!2432}
!2432 = distinct !{!2432, !2430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2433 = !{!2429, !2427, !2422}
!2434 = !{!2432, !2424, !2419}
!2435 = !{!2436}
!2436 = distinct !{!2436, !2437, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2437 = distinct !{!2437, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2440 = distinct !{!2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2445 = distinct !{!2445, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2446 = !{!2447}
!2447 = distinct !{!2447, !2445, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2450 = distinct !{!2450, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2450, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2453 = !{!2449, !2447, !2442}
!2454 = !{!2452, !2444, !2439}
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2457 = distinct !{!2457, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2460 = distinct !{!2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2465 = distinct !{!2465, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2470 = distinct !{!2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2473 = !{!2469, !2467, !2462}
!2474 = !{!2472, !2464, !2459}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2477 = distinct !{!2477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2480 = distinct !{!2480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2481 = !{!2482}
!2482 = distinct !{!2482, !2480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2485, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2485 = distinct !{!2485, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2485, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2490 = distinct !{!2490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2491 = !{!2492}
!2492 = distinct !{!2492, !2490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2493 = !{!2489, !2487, !2482}
!2494 = !{!2492, !2484, !2479}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2497 = distinct !{!2497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2498 = !{!2499}
!2499 = distinct !{!2499, !2500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2500 = distinct !{!2500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2505 = distinct !{!2505, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2505, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2510 = distinct !{!2510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2513 = !{!2509, !2507, !2502}
!2514 = !{!2512, !2504, !2499}
!2515 = !{!2516}
!2516 = distinct !{!2516, !2517, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2517 = distinct !{!2517, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2520 = distinct !{!2520, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2521 = distinct !{!2521, !17}
!2522 = !{!2523}
!2523 = distinct !{!2523, !2524, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %a"}
!2524 = distinct !{!2524, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE"}
!2525 = !{!2526}
!2526 = distinct !{!2526, !2524, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %b"}
!2527 = !{!2528}
!2528 = distinct !{!2528, !2529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2529 = distinct !{!2529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2530 = !{!2531}
!2531 = distinct !{!2531, !2529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2532 = !{!2533}
!2533 = distinct !{!2533, !2534, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2534 = distinct !{!2534, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2535 = !{!2536}
!2536 = distinct !{!2536, !2534, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2537 = !{!2538}
!2538 = distinct !{!2538, !2539, !"cmpfunc: %a"}
!2539 = distinct !{!2539, !"cmpfunc"}
!2540 = !{!2541}
!2541 = distinct !{!2541, !2539, !"cmpfunc: %b"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2544, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2544 = distinct !{!2544, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2545 = !{!2546}
!2546 = distinct !{!2546, !2544, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2547 = !{!2543, !2538, !2533, !2528, !2526}
!2548 = !{!2546, !2541, !2536, !2531, !2523}
!2549 = !{!2550}
!2550 = distinct !{!2550, !2551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2551 = distinct !{!2551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2552 = !{!2553}
!2553 = distinct !{!2553, !2554, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %a"}
!2554 = distinct !{!2554, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2554, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %b"}
!2557 = !{!2558}
!2558 = distinct !{!2558, !2559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2559 = distinct !{!2559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2560 = !{!2561}
!2561 = distinct !{!2561, !2559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2562 = !{!2563}
!2563 = distinct !{!2563, !2564, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2564 = distinct !{!2564, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2565 = !{!2566}
!2566 = distinct !{!2566, !2564, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2567 = !{!2568}
!2568 = distinct !{!2568, !2569, !"cmpfunc: %a"}
!2569 = distinct !{!2569, !"cmpfunc"}
!2570 = !{!2571}
!2571 = distinct !{!2571, !2569, !"cmpfunc: %b"}
!2572 = !{!2573}
!2573 = distinct !{!2573, !2574, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2574 = distinct !{!2574, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2575 = !{!2576}
!2576 = distinct !{!2576, !2574, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2577 = !{!2573, !2568, !2563, !2558, !2556}
!2578 = !{!2576, !2571, !2566, !2561, !2553}
!2579 = !{!2580}
!2580 = distinct !{!2580, !2581, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2581 = distinct !{!2581, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %a"}
!2584 = distinct !{!2584, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE"}
!2585 = !{!2586}
!2586 = distinct !{!2586, !2584, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %b"}
!2587 = !{!2588}
!2588 = distinct !{!2588, !2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2589 = distinct !{!2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2590 = !{!2591}
!2591 = distinct !{!2591, !2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2594 = distinct !{!2594, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2595 = !{!2596}
!2596 = distinct !{!2596, !2594, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2597 = !{!2598}
!2598 = distinct !{!2598, !2599, !"cmpfunc: %a"}
!2599 = distinct !{!2599, !"cmpfunc"}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2599, !"cmpfunc: %b"}
!2602 = !{!2603}
!2603 = distinct !{!2603, !2604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2604 = distinct !{!2604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2607 = !{!2603, !2598, !2593, !2588, !2586}
!2608 = !{!2606, !2601, !2596, !2591, !2583}
!2609 = !{!2610}
!2610 = distinct !{!2610, !2611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2611 = distinct !{!2611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %a"}
!2614 = distinct !{!2614, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE"}
!2615 = !{!2616}
!2616 = distinct !{!2616, !2614, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %b"}
!2617 = !{!2618}
!2618 = distinct !{!2618, !2619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2619 = distinct !{!2619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2620 = !{!2621}
!2621 = distinct !{!2621, !2619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2622 = !{!2623}
!2623 = distinct !{!2623, !2624, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2624 = distinct !{!2624, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2625 = !{!2626}
!2626 = distinct !{!2626, !2624, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2627 = !{!2628}
!2628 = distinct !{!2628, !2629, !"cmpfunc: %a"}
!2629 = distinct !{!2629, !"cmpfunc"}
!2630 = !{!2631}
!2631 = distinct !{!2631, !2629, !"cmpfunc: %b"}
!2632 = !{!2633}
!2633 = distinct !{!2633, !2634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2634 = distinct !{!2634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2635 = !{!2636}
!2636 = distinct !{!2636, !2634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2637 = !{!2633, !2628, !2623, !2618, !2616}
!2638 = !{!2636, !2631, !2626, !2621, !2613}
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2641 = distinct !{!2641, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2642 = !{!2643}
!2643 = distinct !{!2643, !2644, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %a"}
!2644 = distinct !{!2644, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE"}
!2645 = !{!2646}
!2646 = distinct !{!2646, !2644, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc99409af1396458bE: %b"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2649 = distinct !{!2649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2650 = !{!2651}
!2651 = distinct !{!2651, !2649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2652 = !{!2653}
!2653 = distinct !{!2653, !2654, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2654 = distinct !{!2654, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2654, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2657 = !{!2658}
!2658 = distinct !{!2658, !2659, !"cmpfunc: %a"}
!2659 = distinct !{!2659, !"cmpfunc"}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2659, !"cmpfunc: %b"}
!2662 = !{!2663}
!2663 = distinct !{!2663, !2664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2664 = distinct !{!2664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2665 = !{!2666}
!2666 = distinct !{!2666, !2664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2667 = !{!2663, !2658, !2653, !2648, !2646}
!2668 = !{!2666, !2661, !2656, !2651, !2643}
!2669 = !{!2670}
!2670 = distinct !{!2670, !2671, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2671 = distinct !{!2671, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2674 = distinct !{!2674, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2675 = distinct !{!2675, !17}
!2676 = !{!2677}
!2677 = distinct !{!2677, !2678, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %a"}
!2678 = distinct !{!2678, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E"}
!2679 = !{!2680}
!2680 = distinct !{!2680, !2678, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %b"}
!2681 = !{!2682}
!2682 = distinct !{!2682, !2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2683 = distinct !{!2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2684 = !{!2685}
!2685 = distinct !{!2685, !2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2686 = !{!2687}
!2687 = distinct !{!2687, !2688, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2688 = distinct !{!2688, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2689 = !{!2690}
!2690 = distinct !{!2690, !2688, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2691 = !{!2692}
!2692 = distinct !{!2692, !2693, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2693 = distinct !{!2693, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2693, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2696 = !{!2692, !2690, !2685, !2677}
!2697 = !{!2695, !2687, !2682, !2680}
!2698 = !{!2699}
!2699 = distinct !{!2699, !2700, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2700 = distinct !{!2700, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2701 = !{!2702}
!2702 = distinct !{!2702, !2703, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %a"}
!2703 = distinct !{!2703, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E"}
!2704 = !{!2705}
!2705 = distinct !{!2705, !2703, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %b"}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2708 = distinct !{!2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2709 = !{!2710}
!2710 = distinct !{!2710, !2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2711 = !{!2712}
!2712 = distinct !{!2712, !2713, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2713 = distinct !{!2713, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2714 = !{!2715}
!2715 = distinct !{!2715, !2713, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2716 = !{!2717}
!2717 = distinct !{!2717, !2718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2718 = distinct !{!2718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2719 = !{!2720}
!2720 = distinct !{!2720, !2718, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2721 = !{!2717, !2715, !2710, !2702}
!2722 = !{!2720, !2712, !2707, !2705}
!2723 = !{!2724}
!2724 = distinct !{!2724, !2725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2725 = distinct !{!2725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2726 = !{!2727}
!2727 = distinct !{!2727, !2728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %a"}
!2728 = distinct !{!2728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E"}
!2729 = !{!2730}
!2730 = distinct !{!2730, !2728, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %b"}
!2731 = !{!2732}
!2732 = distinct !{!2732, !2733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2733 = distinct !{!2733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2734 = !{!2735}
!2735 = distinct !{!2735, !2733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2736 = !{!2737}
!2737 = distinct !{!2737, !2738, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2738 = distinct !{!2738, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2739 = !{!2740}
!2740 = distinct !{!2740, !2738, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2741 = !{!2742}
!2742 = distinct !{!2742, !2743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2743 = distinct !{!2743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2744 = !{!2745}
!2745 = distinct !{!2745, !2743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2746 = !{!2742, !2740, !2735, !2727}
!2747 = !{!2745, !2737, !2732, !2730}
!2748 = !{!2749}
!2749 = distinct !{!2749, !2750, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2750 = distinct !{!2750, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2751 = !{!2752}
!2752 = distinct !{!2752, !2753, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %a"}
!2753 = distinct !{!2753, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E"}
!2754 = !{!2755}
!2755 = distinct !{!2755, !2753, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %b"}
!2756 = !{!2757}
!2757 = distinct !{!2757, !2758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2758 = distinct !{!2758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2761 = !{!2762}
!2762 = distinct !{!2762, !2763, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2763 = distinct !{!2763, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2764 = !{!2765}
!2765 = distinct !{!2765, !2763, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2766 = !{!2767}
!2767 = distinct !{!2767, !2768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2768 = distinct !{!2768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2769 = !{!2770}
!2770 = distinct !{!2770, !2768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2771 = !{!2767, !2765, !2760, !2752}
!2772 = !{!2770, !2762, !2757, !2755}
!2773 = !{!2774}
!2774 = distinct !{!2774, !2775, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2775 = distinct !{!2775, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2776 = !{!2777}
!2777 = distinct !{!2777, !2778, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %a"}
!2778 = distinct !{!2778, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E"}
!2779 = !{!2780}
!2780 = distinct !{!2780, !2778, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c296b83052ffd49E: %b"}
!2781 = !{!2782}
!2782 = distinct !{!2782, !2783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2783 = distinct !{!2783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2784 = !{!2785}
!2785 = distinct !{!2785, !2783, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2786 = !{!2787}
!2787 = distinct !{!2787, !2788, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2788 = distinct !{!2788, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2789 = !{!2790}
!2790 = distinct !{!2790, !2788, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2793 = distinct !{!2793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2794 = !{!2795}
!2795 = distinct !{!2795, !2793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2796 = !{!2792, !2790, !2785, !2777}
!2797 = !{!2795, !2787, !2782, !2780}
!2798 = !{!2799}
!2799 = distinct !{!2799, !2800, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2800 = distinct !{!2800, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2801 = !{!2802}
!2802 = distinct !{!2802, !2803, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E: %self"}
!2803 = distinct !{!2803, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h0e7c6c06acaadaa0E"}
!2804 = distinct !{!2804, !17}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2807 = distinct !{!2807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2808 = !{!2809}
!2809 = distinct !{!2809, !2807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2810 = !{!2811}
!2811 = distinct !{!2811, !2812, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2812 = distinct !{!2812, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2813 = !{!2814}
!2814 = distinct !{!2814, !2815, !"_ZN4core5slice4sort6shared5pivot7median317h11af4fbbde2edb3bE: %c"}
!2815 = distinct !{!2815, !"_ZN4core5slice4sort6shared5pivot7median317h11af4fbbde2edb3bE"}
!2816 = !{!2817}
!2817 = distinct !{!2817, !2812, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2818 = !{!2819}
!2819 = distinct !{!2819, !2820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2820 = distinct !{!2820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2821 = !{!2822}
!2822 = distinct !{!2822, !2820, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2823 = !{!2819, !2817, !2809, !2824}
!2824 = distinct !{!2824, !2825, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE: %v.0"}
!2825 = distinct !{!2825, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE"}
!2826 = !{!2822, !2811, !2806, !2814, !2827}
!2827 = distinct !{!2827, !2825, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2117847f8ffc6e0fE: %is_less"}
!2828 = !{!2822, !2811, !2806, !2824}
!2829 = !{!2819, !2817, !2809, !2814, !2827}
!2830 = !{!2831, !2833, !2835, !2824}
!2831 = distinct !{!2831, !2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2832 = distinct !{!2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2833 = distinct !{!2833, !2834, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2834 = distinct !{!2834, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2835 = distinct !{!2835, !2836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2836 = distinct !{!2836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2837 = !{!2838, !2839, !2840, !2827}
!2838 = distinct !{!2838, !2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2839 = distinct !{!2839, !2834, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2840 = distinct !{!2840, !2836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2841 = !{!2842, !2844, !2846}
!2842 = distinct !{!2842, !2843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2843 = distinct !{!2843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2844 = distinct !{!2844, !2845, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %a"}
!2845 = distinct !{!2845, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE"}
!2846 = distinct !{!2846, !2847, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %a"}
!2847 = distinct !{!2847, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E"}
!2848 = !{!2849, !2850, !2851}
!2849 = distinct !{!2849, !2843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2850 = distinct !{!2850, !2845, !"_ZN41SMALLEST_SUBSET_SUM_GREATER_ELEMENTS_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4f1acad5809f932cE: %b"}
!2851 = distinct !{!2851, !2847, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hcb38fbb4229d7092E: %b"}
!2852 = !{!2853, !2855}
!2853 = distinct !{!2853, !2854, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE: %pair"}
!2854 = distinct !{!2854, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE"}
!2855 = distinct !{!2855, !2854, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE: %self.0"}
!2856 = !{!2857}
!2857 = distinct !{!2857, !2858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2858 = distinct !{!2858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2859 = !{!2860}
!2860 = distinct !{!2860, !2858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2863 = distinct !{!2863, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"_ZN4core5slice4sort6shared5pivot7median317hcf286b786a0972b4E: %c"}
!2866 = distinct !{!2866, !"_ZN4core5slice4sort6shared5pivot7median317hcf286b786a0972b4E"}
!2867 = !{!2868}
!2868 = distinct !{!2868, !2863, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2869 = !{!2870}
!2870 = distinct !{!2870, !2871, !"cmpfunc: %a"}
!2871 = distinct !{!2871, !"cmpfunc"}
!2872 = !{!2873}
!2873 = distinct !{!2873, !2871, !"cmpfunc: %b"}
!2874 = !{!2875}
!2875 = distinct !{!2875, !2876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2876 = distinct !{!2876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2877 = !{!2878}
!2878 = distinct !{!2878, !2876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2879 = !{!2875, !2870, !2862, !2857, !2880}
!2880 = distinct !{!2880, !2881, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE: %v.0"}
!2881 = distinct !{!2881, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE"}
!2882 = !{!2878, !2873, !2868, !2860, !2865, !2883}
!2883 = distinct !{!2883, !2881, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbd48ff43ac746c9dE: %is_less"}
!2884 = !{!2878, !2873, !2868, !2860, !2880}
!2885 = !{!2875, !2870, !2862, !2857, !2865, !2883}
!2886 = !{!2887, !2889, !2891, !2893, !2880}
!2887 = distinct !{!2887, !2888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2888 = distinct !{!2888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2889 = distinct !{!2889, !2890, !"cmpfunc: %b"}
!2890 = distinct !{!2890, !"cmpfunc"}
!2891 = distinct !{!2891, !2892, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2892 = distinct !{!2892, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2893 = distinct !{!2893, !2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2894 = distinct !{!2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2895 = !{!2896, !2897, !2898, !2899, !2883}
!2896 = distinct !{!2896, !2888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2897 = distinct !{!2897, !2890, !"cmpfunc: %a"}
!2898 = distinct !{!2898, !2892, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2899 = distinct !{!2899, !2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2900 = !{!2901, !2903, !2905, !2907}
!2901 = distinct !{!2901, !2902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2902 = distinct !{!2902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2903 = distinct !{!2903, !2904, !"cmpfunc: %a"}
!2904 = distinct !{!2904, !"cmpfunc"}
!2905 = distinct !{!2905, !2906, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 0"}
!2906 = distinct !{!2906, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E"}
!2907 = distinct !{!2907, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %a"}
!2908 = distinct !{!2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E"}
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = distinct !{!2910, !2902, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2911 = distinct !{!2911, !2904, !"cmpfunc: %b"}
!2912 = distinct !{!2912, !2906, !"_ZN4core3ops8function5FnMut8call_mut17h200d80cf56a66cf3E: argument 1"}
!2913 = distinct !{!2913, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h632da09d358875c0E: %b"}
!2914 = !{!2915, !2917}
!2915 = distinct !{!2915, !2916, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE: %pair"}
!2916 = distinct !{!2916, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE"}
!2917 = distinct !{!2917, !2916, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he69dc68e7216fd9eE: %self.0"}
!2918 = !{i64 0, i64 -9223372036854775808}
!2919 = !{!2920}
!2920 = distinct !{!2920, !2921, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf22ec85e2a14b8ffE: %b"}
!2921 = distinct !{!2921, !"_ZN69_$LT$i32$u20$as$u20$core..iter..traits..accum..Sum$LT$$RF$i32$GT$$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17hf22ec85e2a14b8ffE"}
!2922 = distinct !{!2922, !17}
!2923 = !{!2924}
!2924 = distinct !{!2924, !2925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2925 = distinct !{!2925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2926 = !{!2927}
!2927 = distinct !{!2927, !2925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE: %self.0"}
!2930 = distinct !{!2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6e0fa7d2f135291eE"}
!2931 = !{!2932, !2934, !2929}
!2932 = distinct !{!2932, !2933, !"_ZN5alloc5slice11stable_sort17h164c4de46106dc30E: %v.0"}
!2933 = distinct !{!2933, !"_ZN5alloc5slice11stable_sort17h164c4de46106dc30E"}
!2934 = distinct !{!2934, !2933, !"_ZN5alloc5slice11stable_sort17h164c4de46106dc30E: argument 1"}
!2935 = !{!"branch_weights", !"expected", i32 2000, i32 1}
