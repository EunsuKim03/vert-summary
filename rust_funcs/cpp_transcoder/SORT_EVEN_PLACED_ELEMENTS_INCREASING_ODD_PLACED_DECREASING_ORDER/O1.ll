; ModuleID = 'SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.40d71ffee48ff486-cgu.0'
source_filename = "SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.40d71ffee48ff486-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_bec5dbf4ea533e8e32c92f0cf94b4c55 = private unnamed_addr constant [183 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.rs\00", align 1
@alloc_8ff914f1831e33925cf29190c60b0739 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00&\00\00\00\09\00\00\00" }>, align 8
@alloc_743f2cefaccb6d94c89870124217d1ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@alloc_e63ffa31ad6e0404fd60d280d854c254 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\1B\00\00\00\1A\00\00\00" }>, align 8
@alloc_82fa06a248ba2287581da2665aa4e248 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\19\00\00\00\1B\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h0e8666cc97ebcf1aE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !20
  %_3.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !25, !noalias !26, !noundef !27
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !28, !noalias !29, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_4.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !30, !noalias !35, !noundef !27
  %_0.i.i7 = icmp slt i32 %_3.i.i, %_4.i.i6
  %7 = xor i1 %_0.i.i, %_0.i.i7
  %_0.i.i10 = icmp slt i32 %_4.i.i, %_4.i.i6
  %_12.i = xor i1 %_0.i.i, %_0.i.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43), !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54), !noalias !46
  %_3.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !56, !noalias !57, !noundef !27
  %_4.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !58, !noalias !59, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_3.i.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !60, !noalias !67, !noundef !27
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76), !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82), !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84), !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87), !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89), !noalias !79
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92), !noalias !79
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !94, !noalias !95, !noundef !27
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !96, !noalias !97, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !98, !noalias !107, !noundef !27
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %_3.i.i.i = load i32, ptr %0, align 4, !alias.scope !127, !noalias !128, !noundef !27
  %_4.i.i.i = load i32, ptr %tail, align 4, !alias.scope !128, !noalias !127, !noundef !27
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
  %_3.i.i.i1 = load i32, ptr %2, align 4, !alias.scope !129, !noalias !136, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !140
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %_3.i.i = load i32, ptr %tail, align 4, !alias.scope !155, !noalias !156, !noundef !27
  %_4.i.i = load i32, ptr %0, align 4, !alias.scope !156, !noalias !155, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  br i1 %_0.i.i, label %bb4, label %bb12

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
  %_4.i.i2 = load i32, ptr %2, align 4, !alias.scope !157, !noalias !162, !noundef !27
  %_0.i.i3 = icmp slt i32 %_3.i.i, %_4.i.i2
  br i1 %_0.i.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i, ptr %sift.sroa.0.0, align 4, !noalias !165
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !190, !noalias !191, !noundef !27
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !191, !noalias !190, !noundef !27
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !192, !noalias !201, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !206
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17ha8ce8ae275e0c860E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %_3.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !226, !noalias !227, !noundef !27
  %_4.i.i.i = load i32, ptr %_7, align 4, !alias.scope !227, !noalias !226, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %_3.i.i.i7 = load i32, ptr %_14, align 4, !alias.scope !243, !noalias !244, !noundef !27
  %_4.i.i.i8 = load i32, ptr %_12, align 4, !alias.scope !244, !noalias !243, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %_3.i.i.i10 = load i32, ptr %a, align 4, !alias.scope !260, !noalias !261, !noundef !27
  %_4.i.i.i11 = load i32, ptr %c, align 4, !alias.scope !261, !noalias !260, !noundef !27
  %_0.i12 = icmp slt i32 %_3.i.i.i10, %_4.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %_3.i.i.i13 = load i32, ptr %b, align 4, !alias.scope !277, !noalias !278, !noundef !27
  %_4.i.i.i14 = load i32, ptr %d, align 4, !alias.scope !278, !noalias !277, !noundef !27
  %_0.i15 = icmp slt i32 %_3.i.i.i13, %_4.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !27
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !27
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !27
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %_3.i.i.i16 = load i32, ptr %2, align 4, !alias.scope !294, !noalias !295, !noundef !27
  %_4.i.i.i17 = load i32, ptr %4, align 4, !alias.scope !295, !noalias !294, !noundef !27
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb6732c8ac0f3ade8E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !316, !noalias !317, !noundef !27
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !317, !noalias !316, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !338, !noalias !339, !noundef !27
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !339, !noalias !338, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !360, !noalias !361, !noundef !27
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !361, !noalias !360, !noundef !27
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !382, !noalias !383, !noundef !27
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !383, !noalias !382, !noundef !27
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !27
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !27
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !27
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !404, !noalias !405, !noundef !27
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !405, !noalias !404, !noundef !27
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

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hc4abbc30d2d60e93E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %_3.i.i = load i32, ptr %_7, align 4, !alias.scope !416, !noalias !417, !noundef !27
  %_4.i.i = load i32, ptr %v_base, align 4, !alias.scope !417, !noalias !416, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %_3.i.i7 = load i32, ptr %_12, align 4, !alias.scope !428, !noalias !429, !noundef !27
  %_4.i.i8 = load i32, ptr %_14, align 4, !alias.scope !429, !noalias !428, !noundef !27
  %_0.i.i9 = icmp slt i32 %_3.i.i7, %_4.i.i8
  %count = zext i1 %_0.i.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %_3.i.i10 = load i32, ptr %c, align 4, !alias.scope !440, !noalias !441, !noundef !27
  %_4.i.i11 = load i32, ptr %a, align 4, !alias.scope !441, !noalias !440, !noundef !27
  %_0.i.i12 = icmp slt i32 %_3.i.i10, %_4.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %_3.i.i13 = load i32, ptr %d, align 4, !alias.scope !452, !noalias !453, !noundef !27
  %_4.i.i14 = load i32, ptr %b, align 4, !alias.scope !453, !noalias !452, !noundef !27
  %_0.i.i15 = icmp slt i32 %_3.i.i13, %_4.i.i14
  %0 = select i1 %_0.i.i12, ptr %c, ptr %a, !unpredictable !27
  %1 = select i1 %_0.i.i15, ptr %c, ptr %b, !unpredictable !27
  %2 = select i1 %_0.i.i12, ptr %a, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12, ptr %b, ptr %c, !unpredictable !27
  %4 = select i1 %_0.i.i15, ptr %d, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %_3.i.i16 = load i32, ptr %4, align 4, !alias.scope !464, !noalias !465, !noundef !27
  %_4.i.i17 = load i32, ptr %2, align 4, !alias.scope !465, !noalias !464, !noundef !27
  %_0.i.i18 = icmp slt i32 %_3.i.i16, %_4.i.i17
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %.val = load i32, ptr %4, align 4
  %.val19 = load i32, ptr %2, align 4
  %6 = select i1 %_0.i.i18, i32 %.val, i32 %.val19
  store i32 %6, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %.val20 = load i32, ptr %2, align 4
  %.val21 = load i32, ptr %4, align 4
  %7 = select i1 %_0.i.i18, i32 %.val20, i32 %.val21
  store i32 %7, ptr %dst6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %b.val = load i32, ptr %b, align 4
  %d.val = load i32, ptr %d, align 4
  %9 = select i1 %_0.i.i15, i32 %b.val, i32 %d.val
  store i32 %9, ptr %8, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !486, !noalias !487, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !487, !noalias !486, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !508, !noalias !509, !noundef !27
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !509, !noalias !508, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !530, !noalias !531, !noundef !27
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !531, !noalias !530, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !552, !noalias !553, !noundef !27
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !553, !noalias !552, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !574, !noalias !575, !noundef !27
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !575, !noalias !574, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !596, !noalias !597, !noundef !27
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !597, !noalias !596, !noundef !27
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !618, !noalias !619, !noundef !27
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !619, !noalias !618, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !640, !noalias !641, !noundef !27
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !641, !noalias !640, !noundef !27
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !662, !noalias !663, !noundef !27
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !663, !noalias !662, !noundef !27
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !27
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !27
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !27
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !684, !noalias !685, !noundef !27
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !685, !noalias !684, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !697
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !712, !noalias !713, !noundef !27
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !714, !noalias !715, !noundef !27
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !716
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739), !noalias !726
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !741, !noalias !742, !noundef !27
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !743, !noalias !744, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !745
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761), !noalias !697
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !763, !noalias !764, !noundef !27
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !765, !noalias !766, !noundef !27
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !716
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781), !noalias !726
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !783, !noalias !784, !noundef !27
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !785, !noalias !786, !noundef !27
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !745
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !697
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !803, !noalias !804, !noundef !27
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !805, !noalias !806, !noundef !27
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !716
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821), !noalias !726
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !823, !noalias !824, !noundef !27
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !825, !noalias !826, !noundef !27
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !745
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839), !noalias !697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841), !noalias !697
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !843, !noalias !844, !noundef !27
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !845, !noalias !846, !noundef !27
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !716
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859), !noalias !726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861), !noalias !726
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !863, !noalias !864, !noundef !27
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !865, !noalias !866, !noundef !27
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !745
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E.exit, !prof !867

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !686
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %_3.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !883, !noalias !884, !noundef !27
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !884, !noalias !883, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !900, !noalias !901, !noundef !27
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !901, !noalias !900, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !917, !noalias !918, !noundef !27
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !918, !noalias !917, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !934, !noalias !935, !noundef !27
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !935, !noalias !934, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !951, !noalias !952, !noundef !27
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !952, !noalias !951, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %_3.i.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !968, !noalias !969, !noundef !27
  %_4.i.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !969, !noalias !968, !noundef !27
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %_3.i.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !985, !noalias !986, !noundef !27
  %_4.i.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !986, !noalias !985, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %_3.i.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !1002, !noalias !1003, !noundef !27
  %_4.i.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !1003, !noalias !1002, !noundef !27
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %_3.i.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !1019, !noalias !1020, !noundef !27
  %_4.i.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !1020, !noalias !1019, !noundef !27
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !27
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !27
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !27
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %_3.i.i.i16.i25 = load i32, ptr %12, align 4, !alias.scope !1036, !noalias !1037, !noundef !27
  %_4.i.i.i17.i26 = load i32, ptr %14, align 4, !alias.scope !1037, !noalias !1036, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057), !noalias !1049
  %_3.i.i.i.i36 = load i32, ptr %scratch_base, align 4, !alias.scope !1059, !noalias !1060, !noundef !27
  %_4.i.i.i.i37 = load i32, ptr %_10, align 4, !alias.scope !1061, !noalias !1062, !noundef !27
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i36, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36, i32 %_4.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1063
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081), !noalias !1073
  %_3.i.i.i19.i = load i32, ptr %20, align 4, !alias.scope !1083, !noalias !1084, !noundef !27
  %_4.i.i.i20.i = load i32, ptr %21, align 4, !alias.scope !1085, !noalias !1086, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1087
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099), !noalias !1049
  %_3.i.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1101, !noalias !1102, !noundef !27
  %_4.i.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1103, !noalias !1104, !noundef !27
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1063
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115), !noalias !1073
  %_3.i.i.i19.i.1 = load i32, ptr %26, align 4, !alias.scope !1117, !noalias !1118, !noundef !27
  %_4.i.i.i20.i.1 = load i32, ptr %25, align 4, !alias.scope !1119, !noalias !1120, !noundef !27
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1087
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131), !noalias !1049
  %_3.i.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1133, !noalias !1134, !noundef !27
  %_4.i.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1135, !noalias !1136, !noundef !27
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1063
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147), !noalias !1073
  %_3.i.i.i19.i.2 = load i32, ptr %31, align 4, !alias.scope !1149, !noalias !1150, !noundef !27
  %_4.i.i.i20.i.2 = load i32, ptr %30, align 4, !alias.scope !1151, !noalias !1152, !noundef !27
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1087
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161), !noalias !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163), !noalias !1049
  %_3.i.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1165, !noalias !1166, !noundef !27
  %_4.i.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1167, !noalias !1168, !noundef !27
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1063
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179), !noalias !1073
  %_3.i.i.i19.i.3 = load i32, ptr %36, align 4, !alias.scope !1181, !noalias !1182, !noundef !27
  %_4.i.i.i20.i.3 = load i32, ptr %35, align 4, !alias.scope !1183, !noalias !1184, !noundef !27
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1087
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E.exit, !prof !867

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1038
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1195, !noalias !1196, !noundef !27
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !1196, !noalias !1195, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1207, !noalias !1208, !noundef !27
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1208, !noalias !1207, !noundef !27
  %_0.i.i9.i = icmp slt i32 %_3.i.i7.i, %_4.i.i8.i
  %count.i = zext i1 %_0.i.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1219, !noalias !1220, !noundef !27
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1220, !noalias !1219, !noundef !27
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1231, !noalias !1232, !noundef !27
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1232, !noalias !1231, !noundef !27
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1243, !noalias !1244, !noundef !27
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1244, !noalias !1243, !noundef !27
  %_0.i.i18.i = icmp slt i32 %_3.i.i16.i, %_4.i.i17.i
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %6 = select i1 %_0.i.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %7 = select i1 %_0.i.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %9 = select i1 %_0.i.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %9, ptr %8, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !1255, !noalias !1256, !noundef !27
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !1256, !noalias !1255, !noundef !27
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !1267, !noalias !1268, !noundef !27
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !1268, !noalias !1267, !noundef !27
  %_0.i.i9.i9 = icmp slt i32 %_3.i.i7.i7, %_4.i.i8.i8
  %count.i10 = zext i1 %_0.i.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !1279, !noalias !1280, !noundef !27
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !1280, !noalias !1279, !noundef !27
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !1291, !noalias !1292, !noundef !27
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !1292, !noalias !1291, !noundef !27
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %10 = select i1 %_0.i.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !27
  %11 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !27
  %12 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !27
  %14 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %_3.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !1303, !noalias !1304, !noundef !27
  %_4.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !1304, !noalias !1303, !noundef !27
  %_0.i.i18.i27 = icmp slt i32 %_3.i.i16.i25, %_4.i.i17.i26
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %14, align 4
  %.val19.i30 = load i32, ptr %12, align 4
  %16 = select i1 %_0.i.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %16, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %12, align 4
  %.val21.i33 = load i32, ptr %14, align 4
  %17 = select i1 %_0.i.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %17, ptr %dst6.i31, align 4
  %18 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %19 = select i1 %_0.i.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %19, ptr %18, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313), !noalias !1316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319), !noalias !1316
  %_3.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !1321, !noalias !1322, !noundef !27
  %_4.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !1323, !noalias !1324, !noundef !27
  %_0.i.i.i38 = icmp slt i32 %_3.i.i.i36, %_4.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36, i32 %_4.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1325
  %count.i.i = zext i1 %_0.i.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332), !noalias !1335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1335
  %_3.i.i19.i = load i32, ptr %21, align 4, !alias.scope !1340, !noalias !1341, !noundef !27
  %_4.i.i20.i = load i32, ptr %20, align 4, !alias.scope !1342, !noalias !1343, !noundef !27
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1344
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352), !noalias !1316
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1354, !noalias !1355, !noundef !27
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1356, !noalias !1357, !noundef !27
  %_0.i.i.i38.1 = icmp slt i32 %_3.i.i.i36.1, %_4.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.1, i32 %_4.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1325
  %count.i.i.1 = zext i1 %_0.i.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364), !noalias !1335
  %_3.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1366, !noalias !1367, !noundef !27
  %_4.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1368, !noalias !1369, !noundef !27
  %_0.i.i21.i.1 = icmp slt i32 %_3.i.i19.i.1, %_4.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.1, i32 %_4.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1344
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374), !noalias !1316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376), !noalias !1316
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1378, !noalias !1379, !noundef !27
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1380, !noalias !1381, !noundef !27
  %_0.i.i.i38.2 = icmp slt i32 %_3.i.i.i36.2, %_4.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.2, i32 %_4.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1325
  %count.i.i.2 = zext i1 %_0.i.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386), !noalias !1335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388), !noalias !1335
  %_3.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1390, !noalias !1391, !noundef !27
  %_4.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1392, !noalias !1393, !noundef !27
  %_0.i.i21.i.2 = icmp slt i32 %_3.i.i19.i.2, %_4.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.2, i32 %_4.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1344
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398), !noalias !1316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400), !noalias !1316
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1402, !noalias !1403, !noundef !27
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1404, !noalias !1405, !noundef !27
  %_0.i.i.i38.3 = icmp slt i32 %_3.i.i.i36.3, %_4.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.3, i32 %_4.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1325
  %count.i.i.3 = zext i1 %_0.i.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412), !noalias !1335
  %_3.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1414, !noalias !1415, !noundef !27
  %_4.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1416, !noalias !1417, !noundef !27
  %_0.i.i21.i.3 = icmp slt i32 %_3.i.i19.i.3, %_4.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.3, i32 %_4.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1344
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E.exit, !prof !867

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1305
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423), !noalias !1426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429), !noalias !1426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431), !noalias !1426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436), !noalias !1426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1426
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1441, !noalias !1442, !noundef !27
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1443, !noalias !1444, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1445
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452), !noalias !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458), !noalias !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460), !noalias !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463), !noalias !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465), !noalias !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1455
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1470, !noalias !1471, !noundef !27
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1472, !noalias !1473, !noundef !27
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1474
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !867

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481), !noalias !1484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487), !noalias !1484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492), !noalias !1484
  %_3.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1494, !noalias !1495, !noundef !27
  %_4.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1496, !noalias !1497, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1498
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511), !noalias !1508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513), !noalias !1508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516), !noalias !1508
  %_3.i.i.i19 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1518, !noalias !1519, !noundef !27
  %_4.i.i.i20 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1520, !noalias !1521, !noundef !27
  %_0.i21 = icmp slt i32 %_3.i.i.i19, %_4.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19, i32 %_4.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1522
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !867

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529), !noalias !1532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535), !noalias !1532
  %_3.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1537, !noalias !1538, !noundef !27
  %_4.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1539, !noalias !1540, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %is_l.i18 = xor i1 %_0.i.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1541
  %count.i = zext i1 %_0.i.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548), !noalias !1551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554), !noalias !1551
  %_3.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1556, !noalias !1557, !noundef !27
  %_4.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1558, !noalias !1559, !noundef !27
  %_0.i.i21 = icmp slt i32 %_3.i.i19, %_4.i.i20
  %is_l.i = xor i1 %_0.i.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19, i32 %_4.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1560
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr i32, ptr %right_rev.sroa.0.024, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i.i21 to i64
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !867

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h21767f56d37cf932E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %_3.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1572, !noalias !1573, !noundef !27
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !1573, !noalias !1572, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1574, !noalias !1579, !noundef !27
  %_0.i.i3.i = icmp slt i32 %_3.i.i.i, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1582
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h57b011530579c259E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1607, !noalias !1608, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1608, !noalias !1607, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1609, !noalias !1618, !noundef !27
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1623
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66541561315623d5E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1643, !noalias !1644, !noundef !27
  %_4.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1644, !noalias !1643, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %4, align 4, !alias.scope !1645, !noalias !1652, !noundef !27
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %_4.i.i.i.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1656
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %_3.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1676, !noalias !1677, !noundef !27
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1677, !noalias !1676, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !1693, !noalias !1694, !noundef !27
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !1694, !noalias !1693, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !1710, !noalias !1711, !noundef !27
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !1711, !noalias !1710, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !1727, !noalias !1728, !noundef !27
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !1728, !noalias !1727, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !1744, !noalias !1745, !noundef !27
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !1745, !noalias !1744, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %_3.i.i.i.i14 = load i32, ptr %_27, align 4, !alias.scope !1761, !noalias !1762, !noundef !27
  %_4.i.i.i.i15 = load i32, ptr %_7.i13, align 4, !alias.scope !1762, !noalias !1761, !noundef !27
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i14, %_4.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %_3.i.i.i7.i19 = load i32, ptr %_14.i18, align 4, !alias.scope !1778, !noalias !1779, !noundef !27
  %_4.i.i.i8.i20 = load i32, ptr %_12.i17, align 4, !alias.scope !1779, !noalias !1778, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %_3.i.i.i10.i31 = load i32, ptr %a.i23, align 4, !alias.scope !1795, !noalias !1796, !noundef !27
  %_4.i.i.i11.i32 = load i32, ptr %c.i28, align 4, !alias.scope !1796, !noalias !1795, !noundef !27
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i10.i31, %_4.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  %_3.i.i.i13.i34 = load i32, ptr %b.i26, align 4, !alias.scope !1812, !noalias !1813, !noundef !27
  %_4.i.i.i14.i35 = load i32, ptr %d.i30, align 4, !alias.scope !1813, !noalias !1812, !noundef !27
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i13.i34, %_4.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !27
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !27
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !27
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %_3.i.i.i16.i37 = load i32, ptr %12, align 4, !alias.scope !1829, !noalias !1830, !noundef !27
  %_4.i.i.i17.i38 = load i32, ptr %14, align 4, !alias.scope !1830, !noalias !1829, !noundef !27
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1831
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1831, !noundef !27
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842), !noalias !1845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848), !noalias !1845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850), !noalias !1845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853), !noalias !1845
  %_3.i.i.i.i49 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1855, !noalias !1856, !noundef !27
  %_4.i.i.i.i50 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1857, !noalias !1858, !noundef !27
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i49, %_4.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i49, i32 %_4.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1859
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866), !noalias !1869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872), !noalias !1869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874), !noalias !1869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877), !noalias !1869
  %_3.i.i.i19.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1879, !noalias !1880, !noundef !27
  %_4.i.i.i20.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1881, !noalias !1882, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1883
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1834
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1834
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !867

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1885
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_3.i.i.i.i55 = load i32, ptr %41, align 4, !alias.scope !1890, !noalias !1897, !noundef !27
  %_0.i.i57 = icmp slt i32 %_3.i.i.i.i55, %40
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %43, align 4, !alias.scope !1901, !noalias !1908, !noundef !27
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %40
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1912
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias nonnull align 1 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias nonnull align 1 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1927, !noalias !1928, !noundef !27
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1928, !noalias !1927, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1939, !noalias !1940, !noundef !27
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1940, !noalias !1939, !noundef !27
  %_0.i.i9.i = icmp slt i32 %_3.i.i7.i, %_4.i.i8.i
  %count.i = zext i1 %_0.i.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1951, !noalias !1952, !noundef !27
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1952, !noalias !1951, !noundef !27
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1963, !noalias !1964, !noundef !27
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1964, !noalias !1963, !noundef !27
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1975, !noalias !1976, !noundef !27
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1976, !noalias !1975, !noundef !27
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i16.i, i32 %_4.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i16.i, i32 %_4.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i13.i, i32 %_4.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %_3.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1987, !noalias !1988, !noundef !27
  %_4.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1988, !noalias !1987, !noundef !27
  %_0.i.i.i16 = icmp slt i32 %_3.i.i.i14, %_4.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %_3.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1999, !noalias !2000, !noundef !27
  %_4.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !2000, !noalias !1999, !noundef !27
  %_0.i.i9.i21 = icmp slt i32 %_3.i.i7.i19, %_4.i.i8.i20
  %count.i22 = zext i1 %_0.i.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %_3.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !2011, !noalias !2012, !noundef !27
  %_4.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !2012, !noalias !2011, !noundef !27
  %_0.i.i12.i33 = icmp slt i32 %_3.i.i10.i31, %_4.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  %_3.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2023, !noalias !2024, !noundef !27
  %_4.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2024, !noalias !2023, !noundef !27
  %_0.i.i15.i36 = icmp slt i32 %_3.i.i13.i34, %_4.i.i14.i35
  %10 = select i1 %_0.i.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !27
  %11 = select i1 %_0.i.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !27
  %12 = select i1 %_0.i.i12.i33, ptr %a.i23, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !27
  %14 = select i1 %_0.i.i15.i36, ptr %d.i30, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %_3.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2035, !noalias !2036, !noundef !27
  %_4.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2036, !noalias !2035, !noundef !27
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i16.i37, i32 %_4.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i16.i37, i32 %_4.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i13.i34, i32 %_4.i.i14.i35)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2037
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2037, !noundef !27
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048), !noalias !2051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054), !noalias !2051
  %_3.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2056, !noalias !2057, !noundef !27
  %_4.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2058, !noalias !2059, !noundef !27
  %_0.i.i.i51 = icmp slt i32 %_3.i.i.i49, %_4.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i49, i32 %_4.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2060
  %count.i.i = zext i1 %_0.i.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067), !noalias !2070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073), !noalias !2070
  %_3.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2075, !noalias !2076, !noundef !27
  %_4.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2077, !noalias !2078, !noundef !27
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2079
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %34 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %35 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %36 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_211
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i:                                            ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %30
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2040
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2040
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !867

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2081
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2086, !noalias !2091, !noundef !27
  %_0.i.i.i57 = icmp slt i32 %40, %_4.i.i.i56
  br i1 %_0.i.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2094, !noalias !2099, !noundef !27
  %_0.i.i3.i = icmp slt i32 %40, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2102
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !2127, !noalias !2128, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2128, !noalias !2127, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !2149, !noalias !2150, !noundef !27
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !2150, !noalias !2149, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !2171, !noalias !2172, !noundef !27
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !2172, !noalias !2171, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !2193, !noalias !2194, !noundef !27
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !2194, !noalias !2193, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !2215, !noalias !2216, !noundef !27
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !2216, !noalias !2215, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !2237, !noalias !2238, !noundef !27
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !2238, !noalias !2237, !noundef !27
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !2259, !noalias !2260, !noundef !27
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !2260, !noalias !2259, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !2281, !noalias !2282, !noundef !27
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !2282, !noalias !2281, !noundef !27
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2303, !noalias !2304, !noundef !27
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2304, !noalias !2303, !noundef !27
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !27
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !27
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !27
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2325, !noalias !2326, !noundef !27
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2326, !noalias !2325, !noundef !27
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2327
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2327, !noundef !27
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2330)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338), !noalias !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !noalias !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346), !noalias !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349), !noalias !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351), !noalias !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354), !noalias !2341
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2356, !noalias !2357, !noundef !27
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2358, !noalias !2359, !noundef !27
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2360
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367), !noalias !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373), !noalias !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375), !noalias !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378), !noalias !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380), !noalias !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383), !noalias !2370
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2385, !noalias !2386, !noundef !27
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2387, !noalias !2388, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2389
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2330
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2330
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !867

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2391
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2396, !noalias !2405, !noundef !27
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2410, !noalias !2419, !noundef !27
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2424
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2429
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2432, !noalias !2429, !noundef !27
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2433, !noalias !2429, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", !prof !2434

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2429
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2429, !nonnull !27, !noundef !27
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2429
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17ha694f70898fb4a9bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2435
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2432, !noalias !2435, !noundef !27
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2433, !noalias !2435, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", !prof !2434

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2435
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2435, !nonnull !27, !noundef !27
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2435
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2438
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2432, !noalias !2438, !noundef !27
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2433, !noalias !2438, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", !prof !2434

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2438
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2438, !nonnull !27, !noundef !27
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2438
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h0072f19b9535750aE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  %_3.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2456, !noalias !2457, !noundef !27
  %_4.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2457, !noalias !2456, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %_3.i.i.i1 = load i32, ptr %gep, align 4, !alias.scope !2473, !noalias !2474, !noundef !27
  %_4.i.i.i2 = load i32, ptr %0, align 4, !alias.scope !2474, !noalias !2473, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %_3.i.i.i4 = load i32, ptr %gep25, align 4, !alias.scope !2490, !noalias !2491, !noundef !27
  %_4.i.i.i5 = load i32, ptr %2, align 4, !alias.scope !2491, !noalias !2490, !noundef !27
  %_0.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2492, !noalias !2497, !noundef !27
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2499, !noalias !2500
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2492, !noalias !2497
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2499, !noalias !2500
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2492, !noalias !2497, !noundef !27
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2499, !noalias !2500
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2492, !noalias !2497
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2499, !noalias !2500
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2492, !noalias !2497, !noundef !27
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2499, !noalias !2500
  store i32 %14, ptr %gep27, align 4, !alias.scope !2492, !noalias !2497
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2499, !noalias !2500
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %_3.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2511, !noalias !2512, !noundef !27
  %_4.i.i = load i32, ptr %v.0, align 4, !alias.scope !2512, !noalias !2511, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %_3.i.i1 = load i32, ptr %0, align 4, !alias.scope !2523, !noalias !2524, !noundef !27
  %_4.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2524, !noalias !2523, !noundef !27
  %_0.i.i3 = icmp slt i32 %_3.i.i1, %_4.i.i2
  br i1 %_0.i.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %_3.i.i4 = load i32, ptr %2, align 4, !alias.scope !2535, !noalias !2536, !noundef !27
  %_4.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2536, !noalias !2535, !noundef !27
  %_0.i.i6 = icmp slt i32 %_3.i.i4, %_4.i.i5
  br i1 %_0.i.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2537, !noalias !2542, !noundef !27
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2544, !noalias !2545
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2537, !noalias !2542
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2544, !noalias !2545
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2537, !noalias !2542, !noundef !27
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2544, !noalias !2545
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2537, !noalias !2542
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2544, !noalias !2545
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2537, !noalias !2542, !noundef !27
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2544, !noalias !2545
  store i32 %14, ptr %gep27, align 4, !alias.scope !2537, !noalias !2542
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2544, !noalias !2545
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2566, !noalias !2567, !noundef !27
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2567, !noalias !2566, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !2588, !noalias !2589, !noundef !27
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2589, !noalias !2588, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !2610, !noalias !2611, !noundef !27
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2611, !noalias !2610, !noundef !27
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2612, !noalias !2617, !noundef !27
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2619, !noalias !2620
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2612, !noalias !2617
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2619, !noalias !2620
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2617)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2612, !noalias !2617, !noundef !27
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2619, !noalias !2620
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2612, !noalias !2617
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2619, !noalias !2620
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2612, !noalias !2617, !noundef !27
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2619, !noalias !2620
  store i32 %14, ptr %gep27, align 4, !alias.scope !2612, !noalias !2617
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2619, !noalias !2620
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h20ebed07fd139394E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h62e03062915cf0e5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hdc8b53fd5d6ae6b0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !27
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !27
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2626
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  %_3.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2637, !noalias !2638, !noundef !27
  %_4.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2641, !noalias !2642, !noundef !27
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2621, !noalias !2643
  %_20.i.i = xor i1 %_0.i.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %11, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i.i to i64
  %_21.i.i = getelementptr inbounds nuw i32, ptr %12, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i40, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i37, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %spec.select.i, %bb5.i37 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i37 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i37 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2654, !noalias !2655, !noundef !27
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2658, !noalias !2659, !noundef !27
  %_0.i.i.i14.i = icmp slt i32 %_3.i.i.i12.i, %_4.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12.i, i32 %_4.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2621, !noalias !2660
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i.i14.i to i64
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2626, !noalias !2661
  br label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit

_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !27
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !27
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2671
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  %_3.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2687, !noalias !2688, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2691, !noalias !2692, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %14 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2666, !noalias !2693
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %_3.i.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2709, !noalias !2710, !noundef !27
  %_4.i.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2713, !noalias !2714, !noundef !27
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2666, !noalias !2715
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2671, !noalias !2716
  br label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit

_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !27
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !27
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2726
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2747, !noalias !2748, !noundef !27
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2751, !noalias !2752, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2721, !noalias !2753
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2774, !noalias !2775, !noundef !27
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2778, !noalias !2779, !noundef !27
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2721, !noalias !2780
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2726, !noalias !2781
  br label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit

_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !2796, !noalias !2797, !noundef !27
  %_4.i.i = load i32, ptr %3, align 4, !alias.scope !2797, !noalias !2796, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw i32, ptr %3, i64 %count
  %count4 = zext i1 %_0.i.i to i64
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !2813, !noalias !2814, !noundef !27
  %_4.i.i.i = load i32, ptr %4, align 4, !alias.scope !2814, !noalias !2813, !noundef !27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2833)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !2835, !noalias !2836, !noundef !27
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2836, !noalias !2835, !noundef !27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  %_3.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2852, !noalias !2853, !noundef !27
  %_4.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2853, !noalias !2852, !noundef !27
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

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2874, !noalias !2875, !noundef !27
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2875, !noalias !2874, !noundef !27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %_3.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2886, !noalias !2887, !noundef !27
  %_4.i.i = load i32, ptr %_2059, align 4, !alias.scope !2887, !noalias !2886, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %consume_left = xor i1 %_0.i.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %_2059, i64 %count
  %count2 = zext i1 %_0.i.i to i64
  %_23 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2908, !noalias !2909, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2912, !noalias !2913, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2914
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2935, !noalias !2936, !noundef !27
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2939, !noalias !2940, !noundef !27
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2941
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2942
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !2957, !noalias !2958, !noundef !27
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !2961, !noalias !2962, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2963
  %_20.i = xor i1 %_0.i.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw i32, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i.i to i64
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  %_3.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2974, !noalias !2975, !noundef !27
  %_4.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2978, !noalias !2979, !noundef !27
  %_0.i.i.i14 = icmp slt i32 %_3.i.i.i12, %_4.i.i.i13
  %consume_left.i = xor i1 %_0.i.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2980
  %count.i15 = zext i1 %consume_left.i to i64
  %_20.i16 = getelementptr inbounds nuw i32, ptr %_2059.i, i64 %count.i15
  %count2.i = zext i1 %_0.i.i.i14 to i64
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2981
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3001, !noalias !3002, !noundef !27
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3005, !noalias !3006, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %5 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3007
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  %_3.i.i.i.i12 = load i32, ptr %_2059.i, align 4, !alias.scope !3023, !noalias !3024, !noundef !27
  %_4.i.i.i.i13 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3027, !noalias !3028, !noundef !27
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i12, %_4.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12, i32 %_4.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !3029
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !3030
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3061, !noalias !3062, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3062, !noalias !3061, !noundef !27
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !3063
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3091, !noalias !3092, !noundef !27
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3092, !noalias !3091, !noundef !27
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !3093
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3121, !noalias !3122, !noundef !27
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3122, !noalias !3121, !noundef !27
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !3123
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3151, !noalias !3152, !noundef !27
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3152, !noalias !3151, !noundef !27
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !3153
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3181, !noalias !3182, !noundef !27
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3182, !noalias !3181, !noundef !27
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3183
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3186
  store i32 %13, ptr %dst.i68, align 4, !noalias !3186
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3189

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3211, !noalias !3212, !noundef !27
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3212, !noalias !3211, !noundef !27
  %_0.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !3213
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3236, !noalias !3237, !noundef !27
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3237, !noalias !3236, !noundef !27
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3238
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3261, !noalias !3262, !noundef !27
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3262, !noalias !3261, !noundef !27
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3263
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3286, !noalias !3287, !noundef !27
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3287, !noalias !3286, !noundef !27
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3288
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3311, !noalias !3312, !noundef !27
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3312, !noalias !3311, !noundef !27
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3313
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3316
  store i32 %13, ptr %dst.i68, align 4, !noalias !3316
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3319

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3335, !noalias !3336, !noundef !27
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3336, !noalias !3335, !noundef !27
  %_0.i.i.i = icmp sge i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !3337
  %_8.i = zext i1 %_0.i.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3355, !noalias !3356, !noundef !27
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3356, !noalias !3355, !noundef !27
  %_0.i.i.i27 = icmp sge i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !3357
  %_8.i33 = zext i1 %_0.i.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3375, !noalias !3376, !noundef !27
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3376, !noalias !3375, !noundef !27
  %_0.i.i.i37 = icmp sge i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !3377
  %_8.i43 = zext i1 %_0.i.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3395, !noalias !3396, !noundef !27
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3396, !noalias !3395, !noundef !27
  %_0.i.i.i47 = icmp sge i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !3397
  %_8.i53 = zext i1 %_0.i.i.i47 to i64
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3413)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3415, !noalias !3416, !noundef !27
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3416, !noalias !3415, !noundef !27
  %_0.i.i.i57 = icmp sge i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !3417
  %_8.i63 = zext i1 %_0.i.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3420
  store i32 %13, ptr %dst.i68, align 4, !noalias !3420
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3423

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e17e60094598302E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  %_3.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3434, !noalias !3435, !noundef !27
  %_4.i.i = load i32, ptr %pivot, align 4, !alias.scope !3435, !noalias !3434, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i, ptr %dst.i, align 4, !noalias !3436
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %_3.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3449, !noalias !3450, !noundef !27
  %_4.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3450, !noalias !3449, !noundef !27
  %_0.i.i27 = icmp slt i32 %_3.i.i25, %_4.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i25, ptr %dst.i31, align 4, !noalias !3451
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3462)
  %_3.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3464, !noalias !3465, !noundef !27
  %_4.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3465, !noalias !3464, !noundef !27
  %_0.i.i37 = icmp slt i32 %_3.i.i35, %_4.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i35, ptr %dst.i41, align 4, !noalias !3466
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  %_3.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3479, !noalias !3480, !noundef !27
  %_4.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3480, !noalias !3479, !noundef !27
  %_0.i.i47 = icmp slt i32 %_3.i.i45, %_4.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i45, ptr %dst.i51, align 4, !noalias !3481
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  %_3.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3494, !noalias !3495, !noundef !27
  %_4.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3495, !noalias !3494, !noundef !27
  %_0.i.i57 = icmp slt i32 %_3.i.i55, %_4.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i55, ptr %dst.i61, align 4, !noalias !3496
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3499
  store i32 %13, ptr %dst.i68, align 4, !noalias !3499
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3502

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h50a99e889ac534c6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3521)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3523, !noalias !3524, !noundef !27
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3524, !noalias !3523, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !3525
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3546)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3548, !noalias !3549, !noundef !27
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3549, !noalias !3548, !noundef !27
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3550
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3571)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3573, !noalias !3574, !noundef !27
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3574, !noalias !3573, !noundef !27
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3575
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3598, !noalias !3599, !noundef !27
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3599, !noalias !3598, !noundef !27
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3600
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3623, !noalias !3624, !noundef !27
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3624, !noalias !3623, !noundef !27
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3625
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3628
  store i32 %13, ptr %dst.i68, align 4, !noalias !3628
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3631

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h51f3f22bdced172eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3035

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3647, !noalias !3648, !noundef !27
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3648, !noalias !3647, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !3649
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3667, !noalias !3668, !noundef !27
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3668, !noalias !3667, !noundef !27
  %_0.i27 = icmp slt i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !3669
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3685)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3687, !noalias !3688, !noundef !27
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3688, !noalias !3687, !noundef !27
  %_0.i37 = icmp slt i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !3689
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3705)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3707, !noalias !3708, !noundef !27
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3708, !noalias !3707, !noundef !27
  %_0.i47 = icmp slt i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !3709
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3725)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3727, !noalias !3728, !noundef !27
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3728, !noalias !3727, !noundef !27
  %_0.i57 = icmp slt i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !3729
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3732
  store i32 %13, ptr %dst.i68, align 4, !noalias !3732
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3735

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !27
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !27
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !27
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3736)
  call void @llvm.experimental.noalias.scope.decl(metadata !3739)
  call void @llvm.experimental.noalias.scope.decl(metadata !3741), !noalias !3744
  call void @llvm.experimental.noalias.scope.decl(metadata !3747), !noalias !3744
  call void @llvm.experimental.noalias.scope.decl(metadata !3749), !noalias !3744
  call void @llvm.experimental.noalias.scope.decl(metadata !3752), !noalias !3744
  %_3.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !3754, !noalias !3757, !noundef !27
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !3759, !noalias !3760, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_3.i.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !3761, !noalias !3768, !noundef !27
  %_0.i7.i = icmp slt i32 %_3.i.i.i5.i, %_4.i.i.i.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_3.i.i.i5.i, %_3.i.i.i.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !27
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE.exit
  %_4.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !3772, !noalias !3779, !noundef !27
  %_0.i.not = icmp slt i32 %value, %_4.i.i.i
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h51f3f22bdced172eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !2434

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3783
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2434

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  call void @llvm.experimental.noalias.scope.decl(metadata !3792), !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3798), !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3800), !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3803), !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3805), !noalias !3795
  call void @llvm.experimental.noalias.scope.decl(metadata !3808), !noalias !3795
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !3810, !noalias !3813, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !3815, !noalias !3816, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !3817, !noalias !3826, !noundef !27
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !27
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !3831, !noalias !3840, !noundef !27
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h50a99e889ac534c6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !2434

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3845
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2434

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 1 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 1 %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3849)
  call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  call void @llvm.experimental.noalias.scope.decl(metadata !3854), !noalias !3857
  call void @llvm.experimental.noalias.scope.decl(metadata !3860), !noalias !3857
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !3862, !noalias !3865, !noundef !27
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !3867, !noalias !3868, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !3869, !noalias !3874, !noundef !27
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %5 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !27
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E.exit
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !3877, !noalias !3882, !noundef !27
  %_0.i.i.not = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e17e60094598302E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias nonnull align 1 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !2434

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3885
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2434

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !2432, !noundef !27
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !2433, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he3542a9b6ebc0ea9E.exit", !prof !2434

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he3542a9b6ebc0ea9E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h48ffce3eca330028E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !27
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !3889, !noundef !27
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #5 {
start:
  %self1 = load i64, ptr %self, align 8, !range !3889, !noundef !27
; call alloc::raw_vec::RawVecInner<A>::grow_amortized
  %0 = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17he3fbd0d23c2b8031E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %self1, i64 noundef 1, i64 noundef 4, i64 noundef 4)
  %1 = extractvalue { i64, i64 } %0, 0
  %.not = icmp eq i64 %1, -9223372036854775807
  br i1 %.not, label %bb3, label %bb2, !prof !3890

bb2:                                              ; preds = %start
  %2 = extractvalue { i64, i64 } %0, 1
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %1, i64 %2) #25
  unreachable

bb3:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9f58bcab8cfb199E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !27
  %_5 = load ptr, ptr %self, align 8, !noundef !27
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6928d270791ef820E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !27
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !27
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !27
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !3891, !noalias !3894, !noundef !27
  %_4.i = load i32, ptr %b, align 4, !alias.scope !3894, !noalias !3891, !noundef !27
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i20 = alloca [8 x i8], align 8
  %odd_arr = alloca [24 x i8], align 8
  %even_arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %even_arr)
  store i64 0, ptr %even_arr, align 8, !alias.scope !3896
  %0 = getelementptr inbounds nuw i8, ptr %even_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !alias.scope !3896
  %1 = getelementptr inbounds nuw i8, ptr %even_arr, i64 16
  store i64 0, ptr %1, align 8, !alias.scope !3896
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %odd_arr)
  store i64 0, ptr %odd_arr, align 8, !alias.scope !3899
  %2 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8, !alias.scope !3899
  %3 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 16
  store i64 0, ptr %3, align 8, !alias.scope !3899
  %_0.i.i.i72 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i72, label %bb7, label %bb8

bb39:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %lpad.phi, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

cleanup:                                          ; preds = %bb33
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb39

cleanup3.loopexit:                                ; preds = %bb1.i.i, %bb1.i.i62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3.loopexit.split-lp:                       ; preds = %panic.invoke, %bb10.i.i, %bb10.i.i24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.loopexit.split-lp, %cleanup3.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup3.loopexit ], [ %lpad.loopexit.split-lp, %cleanup3.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb7:                                              ; preds = %start, %bb15
  %spec.select74 = phi i32 [ %spec.select, %bb15 ], [ 1, %start ]
  %iter.sroa.0.073 = phi i32 [ %spec.select74, %bb15 ], [ 0, %start ]
  %5 = and i32 %iter.sroa.0.073, 1
  %_12 = icmp eq i32 %5, 0
  %_17 = zext nneg i32 %iter.sroa.0.073 to i64
  %_19 = icmp samesign ugt i64 %arr.1, %_17
  br i1 %_12, label %bb9, label %bb12

bb8:                                              ; preds = %bb15, %start
  %_4.i.i17 = load ptr, ptr %0, align 8, !alias.scope !3902, !nonnull !27, !noundef !27
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !3902, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i), !noalias !3907
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit", label %bb7.i.i, !prof !3890

bb7.i.i:                                          ; preds = %bb8
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3890

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %_4.i.i17, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef nonnull align 1 %compare.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h21767f56d37cf932E(ptr noalias noundef nonnull align 4 %_4.i.i17, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit": ; preds = %bb10.i.i, %bb8, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i), !noalias !3907
  %_4.i.i18 = load ptr, ptr %2, align 8, !alias.scope !3910, !nonnull !27, !noundef !27
  %len.i.i19 = load i64, ptr %3, align 8, !alias.scope !3910, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i20), !noalias !3915
  store ptr %compare.i, ptr %is_less.i.i20, align 8, !noalias !3918
  %b.i.i21 = icmp samesign ult i64 %len.i.i19, 2
  br i1 %b.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit", label %bb7.i.i22, !prof !3890

bb7.i.i22:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit"
  %b1.i.i23 = icmp samesign ult i64 %len.i.i19, 21
  br i1 %b1.i.i23, label %bb9.i.i25, label %bb10.i.i24, !prof !3890

bb10.i.i24:                                       ; preds = %bb7.i.i22
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %_4.i.i18, i64 noundef range(i64 0, 2305843009213693952) %len.i.i19, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i20)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit" unwind label %cleanup3.loopexit.split-lp

bb9.i.i25:                                        ; preds = %bb7.i.i22
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66541561315623d5E(ptr noalias noundef nonnull align 4 %_4.i.i18, i64 noundef range(i64 0, 2305843009213693952) %len.i.i19, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit": ; preds = %bb10.i.i24, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E.exit", %bb9.i.i25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i20), !noalias !3915
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_0.i = load i64, ptr %1, align 8, !alias.scope !3922, !noundef !27
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i3075.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i3075.not, label %bb25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"
  %_6.i = load ptr, ptr %0, align 8, !nonnull !27
  br label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph", %bb27
  %i.sroa.0.078 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit.lr.ph" ], [ %12, %bb27 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.078, %arr.1
  br i1 %exitcond.not, label %panic.invoke, label %bb27

bb25:                                             ; preds = %bb27, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit"
  %i.sroa.0.0.lcssa = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E.exit" ], [ %12, %bb27 ]
  %_0.i35 = load i64, ptr %3, align 8, !alias.scope !3925, !noundef !27
  %_2.i36 = icmp ult i64 %_0.i35, 2305843009213693952
  call void @llvm.assume(i1 %_2.i36)
  %_0.i.i.i4080.not = icmp eq i64 %_0.i35, 0
  br i1 %_0.i.i.i4080.not, label %bb33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph": ; preds = %bb25
  %_6.i48 = load ptr, ptr %2, align 8, !nonnull !27
  %6 = add i64 %i.sroa.0.0.lcssa, %_0.i35
  br label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph", %bb35
  %spec.select6884 = phi i64 [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %spec.select68, %bb35 ]
  %i.sroa.0.183 = phi i64 [ %i.sroa.0.0.lcssa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %8, %bb35 ]
  %iter2.sroa.0.082 = phi i64 [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51.lr.ph" ], [ %spec.select6884, %bb35 ]
  %_62 = icmp samesign ult i64 %i.sroa.0.183, %arr.1
  br i1 %_62, label %bb35, label %panic.invoke

bb33:                                             ; preds = %bb35, %bb25
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr, i64 noundef 4, i64 noundef 4)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %odd_arr)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %even_arr)
  ret void

bb35:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %iter2.sroa.0.082
  %_57 = load i32, ptr %_0.i.i49, align 4, !noundef !27
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.183
  store i32 %_57, ptr %7, align 4
  %8 = add nuw nsw i64 %i.sroa.0.183, 1
  %_0.i.i.i40 = icmp ult i64 %spec.select6884, %_0.i35
  %_0.i1.i.i43 = zext i1 %_0.i.i.i40 to i64
  %spec.select68 = add nuw i64 %spec.select6884, %_0.i1.i.i43
  %exitcond88.not = icmp eq i64 %8, %6
  br i1 %exitcond88.not, label %bb33, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"

panic.invoke:                                     ; preds = %bb9, %bb12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51"
  %9 = phi i64 [ %i.sroa.0.183, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51" ], [ %i.sroa.0.078, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit" ], [ %_17, %bb12 ], [ %_17, %bb9 ]
  %10 = phi ptr [ @alloc_8ff914f1831e33925cf29190c60b0739, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit51" ], [ @alloc_743f2cefaccb6d94c89870124217d1ff, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit" ], [ @alloc_82fa06a248ba2287581da2665aa4e248, %bb9 ], [ @alloc_e63ffa31ad6e0404fd60d280d854c254, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.cont unwind label %cleanup3.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %i.sroa.0.078
  %_42 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.078
  store i32 %_42, ptr %11, align 4
  %12 = add nuw nsw i64 %i.sroa.0.078, 1
  %exitcond87.not = icmp eq i64 %12, %_0.i
  br i1 %exitcond87.not, label %bb25, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha734e7d034a871c1E.exit"

bb12:                                             ; preds = %bb7
  br i1 %_19, label %bb13, label %panic.invoke

bb9:                                              ; preds = %bb7
  br i1 %_19, label %bb10, label %panic.invoke

bb13:                                             ; preds = %bb12
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_22 = load i32, ptr %13, align 4, !noundef !27
  %len.i.i54 = load i64, ptr %3, align 8, !alias.scope !3928, !noundef !27
  %self1.i.i = load i64, ptr %odd_arr, align 8, !range !3889, !alias.scope !3928, !noundef !27
  %_4.i.i55 = icmp eq i64 %len.i.i54, %self1.i.i
  br i1 %_4.i.i55, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit"

bb1.i.i:                                          ; preds = %bb13
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit" unwind label %cleanup3.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit": ; preds = %bb1.i.i, %bb13
  %_15.i.i = load ptr, ptr %2, align 8, !alias.scope !3928, !nonnull !27, !noundef !27
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i54
  store i32 %_22, ptr %end.i.i, align 4
  %14 = add i64 %len.i.i54, 1
  store i64 %14, ptr %3, align 8, !alias.scope !3928
  br label %bb15

bb15:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit"
  %_0.i.i.i = icmp slt i32 %spec.select74, %n
  %15 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select74, %15
  br i1 %_0.i.i.i, label %bb7, label %bb8

bb10:                                             ; preds = %bb9
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %16, align 4, !noundef !27
  %len.i.i57 = load i64, ptr %1, align 8, !alias.scope !3933, !noundef !27
  %self1.i.i58 = load i64, ptr %even_arr, align 8, !range !3889, !alias.scope !3933, !noundef !27
  %_4.i.i59 = icmp eq i64 %len.i.i57, %self1.i.i58
  br i1 %_4.i.i59, label %bb1.i.i62, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64"

bb1.i.i62:                                        ; preds = %bb10
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64" unwind label %cleanup3.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E.exit64": ; preds = %bb1.i.i62, %bb10
  %_15.i.i60 = load ptr, ptr %0, align 8, !alias.scope !3933, !nonnull !27, !noundef !27
  %end.i.i61 = getelementptr inbounds nuw i32, ptr %_15.i.i60, i64 %len.i.i57
  store i32 %_16, ptr %end.i.i61, align 4
  %17 = add i64 %len.i.i57, 1
  store i64 %17, ptr %1, align 8, !alias.scope !3933
  br label %bb15

terminate:                                        ; preds = %cleanup3, %bb39
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb40:                                             ; preds = %bb39
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #6 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3938
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !3941
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit", label %bb7.i.i, !prof !3890

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3890

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha694f70898fb4a9bE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h57b011530579c259E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3938
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #17

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #18

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; alloc::raw_vec::RawVecInner<A>::grow_amortized
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17he3fbd0d23c2b8031E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h49577b0c1c256a54E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h49577b0c1c256a54E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h49577b0c1c256a54E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h49577b0c1c256a54E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h49577b0c1c256a54E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!14 = distinct !{!14, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!19 = distinct !{!19, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!25 = !{!18, !13}
!26 = !{!24, !16, !21}
!27 = !{}
!28 = !{!24, !16}
!29 = !{!18, !13, !21}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!32 = distinct !{!32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!33 = distinct !{!33, !34, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!34 = distinct !{!34, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!35 = !{!36, !37}
!36 = distinct !{!36, !32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!37 = distinct !{!37, !34, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!40 = distinct !{!40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!45 = distinct !{!45, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E: %c"}
!48 = distinct !{!48, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E"}
!49 = !{!50}
!50 = distinct !{!50, !45, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!53 = distinct !{!53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!56 = !{!52, !50, !42}
!57 = !{!55, !44, !39, !47}
!58 = !{!55, !44, !39}
!59 = !{!52, !50, !42, !47}
!60 = !{!61, !63, !65}
!61 = distinct !{!61, !62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!62 = distinct !{!62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!63 = distinct !{!63, !64, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!64 = distinct !{!64, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!65 = distinct !{!65, !66, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!66 = distinct !{!66, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!67 = !{!68, !69, !70}
!68 = distinct !{!68, !62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!69 = distinct !{!69, !64, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!70 = distinct !{!70, !66, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!73 = distinct !{!73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E: %c"}
!81 = distinct !{!81, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E"}
!82 = !{!83}
!83 = distinct !{!83, !78, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"cmpfunc: %a"}
!86 = distinct !{!86, !"cmpfunc"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"cmpfunc: %b"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!91 = distinct !{!91, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!94 = !{!90, !85, !77, !72}
!95 = !{!93, !88, !83, !75, !80}
!96 = !{!93, !88, !83, !75}
!97 = !{!90, !85, !77, !72, !80}
!98 = !{!99, !101, !103, !105}
!99 = distinct !{!99, !100, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!100 = distinct !{!100, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!101 = distinct !{!101, !102, !"cmpfunc: %b"}
!102 = distinct !{!102, !"cmpfunc"}
!103 = distinct !{!103, !104, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!104 = distinct !{!104, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!105 = distinct !{!105, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!106 = distinct !{!106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!107 = !{!108, !109, !110, !111}
!108 = distinct !{!108, !100, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!109 = distinct !{!109, !102, !"cmpfunc: %a"}
!110 = distinct !{!110, !104, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!111 = distinct !{!111, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!114 = distinct !{!114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!119 = distinct !{!119, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!124 = distinct !{!124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!127 = !{!123, !121, !116}
!128 = !{!126, !118, !113}
!129 = !{!130, !132, !134}
!130 = distinct !{!130, !131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!131 = distinct !{!131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!132 = distinct !{!132, !133, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!133 = distinct !{!133, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!134 = distinct !{!134, !135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!135 = distinct !{!135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!136 = !{!137, !138, !139}
!137 = distinct !{!137, !131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!138 = distinct !{!138, !133, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!139 = distinct !{!139, !135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!142 = distinct !{!142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!143 = distinct !{!143, !144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!144 = distinct !{!144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!147 = distinct !{!147, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!152 = distinct !{!152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!155 = !{!151, !146}
!156 = !{!154, !149}
!157 = !{!158, !160}
!158 = distinct !{!158, !159, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!159 = distinct !{!159, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!160 = distinct !{!160, !161, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!161 = distinct !{!161, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!162 = !{!163, !164}
!163 = distinct !{!163, !159, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!164 = distinct !{!164, !161, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!167 = distinct !{!167, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!168 = distinct !{!168, !169, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!169 = distinct !{!169, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!172 = distinct !{!172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!177 = distinct !{!177, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
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
!192 = !{!193, !195, !197, !199}
!193 = distinct !{!193, !194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!194 = distinct !{!194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!195 = distinct !{!195, !196, !"cmpfunc: %b"}
!196 = distinct !{!196, !"cmpfunc"}
!197 = distinct !{!197, !198, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!198 = distinct !{!198, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!199 = distinct !{!199, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!200 = distinct !{!200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!201 = !{!202, !203, !204, !205}
!202 = distinct !{!202, !194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!203 = distinct !{!203, !196, !"cmpfunc: %a"}
!204 = distinct !{!204, !198, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!205 = distinct !{!205, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!206 = !{!207, !209}
!207 = distinct !{!207, !208, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!208 = distinct !{!208, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!209 = distinct !{!209, !210, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!210 = distinct !{!210, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!213 = distinct !{!213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!218 = distinct !{!218, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!223 = distinct !{!223, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!226 = !{!222, !220, !215}
!227 = !{!225, !217, !212}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!230 = distinct !{!230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!235 = distinct !{!235, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!240 = distinct !{!240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!243 = !{!239, !237, !232}
!244 = !{!242, !234, !229}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!247 = distinct !{!247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!252 = distinct !{!252, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!253 = !{!254}
!254 = distinct !{!254, !252, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!257 = distinct !{!257, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!260 = !{!256, !254, !249}
!261 = !{!259, !251, !246}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!264 = distinct !{!264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!269 = distinct !{!269, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!274 = distinct !{!274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!277 = !{!273, !271, !266}
!278 = !{!276, !268, !263}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!281 = distinct !{!281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!286 = distinct !{!286, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!291 = distinct !{!291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!294 = !{!290, !288, !283}
!295 = !{!293, !285, !280}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!298 = distinct !{!298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!303 = distinct !{!303, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"cmpfunc: %a"}
!308 = distinct !{!308, !"cmpfunc"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"cmpfunc: %b"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!313 = distinct !{!313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!316 = !{!312, !307, !302, !297}
!317 = !{!315, !310, !305, !300}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!320 = distinct !{!320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!325 = distinct !{!325, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"cmpfunc: %a"}
!330 = distinct !{!330, !"cmpfunc"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"cmpfunc: %b"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!335 = distinct !{!335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!338 = !{!334, !329, !324, !319}
!339 = !{!337, !332, !327, !322}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!342 = distinct !{!342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!347 = distinct !{!347, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"cmpfunc: %a"}
!352 = distinct !{!352, !"cmpfunc"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"cmpfunc: %b"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!357 = distinct !{!357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!360 = !{!356, !351, !346, !341}
!361 = !{!359, !354, !349, !344}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!364 = distinct !{!364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!369 = distinct !{!369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"cmpfunc: %a"}
!374 = distinct !{!374, !"cmpfunc"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"cmpfunc: %b"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!379 = distinct !{!379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!380 = !{!381}
!381 = distinct !{!381, !379, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!382 = !{!378, !373, !368, !363}
!383 = !{!381, !376, !371, !366}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!386 = distinct !{!386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!391 = distinct !{!391, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"cmpfunc: %a"}
!396 = distinct !{!396, !"cmpfunc"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"cmpfunc: %b"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!401 = distinct !{!401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!404 = !{!400, !395, !390, !385}
!405 = !{!403, !398, !393, !388}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!408 = distinct !{!408, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!413 = distinct !{!413, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!416 = !{!412, !407}
!417 = !{!415, !410}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!420 = distinct !{!420, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!425 = distinct !{!425, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!428 = !{!424, !419}
!429 = !{!427, !422}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!432 = distinct !{!432, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!437 = distinct !{!437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!440 = !{!436, !431}
!441 = !{!439, !434}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!444 = distinct !{!444, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!449 = distinct !{!449, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!452 = !{!448, !443}
!453 = !{!451, !446}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!456 = distinct !{!456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!461 = distinct !{!461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!464 = !{!460, !455}
!465 = !{!463, !458}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!468 = distinct !{!468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!473 = distinct !{!473, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!474 = !{!475}
!475 = distinct !{!475, !473, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!476 = !{!477}
!477 = distinct !{!477, !478, !"cmpfunc: %a"}
!478 = distinct !{!478, !"cmpfunc"}
!479 = !{!480}
!480 = distinct !{!480, !478, !"cmpfunc: %b"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!483 = distinct !{!483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!484 = !{!485}
!485 = distinct !{!485, !483, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!486 = !{!482, !477, !472, !467}
!487 = !{!485, !480, !475, !470}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!490 = distinct !{!490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!495 = distinct !{!495, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!496 = !{!497}
!497 = distinct !{!497, !495, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"cmpfunc: %a"}
!500 = distinct !{!500, !"cmpfunc"}
!501 = !{!502}
!502 = distinct !{!502, !500, !"cmpfunc: %b"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!505 = distinct !{!505, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!506 = !{!507}
!507 = distinct !{!507, !505, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!508 = !{!504, !499, !494, !489}
!509 = !{!507, !502, !497, !492}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!512 = distinct !{!512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!513 = !{!514}
!514 = distinct !{!514, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!517 = distinct !{!517, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!518 = !{!519}
!519 = distinct !{!519, !517, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"cmpfunc: %a"}
!522 = distinct !{!522, !"cmpfunc"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"cmpfunc: %b"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!527 = distinct !{!527, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!528 = !{!529}
!529 = distinct !{!529, !527, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!530 = !{!526, !521, !516, !511}
!531 = !{!529, !524, !519, !514}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!534 = distinct !{!534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!535 = !{!536}
!536 = distinct !{!536, !534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!539 = distinct !{!539, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!540 = !{!541}
!541 = distinct !{!541, !539, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!542 = !{!543}
!543 = distinct !{!543, !544, !"cmpfunc: %a"}
!544 = distinct !{!544, !"cmpfunc"}
!545 = !{!546}
!546 = distinct !{!546, !544, !"cmpfunc: %b"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!549 = distinct !{!549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!552 = !{!548, !543, !538, !533}
!553 = !{!551, !546, !541, !536}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!556 = distinct !{!556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!561 = distinct !{!561, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"cmpfunc: %a"}
!566 = distinct !{!566, !"cmpfunc"}
!567 = !{!568}
!568 = distinct !{!568, !566, !"cmpfunc: %b"}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!571 = distinct !{!571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!572 = !{!573}
!573 = distinct !{!573, !571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!574 = !{!570, !565, !560, !555}
!575 = !{!573, !568, !563, !558}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!578 = distinct !{!578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!579 = !{!580}
!580 = distinct !{!580, !578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!583 = distinct !{!583, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!584 = !{!585}
!585 = distinct !{!585, !583, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"cmpfunc: %a"}
!588 = distinct !{!588, !"cmpfunc"}
!589 = !{!590}
!590 = distinct !{!590, !588, !"cmpfunc: %b"}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!593 = distinct !{!593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!594 = !{!595}
!595 = distinct !{!595, !593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!596 = !{!592, !587, !582, !577}
!597 = !{!595, !590, !585, !580}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!600 = distinct !{!600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!605 = distinct !{!605, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!608 = !{!609}
!609 = distinct !{!609, !610, !"cmpfunc: %a"}
!610 = distinct !{!610, !"cmpfunc"}
!611 = !{!612}
!612 = distinct !{!612, !610, !"cmpfunc: %b"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!615 = distinct !{!615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!616 = !{!617}
!617 = distinct !{!617, !615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!618 = !{!614, !609, !604, !599}
!619 = !{!617, !612, !607, !602}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!622 = distinct !{!622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!627 = distinct !{!627, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!628 = !{!629}
!629 = distinct !{!629, !627, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"cmpfunc: %a"}
!632 = distinct !{!632, !"cmpfunc"}
!633 = !{!634}
!634 = distinct !{!634, !632, !"cmpfunc: %b"}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!637 = distinct !{!637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!638 = !{!639}
!639 = distinct !{!639, !637, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!640 = !{!636, !631, !626, !621}
!641 = !{!639, !634, !629, !624}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!644 = distinct !{!644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!649 = distinct !{!649, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!650 = !{!651}
!651 = distinct !{!651, !649, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"cmpfunc: %a"}
!654 = distinct !{!654, !"cmpfunc"}
!655 = !{!656}
!656 = distinct !{!656, !654, !"cmpfunc: %b"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!659 = distinct !{!659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!660 = !{!661}
!661 = distinct !{!661, !659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!662 = !{!658, !653, !648, !643}
!663 = !{!661, !656, !651, !646}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!666 = distinct !{!666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!669 = !{!670}
!670 = distinct !{!670, !671, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!671 = distinct !{!671, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!672 = !{!673}
!673 = distinct !{!673, !671, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"cmpfunc: %a"}
!676 = distinct !{!676, !"cmpfunc"}
!677 = !{!678}
!678 = distinct !{!678, !676, !"cmpfunc: %b"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!681 = distinct !{!681, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!682 = !{!683}
!683 = distinct !{!683, !681, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!684 = !{!680, !675, !670, !665}
!685 = !{!683, !678, !673, !668}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E: %v.0"}
!688 = distinct !{!688, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E"}
!689 = !{!690}
!690 = distinct !{!690, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!691 = distinct !{!691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!692 = !{!693}
!693 = distinct !{!693, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!696 = distinct !{!696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %_0"}
!699 = distinct !{!699, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E"}
!700 = !{!701}
!701 = distinct !{!701, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"cmpfunc: %a"}
!704 = distinct !{!704, !"cmpfunc"}
!705 = !{!706}
!706 = distinct !{!706, !704, !"cmpfunc: %b"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!709 = distinct !{!709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!710 = !{!711}
!711 = distinct !{!711, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!712 = !{!708, !703, !695, !690, !687}
!713 = !{!711, !706, !701, !693, !698}
!714 = !{!711, !706, !701, !693, !687}
!715 = !{!708, !703, !695, !690, !698}
!716 = !{!698, !717, !687}
!717 = distinct !{!717, !699, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %is_less"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!720 = distinct !{!720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!721 = !{!722}
!722 = distinct !{!722, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!725 = distinct !{!725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %_0"}
!728 = distinct !{!728, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E"}
!729 = !{!730}
!730 = distinct !{!730, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"cmpfunc: %a"}
!733 = distinct !{!733, !"cmpfunc"}
!734 = !{!735}
!735 = distinct !{!735, !733, !"cmpfunc: %b"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!738 = distinct !{!738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!739 = !{!740}
!740 = distinct !{!740, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!741 = !{!737, !732, !724, !719, !687}
!742 = !{!740, !735, !730, !722, !727}
!743 = !{!740, !735, !730, !722, !687}
!744 = !{!737, !732, !724, !719, !727}
!745 = !{!727, !746, !687}
!746 = distinct !{!746, !728, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %is_less"}
!747 = !{!748}
!748 = distinct !{!748, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It1"}
!749 = !{!750}
!750 = distinct !{!750, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It1"}
!751 = !{!752}
!752 = distinct !{!752, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It1"}
!753 = !{!754}
!754 = distinct !{!754, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It1"}
!755 = !{!756}
!756 = distinct !{!756, !704, !"cmpfunc: %a:It1"}
!757 = !{!758}
!758 = distinct !{!758, !704, !"cmpfunc: %b:It1"}
!759 = !{!760}
!760 = distinct !{!760, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!761 = !{!762}
!762 = distinct !{!762, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!763 = !{!760, !756, !752, !748, !687}
!764 = !{!762, !758, !754, !750, !698}
!765 = !{!762, !758, !754, !750, !687}
!766 = !{!760, !756, !752, !748, !698}
!767 = !{!768}
!768 = distinct !{!768, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It1"}
!769 = !{!770}
!770 = distinct !{!770, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It1"}
!771 = !{!772}
!772 = distinct !{!772, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It1"}
!773 = !{!774}
!774 = distinct !{!774, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It1"}
!775 = !{!776}
!776 = distinct !{!776, !733, !"cmpfunc: %a:It1"}
!777 = !{!778}
!778 = distinct !{!778, !733, !"cmpfunc: %b:It1"}
!779 = !{!780}
!780 = distinct !{!780, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!781 = !{!782}
!782 = distinct !{!782, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!783 = !{!780, !776, !772, !768, !687}
!784 = !{!782, !778, !774, !770, !727}
!785 = !{!782, !778, !774, !770, !687}
!786 = !{!780, !776, !772, !768, !727}
!787 = !{!788}
!788 = distinct !{!788, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It2"}
!789 = !{!790}
!790 = distinct !{!790, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It2"}
!791 = !{!792}
!792 = distinct !{!792, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It2"}
!793 = !{!794}
!794 = distinct !{!794, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It2"}
!795 = !{!796}
!796 = distinct !{!796, !704, !"cmpfunc: %a:It2"}
!797 = !{!798}
!798 = distinct !{!798, !704, !"cmpfunc: %b:It2"}
!799 = !{!800}
!800 = distinct !{!800, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!801 = !{!802}
!802 = distinct !{!802, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!803 = !{!800, !796, !792, !788, !687}
!804 = !{!802, !798, !794, !790, !698}
!805 = !{!802, !798, !794, !790, !687}
!806 = !{!800, !796, !792, !788, !698}
!807 = !{!808}
!808 = distinct !{!808, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It2"}
!809 = !{!810}
!810 = distinct !{!810, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It2"}
!811 = !{!812}
!812 = distinct !{!812, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It2"}
!813 = !{!814}
!814 = distinct !{!814, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It2"}
!815 = !{!816}
!816 = distinct !{!816, !733, !"cmpfunc: %a:It2"}
!817 = !{!818}
!818 = distinct !{!818, !733, !"cmpfunc: %b:It2"}
!819 = !{!820}
!820 = distinct !{!820, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!821 = !{!822}
!822 = distinct !{!822, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!823 = !{!820, !816, !812, !808, !687}
!824 = !{!822, !818, !814, !810, !727}
!825 = !{!822, !818, !814, !810, !687}
!826 = !{!820, !816, !812, !808, !727}
!827 = !{!828}
!828 = distinct !{!828, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It3"}
!829 = !{!830}
!830 = distinct !{!830, !691, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It3"}
!831 = !{!832}
!832 = distinct !{!832, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It3"}
!833 = !{!834}
!834 = distinct !{!834, !696, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It3"}
!835 = !{!836}
!836 = distinct !{!836, !704, !"cmpfunc: %a:It3"}
!837 = !{!838}
!838 = distinct !{!838, !704, !"cmpfunc: %b:It3"}
!839 = !{!840}
!840 = distinct !{!840, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!841 = !{!842}
!842 = distinct !{!842, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!843 = !{!840, !836, !832, !828, !687}
!844 = !{!842, !838, !834, !830, !698}
!845 = !{!842, !838, !834, !830, !687}
!846 = !{!840, !836, !832, !828, !698}
!847 = !{!848}
!848 = distinct !{!848, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It3"}
!849 = !{!850}
!850 = distinct !{!850, !720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It3"}
!851 = !{!852}
!852 = distinct !{!852, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It3"}
!853 = !{!854}
!854 = distinct !{!854, !725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It3"}
!855 = !{!856}
!856 = distinct !{!856, !733, !"cmpfunc: %a:It3"}
!857 = !{!858}
!858 = distinct !{!858, !733, !"cmpfunc: %b:It3"}
!859 = !{!860}
!860 = distinct !{!860, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!861 = !{!862}
!862 = distinct !{!862, !738, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!863 = !{!860, !856, !852, !848, !687}
!864 = !{!862, !858, !854, !850, !727}
!865 = !{!862, !858, !854, !850, !687}
!866 = !{!860, !856, !852, !848, !727}
!867 = !{!"branch_weights", i32 4001, i32 4000000}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!870 = distinct !{!870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!871 = !{!872}
!872 = distinct !{!872, !870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!873 = !{!874}
!874 = distinct !{!874, !875, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!875 = distinct !{!875, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!876 = !{!877}
!877 = distinct !{!877, !875, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!878 = !{!879}
!879 = distinct !{!879, !880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!880 = distinct !{!880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!881 = !{!882}
!882 = distinct !{!882, !880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!883 = !{!879, !877, !872}
!884 = !{!882, !874, !869}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!887 = distinct !{!887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!888 = !{!889}
!889 = distinct !{!889, !887, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!890 = !{!891}
!891 = distinct !{!891, !892, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!892 = distinct !{!892, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!893 = !{!894}
!894 = distinct !{!894, !892, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!895 = !{!896}
!896 = distinct !{!896, !897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!897 = distinct !{!897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!898 = !{!899}
!899 = distinct !{!899, !897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!900 = !{!896, !894, !889}
!901 = !{!899, !891, !886}
!902 = !{!903}
!903 = distinct !{!903, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!904 = distinct !{!904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!905 = !{!906}
!906 = distinct !{!906, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!909 = distinct !{!909, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!910 = !{!911}
!911 = distinct !{!911, !909, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!914 = distinct !{!914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!917 = !{!913, !911, !906}
!918 = !{!916, !908, !903}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!921 = distinct !{!921, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!922 = !{!923}
!923 = distinct !{!923, !921, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!924 = !{!925}
!925 = distinct !{!925, !926, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!926 = distinct !{!926, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!927 = !{!928}
!928 = distinct !{!928, !926, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!931 = distinct !{!931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!932 = !{!933}
!933 = distinct !{!933, !931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!934 = !{!930, !928, !923}
!935 = !{!933, !925, !920}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!938 = distinct !{!938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!941 = !{!942}
!942 = distinct !{!942, !943, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!943 = distinct !{!943, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!944 = !{!945}
!945 = distinct !{!945, !943, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!948 = distinct !{!948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!949 = !{!950}
!950 = distinct !{!950, !948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!951 = !{!947, !945, !940}
!952 = !{!950, !942, !937}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!955 = distinct !{!955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!960 = distinct !{!960, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!961 = !{!962}
!962 = distinct !{!962, !960, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!965 = distinct !{!965, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!966 = !{!967}
!967 = distinct !{!967, !965, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!968 = !{!964, !962, !957}
!969 = !{!967, !959, !954}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!972 = distinct !{!972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!977 = distinct !{!977, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!978 = !{!979}
!979 = distinct !{!979, !977, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!982 = distinct !{!982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!983 = !{!984}
!984 = distinct !{!984, !982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!985 = !{!981, !979, !974}
!986 = !{!984, !976, !971}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!989 = distinct !{!989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!990 = !{!991}
!991 = distinct !{!991, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!992 = !{!993}
!993 = distinct !{!993, !994, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!994 = distinct !{!994, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!995 = !{!996}
!996 = distinct !{!996, !994, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!997 = !{!998}
!998 = distinct !{!998, !999, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!999 = distinct !{!999, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !999, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1002 = !{!998, !996, !991}
!1003 = !{!1001, !993, !988}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1006 = distinct !{!1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1011 = distinct !{!1011, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1011, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1016, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1016 = distinct !{!1016, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1016, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1019 = !{!1015, !1013, !1008}
!1020 = !{!1018, !1010, !1005}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1023 = distinct !{!1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1028 = distinct !{!1028, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1033 = distinct !{!1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1036 = !{!1032, !1030, !1025}
!1037 = !{!1035, !1027, !1022}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E: %v.0"}
!1040 = distinct !{!1040, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1043 = distinct !{!1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1048 = distinct !{!1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %_0"}
!1051 = distinct !{!1051, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1056 = distinct !{!1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1059 = !{!1055, !1053, !1045, !1039}
!1060 = !{!1058, !1047, !1042, !1050}
!1061 = !{!1058, !1047, !1042, !1039}
!1062 = !{!1055, !1053, !1045, !1050}
!1063 = !{!1050, !1064, !1039}
!1064 = distinct !{!1064, !1051, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %is_less"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1067 = distinct !{!1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1072 = distinct !{!1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %_0"}
!1075 = distinct !{!1075, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1080 = distinct !{!1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1083 = !{!1079, !1077, !1069, !1039}
!1084 = !{!1082, !1071, !1066, !1074}
!1085 = !{!1082, !1071, !1066, !1039}
!1086 = !{!1079, !1077, !1069, !1074}
!1087 = !{!1074, !1088, !1039}
!1088 = distinct !{!1088, !1075, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %is_less"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It1"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It1"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It1"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It1"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1101 = !{!1098, !1096, !1092, !1039}
!1102 = !{!1100, !1094, !1090, !1050}
!1103 = !{!1100, !1094, !1090, !1039}
!1104 = !{!1098, !1096, !1092, !1050}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It1"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It1"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It1"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It1"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1117 = !{!1114, !1112, !1108, !1039}
!1118 = !{!1116, !1110, !1106, !1074}
!1119 = !{!1116, !1110, !1106, !1039}
!1120 = !{!1114, !1112, !1108, !1074}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It2"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It2"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It2"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It2"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1133 = !{!1130, !1128, !1124, !1039}
!1134 = !{!1132, !1126, !1122, !1050}
!1135 = !{!1132, !1126, !1122, !1039}
!1136 = !{!1130, !1128, !1124, !1050}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It2"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It2"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It2"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It2"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1149 = !{!1146, !1144, !1140, !1039}
!1150 = !{!1148, !1142, !1138, !1074}
!1151 = !{!1148, !1142, !1138, !1039}
!1152 = !{!1146, !1144, !1140, !1074}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It3"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It3"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It3"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1048, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It3"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1056, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1165 = !{!1162, !1160, !1156, !1039}
!1166 = !{!1164, !1158, !1154, !1050}
!1167 = !{!1164, !1158, !1154, !1039}
!1168 = !{!1162, !1160, !1156, !1050}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It3"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It3"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It3"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1072, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It3"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1080, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1181 = !{!1178, !1176, !1172, !1039}
!1182 = !{!1180, !1174, !1170, !1074}
!1183 = !{!1180, !1174, !1170, !1039}
!1184 = !{!1178, !1176, !1172, !1074}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1187, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1187 = distinct !{!1187, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1187, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1192, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1192 = distinct !{!1192, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1192, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1195 = !{!1191, !1186}
!1196 = !{!1194, !1189}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1199, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1199 = distinct !{!1199, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1199, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1204 = distinct !{!1204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1207 = !{!1203, !1198}
!1208 = !{!1206, !1201}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1211 = distinct !{!1211, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1216 = distinct !{!1216, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1216, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1219 = !{!1215, !1210}
!1220 = !{!1218, !1213}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1223 = distinct !{!1223, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1228 = distinct !{!1228, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1231 = !{!1227, !1222}
!1232 = !{!1230, !1225}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1235 = distinct !{!1235, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1240 = distinct !{!1240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1243 = !{!1239, !1234}
!1244 = !{!1242, !1237}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1247 = distinct !{!1247, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1252 = distinct !{!1252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1255 = !{!1251, !1246}
!1256 = !{!1254, !1249}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1259 = distinct !{!1259, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1264 = distinct !{!1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1267 = !{!1263, !1258}
!1268 = !{!1266, !1261}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1271, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1271 = distinct !{!1271, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1271, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1276 = distinct !{!1276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1279 = !{!1275, !1270}
!1280 = !{!1278, !1273}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1283 = distinct !{!1283, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1288 = distinct !{!1288, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1291 = !{!1287, !1282}
!1292 = !{!1290, !1285}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1295 = distinct !{!1295, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1295, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1300 = distinct !{!1300, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1303 = !{!1299, !1294}
!1304 = !{!1302, !1297}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E: %v.0"}
!1307 = distinct !{!1307, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1310 = distinct !{!1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1315 = distinct !{!1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %_0"}
!1318 = distinct !{!1318, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1321 = !{!1314, !1309, !1306}
!1322 = !{!1320, !1312, !1317}
!1323 = !{!1320, !1312, !1306}
!1324 = !{!1314, !1309, !1317}
!1325 = !{!1317, !1326, !1306}
!1326 = distinct !{!1326, !1318, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %is_less"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1329 = distinct !{!1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1334 = distinct !{!1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %_0"}
!1337 = distinct !{!1337, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1340 = !{!1333, !1328, !1306}
!1341 = !{!1339, !1331, !1336}
!1342 = !{!1339, !1331, !1306}
!1343 = !{!1333, !1328, !1336}
!1344 = !{!1336, !1345, !1306}
!1345 = distinct !{!1345, !1337, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %is_less"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It1"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It1"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!1354 = !{!1351, !1347, !1306}
!1355 = !{!1353, !1349, !1317}
!1356 = !{!1353, !1349, !1306}
!1357 = !{!1351, !1347, !1317}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It1"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It1"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!1366 = !{!1363, !1359, !1306}
!1367 = !{!1365, !1361, !1336}
!1368 = !{!1365, !1361, !1306}
!1369 = !{!1363, !1359, !1336}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It2"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It2"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!1378 = !{!1375, !1371, !1306}
!1379 = !{!1377, !1373, !1317}
!1380 = !{!1377, !1373, !1306}
!1381 = !{!1375, !1371, !1317}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It2"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It2"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!1390 = !{!1387, !1383, !1306}
!1391 = !{!1389, !1385, !1336}
!1392 = !{!1389, !1385, !1306}
!1393 = !{!1387, !1383, !1336}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It3"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It3"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1315, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!1402 = !{!1399, !1395, !1306}
!1403 = !{!1401, !1397, !1317}
!1404 = !{!1401, !1397, !1306}
!1405 = !{!1399, !1395, !1317}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It3"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1329, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It3"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!1414 = !{!1411, !1407, !1306}
!1415 = !{!1413, !1409, !1336}
!1416 = !{!1413, !1409, !1306}
!1417 = !{!1411, !1407, !1336}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1420 = distinct !{!1420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1420, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1425, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1425 = distinct !{!1425, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %_0"}
!1428 = distinct !{!1428, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1425, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"cmpfunc: %a"}
!1433 = distinct !{!1433, !"cmpfunc"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"cmpfunc: %b"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1438 = distinct !{!1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1441 = !{!1437, !1432, !1424, !1419}
!1442 = !{!1440, !1435, !1430, !1422, !1427}
!1443 = !{!1440, !1435, !1430, !1422}
!1444 = !{!1437, !1432, !1424, !1419, !1427}
!1445 = !{!1427, !1446}
!1446 = distinct !{!1446, !1428, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %is_less"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1449 = distinct !{!1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1454 = distinct !{!1454, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %_0"}
!1457 = distinct !{!1457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1454, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1462, !"cmpfunc: %a"}
!1462 = distinct !{!1462, !"cmpfunc"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1462, !"cmpfunc: %b"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1467 = distinct !{!1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1467, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1470 = !{!1466, !1461, !1453, !1448}
!1471 = !{!1469, !1464, !1459, !1451, !1456}
!1472 = !{!1469, !1464, !1459, !1451}
!1473 = !{!1466, !1461, !1453, !1448, !1456}
!1474 = !{!1456, !1475}
!1475 = distinct !{!1475, !1457, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %is_less"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1478, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1478 = distinct !{!1478, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1478, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1483, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1483 = distinct !{!1483, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1486, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %_0"}
!1486 = distinct !{!1486, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1483, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1491 = distinct !{!1491, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1491, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1494 = !{!1490, !1488, !1480}
!1495 = !{!1493, !1482, !1477, !1485}
!1496 = !{!1493, !1482, !1477}
!1497 = !{!1490, !1488, !1480, !1485}
!1498 = !{!1485, !1499}
!1499 = distinct !{!1499, !1486, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %is_less"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1502 = distinct !{!1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1507 = distinct !{!1507, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %_0"}
!1510 = distinct !{!1510, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1507, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1515 = distinct !{!1515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1518 = !{!1514, !1512, !1504}
!1519 = !{!1517, !1506, !1501, !1509}
!1520 = !{!1517, !1506, !1501}
!1521 = !{!1514, !1512, !1504, !1509}
!1522 = !{!1509, !1523}
!1523 = distinct !{!1523, !1510, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %is_less"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1526 = distinct !{!1526, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1526, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1531 = distinct !{!1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1534, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %_0"}
!1534 = distinct !{!1534, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1537 = !{!1530, !1525}
!1538 = !{!1536, !1528, !1533}
!1539 = !{!1536, !1528}
!1540 = !{!1530, !1525, !1533}
!1541 = !{!1533, !1542}
!1542 = distinct !{!1542, !1534, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %is_less"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1545 = distinct !{!1545, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1550 = distinct !{!1550, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %_0"}
!1553 = distinct !{!1553, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1550, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1556 = !{!1549, !1544}
!1557 = !{!1555, !1547, !1552}
!1558 = !{!1555, !1547}
!1559 = !{!1549, !1544, !1552}
!1560 = !{!1552, !1561}
!1561 = distinct !{!1561, !1553, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %is_less"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1564 = distinct !{!1564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1569 = distinct !{!1569, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1572 = !{!1568, !1563}
!1573 = !{!1571, !1566}
!1574 = !{!1575, !1577}
!1575 = distinct !{!1575, !1576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1576 = distinct !{!1576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1577 = distinct !{!1577, !1578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1578 = distinct !{!1578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1579 = !{!1580, !1581}
!1580 = distinct !{!1580, !1576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1581 = distinct !{!1581, !1578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1582 = !{!1583, !1585}
!1583 = distinct !{!1583, !1584, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1584 = distinct !{!1584, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1585 = distinct !{!1585, !1586, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1586 = distinct !{!1586, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1589 = distinct !{!1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1594 = distinct !{!1594, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1599, !"cmpfunc: %a"}
!1599 = distinct !{!1599, !"cmpfunc"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1599, !"cmpfunc: %b"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1604 = distinct !{!1604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1607 = !{!1603, !1598, !1593, !1588}
!1608 = !{!1606, !1601, !1596, !1591}
!1609 = !{!1610, !1612, !1614, !1616}
!1610 = distinct !{!1610, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1611 = distinct !{!1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1612 = distinct !{!1612, !1613, !"cmpfunc: %b"}
!1613 = distinct !{!1613, !"cmpfunc"}
!1614 = distinct !{!1614, !1615, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1615 = distinct !{!1615, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1616 = distinct !{!1616, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1617 = distinct !{!1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = distinct !{!1619, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1620 = distinct !{!1620, !1613, !"cmpfunc: %a"}
!1621 = distinct !{!1621, !1615, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1622 = distinct !{!1622, !1617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1623 = !{!1624, !1626}
!1624 = distinct !{!1624, !1625, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1625 = distinct !{!1625, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1626 = distinct !{!1626, !1627, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1627 = distinct !{!1627, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1630 = distinct !{!1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1635 = distinct !{!1635, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1640 = distinct !{!1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1643 = !{!1639, !1637, !1632}
!1644 = !{!1642, !1634, !1629}
!1645 = !{!1646, !1648, !1650}
!1646 = distinct !{!1646, !1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1647 = distinct !{!1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1648 = distinct !{!1648, !1649, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1649 = distinct !{!1649, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1650 = distinct !{!1650, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1651 = distinct !{!1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1652 = !{!1653, !1654, !1655}
!1653 = distinct !{!1653, !1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1654 = distinct !{!1654, !1649, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1655 = distinct !{!1655, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1656 = !{!1657, !1659}
!1657 = distinct !{!1657, !1658, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1658 = distinct !{!1658, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1659 = distinct !{!1659, !1660, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1660 = distinct !{!1660, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1663 = distinct !{!1663, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1663, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1666 = !{!1667}
!1667 = distinct !{!1667, !1668, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1668 = distinct !{!1668, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1669 = !{!1670}
!1670 = distinct !{!1670, !1668, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1671 = !{!1672}
!1672 = distinct !{!1672, !1673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1673 = distinct !{!1673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1674 = !{!1675}
!1675 = distinct !{!1675, !1673, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1676 = !{!1672, !1670, !1665}
!1677 = !{!1675, !1667, !1662}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1680 = distinct !{!1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1685 = distinct !{!1685, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1685, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1690 = distinct !{!1690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1691 = !{!1692}
!1692 = distinct !{!1692, !1690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1693 = !{!1689, !1687, !1682}
!1694 = !{!1692, !1684, !1679}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1697 = distinct !{!1697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1698 = !{!1699}
!1699 = distinct !{!1699, !1697, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1702, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1702 = distinct !{!1702, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1702, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1707, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1707 = distinct !{!1707, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1707, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1710 = !{!1706, !1704, !1699}
!1711 = !{!1709, !1701, !1696}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1714 = distinct !{!1714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1715 = !{!1716}
!1716 = distinct !{!1716, !1714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1719 = distinct !{!1719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1720 = !{!1721}
!1721 = distinct !{!1721, !1719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1724 = distinct !{!1724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1727 = !{!1723, !1721, !1716}
!1728 = !{!1726, !1718, !1713}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1731 = distinct !{!1731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1732 = !{!1733}
!1733 = distinct !{!1733, !1731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1736, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1736 = distinct !{!1736, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1736, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1741, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1741 = distinct !{!1741, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1741, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1744 = !{!1740, !1738, !1733}
!1745 = !{!1743, !1735, !1730}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1748, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1748 = distinct !{!1748, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1748, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1751 = !{!1752}
!1752 = distinct !{!1752, !1753, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1753 = distinct !{!1753, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1753, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1758 = distinct !{!1758, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1758, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1761 = !{!1757, !1755, !1750}
!1762 = !{!1760, !1752, !1747}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1765 = distinct !{!1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1770, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1770 = distinct !{!1770, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1770, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1775 = distinct !{!1775, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1775, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1778 = !{!1774, !1772, !1767}
!1779 = !{!1777, !1769, !1764}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1782 = distinct !{!1782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1787 = distinct !{!1787, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1787, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1792 = distinct !{!1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1795 = !{!1791, !1789, !1784}
!1796 = !{!1794, !1786, !1781}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1799 = distinct !{!1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1799, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1804, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1804 = distinct !{!1804, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1804, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1809 = distinct !{!1809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1810 = !{!1811}
!1811 = distinct !{!1811, !1809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1812 = !{!1808, !1806, !1801}
!1813 = !{!1811, !1803, !1798}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1816 = distinct !{!1816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1821, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1821 = distinct !{!1821, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1821, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1826, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1826 = distinct !{!1826, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1827 = !{!1828}
!1828 = distinct !{!1828, !1826, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1829 = !{!1825, !1823, !1818}
!1830 = !{!1828, !1820, !1815}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E: %self.0"}
!1833 = distinct !{!1833, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E"}
!1834 = !{!1835}
!1835 = distinct !{!1835, !1836, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E: %v.0"}
!1836 = distinct !{!1836, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E"}
!1837 = !{!1838}
!1838 = distinct !{!1838, !1839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1839 = distinct !{!1839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1840 = !{!1841}
!1841 = distinct !{!1841, !1839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1842 = !{!1843}
!1843 = distinct !{!1843, !1844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1844 = distinct !{!1844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1845 = !{!1846}
!1846 = distinct !{!1846, !1847, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %_0"}
!1847 = distinct !{!1847, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE"}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1852, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1852 = distinct !{!1852, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1852, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1855 = !{!1851, !1849, !1841, !1835}
!1856 = !{!1854, !1843, !1838, !1846}
!1857 = !{!1854, !1843, !1838, !1835}
!1858 = !{!1851, !1849, !1841, !1846}
!1859 = !{!1846, !1860, !1835}
!1860 = distinct !{!1860, !1847, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %is_less"}
!1861 = !{!1862}
!1862 = distinct !{!1862, !1863, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1863 = distinct !{!1863, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1864 = !{!1865}
!1865 = distinct !{!1865, !1863, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1868, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1868 = distinct !{!1868, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %_0"}
!1871 = distinct !{!1871, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1868, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1876 = distinct !{!1876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1876, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1879 = !{!1875, !1873, !1865, !1835}
!1880 = !{!1878, !1867, !1862, !1870}
!1881 = !{!1878, !1867, !1862, !1835}
!1882 = !{!1875, !1873, !1865, !1870}
!1883 = !{!1870, !1884, !1835}
!1884 = distinct !{!1884, !1871, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %is_less"}
!1885 = !{!1886, !1888}
!1886 = distinct !{!1886, !1887, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1887 = distinct !{!1887, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1888 = distinct !{!1888, !1889, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1889 = distinct !{!1889, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1890 = !{!1891, !1893, !1895}
!1891 = distinct !{!1891, !1892, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1892 = distinct !{!1892, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1893 = distinct !{!1893, !1894, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1894 = distinct !{!1894, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1895 = distinct !{!1895, !1896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1896 = distinct !{!1896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1897 = !{!1898, !1899, !1900}
!1898 = distinct !{!1898, !1892, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1899 = distinct !{!1899, !1894, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1900 = distinct !{!1900, !1896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1901 = !{!1902, !1904, !1906}
!1902 = distinct !{!1902, !1903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1903 = distinct !{!1903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1904 = distinct !{!1904, !1905, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1905 = distinct !{!1905, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1906 = distinct !{!1906, !1907, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1907 = distinct !{!1907, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1908 = !{!1909, !1910, !1911}
!1909 = distinct !{!1909, !1903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1910 = distinct !{!1910, !1905, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1911 = distinct !{!1911, !1907, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1912 = !{!1913, !1915}
!1913 = distinct !{!1913, !1914, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1914 = distinct !{!1914, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1915 = distinct !{!1915, !1916, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1916 = distinct !{!1916, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1919, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1919 = distinct !{!1919, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1920 = !{!1921}
!1921 = distinct !{!1921, !1919, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1924 = distinct !{!1924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1927 = !{!1923, !1918}
!1928 = !{!1926, !1921}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1931, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1931 = distinct !{!1931, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1931, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1936, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1936 = distinct !{!1936, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1937 = !{!1938}
!1938 = distinct !{!1938, !1936, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1939 = !{!1935, !1930}
!1940 = !{!1938, !1933}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1943, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1943 = distinct !{!1943, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1943, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1948 = distinct !{!1948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1951 = !{!1947, !1942}
!1952 = !{!1950, !1945}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1955, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1955 = distinct !{!1955, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1955, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1960 = distinct !{!1960, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1963 = !{!1959, !1954}
!1964 = !{!1962, !1957}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1967, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1967 = distinct !{!1967, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1967, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1972 = distinct !{!1972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1975 = !{!1971, !1966}
!1976 = !{!1974, !1969}
!1977 = !{!1978}
!1978 = distinct !{!1978, !1979, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1979 = distinct !{!1979, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1979, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1982 = !{!1983}
!1983 = distinct !{!1983, !1984, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1984 = distinct !{!1984, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1984, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1987 = !{!1983, !1978}
!1988 = !{!1986, !1981}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1991, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!1991 = distinct !{!1991, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!1992 = !{!1993}
!1993 = distinct !{!1993, !1991, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!1994 = !{!1995}
!1995 = distinct !{!1995, !1996, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1996 = distinct !{!1996, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1997 = !{!1998}
!1998 = distinct !{!1998, !1996, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1999 = !{!1995, !1990}
!2000 = !{!1998, !1993}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2003, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2003 = distinct !{!2003, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2003, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2008 = distinct !{!2008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2009 = !{!2010}
!2010 = distinct !{!2010, !2008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2011 = !{!2007, !2002}
!2012 = !{!2010, !2005}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2015 = distinct !{!2015, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2015, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2020 = distinct !{!2020, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2020, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2023 = !{!2019, !2014}
!2024 = !{!2022, !2017}
!2025 = !{!2026}
!2026 = distinct !{!2026, !2027, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2027 = distinct !{!2027, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2027, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2032 = distinct !{!2032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2035 = !{!2031, !2026}
!2036 = !{!2034, !2029}
!2037 = !{!2038}
!2038 = distinct !{!2038, !2039, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E: %self.0"}
!2039 = distinct !{!2039, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2042, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E: %v.0"}
!2042 = distinct !{!2042, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2045 = distinct !{!2045, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2050 = distinct !{!2050, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2053, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %_0"}
!2053 = distinct !{!2053, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E"}
!2054 = !{!2055}
!2055 = distinct !{!2055, !2050, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2056 = !{!2049, !2044, !2041}
!2057 = !{!2055, !2047, !2052}
!2058 = !{!2055, !2047, !2041}
!2059 = !{!2049, !2044, !2052}
!2060 = !{!2052, !2061, !2041}
!2061 = distinct !{!2061, !2053, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %is_less"}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2064, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2064 = distinct !{!2064, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2064, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2069, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2069 = distinct !{!2069, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %_0"}
!2072 = distinct !{!2072, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2069, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2075 = !{!2068, !2063, !2041}
!2076 = !{!2074, !2066, !2071}
!2077 = !{!2074, !2066, !2041}
!2078 = !{!2068, !2063, !2071}
!2079 = !{!2071, !2080, !2041}
!2080 = distinct !{!2080, !2072, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %is_less"}
!2081 = !{!2082, !2084}
!2082 = distinct !{!2082, !2083, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2083 = distinct !{!2083, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2084 = distinct !{!2084, !2085, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2085 = distinct !{!2085, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2086 = !{!2087, !2089}
!2087 = distinct !{!2087, !2088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2088 = distinct !{!2088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2089 = distinct !{!2089, !2090, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2090 = distinct !{!2090, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2091 = !{!2092, !2093}
!2092 = distinct !{!2092, !2088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2093 = distinct !{!2093, !2090, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2094 = !{!2095, !2097}
!2095 = distinct !{!2095, !2096, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2096 = distinct !{!2096, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2097 = distinct !{!2097, !2098, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2098 = distinct !{!2098, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2099 = !{!2100, !2101}
!2100 = distinct !{!2100, !2096, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2101 = distinct !{!2101, !2098, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2102 = !{!2103, !2105}
!2103 = distinct !{!2103, !2104, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2104 = distinct !{!2104, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2105 = distinct !{!2105, !2106, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2106 = distinct !{!2106, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2109 = distinct !{!2109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2112 = !{!2113}
!2113 = distinct !{!2113, !2114, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2114 = distinct !{!2114, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2114, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2117 = !{!2118}
!2118 = distinct !{!2118, !2119, !"cmpfunc: %a"}
!2119 = distinct !{!2119, !"cmpfunc"}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2119, !"cmpfunc: %b"}
!2122 = !{!2123}
!2123 = distinct !{!2123, !2124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2124 = distinct !{!2124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2125 = !{!2126}
!2126 = distinct !{!2126, !2124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2127 = !{!2123, !2118, !2113, !2108}
!2128 = !{!2126, !2121, !2116, !2111}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2131 = distinct !{!2131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2136, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2136 = distinct !{!2136, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2136, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"cmpfunc: %a"}
!2141 = distinct !{!2141, !"cmpfunc"}
!2142 = !{!2143}
!2143 = distinct !{!2143, !2141, !"cmpfunc: %b"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2146 = distinct !{!2146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2149 = !{!2145, !2140, !2135, !2130}
!2150 = !{!2148, !2143, !2138, !2133}
!2151 = !{!2152}
!2152 = distinct !{!2152, !2153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2153 = distinct !{!2153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2154 = !{!2155}
!2155 = distinct !{!2155, !2153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2158, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2158 = distinct !{!2158, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2158, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2161 = !{!2162}
!2162 = distinct !{!2162, !2163, !"cmpfunc: %a"}
!2163 = distinct !{!2163, !"cmpfunc"}
!2164 = !{!2165}
!2165 = distinct !{!2165, !2163, !"cmpfunc: %b"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2168 = distinct !{!2168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2171 = !{!2167, !2162, !2157, !2152}
!2172 = !{!2170, !2165, !2160, !2155}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2175 = distinct !{!2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2176 = !{!2177}
!2177 = distinct !{!2177, !2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2180, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2180 = distinct !{!2180, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2181 = !{!2182}
!2182 = distinct !{!2182, !2180, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2185, !"cmpfunc: %a"}
!2185 = distinct !{!2185, !"cmpfunc"}
!2186 = !{!2187}
!2187 = distinct !{!2187, !2185, !"cmpfunc: %b"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2190 = distinct !{!2190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2191 = !{!2192}
!2192 = distinct !{!2192, !2190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2193 = !{!2189, !2184, !2179, !2174}
!2194 = !{!2192, !2187, !2182, !2177}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2197 = distinct !{!2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2202 = distinct !{!2202, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2202, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2205 = !{!2206}
!2206 = distinct !{!2206, !2207, !"cmpfunc: %a"}
!2207 = distinct !{!2207, !"cmpfunc"}
!2208 = !{!2209}
!2209 = distinct !{!2209, !2207, !"cmpfunc: %b"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2212 = distinct !{!2212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2215 = !{!2211, !2206, !2201, !2196}
!2216 = !{!2214, !2209, !2204, !2199}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2219 = distinct !{!2219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2222 = !{!2223}
!2223 = distinct !{!2223, !2224, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2224 = distinct !{!2224, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2225 = !{!2226}
!2226 = distinct !{!2226, !2224, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2229, !"cmpfunc: %a"}
!2229 = distinct !{!2229, !"cmpfunc"}
!2230 = !{!2231}
!2231 = distinct !{!2231, !2229, !"cmpfunc: %b"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2234 = distinct !{!2234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2235 = !{!2236}
!2236 = distinct !{!2236, !2234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2237 = !{!2233, !2228, !2223, !2218}
!2238 = !{!2236, !2231, !2226, !2221}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2241 = distinct !{!2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2246 = distinct !{!2246, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"cmpfunc: %a"}
!2251 = distinct !{!2251, !"cmpfunc"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2251, !"cmpfunc: %b"}
!2254 = !{!2255}
!2255 = distinct !{!2255, !2256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2256 = distinct !{!2256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2257 = !{!2258}
!2258 = distinct !{!2258, !2256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2259 = !{!2255, !2250, !2245, !2240}
!2260 = !{!2258, !2253, !2248, !2243}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2263 = distinct !{!2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2268 = distinct !{!2268, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2268, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"cmpfunc: %a"}
!2273 = distinct !{!2273, !"cmpfunc"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2273, !"cmpfunc: %b"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2278 = distinct !{!2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2281 = !{!2277, !2272, !2267, !2262}
!2282 = !{!2280, !2275, !2270, !2265}
!2283 = !{!2284}
!2284 = distinct !{!2284, !2285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2285 = distinct !{!2285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2288 = !{!2289}
!2289 = distinct !{!2289, !2290, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2290 = distinct !{!2290, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2290, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2293 = !{!2294}
!2294 = distinct !{!2294, !2295, !"cmpfunc: %a"}
!2295 = distinct !{!2295, !"cmpfunc"}
!2296 = !{!2297}
!2297 = distinct !{!2297, !2295, !"cmpfunc: %b"}
!2298 = !{!2299}
!2299 = distinct !{!2299, !2300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2300 = distinct !{!2300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2301 = !{!2302}
!2302 = distinct !{!2302, !2300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2303 = !{!2299, !2294, !2289, !2284}
!2304 = !{!2302, !2297, !2292, !2287}
!2305 = !{!2306}
!2306 = distinct !{!2306, !2307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2307 = distinct !{!2307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2308 = !{!2309}
!2309 = distinct !{!2309, !2307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2310 = !{!2311}
!2311 = distinct !{!2311, !2312, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2312 = distinct !{!2312, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2312, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2315 = !{!2316}
!2316 = distinct !{!2316, !2317, !"cmpfunc: %a"}
!2317 = distinct !{!2317, !"cmpfunc"}
!2318 = !{!2319}
!2319 = distinct !{!2319, !2317, !"cmpfunc: %b"}
!2320 = !{!2321}
!2321 = distinct !{!2321, !2322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2322 = distinct !{!2322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2323 = !{!2324}
!2324 = distinct !{!2324, !2322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2325 = !{!2321, !2316, !2311, !2306}
!2326 = !{!2324, !2319, !2314, !2309}
!2327 = !{!2328}
!2328 = distinct !{!2328, !2329, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E: %self.0"}
!2329 = distinct !{!2329, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9c920dca5141f797E"}
!2330 = !{!2331}
!2331 = distinct !{!2331, !2332, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E: %v.0"}
!2332 = distinct !{!2332, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E"}
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2335 = distinct !{!2335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2340 = distinct !{!2340, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2343, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %_0"}
!2343 = distinct !{!2343, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2340, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2346 = !{!2347}
!2347 = distinct !{!2347, !2348, !"cmpfunc: %a"}
!2348 = distinct !{!2348, !"cmpfunc"}
!2349 = !{!2350}
!2350 = distinct !{!2350, !2348, !"cmpfunc: %b"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2353, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2353 = distinct !{!2353, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2354 = !{!2355}
!2355 = distinct !{!2355, !2353, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2356 = !{!2352, !2347, !2339, !2334, !2331}
!2357 = !{!2355, !2350, !2345, !2337, !2342}
!2358 = !{!2355, !2350, !2345, !2337, !2331}
!2359 = !{!2352, !2347, !2339, !2334, !2342}
!2360 = !{!2342, !2361, !2331}
!2361 = distinct !{!2361, !2343, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %is_less"}
!2362 = !{!2363}
!2363 = distinct !{!2363, !2364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2364 = distinct !{!2364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2365 = !{!2366}
!2366 = distinct !{!2366, !2364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2367 = !{!2368}
!2368 = distinct !{!2368, !2369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2369 = distinct !{!2369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %_0"}
!2372 = distinct !{!2372, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E"}
!2373 = !{!2374}
!2374 = distinct !{!2374, !2369, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2375 = !{!2376}
!2376 = distinct !{!2376, !2377, !"cmpfunc: %a"}
!2377 = distinct !{!2377, !"cmpfunc"}
!2378 = !{!2379}
!2379 = distinct !{!2379, !2377, !"cmpfunc: %b"}
!2380 = !{!2381}
!2381 = distinct !{!2381, !2382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2382 = distinct !{!2382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2383 = !{!2384}
!2384 = distinct !{!2384, !2382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2385 = !{!2381, !2376, !2368, !2363, !2331}
!2386 = !{!2384, !2379, !2374, !2366, !2371}
!2387 = !{!2384, !2379, !2374, !2366, !2331}
!2388 = !{!2381, !2376, !2368, !2363, !2371}
!2389 = !{!2371, !2390, !2331}
!2390 = distinct !{!2390, !2372, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %is_less"}
!2391 = !{!2392, !2394}
!2392 = distinct !{!2392, !2393, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2393 = distinct !{!2393, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2394 = distinct !{!2394, !2395, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2395 = distinct !{!2395, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2396 = !{!2397, !2399, !2401, !2403}
!2397 = distinct !{!2397, !2398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2398 = distinct !{!2398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2399 = distinct !{!2399, !2400, !"cmpfunc: %b"}
!2400 = distinct !{!2400, !"cmpfunc"}
!2401 = distinct !{!2401, !2402, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2402 = distinct !{!2402, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2403 = distinct !{!2403, !2404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2404 = distinct !{!2404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = distinct !{!2406, !2398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2407 = distinct !{!2407, !2400, !"cmpfunc: %a"}
!2408 = distinct !{!2408, !2402, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2409 = distinct !{!2409, !2404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2410 = !{!2411, !2413, !2415, !2417}
!2411 = distinct !{!2411, !2412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2412 = distinct !{!2412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2413 = distinct !{!2413, !2414, !"cmpfunc: %b"}
!2414 = distinct !{!2414, !"cmpfunc"}
!2415 = distinct !{!2415, !2416, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2416 = distinct !{!2416, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2417 = distinct !{!2417, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2418 = distinct !{!2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = distinct !{!2420, !2412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2421 = distinct !{!2421, !2414, !"cmpfunc: %a"}
!2422 = distinct !{!2422, !2416, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2423 = distinct !{!2423, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2424 = !{!2425, !2427}
!2425 = distinct !{!2425, !2426, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2426 = distinct !{!2426, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2427 = distinct !{!2427, !2428, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2428 = distinct !{!2428, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!2431 = distinct !{!2431, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!2432 = !{i64 0, i64 2}
!2433 = !{i64 0, i64 -9223372036854775807}
!2434 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!2435 = !{!2436}
!2436 = distinct !{!2436, !2437, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!2437 = distinct !{!2437, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!2440 = distinct !{!2440, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2443 = distinct !{!2443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2444 = !{!2445}
!2445 = distinct !{!2445, !2443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2446 = !{!2447}
!2447 = distinct !{!2447, !2448, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2448 = distinct !{!2448, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2449 = !{!2450}
!2450 = distinct !{!2450, !2448, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2453 = distinct !{!2453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2453, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2456 = !{!2452, !2450, !2445}
!2457 = !{!2455, !2447, !2442}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2460 = distinct !{!2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2465 = distinct !{!2465, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2470 = distinct !{!2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2473 = !{!2469, !2467, !2462}
!2474 = !{!2472, !2464, !2459}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2477 = distinct !{!2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2482 = distinct !{!2482, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2482, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2487 = distinct !{!2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2490 = !{!2486, !2484, !2479}
!2491 = !{!2489, !2481, !2476}
!2492 = !{!2493, !2495}
!2493 = distinct !{!2493, !2494, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!2494 = distinct !{!2494, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!2495 = distinct !{!2495, !2496, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!2496 = distinct !{!2496, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2494, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!2499 = !{!2498, !2495}
!2500 = !{!2493}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2503 = distinct !{!2503, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2508 = distinct !{!2508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2511 = !{!2507, !2502}
!2512 = !{!2510, !2505}
!2513 = !{!2514}
!2514 = distinct !{!2514, !2515, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2515 = distinct !{!2515, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2516 = !{!2517}
!2517 = distinct !{!2517, !2515, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2520 = distinct !{!2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2521 = !{!2522}
!2522 = distinct !{!2522, !2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2523 = !{!2519, !2514}
!2524 = !{!2522, !2517}
!2525 = !{!2526}
!2526 = distinct !{!2526, !2527, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2527 = distinct !{!2527, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2528 = !{!2529}
!2529 = distinct !{!2529, !2527, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2530 = !{!2531}
!2531 = distinct !{!2531, !2532, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2532 = distinct !{!2532, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2533 = !{!2534}
!2534 = distinct !{!2534, !2532, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2535 = !{!2531, !2526}
!2536 = !{!2534, !2529}
!2537 = !{!2538, !2540}
!2538 = distinct !{!2538, !2539, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!2539 = distinct !{!2539, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!2540 = distinct !{!2540, !2541, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!2541 = distinct !{!2541, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2539, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!2544 = !{!2543, !2540}
!2545 = !{!2538}
!2546 = !{!2547}
!2547 = distinct !{!2547, !2548, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2548 = distinct !{!2548, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2549 = !{!2550}
!2550 = distinct !{!2550, !2548, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2553 = distinct !{!2553, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2554 = !{!2555}
!2555 = distinct !{!2555, !2553, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2556 = !{!2557}
!2557 = distinct !{!2557, !2558, !"cmpfunc: %a"}
!2558 = distinct !{!2558, !"cmpfunc"}
!2559 = !{!2560}
!2560 = distinct !{!2560, !2558, !"cmpfunc: %b"}
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2563 = distinct !{!2563, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2564 = !{!2565}
!2565 = distinct !{!2565, !2563, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2566 = !{!2562, !2557, !2552, !2547}
!2567 = !{!2565, !2560, !2555, !2550}
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2570 = distinct !{!2570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2575 = distinct !{!2575, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2576 = !{!2577}
!2577 = distinct !{!2577, !2575, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"cmpfunc: %a"}
!2580 = distinct !{!2580, !"cmpfunc"}
!2581 = !{!2582}
!2582 = distinct !{!2582, !2580, !"cmpfunc: %b"}
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2585 = distinct !{!2585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2586 = !{!2587}
!2587 = distinct !{!2587, !2585, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2588 = !{!2584, !2579, !2574, !2569}
!2589 = !{!2587, !2582, !2577, !2572}
!2590 = !{!2591}
!2591 = distinct !{!2591, !2592, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2592 = distinct !{!2592, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2593 = !{!2594}
!2594 = distinct !{!2594, !2592, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2595 = !{!2596}
!2596 = distinct !{!2596, !2597, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2597 = distinct !{!2597, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2598 = !{!2599}
!2599 = distinct !{!2599, !2597, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"cmpfunc: %a"}
!2602 = distinct !{!2602, !"cmpfunc"}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2602, !"cmpfunc: %b"}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2607 = distinct !{!2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2608 = !{!2609}
!2609 = distinct !{!2609, !2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2610 = !{!2606, !2601, !2596, !2591}
!2611 = !{!2609, !2604, !2599, !2594}
!2612 = !{!2613, !2615}
!2613 = distinct !{!2613, !2614, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!2614 = distinct !{!2614, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!2615 = distinct !{!2615, !2616, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!2616 = distinct !{!2616, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!2617 = !{!2618}
!2618 = distinct !{!2618, !2614, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!2619 = !{!2618, !2615}
!2620 = !{!2613}
!2621 = !{!2622}
!2622 = distinct !{!2622, !2623, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E: %v.0"}
!2623 = distinct !{!2623, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E"}
!2624 = !{!2625}
!2625 = distinct !{!2625, !2623, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E: %scratch.0"}
!2626 = !{!2622, !2625}
!2627 = !{!2628}
!2628 = distinct !{!2628, !2629, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2629 = distinct !{!2629, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2630 = !{!2631}
!2631 = distinct !{!2631, !2629, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2632 = !{!2633}
!2633 = distinct !{!2633, !2634, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2634 = distinct !{!2634, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2635 = !{!2636}
!2636 = distinct !{!2636, !2634, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2637 = !{!2633, !2628, !2625}
!2638 = !{!2636, !2631, !2639, !2622}
!2639 = distinct !{!2639, !2640, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE: %self"}
!2640 = distinct !{!2640, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE"}
!2641 = !{!2636, !2631, !2622}
!2642 = !{!2633, !2628, !2639, !2625}
!2643 = !{!2639, !2625}
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2646 = distinct !{!2646, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2646, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2649 = !{!2650}
!2650 = distinct !{!2650, !2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2651 = distinct !{!2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2652 = !{!2653}
!2653 = distinct !{!2653, !2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2654 = !{!2650, !2645, !2622}
!2655 = !{!2653, !2648, !2656, !2625}
!2656 = distinct !{!2656, !2657, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE: %self"}
!2657 = distinct !{!2657, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE"}
!2658 = !{!2653, !2648, !2625}
!2659 = !{!2650, !2645, !2656, !2622}
!2660 = !{!2656, !2625}
!2661 = !{!2662, !2664}
!2662 = distinct !{!2662, !2663, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!2663 = distinct !{!2663, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!2664 = distinct !{!2664, !2665, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!2665 = distinct !{!2665, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE: %v.0"}
!2668 = distinct !{!2668, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE"}
!2669 = !{!2670}
!2670 = distinct !{!2670, !2668, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE: %scratch.0"}
!2671 = !{!2667, !2670}
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2674 = distinct !{!2674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2675 = !{!2676}
!2676 = distinct !{!2676, !2674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2677 = !{!2678}
!2678 = distinct !{!2678, !2679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2679 = distinct !{!2679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2680 = !{!2681}
!2681 = distinct !{!2681, !2679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2682 = !{!2683}
!2683 = distinct !{!2683, !2684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2684 = distinct !{!2684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2685 = !{!2686}
!2686 = distinct !{!2686, !2684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2687 = !{!2683, !2681, !2676, !2667}
!2688 = !{!2686, !2678, !2673, !2689, !2670}
!2689 = distinct !{!2689, !2690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E: %self"}
!2690 = distinct !{!2690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E"}
!2691 = !{!2686, !2678, !2673, !2670}
!2692 = !{!2683, !2681, !2676, !2689, !2667}
!2693 = !{!2689, !2670}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2696 = distinct !{!2696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2697 = !{!2698}
!2698 = distinct !{!2698, !2696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2699 = !{!2700}
!2700 = distinct !{!2700, !2701, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2701 = distinct !{!2701, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2702 = !{!2703}
!2703 = distinct !{!2703, !2701, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2704 = !{!2705}
!2705 = distinct !{!2705, !2706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2706 = distinct !{!2706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2707 = !{!2708}
!2708 = distinct !{!2708, !2706, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2709 = !{!2705, !2703, !2698, !2670}
!2710 = !{!2708, !2700, !2695, !2711, !2667}
!2711 = distinct !{!2711, !2712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E: %self"}
!2712 = distinct !{!2712, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E"}
!2713 = !{!2708, !2700, !2695, !2667}
!2714 = !{!2705, !2703, !2698, !2711, !2670}
!2715 = !{!2711, !2670}
!2716 = !{!2717, !2719}
!2717 = distinct !{!2717, !2718, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!2718 = distinct !{!2718, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!2719 = distinct !{!2719, !2720, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!2720 = distinct !{!2720, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!2721 = !{!2722}
!2722 = distinct !{!2722, !2723, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E: %v.0"}
!2723 = distinct !{!2723, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E"}
!2724 = !{!2725}
!2725 = distinct !{!2725, !2723, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E: %scratch.0"}
!2726 = !{!2722, !2725}
!2727 = !{!2728}
!2728 = distinct !{!2728, !2729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2729 = distinct !{!2729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2730 = !{!2731}
!2731 = distinct !{!2731, !2729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2734 = distinct !{!2734, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2735 = !{!2736}
!2736 = distinct !{!2736, !2734, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"cmpfunc: %a"}
!2739 = distinct !{!2739, !"cmpfunc"}
!2740 = !{!2741}
!2741 = distinct !{!2741, !2739, !"cmpfunc: %b"}
!2742 = !{!2743}
!2743 = distinct !{!2743, !2744, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2744 = distinct !{!2744, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2744, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2747 = !{!2743, !2738, !2733, !2728, !2725}
!2748 = !{!2746, !2741, !2736, !2731, !2749, !2722}
!2749 = distinct !{!2749, !2750, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE: %self"}
!2750 = distinct !{!2750, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE"}
!2751 = !{!2746, !2741, !2736, !2731, !2722}
!2752 = !{!2743, !2738, !2733, !2728, !2749, !2725}
!2753 = !{!2749, !2725}
!2754 = !{!2755}
!2755 = distinct !{!2755, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2756 = distinct !{!2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2761, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2761 = distinct !{!2761, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2762 = !{!2763}
!2763 = distinct !{!2763, !2761, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2764 = !{!2765}
!2765 = distinct !{!2765, !2766, !"cmpfunc: %a"}
!2766 = distinct !{!2766, !"cmpfunc"}
!2767 = !{!2768}
!2768 = distinct !{!2768, !2766, !"cmpfunc: %b"}
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2771 = distinct !{!2771, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2772 = !{!2773}
!2773 = distinct !{!2773, !2771, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2774 = !{!2770, !2765, !2760, !2755, !2722}
!2775 = !{!2773, !2768, !2763, !2758, !2776, !2725}
!2776 = distinct !{!2776, !2777, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE: %self"}
!2777 = distinct !{!2777, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE"}
!2778 = !{!2773, !2768, !2763, !2758, !2725}
!2779 = !{!2770, !2765, !2760, !2755, !2776, !2722}
!2780 = !{!2776, !2725}
!2781 = !{!2782, !2784}
!2782 = distinct !{!2782, !2783, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!2783 = distinct !{!2783, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!2784 = distinct !{!2784, !2785, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!2785 = distinct !{!2785, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!2786 = !{!2787}
!2787 = distinct !{!2787, !2788, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2788 = distinct !{!2788, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2789 = !{!2790}
!2790 = distinct !{!2790, !2788, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2793 = distinct !{!2793, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2794 = !{!2795}
!2795 = distinct !{!2795, !2793, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2796 = !{!2792, !2787}
!2797 = !{!2795, !2790}
!2798 = !{!2799}
!2799 = distinct !{!2799, !2800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2800 = distinct !{!2800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2801 = !{!2802}
!2802 = distinct !{!2802, !2800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2803 = !{!2804}
!2804 = distinct !{!2804, !2805, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2805 = distinct !{!2805, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2806 = !{!2807}
!2807 = distinct !{!2807, !2805, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2808 = !{!2809}
!2809 = distinct !{!2809, !2810, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2810 = distinct !{!2810, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2811 = !{!2812}
!2812 = distinct !{!2812, !2810, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2813 = !{!2809, !2807, !2802}
!2814 = !{!2812, !2804, !2799}
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2817 = distinct !{!2817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2818 = !{!2819}
!2819 = distinct !{!2819, !2817, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2822 = distinct !{!2822, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2823 = !{!2824}
!2824 = distinct !{!2824, !2822, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2825 = !{!2826}
!2826 = distinct !{!2826, !2827, !"cmpfunc: %a"}
!2827 = distinct !{!2827, !"cmpfunc"}
!2828 = !{!2829}
!2829 = distinct !{!2829, !2827, !"cmpfunc: %b"}
!2830 = !{!2831}
!2831 = distinct !{!2831, !2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2832 = distinct !{!2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2833 = !{!2834}
!2834 = distinct !{!2834, !2832, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2835 = !{!2831, !2826, !2821, !2816}
!2836 = !{!2834, !2829, !2824, !2819}
!2837 = !{!2838}
!2838 = distinct !{!2838, !2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2839 = distinct !{!2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2840 = !{!2841}
!2841 = distinct !{!2841, !2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2842 = !{!2843}
!2843 = distinct !{!2843, !2844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2844 = distinct !{!2844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2845 = !{!2846}
!2846 = distinct !{!2846, !2844, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2847 = !{!2848}
!2848 = distinct !{!2848, !2849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2849 = distinct !{!2849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2850 = !{!2851}
!2851 = distinct !{!2851, !2849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2852 = !{!2848, !2846, !2841}
!2853 = !{!2851, !2843, !2838}
!2854 = !{!2855}
!2855 = distinct !{!2855, !2856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2856 = distinct !{!2856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2857 = !{!2858}
!2858 = distinct !{!2858, !2856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2861 = distinct !{!2861, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2862 = !{!2863}
!2863 = distinct !{!2863, !2861, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"cmpfunc: %a"}
!2866 = distinct !{!2866, !"cmpfunc"}
!2867 = !{!2868}
!2868 = distinct !{!2868, !2866, !"cmpfunc: %b"}
!2869 = !{!2870}
!2870 = distinct !{!2870, !2871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2871 = distinct !{!2871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2872 = !{!2873}
!2873 = distinct !{!2873, !2871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2874 = !{!2870, !2865, !2860, !2855}
!2875 = !{!2873, !2868, !2863, !2858}
!2876 = !{!2877}
!2877 = distinct !{!2877, !2878, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2878 = distinct !{!2878, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2879 = !{!2880}
!2880 = distinct !{!2880, !2878, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2881 = !{!2882}
!2882 = distinct !{!2882, !2883, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2883 = distinct !{!2883, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2884 = !{!2885}
!2885 = distinct !{!2885, !2883, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2886 = !{!2882, !2877}
!2887 = !{!2885, !2880}
!2888 = !{!2889}
!2889 = distinct !{!2889, !2890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2890 = distinct !{!2890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2891 = !{!2892}
!2892 = distinct !{!2892, !2890, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2893 = !{!2894}
!2894 = distinct !{!2894, !2895, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2895 = distinct !{!2895, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2896 = !{!2897}
!2897 = distinct !{!2897, !2895, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2898 = !{!2899}
!2899 = distinct !{!2899, !2900, !"cmpfunc: %a"}
!2900 = distinct !{!2900, !"cmpfunc"}
!2901 = !{!2902}
!2902 = distinct !{!2902, !2900, !"cmpfunc: %b"}
!2903 = !{!2904}
!2904 = distinct !{!2904, !2905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2905 = distinct !{!2905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2906 = !{!2907}
!2907 = distinct !{!2907, !2905, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2908 = !{!2904, !2899, !2894, !2889}
!2909 = !{!2907, !2902, !2897, !2892, !2910}
!2910 = distinct !{!2910, !2911, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE: %self"}
!2911 = distinct !{!2911, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE"}
!2912 = !{!2907, !2902, !2897, !2892}
!2913 = !{!2904, !2899, !2894, !2889, !2910}
!2914 = !{!2910}
!2915 = !{!2916}
!2916 = distinct !{!2916, !2917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2917 = distinct !{!2917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2918 = !{!2919}
!2919 = distinct !{!2919, !2917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2920 = !{!2921}
!2921 = distinct !{!2921, !2922, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2922 = distinct !{!2922, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2923 = !{!2924}
!2924 = distinct !{!2924, !2922, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2925 = !{!2926}
!2926 = distinct !{!2926, !2927, !"cmpfunc: %a"}
!2927 = distinct !{!2927, !"cmpfunc"}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2927, !"cmpfunc: %b"}
!2930 = !{!2931}
!2931 = distinct !{!2931, !2932, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2932 = distinct !{!2932, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2933 = !{!2934}
!2934 = distinct !{!2934, !2932, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2935 = !{!2931, !2926, !2921, !2916}
!2936 = !{!2934, !2929, !2924, !2919, !2937}
!2937 = distinct !{!2937, !2938, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE: %self"}
!2938 = distinct !{!2938, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE"}
!2939 = !{!2934, !2929, !2924, !2919}
!2940 = !{!2931, !2926, !2921, !2916, !2937}
!2941 = !{!2937}
!2942 = !{!2943, !2945}
!2943 = distinct !{!2943, !2944, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!2944 = distinct !{!2944, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!2945 = distinct !{!2945, !2946, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!2946 = distinct !{!2946, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!2947 = !{!2948}
!2948 = distinct !{!2948, !2949, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2949 = distinct !{!2949, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2950 = !{!2951}
!2951 = distinct !{!2951, !2949, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2952 = !{!2953}
!2953 = distinct !{!2953, !2954, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2954 = distinct !{!2954, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2955 = !{!2956}
!2956 = distinct !{!2956, !2954, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2957 = !{!2953, !2948}
!2958 = !{!2956, !2951, !2959}
!2959 = distinct !{!2959, !2960, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE: %self"}
!2960 = distinct !{!2960, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE"}
!2961 = !{!2956, !2951}
!2962 = !{!2953, !2948, !2959}
!2963 = !{!2959}
!2964 = !{!2965}
!2965 = distinct !{!2965, !2966, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2966 = distinct !{!2966, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2967 = !{!2968}
!2968 = distinct !{!2968, !2966, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2971 = distinct !{!2971, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2972 = !{!2973}
!2973 = distinct !{!2973, !2971, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2974 = !{!2970, !2965}
!2975 = !{!2973, !2968, !2976}
!2976 = distinct !{!2976, !2977, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE: %self"}
!2977 = distinct !{!2977, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE"}
!2978 = !{!2973, !2968}
!2979 = !{!2970, !2965, !2976}
!2980 = !{!2976}
!2981 = !{!2982, !2984}
!2982 = distinct !{!2982, !2983, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!2983 = distinct !{!2983, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!2984 = distinct !{!2984, !2985, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!2985 = distinct !{!2985, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!2986 = !{!2987}
!2987 = distinct !{!2987, !2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2988 = distinct !{!2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2989 = !{!2990}
!2990 = distinct !{!2990, !2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2991 = !{!2992}
!2992 = distinct !{!2992, !2993, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2993 = distinct !{!2993, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2994 = !{!2995}
!2995 = distinct !{!2995, !2993, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2998 = distinct !{!2998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2999 = !{!3000}
!3000 = distinct !{!3000, !2998, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3001 = !{!2997, !2995, !2990}
!3002 = !{!3000, !2992, !2987, !3003}
!3003 = distinct !{!3003, !3004, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E: %self"}
!3004 = distinct !{!3004, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E"}
!3005 = !{!3000, !2992, !2987}
!3006 = !{!2997, !2995, !2990, !3003}
!3007 = !{!3003}
!3008 = !{!3009}
!3009 = distinct !{!3009, !3010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3010 = distinct !{!3010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3011 = !{!3012}
!3012 = distinct !{!3012, !3010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3013 = !{!3014}
!3014 = distinct !{!3014, !3015, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3015 = distinct !{!3015, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3016 = !{!3017}
!3017 = distinct !{!3017, !3015, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3018 = !{!3019}
!3019 = distinct !{!3019, !3020, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3020 = distinct !{!3020, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3021 = !{!3022}
!3022 = distinct !{!3022, !3020, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3023 = !{!3019, !3017, !3012}
!3024 = !{!3022, !3014, !3009, !3025}
!3025 = distinct !{!3025, !3026, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E: %self"}
!3026 = distinct !{!3026, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E"}
!3027 = !{!3022, !3014, !3009}
!3028 = !{!3019, !3017, !3012, !3025}
!3029 = !{!3025}
!3030 = !{!3031, !3033}
!3031 = distinct !{!3031, !3032, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!3032 = distinct !{!3032, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!3033 = distinct !{!3033, !3034, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!3034 = distinct !{!3034, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!3035 = !{!"branch_weights", i32 4000000, i32 4001}
!3036 = !{!3037}
!3037 = distinct !{!3037, !3038, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!3038 = distinct !{!3038, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!3039 = !{!3040}
!3040 = distinct !{!3040, !3038, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!3041 = !{!3042}
!3042 = distinct !{!3042, !3043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3043 = distinct !{!3043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3044 = !{!3045}
!3045 = distinct !{!3045, !3043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3046 = !{!3047}
!3047 = distinct !{!3047, !3048, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3048 = distinct !{!3048, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3049 = !{!3050}
!3050 = distinct !{!3050, !3048, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3051 = !{!3052}
!3052 = distinct !{!3052, !3053, !"cmpfunc: %a"}
!3053 = distinct !{!3053, !"cmpfunc"}
!3054 = !{!3055}
!3055 = distinct !{!3055, !3053, !"cmpfunc: %b"}
!3056 = !{!3057}
!3057 = distinct !{!3057, !3058, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3058 = distinct !{!3058, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3059 = !{!3060}
!3060 = distinct !{!3060, !3058, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3061 = !{!3057, !3052, !3047, !3042, !3040}
!3062 = !{!3060, !3055, !3050, !3045, !3037}
!3063 = !{!3064}
!3064 = distinct !{!3064, !3065, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3065 = distinct !{!3065, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3066 = !{!3067}
!3067 = distinct !{!3067, !3068, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!3068 = distinct !{!3068, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!3069 = !{!3070}
!3070 = distinct !{!3070, !3068, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!3071 = !{!3072}
!3072 = distinct !{!3072, !3073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3073 = distinct !{!3073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3074 = !{!3075}
!3075 = distinct !{!3075, !3073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3076 = !{!3077}
!3077 = distinct !{!3077, !3078, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3078 = distinct !{!3078, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3079 = !{!3080}
!3080 = distinct !{!3080, !3078, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3081 = !{!3082}
!3082 = distinct !{!3082, !3083, !"cmpfunc: %a"}
!3083 = distinct !{!3083, !"cmpfunc"}
!3084 = !{!3085}
!3085 = distinct !{!3085, !3083, !"cmpfunc: %b"}
!3086 = !{!3087}
!3087 = distinct !{!3087, !3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3088 = distinct !{!3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3089 = !{!3090}
!3090 = distinct !{!3090, !3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3091 = !{!3087, !3082, !3077, !3072, !3070}
!3092 = !{!3090, !3085, !3080, !3075, !3067}
!3093 = !{!3094}
!3094 = distinct !{!3094, !3095, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3095 = distinct !{!3095, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3096 = !{!3097}
!3097 = distinct !{!3097, !3098, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!3098 = distinct !{!3098, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!3099 = !{!3100}
!3100 = distinct !{!3100, !3098, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!3101 = !{!3102}
!3102 = distinct !{!3102, !3103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3103 = distinct !{!3103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3104 = !{!3105}
!3105 = distinct !{!3105, !3103, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3106 = !{!3107}
!3107 = distinct !{!3107, !3108, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3108 = distinct !{!3108, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3109 = !{!3110}
!3110 = distinct !{!3110, !3108, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3111 = !{!3112}
!3112 = distinct !{!3112, !3113, !"cmpfunc: %a"}
!3113 = distinct !{!3113, !"cmpfunc"}
!3114 = !{!3115}
!3115 = distinct !{!3115, !3113, !"cmpfunc: %b"}
!3116 = !{!3117}
!3117 = distinct !{!3117, !3118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3118 = distinct !{!3118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3119 = !{!3120}
!3120 = distinct !{!3120, !3118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3121 = !{!3117, !3112, !3107, !3102, !3100}
!3122 = !{!3120, !3115, !3110, !3105, !3097}
!3123 = !{!3124}
!3124 = distinct !{!3124, !3125, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3125 = distinct !{!3125, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3126 = !{!3127}
!3127 = distinct !{!3127, !3128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!3128 = distinct !{!3128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!3129 = !{!3130}
!3130 = distinct !{!3130, !3128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!3131 = !{!3132}
!3132 = distinct !{!3132, !3133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3133 = distinct !{!3133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3134 = !{!3135}
!3135 = distinct !{!3135, !3133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3136 = !{!3137}
!3137 = distinct !{!3137, !3138, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3138 = distinct !{!3138, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3139 = !{!3140}
!3140 = distinct !{!3140, !3138, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3141 = !{!3142}
!3142 = distinct !{!3142, !3143, !"cmpfunc: %a"}
!3143 = distinct !{!3143, !"cmpfunc"}
!3144 = !{!3145}
!3145 = distinct !{!3145, !3143, !"cmpfunc: %b"}
!3146 = !{!3147}
!3147 = distinct !{!3147, !3148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3148 = distinct !{!3148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3149 = !{!3150}
!3150 = distinct !{!3150, !3148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3151 = !{!3147, !3142, !3137, !3132, !3130}
!3152 = !{!3150, !3145, !3140, !3135, !3127}
!3153 = !{!3154}
!3154 = distinct !{!3154, !3155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3155 = distinct !{!3155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3156 = !{!3157}
!3157 = distinct !{!3157, !3158, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!3158 = distinct !{!3158, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!3159 = !{!3160}
!3160 = distinct !{!3160, !3158, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!3161 = !{!3162}
!3162 = distinct !{!3162, !3163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3163 = distinct !{!3163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3164 = !{!3165}
!3165 = distinct !{!3165, !3163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3166 = !{!3167}
!3167 = distinct !{!3167, !3168, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3168 = distinct !{!3168, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3169 = !{!3170}
!3170 = distinct !{!3170, !3168, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3171 = !{!3172}
!3172 = distinct !{!3172, !3173, !"cmpfunc: %a"}
!3173 = distinct !{!3173, !"cmpfunc"}
!3174 = !{!3175}
!3175 = distinct !{!3175, !3173, !"cmpfunc: %b"}
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3178 = distinct !{!3178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3179 = !{!3180}
!3180 = distinct !{!3180, !3178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3181 = !{!3177, !3172, !3167, !3162, !3160}
!3182 = !{!3180, !3175, !3170, !3165, !3157}
!3183 = !{!3184}
!3184 = distinct !{!3184, !3185, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3185 = distinct !{!3185, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3188 = distinct !{!3188, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3189 = distinct !{!3189, !3190}
!3190 = !{!"llvm.loop.unroll.disable"}
!3191 = !{!3192}
!3192 = distinct !{!3192, !3193, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!3193 = distinct !{!3193, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!3194 = !{!3195}
!3195 = distinct !{!3195, !3193, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!3196 = !{!3197}
!3197 = distinct !{!3197, !3198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3198 = distinct !{!3198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3199 = !{!3200}
!3200 = distinct !{!3200, !3198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3201 = !{!3202}
!3202 = distinct !{!3202, !3203, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3203 = distinct !{!3203, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3204 = !{!3205}
!3205 = distinct !{!3205, !3203, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3206 = !{!3207}
!3207 = distinct !{!3207, !3208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3208 = distinct !{!3208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3209 = !{!3210}
!3210 = distinct !{!3210, !3208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3211 = !{!3207, !3205, !3200, !3192}
!3212 = !{!3210, !3202, !3197, !3195}
!3213 = !{!3214}
!3214 = distinct !{!3214, !3215, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3215 = distinct !{!3215, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3216 = !{!3217}
!3217 = distinct !{!3217, !3218, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!3218 = distinct !{!3218, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!3219 = !{!3220}
!3220 = distinct !{!3220, !3218, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!3221 = !{!3222}
!3222 = distinct !{!3222, !3223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3223 = distinct !{!3223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3224 = !{!3225}
!3225 = distinct !{!3225, !3223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3226 = !{!3227}
!3227 = distinct !{!3227, !3228, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3228 = distinct !{!3228, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3229 = !{!3230}
!3230 = distinct !{!3230, !3228, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3231 = !{!3232}
!3232 = distinct !{!3232, !3233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3233 = distinct !{!3233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3234 = !{!3235}
!3235 = distinct !{!3235, !3233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3236 = !{!3232, !3230, !3225, !3217}
!3237 = !{!3235, !3227, !3222, !3220}
!3238 = !{!3239}
!3239 = distinct !{!3239, !3240, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3240 = distinct !{!3240, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3241 = !{!3242}
!3242 = distinct !{!3242, !3243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!3243 = distinct !{!3243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!3244 = !{!3245}
!3245 = distinct !{!3245, !3243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!3246 = !{!3247}
!3247 = distinct !{!3247, !3248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3248 = distinct !{!3248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3249 = !{!3250}
!3250 = distinct !{!3250, !3248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3251 = !{!3252}
!3252 = distinct !{!3252, !3253, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3253 = distinct !{!3253, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3254 = !{!3255}
!3255 = distinct !{!3255, !3253, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3256 = !{!3257}
!3257 = distinct !{!3257, !3258, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3258 = distinct !{!3258, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3259 = !{!3260}
!3260 = distinct !{!3260, !3258, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3261 = !{!3257, !3255, !3250, !3242}
!3262 = !{!3260, !3252, !3247, !3245}
!3263 = !{!3264}
!3264 = distinct !{!3264, !3265, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3265 = distinct !{!3265, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3266 = !{!3267}
!3267 = distinct !{!3267, !3268, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!3268 = distinct !{!3268, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!3269 = !{!3270}
!3270 = distinct !{!3270, !3268, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!3271 = !{!3272}
!3272 = distinct !{!3272, !3273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3273 = distinct !{!3273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3274 = !{!3275}
!3275 = distinct !{!3275, !3273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3276 = !{!3277}
!3277 = distinct !{!3277, !3278, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3278 = distinct !{!3278, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3279 = !{!3280}
!3280 = distinct !{!3280, !3278, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3281 = !{!3282}
!3282 = distinct !{!3282, !3283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3283 = distinct !{!3283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3284 = !{!3285}
!3285 = distinct !{!3285, !3283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3286 = !{!3282, !3280, !3275, !3267}
!3287 = !{!3285, !3277, !3272, !3270}
!3288 = !{!3289}
!3289 = distinct !{!3289, !3290, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3290 = distinct !{!3290, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3291 = !{!3292}
!3292 = distinct !{!3292, !3293, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!3293 = distinct !{!3293, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!3294 = !{!3295}
!3295 = distinct !{!3295, !3293, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!3296 = !{!3297}
!3297 = distinct !{!3297, !3298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3298 = distinct !{!3298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3299 = !{!3300}
!3300 = distinct !{!3300, !3298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3301 = !{!3302}
!3302 = distinct !{!3302, !3303, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3303 = distinct !{!3303, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3304 = !{!3305}
!3305 = distinct !{!3305, !3303, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3306 = !{!3307}
!3307 = distinct !{!3307, !3308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3308 = distinct !{!3308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3309 = !{!3310}
!3310 = distinct !{!3310, !3308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3311 = !{!3307, !3305, !3300, !3292}
!3312 = !{!3310, !3302, !3297, !3295}
!3313 = !{!3314}
!3314 = distinct !{!3314, !3315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3315 = distinct !{!3315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3316 = !{!3317}
!3317 = distinct !{!3317, !3318, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3318 = distinct !{!3318, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3319 = distinct !{!3319, !3190}
!3320 = !{!3321}
!3321 = distinct !{!3321, !3322, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!3322 = distinct !{!3322, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!3323 = !{!3324}
!3324 = distinct !{!3324, !3322, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!3325 = !{!3326}
!3326 = distinct !{!3326, !3327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3327 = distinct !{!3327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3328 = !{!3329}
!3329 = distinct !{!3329, !3327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3330 = !{!3331}
!3331 = distinct !{!3331, !3332, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3332 = distinct !{!3332, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3333 = !{!3334}
!3334 = distinct !{!3334, !3332, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3335 = !{!3331, !3326, !3324}
!3336 = !{!3334, !3329, !3321}
!3337 = !{!3338}
!3338 = distinct !{!3338, !3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3339 = distinct !{!3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!3342 = distinct !{!3342, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!3343 = !{!3344}
!3344 = distinct !{!3344, !3342, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!3345 = !{!3346}
!3346 = distinct !{!3346, !3347, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3347 = distinct !{!3347, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3348 = !{!3349}
!3349 = distinct !{!3349, !3347, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3350 = !{!3351}
!3351 = distinct !{!3351, !3352, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3352 = distinct !{!3352, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3353 = !{!3354}
!3354 = distinct !{!3354, !3352, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3355 = !{!3351, !3346, !3344}
!3356 = !{!3354, !3349, !3341}
!3357 = !{!3358}
!3358 = distinct !{!3358, !3359, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3359 = distinct !{!3359, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3360 = !{!3361}
!3361 = distinct !{!3361, !3362, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!3362 = distinct !{!3362, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!3363 = !{!3364}
!3364 = distinct !{!3364, !3362, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!3365 = !{!3366}
!3366 = distinct !{!3366, !3367, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3367 = distinct !{!3367, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3368 = !{!3369}
!3369 = distinct !{!3369, !3367, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3372 = distinct !{!3372, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3373 = !{!3374}
!3374 = distinct !{!3374, !3372, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3375 = !{!3371, !3366, !3364}
!3376 = !{!3374, !3369, !3361}
!3377 = !{!3378}
!3378 = distinct !{!3378, !3379, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3379 = distinct !{!3379, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3380 = !{!3381}
!3381 = distinct !{!3381, !3382, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!3382 = distinct !{!3382, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!3383 = !{!3384}
!3384 = distinct !{!3384, !3382, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!3385 = !{!3386}
!3386 = distinct !{!3386, !3387, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3387 = distinct !{!3387, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3388 = !{!3389}
!3389 = distinct !{!3389, !3387, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3392 = distinct !{!3392, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3393 = !{!3394}
!3394 = distinct !{!3394, !3392, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3395 = !{!3391, !3386, !3384}
!3396 = !{!3394, !3389, !3381}
!3397 = !{!3398}
!3398 = distinct !{!3398, !3399, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3399 = distinct !{!3399, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3400 = !{!3401}
!3401 = distinct !{!3401, !3402, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!3402 = distinct !{!3402, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!3403 = !{!3404}
!3404 = distinct !{!3404, !3402, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!3405 = !{!3406}
!3406 = distinct !{!3406, !3407, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3407 = distinct !{!3407, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3408 = !{!3409}
!3409 = distinct !{!3409, !3407, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3410 = !{!3411}
!3411 = distinct !{!3411, !3412, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3412 = distinct !{!3412, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3413 = !{!3414}
!3414 = distinct !{!3414, !3412, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3415 = !{!3411, !3406, !3404}
!3416 = !{!3414, !3409, !3401}
!3417 = !{!3418}
!3418 = distinct !{!3418, !3419, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3419 = distinct !{!3419, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3422 = distinct !{!3422, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3423 = distinct !{!3423, !3190}
!3424 = !{!3425}
!3425 = distinct !{!3425, !3426, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3426 = distinct !{!3426, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3427 = !{!3428}
!3428 = distinct !{!3428, !3426, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3429 = !{!3430}
!3430 = distinct !{!3430, !3431, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3431 = distinct !{!3431, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3432 = !{!3433}
!3433 = distinct !{!3433, !3431, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3434 = !{!3430, !3425}
!3435 = !{!3433, !3428}
!3436 = !{!3437}
!3437 = distinct !{!3437, !3438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3438 = distinct !{!3438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3439 = !{!3440}
!3440 = distinct !{!3440, !3441, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3441 = distinct !{!3441, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3442 = !{!3443}
!3443 = distinct !{!3443, !3441, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3444 = !{!3445}
!3445 = distinct !{!3445, !3446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3446 = distinct !{!3446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3447 = !{!3448}
!3448 = distinct !{!3448, !3446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3449 = !{!3445, !3440}
!3450 = !{!3448, !3443}
!3451 = !{!3452}
!3452 = distinct !{!3452, !3453, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3453 = distinct !{!3453, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3454 = !{!3455}
!3455 = distinct !{!3455, !3456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3456 = distinct !{!3456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3457 = !{!3458}
!3458 = distinct !{!3458, !3456, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3459 = !{!3460}
!3460 = distinct !{!3460, !3461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3461 = distinct !{!3461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3462 = !{!3463}
!3463 = distinct !{!3463, !3461, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3464 = !{!3460, !3455}
!3465 = !{!3463, !3458}
!3466 = !{!3467}
!3467 = distinct !{!3467, !3468, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3468 = distinct !{!3468, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3469 = !{!3470}
!3470 = distinct !{!3470, !3471, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3471 = distinct !{!3471, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3472 = !{!3473}
!3473 = distinct !{!3473, !3471, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3474 = !{!3475}
!3475 = distinct !{!3475, !3476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3476 = distinct !{!3476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3477 = !{!3478}
!3478 = distinct !{!3478, !3476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3479 = !{!3475, !3470}
!3480 = !{!3478, !3473}
!3481 = !{!3482}
!3482 = distinct !{!3482, !3483, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3483 = distinct !{!3483, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3484 = !{!3485}
!3485 = distinct !{!3485, !3486, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3486 = distinct !{!3486, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3487 = !{!3488}
!3488 = distinct !{!3488, !3486, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3489 = !{!3490}
!3490 = distinct !{!3490, !3491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3491 = distinct !{!3491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3492 = !{!3493}
!3493 = distinct !{!3493, !3491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3494 = !{!3490, !3485}
!3495 = !{!3493, !3488}
!3496 = !{!3497}
!3497 = distinct !{!3497, !3498, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3498 = distinct !{!3498, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3499 = !{!3500}
!3500 = distinct !{!3500, !3501, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3501 = distinct !{!3501, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3502 = distinct !{!3502, !3190}
!3503 = !{!3504}
!3504 = distinct !{!3504, !3505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3505 = distinct !{!3505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3506 = !{!3507}
!3507 = distinct !{!3507, !3505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3508 = !{!3509}
!3509 = distinct !{!3509, !3510, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3510 = distinct !{!3510, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3511 = !{!3512}
!3512 = distinct !{!3512, !3510, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3513 = !{!3514}
!3514 = distinct !{!3514, !3515, !"cmpfunc: %a"}
!3515 = distinct !{!3515, !"cmpfunc"}
!3516 = !{!3517}
!3517 = distinct !{!3517, !3515, !"cmpfunc: %b"}
!3518 = !{!3519}
!3519 = distinct !{!3519, !3520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3520 = distinct !{!3520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3521 = !{!3522}
!3522 = distinct !{!3522, !3520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3523 = !{!3519, !3514, !3509, !3504}
!3524 = !{!3522, !3517, !3512, !3507}
!3525 = !{!3526}
!3526 = distinct !{!3526, !3527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3527 = distinct !{!3527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3528 = !{!3529}
!3529 = distinct !{!3529, !3530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3530 = distinct !{!3530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3531 = !{!3532}
!3532 = distinct !{!3532, !3530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3533 = !{!3534}
!3534 = distinct !{!3534, !3535, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3535 = distinct !{!3535, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3536 = !{!3537}
!3537 = distinct !{!3537, !3535, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3538 = !{!3539}
!3539 = distinct !{!3539, !3540, !"cmpfunc: %a"}
!3540 = distinct !{!3540, !"cmpfunc"}
!3541 = !{!3542}
!3542 = distinct !{!3542, !3540, !"cmpfunc: %b"}
!3543 = !{!3544}
!3544 = distinct !{!3544, !3545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3545 = distinct !{!3545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3546 = !{!3547}
!3547 = distinct !{!3547, !3545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3548 = !{!3544, !3539, !3534, !3529}
!3549 = !{!3547, !3542, !3537, !3532}
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3552 = distinct !{!3552, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3553 = !{!3554}
!3554 = distinct !{!3554, !3555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3555 = distinct !{!3555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3556 = !{!3557}
!3557 = distinct !{!3557, !3555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3558 = !{!3559}
!3559 = distinct !{!3559, !3560, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3560 = distinct !{!3560, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3561 = !{!3562}
!3562 = distinct !{!3562, !3560, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3563 = !{!3564}
!3564 = distinct !{!3564, !3565, !"cmpfunc: %a"}
!3565 = distinct !{!3565, !"cmpfunc"}
!3566 = !{!3567}
!3567 = distinct !{!3567, !3565, !"cmpfunc: %b"}
!3568 = !{!3569}
!3569 = distinct !{!3569, !3570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3570 = distinct !{!3570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3571 = !{!3572}
!3572 = distinct !{!3572, !3570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3573 = !{!3569, !3564, !3559, !3554}
!3574 = !{!3572, !3567, !3562, !3557}
!3575 = !{!3576}
!3576 = distinct !{!3576, !3577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3577 = distinct !{!3577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3578 = !{!3579}
!3579 = distinct !{!3579, !3580, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3580 = distinct !{!3580, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3581 = !{!3582}
!3582 = distinct !{!3582, !3580, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3583 = !{!3584}
!3584 = distinct !{!3584, !3585, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3585 = distinct !{!3585, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3586 = !{!3587}
!3587 = distinct !{!3587, !3585, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3588 = !{!3589}
!3589 = distinct !{!3589, !3590, !"cmpfunc: %a"}
!3590 = distinct !{!3590, !"cmpfunc"}
!3591 = !{!3592}
!3592 = distinct !{!3592, !3590, !"cmpfunc: %b"}
!3593 = !{!3594}
!3594 = distinct !{!3594, !3595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3595 = distinct !{!3595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3596 = !{!3597}
!3597 = distinct !{!3597, !3595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3598 = !{!3594, !3589, !3584, !3579}
!3599 = !{!3597, !3592, !3587, !3582}
!3600 = !{!3601}
!3601 = distinct !{!3601, !3602, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3602 = distinct !{!3602, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3603 = !{!3604}
!3604 = distinct !{!3604, !3605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3605 = distinct !{!3605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3606 = !{!3607}
!3607 = distinct !{!3607, !3605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3608 = !{!3609}
!3609 = distinct !{!3609, !3610, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3610 = distinct !{!3610, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3611 = !{!3612}
!3612 = distinct !{!3612, !3610, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3613 = !{!3614}
!3614 = distinct !{!3614, !3615, !"cmpfunc: %a"}
!3615 = distinct !{!3615, !"cmpfunc"}
!3616 = !{!3617}
!3617 = distinct !{!3617, !3615, !"cmpfunc: %b"}
!3618 = !{!3619}
!3619 = distinct !{!3619, !3620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3620 = distinct !{!3620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3621 = !{!3622}
!3622 = distinct !{!3622, !3620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3623 = !{!3619, !3614, !3609, !3604}
!3624 = !{!3622, !3617, !3612, !3607}
!3625 = !{!3626}
!3626 = distinct !{!3626, !3627, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3627 = distinct !{!3627, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3628 = !{!3629}
!3629 = distinct !{!3629, !3630, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3630 = distinct !{!3630, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3631 = distinct !{!3631, !3190}
!3632 = !{!3633}
!3633 = distinct !{!3633, !3634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3634 = distinct !{!3634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3635 = !{!3636}
!3636 = distinct !{!3636, !3634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3637 = !{!3638}
!3638 = distinct !{!3638, !3639, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3639 = distinct !{!3639, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3640 = !{!3641}
!3641 = distinct !{!3641, !3639, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3642 = !{!3643}
!3643 = distinct !{!3643, !3644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3644 = distinct !{!3644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3645 = !{!3646}
!3646 = distinct !{!3646, !3644, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3647 = !{!3643, !3641, !3636}
!3648 = !{!3646, !3638, !3633}
!3649 = !{!3650}
!3650 = distinct !{!3650, !3651, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3651 = distinct !{!3651, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3652 = !{!3653}
!3653 = distinct !{!3653, !3654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3654 = distinct !{!3654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3655 = !{!3656}
!3656 = distinct !{!3656, !3654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3657 = !{!3658}
!3658 = distinct !{!3658, !3659, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3659 = distinct !{!3659, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3660 = !{!3661}
!3661 = distinct !{!3661, !3659, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3662 = !{!3663}
!3663 = distinct !{!3663, !3664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3664 = distinct !{!3664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3665 = !{!3666}
!3666 = distinct !{!3666, !3664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3667 = !{!3663, !3661, !3656}
!3668 = !{!3666, !3658, !3653}
!3669 = !{!3670}
!3670 = distinct !{!3670, !3671, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3671 = distinct !{!3671, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3672 = !{!3673}
!3673 = distinct !{!3673, !3674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3674 = distinct !{!3674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3675 = !{!3676}
!3676 = distinct !{!3676, !3674, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3677 = !{!3678}
!3678 = distinct !{!3678, !3679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3679 = distinct !{!3679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3680 = !{!3681}
!3681 = distinct !{!3681, !3679, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3682 = !{!3683}
!3683 = distinct !{!3683, !3684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3684 = distinct !{!3684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3685 = !{!3686}
!3686 = distinct !{!3686, !3684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3687 = !{!3683, !3681, !3676}
!3688 = !{!3686, !3678, !3673}
!3689 = !{!3690}
!3690 = distinct !{!3690, !3691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3691 = distinct !{!3691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3692 = !{!3693}
!3693 = distinct !{!3693, !3694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3694 = distinct !{!3694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3695 = !{!3696}
!3696 = distinct !{!3696, !3694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3697 = !{!3698}
!3698 = distinct !{!3698, !3699, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3699 = distinct !{!3699, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3700 = !{!3701}
!3701 = distinct !{!3701, !3699, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3702 = !{!3703}
!3703 = distinct !{!3703, !3704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3704 = distinct !{!3704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3705 = !{!3706}
!3706 = distinct !{!3706, !3704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3707 = !{!3703, !3701, !3696}
!3708 = !{!3706, !3698, !3693}
!3709 = !{!3710}
!3710 = distinct !{!3710, !3711, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3711 = distinct !{!3711, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3712 = !{!3713}
!3713 = distinct !{!3713, !3714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3714 = distinct !{!3714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3715 = !{!3716}
!3716 = distinct !{!3716, !3714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3717 = !{!3718}
!3718 = distinct !{!3718, !3719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3719 = distinct !{!3719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3720 = !{!3721}
!3721 = distinct !{!3721, !3719, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3722 = !{!3723}
!3723 = distinct !{!3723, !3724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3724 = distinct !{!3724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3725 = !{!3726}
!3726 = distinct !{!3726, !3724, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3727 = !{!3723, !3721, !3716}
!3728 = !{!3726, !3718, !3713}
!3729 = !{!3730}
!3730 = distinct !{!3730, !3731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3731 = distinct !{!3731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3732 = !{!3733}
!3733 = distinct !{!3733, !3734, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!3734 = distinct !{!3734, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!3735 = distinct !{!3735, !3190}
!3736 = !{!3737}
!3737 = distinct !{!3737, !3738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3738 = distinct !{!3738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3739 = !{!3740}
!3740 = distinct !{!3740, !3738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3741 = !{!3742}
!3742 = distinct !{!3742, !3743, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3743 = distinct !{!3743, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3744 = !{!3745}
!3745 = distinct !{!3745, !3746, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E: %c"}
!3746 = distinct !{!3746, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E"}
!3747 = !{!3748}
!3748 = distinct !{!3748, !3743, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3749 = !{!3750}
!3750 = distinct !{!3750, !3751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3751 = distinct !{!3751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3752 = !{!3753}
!3753 = distinct !{!3753, !3751, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3754 = !{!3750, !3748, !3740, !3755}
!3755 = distinct !{!3755, !3756, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE: %v.0"}
!3756 = distinct !{!3756, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE"}
!3757 = !{!3753, !3742, !3737, !3745, !3758}
!3758 = distinct !{!3758, !3756, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE: %is_less"}
!3759 = !{!3753, !3742, !3737, !3755}
!3760 = !{!3750, !3748, !3740, !3745, !3758}
!3761 = !{!3762, !3764, !3766, !3755}
!3762 = distinct !{!3762, !3763, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3763 = distinct !{!3763, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3764 = distinct !{!3764, !3765, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3765 = distinct !{!3765, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3766 = distinct !{!3766, !3767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3767 = distinct !{!3767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3768 = !{!3769, !3770, !3771, !3758}
!3769 = distinct !{!3769, !3763, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3770 = distinct !{!3770, !3765, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3771 = distinct !{!3771, !3767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3772 = !{!3773, !3775, !3777}
!3773 = distinct !{!3773, !3774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3774 = distinct !{!3774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3775 = distinct !{!3775, !3776, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!3776 = distinct !{!3776, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!3777 = distinct !{!3777, !3778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!3778 = distinct !{!3778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!3779 = !{!3780, !3781, !3782}
!3780 = distinct !{!3780, !3774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3781 = distinct !{!3781, !3776, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!3782 = distinct !{!3782, !3778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!3783 = !{!3784, !3786}
!3784 = distinct !{!3784, !3785, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!3785 = distinct !{!3785, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!3786 = distinct !{!3786, !3785, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!3787 = !{!3788}
!3788 = distinct !{!3788, !3789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3789 = distinct !{!3789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3790 = !{!3791}
!3791 = distinct !{!3791, !3789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3792 = !{!3793}
!3793 = distinct !{!3793, !3794, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3794 = distinct !{!3794, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3795 = !{!3796}
!3796 = distinct !{!3796, !3797, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E: %c"}
!3797 = distinct !{!3797, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E"}
!3798 = !{!3799}
!3799 = distinct !{!3799, !3794, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3800 = !{!3801}
!3801 = distinct !{!3801, !3802, !"cmpfunc: %a"}
!3802 = distinct !{!3802, !"cmpfunc"}
!3803 = !{!3804}
!3804 = distinct !{!3804, !3802, !"cmpfunc: %b"}
!3805 = !{!3806}
!3806 = distinct !{!3806, !3807, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3807 = distinct !{!3807, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3808 = !{!3809}
!3809 = distinct !{!3809, !3807, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3810 = !{!3806, !3801, !3793, !3788, !3811}
!3811 = distinct !{!3811, !3812, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE: %v.0"}
!3812 = distinct !{!3812, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE"}
!3813 = !{!3809, !3804, !3799, !3791, !3796, !3814}
!3814 = distinct !{!3814, !3812, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE: %is_less"}
!3815 = !{!3809, !3804, !3799, !3791, !3811}
!3816 = !{!3806, !3801, !3793, !3788, !3796, !3814}
!3817 = !{!3818, !3820, !3822, !3824, !3811}
!3818 = distinct !{!3818, !3819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3819 = distinct !{!3819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3820 = distinct !{!3820, !3821, !"cmpfunc: %b"}
!3821 = distinct !{!3821, !"cmpfunc"}
!3822 = distinct !{!3822, !3823, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3823 = distinct !{!3823, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3824 = distinct !{!3824, !3825, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3825 = distinct !{!3825, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3826 = !{!3827, !3828, !3829, !3830, !3814}
!3827 = distinct !{!3827, !3819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3828 = distinct !{!3828, !3821, !"cmpfunc: %a"}
!3829 = distinct !{!3829, !3823, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3830 = distinct !{!3830, !3825, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3831 = !{!3832, !3834, !3836, !3838}
!3832 = distinct !{!3832, !3833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3833 = distinct !{!3833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3834 = distinct !{!3834, !3835, !"cmpfunc: %a"}
!3835 = distinct !{!3835, !"cmpfunc"}
!3836 = distinct !{!3836, !3837, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!3837 = distinct !{!3837, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!3838 = distinct !{!3838, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!3839 = distinct !{!3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = distinct !{!3841, !3833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3842 = distinct !{!3842, !3835, !"cmpfunc: %b"}
!3843 = distinct !{!3843, !3837, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!3844 = distinct !{!3844, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!3845 = !{!3846, !3848}
!3846 = distinct !{!3846, !3847, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!3847 = distinct !{!3847, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!3848 = distinct !{!3848, !3847, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!3849 = !{!3850}
!3850 = distinct !{!3850, !3851, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3851 = distinct !{!3851, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3852 = !{!3853}
!3853 = distinct !{!3853, !3851, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3854 = !{!3855}
!3855 = distinct !{!3855, !3856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3856 = distinct !{!3856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3857 = !{!3858}
!3858 = distinct !{!3858, !3859, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE: %c"}
!3859 = distinct !{!3859, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE"}
!3860 = !{!3861}
!3861 = distinct !{!3861, !3856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3862 = !{!3855, !3850, !3863}
!3863 = distinct !{!3863, !3864, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E: %v.0"}
!3864 = distinct !{!3864, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E"}
!3865 = !{!3861, !3853, !3858, !3866}
!3866 = distinct !{!3866, !3864, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E: %is_less"}
!3867 = !{!3861, !3853, !3863}
!3868 = !{!3855, !3850, !3858, !3866}
!3869 = !{!3870, !3872, !3863}
!3870 = distinct !{!3870, !3871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3871 = distinct !{!3871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3872 = distinct !{!3872, !3873, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3873 = distinct !{!3873, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3874 = !{!3875, !3876, !3866}
!3875 = distinct !{!3875, !3871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3876 = distinct !{!3876, !3873, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3877 = !{!3878, !3880}
!3878 = distinct !{!3878, !3879, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!3879 = distinct !{!3879, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!3880 = distinct !{!3880, !3881, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!3881 = distinct !{!3881, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!3882 = !{!3883, !3884}
!3883 = distinct !{!3883, !3879, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!3884 = distinct !{!3884, !3881, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!3885 = !{!3886, !3888}
!3886 = distinct !{!3886, !3887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!3887 = distinct !{!3887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!3888 = distinct !{!3888, !3887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!3889 = !{i64 0, i64 -9223372036854775808}
!3890 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!3891 = !{!3892}
!3892 = distinct !{!3892, !3893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3893 = distinct !{!3893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3894 = !{!3895}
!3895 = distinct !{!3895, !3893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3896 = !{!3897}
!3897 = distinct !{!3897, !3898, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E: %_0"}
!3898 = distinct !{!3898, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E"}
!3899 = !{!3900}
!3900 = distinct !{!3900, !3901, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E: %_0"}
!3901 = distinct !{!3901, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h24369e6265af6335E"}
!3902 = !{!3903, !3905}
!3903 = distinct !{!3903, !3904, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hfc432404af5ead1fE: %self"}
!3904 = distinct !{!3904, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hfc432404af5ead1fE"}
!3905 = distinct !{!3905, !3906, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE: %self"}
!3906 = distinct !{!3906, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE"}
!3907 = !{!3908}
!3908 = distinct !{!3908, !3909, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E: %self.0"}
!3909 = distinct !{!3909, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h5c7104025582fc03E"}
!3910 = !{!3911, !3913}
!3911 = distinct !{!3911, !3912, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hfc432404af5ead1fE: %self"}
!3912 = distinct !{!3912, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17hfc432404af5ead1fE"}
!3913 = distinct !{!3913, !3914, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE: %self"}
!3914 = distinct !{!3914, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h04920c1c41c1477bE"}
!3915 = !{!3916}
!3916 = distinct !{!3916, !3917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E: %self.0"}
!3917 = distinct !{!3917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E"}
!3918 = !{!3919, !3921, !3916}
!3919 = distinct !{!3919, !3920, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE: %v.0"}
!3920 = distinct !{!3920, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE"}
!3921 = distinct !{!3921, !3920, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE: argument 1"}
!3922 = !{!3923}
!3923 = distinct !{!3923, !3924, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE: %self"}
!3924 = distinct !{!3924, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE"}
!3925 = !{!3926}
!3926 = distinct !{!3926, !3927, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE: %self"}
!3927 = distinct !{!3927, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h046b8e30e366d14aE"}
!3928 = !{!3929, !3931}
!3929 = distinct !{!3929, !3930, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E: %self"}
!3930 = distinct !{!3930, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E"}
!3931 = distinct !{!3931, !3932, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E: %self"}
!3932 = distinct !{!3932, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E"}
!3933 = !{!3934, !3936}
!3934 = distinct !{!3934, !3935, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E: %self"}
!3935 = distinct !{!3935, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E"}
!3936 = distinct !{!3936, !3937, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E: %self"}
!3937 = distinct !{!3937, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17he78607ea553885e4E"}
!3938 = !{!3939}
!3939 = distinct !{!3939, !3940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE: %self.0"}
!3940 = distinct !{!3940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE"}
!3941 = !{!3942, !3944, !3939}
!3942 = distinct !{!3942, !3943, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E: %v.0"}
!3943 = distinct !{!3943, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E"}
!3944 = distinct !{!3944, !3943, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E: argument 1"}
