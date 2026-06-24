; ModuleID = 'MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.9f970eaebf144435-cgu.0'
source_filename = "MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.9f970eaebf144435-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_223eb087169168879892a78c1bd4e328 = private unnamed_addr constant [158 x i8] c"/root/es/vert/vert/rust_funcs/go_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.rs\00", align 1
@alloc_390ea9071b49ed4ab4959f8c81801f2f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_223eb087169168879892a78c1bd4e328, [16 x i8] c"\9D\00\00\00\00\00\00\00\1B\00\00\00\13\00\00\00" }>, align 8
@alloc_3a0728a11c48e5aa548d60738b00786f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_223eb087169168879892a78c1bd4e328, [16 x i8] c"\9D\00\00\00\00\00\00\00\1B\00\00\00#\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17ha58d6f9b8374d6c5E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33), !noalias !20
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !35, !noalias !36, !noundef !37
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !38, !noalias !39, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !40, !noalias !49, !noundef !37
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !noalias !62
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !72, !noalias !73, !noundef !37
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !74, !noalias !75, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !76, !noalias !83, !noundef !37
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92), !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100), !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103), !noalias !95
  %_3.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !105, !noalias !106, !noundef !37
  %_4.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !107, !noalias !108, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_3.i.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !109, !noalias !116, !noundef !37
  %_0.i7 = icmp slt i32 %_3.i.i.i5, %_4.i.i.i
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_3.i.i.i5, %_3.i.i.i
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %_3.i.i.i = load i32, ptr %tail, align 4, !alias.scope !135, !noalias !136, !noundef !37
  %_4.i.i.i = load i32, ptr %0, align 4, !alias.scope !136, !noalias !135, !noundef !37
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
  %_4.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !137, !noalias !144, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i, %_4.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !148
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %_3.i.i.i = load i32, ptr %0, align 4, !alias.scope !168, !noalias !169, !noundef !37
  %_4.i.i.i = load i32, ptr %tail, align 4, !alias.scope !169, !noalias !168, !noundef !37
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
  %_3.i.i.i1 = load i32, ptr %2, align 4, !alias.scope !170, !noalias !177, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !181
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !206, !noalias !207, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !207, !noalias !206, !noundef !37
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !208, !noalias !217, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !222
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1eb98a6df5e7f13eE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %_3.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !242, !noalias !243, !noundef !37
  %_4.i.i.i = load i32, ptr %_7, align 4, !alias.scope !243, !noalias !242, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %_3.i.i.i7 = load i32, ptr %_14, align 4, !alias.scope !259, !noalias !260, !noundef !37
  %_4.i.i.i8 = load i32, ptr %_12, align 4, !alias.scope !260, !noalias !259, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %_3.i.i.i10 = load i32, ptr %a, align 4, !alias.scope !276, !noalias !277, !noundef !37
  %_4.i.i.i11 = load i32, ptr %c, align 4, !alias.scope !277, !noalias !276, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i10, %_4.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %_3.i.i.i13 = load i32, ptr %b, align 4, !alias.scope !293, !noalias !294, !noundef !37
  %_4.i.i.i14 = load i32, ptr %d, align 4, !alias.scope !294, !noalias !293, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i13, %_4.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %_3.i.i.i16 = load i32, ptr %2, align 4, !alias.scope !310, !noalias !311, !noundef !37
  %_4.i.i.i17 = load i32, ptr %4, align 4, !alias.scope !311, !noalias !310, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3139685cc24df054E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %_3.i.i.i = load i32, ptr %_7, align 4, !alias.scope !327, !noalias !328, !noundef !37
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !328, !noalias !327, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %_3.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !344, !noalias !345, !noundef !37
  %_4.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !345, !noalias !344, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %_3.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !361, !noalias !362, !noundef !37
  %_4.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !362, !noalias !361, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i10, %_4.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %_3.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !378, !noalias !379, !noundef !37
  %_4.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !379, !noalias !378, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i13, %_4.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %_3.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !395, !noalias !396, !noundef !37
  %_4.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !396, !noalias !395, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8f9545d6e7f1fbd2E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !417, !noalias !418, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !418, !noalias !417, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !439, !noalias !440, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !440, !noalias !439, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !461, !noalias !462, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !462, !noalias !461, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !483, !noalias !484, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !484, !noalias !483, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !505, !noalias !506, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !506, !noalias !505, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %_3.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !522, !noalias !523, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !523, !noalias !522, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !539, !noalias !540, !noundef !37
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !540, !noalias !539, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !556, !noalias !557, !noundef !37
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !557, !noalias !556, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !573, !noalias !574, !noundef !37
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !574, !noalias !573, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !590, !noalias !591, !noundef !37
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !591, !noalias !590, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %_3.i.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !607, !noalias !608, !noundef !37
  %_4.i.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !608, !noalias !607, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %_3.i.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !624, !noalias !625, !noundef !37
  %_4.i.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !625, !noalias !624, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %_3.i.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !641, !noalias !642, !noundef !37
  %_4.i.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !642, !noalias !641, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %_3.i.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !658, !noalias !659, !noundef !37
  %_4.i.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !659, !noalias !658, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %_3.i.i.i16.i25 = load i32, ptr %12, align 4, !alias.scope !675, !noalias !676, !noundef !37
  %_4.i.i.i17.i26 = load i32, ptr %14, align 4, !alias.scope !676, !noalias !675, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696), !noalias !688
  %_3.i.i.i.i36 = load i32, ptr %scratch_base, align 4, !alias.scope !698, !noalias !699, !noundef !37
  %_4.i.i.i.i37 = load i32, ptr %_10, align 4, !alias.scope !700, !noalias !701, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i36, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36, i32 %_4.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !702
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !712
  %_3.i.i.i19.i = load i32, ptr %20, align 4, !alias.scope !722, !noalias !723, !noundef !37
  %_4.i.i.i20.i = load i32, ptr %21, align 4, !alias.scope !724, !noalias !725, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !726
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !688
  %_3.i.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !37
  %_4.i.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !742, !noalias !743, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !702
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !712
  %_3.i.i.i19.i.1 = load i32, ptr %26, align 4, !alias.scope !756, !noalias !757, !noundef !37
  %_4.i.i.i20.i.1 = load i32, ptr %25, align 4, !alias.scope !758, !noalias !759, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !726
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !688
  %_3.i.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !772, !noalias !773, !noundef !37
  %_4.i.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !774, !noalias !775, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !702
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !712
  %_3.i.i.i19.i.2 = load i32, ptr %31, align 4, !alias.scope !788, !noalias !789, !noundef !37
  %_4.i.i.i20.i.2 = load i32, ptr %30, align 4, !alias.scope !790, !noalias !791, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !726
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802), !noalias !688
  %_3.i.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !804, !noalias !805, !noundef !37
  %_4.i.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !806, !noalias !807, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !702
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816), !noalias !712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818), !noalias !712
  %_3.i.i.i19.i.3 = load i32, ptr %36, align 4, !alias.scope !820, !noalias !821, !noundef !37
  %_4.i.i.i20.i.3 = load i32, ptr %35, align 4, !alias.scope !822, !noalias !823, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !726
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !677
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !845, !noalias !846, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !846, !noalias !845, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !867, !noalias !868, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !868, !noalias !867, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !889, !noalias !890, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !890, !noalias !889, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !911, !noalias !912, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !912, !noalias !911, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !933, !noalias !934, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !934, !noalias !933, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !955, !noalias !956, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !956, !noalias !955, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !977, !noalias !978, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !978, !noalias !977, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !999, !noalias !1000, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !1000, !noalias !999, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !1021, !noalias !1022, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !1022, !noalias !1021, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !1043, !noalias !1044, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !1044, !noalias !1043, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !noalias !1056
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !1071, !noalias !1072, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !1073, !noalias !1074, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1075
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098), !noalias !1085
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !1100, !noalias !1101, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !1102, !noalias !1103, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1104
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120), !noalias !1056
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1122, !noalias !1123, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1124, !noalias !1125, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1075
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140), !noalias !1085
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1142, !noalias !1143, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1144, !noalias !1145, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1104
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160), !noalias !1056
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1162, !noalias !1163, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1164, !noalias !1165, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1075
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180), !noalias !1085
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1182, !noalias !1183, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1184, !noalias !1185, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1104
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200), !noalias !1056
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1202, !noalias !1203, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1204, !noalias !1205, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1075
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218), !noalias !1085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220), !noalias !1085
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1222, !noalias !1223, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1224, !noalias !1225, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1104
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1045
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1241, !noalias !1242, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !1242, !noalias !1241, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1258, !noalias !1259, !noundef !37
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1259, !noalias !1258, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1275, !noalias !1276, !noundef !37
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1276, !noalias !1275, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1292, !noalias !1293, !noundef !37
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1293, !noalias !1292, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1309, !noalias !1310, !noundef !37
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1310, !noalias !1309, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !1326, !noalias !1327, !noundef !37
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !1327, !noalias !1326, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !1343, !noalias !1344, !noundef !37
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !1344, !noalias !1343, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !1360, !noalias !1361, !noundef !37
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !1361, !noalias !1360, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !1377, !noalias !1378, !noundef !37
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !1378, !noalias !1377, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %_3.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !1394, !noalias !1395, !noundef !37
  %_4.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !1395, !noalias !1394, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415), !noalias !1407
  %_3.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !1417, !noalias !1418, !noundef !37
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !1419, !noalias !1420, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i36, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36, i32 %_4.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1421
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1431
  %_3.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !1441, !noalias !1442, !noundef !37
  %_4.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !1443, !noalias !1444, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1445
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457), !noalias !1407
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1459, !noalias !1460, !noundef !37
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1461, !noalias !1462, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1421
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1431
  %_3.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1475, !noalias !1476, !noundef !37
  %_4.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1477, !noalias !1478, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1445
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1407
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1491, !noalias !1492, !noundef !37
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1493, !noalias !1494, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1421
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1431
  %_3.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1507, !noalias !1508, !noundef !37
  %_4.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1509, !noalias !1510, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1445
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519), !noalias !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521), !noalias !1407
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1523, !noalias !1524, !noundef !37
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1525, !noalias !1526, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1421
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535), !noalias !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537), !noalias !1431
  %_3.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1539, !noalias !1540, !noundef !37
  %_4.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1541, !noalias !1542, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1445
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1396
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548), !noalias !1551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554), !noalias !1551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556), !noalias !1551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559), !noalias !1551
  %_3.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1561, !noalias !1562, !noundef !37
  %_4.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1563, !noalias !1564, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1565
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572), !noalias !1575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580), !noalias !1575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583), !noalias !1575
  %_3.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1585, !noalias !1586, !noundef !37
  %_4.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1587, !noalias !1588, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i19, %_4.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19, i32 %_4.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1589
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !824

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1596), !noalias !1599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602), !noalias !1599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604), !noalias !1599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607), !noalias !1599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609), !noalias !1599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1599
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1614, !noalias !1615, !noundef !37
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1616, !noalias !1617, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1618
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625), !noalias !1628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631), !noalias !1628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633), !noalias !1628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636), !noalias !1628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638), !noalias !1628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641), !noalias !1628
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1643, !noalias !1644, !noundef !37
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1645, !noalias !1646, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1647
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !824

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1654), !noalias !1657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660), !noalias !1657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1662), !noalias !1657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665), !noalias !1657
  %_3.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1667, !noalias !1668, !noundef !37
  %_4.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1669, !noalias !1670, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1671
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678), !noalias !1681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684), !noalias !1681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686), !noalias !1681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689), !noalias !1681
  %_3.i.i.i19 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1691, !noalias !1692, !noundef !37
  %_4.i.i.i20 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1693, !noalias !1694, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i19, %_4.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19, i32 %_4.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1695
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !824

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5478c093f613346bE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1712, !noalias !1713, !noundef !37
  %_4.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1713, !noalias !1712, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %4, align 4, !alias.scope !1714, !noalias !1721, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %_4.i.i.i.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1725
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he4589bf084543de7E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %_3.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1745, !noalias !1746, !noundef !37
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1746, !noalias !1745, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1747, !noalias !1754, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1758
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf239ca8a44a6c18fE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1783, !noalias !1784, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1784, !noalias !1783, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1785, !noalias !1794, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1799
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %_3.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1819, !noalias !1820, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1820, !noalias !1819, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_3.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !1836, !noalias !1837, !noundef !37
  %_4.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !1837, !noalias !1836, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %_3.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !1853, !noalias !1854, !noundef !37
  %_4.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !1854, !noalias !1853, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %_3.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !1870, !noalias !1871, !noundef !37
  %_4.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !1871, !noalias !1870, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %_3.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !1887, !noalias !1888, !noundef !37
  %_4.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !1888, !noalias !1887, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %_3.i.i.i.i14 = load i32, ptr %_27, align 4, !alias.scope !1904, !noalias !1905, !noundef !37
  %_4.i.i.i.i15 = load i32, ptr %_7.i13, align 4, !alias.scope !1905, !noalias !1904, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i14, %_4.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  %_3.i.i.i7.i19 = load i32, ptr %_14.i18, align 4, !alias.scope !1921, !noalias !1922, !noundef !37
  %_4.i.i.i8.i20 = load i32, ptr %_12.i17, align 4, !alias.scope !1922, !noalias !1921, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %_3.i.i.i10.i31 = load i32, ptr %a.i23, align 4, !alias.scope !1938, !noalias !1939, !noundef !37
  %_4.i.i.i11.i32 = load i32, ptr %c.i28, align 4, !alias.scope !1939, !noalias !1938, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i10.i31, %_4.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %_3.i.i.i13.i34 = load i32, ptr %b.i26, align 4, !alias.scope !1955, !noalias !1956, !noundef !37
  %_4.i.i.i14.i35 = load i32, ptr %d.i30, align 4, !alias.scope !1956, !noalias !1955, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i13.i34, %_4.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %_3.i.i.i16.i37 = load i32, ptr %12, align 4, !alias.scope !1972, !noalias !1973, !noundef !37
  %_4.i.i.i17.i38 = load i32, ptr %14, align 4, !alias.scope !1973, !noalias !1972, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1974
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1974, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985), !noalias !1988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991), !noalias !1988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993), !noalias !1988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996), !noalias !1988
  %_3.i.i.i.i49 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1998, !noalias !1999, !noundef !37
  %_4.i.i.i.i50 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2000, !noalias !2001, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i49, %_4.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i49, i32 %_4.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2002
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009), !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015), !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017), !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020), !noalias !2012
  %_3.i.i.i19.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2022, !noalias !2023, !noundef !37
  %_4.i.i.i20.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2024, !noalias !2025, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2026
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1977
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1977
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !824

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2028
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_3.i.i.i.i55 = load i32, ptr %41, align 4, !alias.scope !2033, !noalias !2040, !noundef !37
  %_0.i.i57 = icmp slt i32 %_3.i.i.i.i55, %40
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_3.i.i.i1.i = load i32, ptr %43, align 4, !alias.scope !2044, !noalias !2051, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i1.i, %40
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2055
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !2075, !noalias !2076, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2076, !noalias !2075, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !2092, !noalias !2093, !noundef !37
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !2093, !noalias !2092, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !2109, !noalias !2110, !noundef !37
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !2110, !noalias !2109, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !2126, !noalias !2127, !noundef !37
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !2127, !noalias !2126, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !2143, !noalias !2144, !noundef !37
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !2144, !noalias !2143, !noundef !37
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i, i32 %_4.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i, i32 %_4.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i, i32 %_4.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  %_3.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !2160, !noalias !2161, !noundef !37
  %_4.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !2161, !noalias !2160, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i14, %_4.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %_3.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !2177, !noalias !2178, !noundef !37
  %_4.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !2178, !noalias !2177, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %_3.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !2194, !noalias !2195, !noundef !37
  %_4.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !2195, !noalias !2194, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i10.i31, %_4.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  %_3.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2211, !noalias !2212, !noundef !37
  %_4.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2212, !noalias !2211, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i13.i34, %_4.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %_3.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2228, !noalias !2229, !noundef !37
  %_4.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2229, !noalias !2228, !noundef !37
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37, i32 %_4.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37, i32 %_4.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34, i32 %_4.i.i.i14.i35)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2230
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2230, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241), !noalias !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247), !noalias !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249), !noalias !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252), !noalias !2244
  %_3.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2254, !noalias !2255, !noundef !37
  %_4.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2256, !noalias !2257, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i49, %_4.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i49, i32 %_4.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2258
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265), !noalias !2268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271), !noalias !2268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273), !noalias !2268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276), !noalias !2268
  %_3.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2278, !noalias !2279, !noundef !37
  %_4.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2280, !noalias !2281, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2282
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2233
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2233
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !824

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2284
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2289, !noalias !2296, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2300, !noalias !2307, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2311
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !2336, !noalias !2337, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2337, !noalias !2336, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !2358, !noalias !2359, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !2359, !noalias !2358, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !2380, !noalias !2381, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !2381, !noalias !2380, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !2402, !noalias !2403, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !2403, !noalias !2402, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !2424, !noalias !2425, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !2425, !noalias !2424, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !2446, !noalias !2447, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !2447, !noalias !2446, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !2468, !noalias !2469, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !2469, !noalias !2468, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !2490, !noalias !2491, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !2491, !noalias !2490, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2512, !noalias !2513, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2513, !noalias !2512, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2534, !noalias !2535, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2535, !noalias !2534, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2536
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2536, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547), !noalias !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553), !noalias !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555), !noalias !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558), !noalias !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560), !noalias !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563), !noalias !2550
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2565, !noalias !2566, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2567, !noalias !2568, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2569
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576), !noalias !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582), !noalias !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584), !noalias !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587), !noalias !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2589), !noalias !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592), !noalias !2579
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2594, !noalias !2595, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2596, !noalias !2597, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2598
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2539
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2539
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !824

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2600
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2605, !noalias !2614, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2619, !noalias !2628, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2633
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hc1c2a334d7d9cd91E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2638
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2641, !noalias !2638, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2642, !noalias !2638, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2638
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2638, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2638
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2644
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2641, !noalias !2644, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2642, !noalias !2644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2644
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2644, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2644
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2647
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !2641, !noalias !2647, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !2642, !noalias !2647, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2647
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !2647, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !2647
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h0f365568e42842baE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %_3.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2665, !noalias !2666, !noundef !37
  %_4.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2666, !noalias !2665, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %_3.i.i.i1 = load i32, ptr %gep, align 4, !alias.scope !2682, !noalias !2683, !noundef !37
  %_4.i.i.i2 = load i32, ptr %0, align 4, !alias.scope !2683, !noalias !2682, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  %_3.i.i.i4 = load i32, ptr %gep25, align 4, !alias.scope !2699, !noalias !2700, !noundef !37
  %_4.i.i.i5 = load i32, ptr %2, align 4, !alias.scope !2700, !noalias !2699, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2701, !noalias !2706, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2708, !noalias !2709
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2701, !noalias !2706
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2708, !noalias !2709
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2701, !noalias !2706, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2708, !noalias !2709
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2701, !noalias !2706
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2708, !noalias !2709
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2701, !noalias !2706, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2708, !noalias !2709
  store i32 %14, ptr %gep27, align 4, !alias.scope !2701, !noalias !2706
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2708, !noalias !2709
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2730, !noalias !2731, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2731, !noalias !2730, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !2752, !noalias !2753, !noundef !37
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2753, !noalias !2752, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !2774, !noalias !2775, !noundef !37
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2775, !noalias !2774, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2776, !noalias !2781, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2783, !noalias !2784
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2776, !noalias !2781
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2783, !noalias !2784
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2776, !noalias !2781, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2783, !noalias !2784
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2776, !noalias !2781
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2783, !noalias !2784
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2776, !noalias !2781, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2783, !noalias !2784
  store i32 %14, ptr %gep27, align 4, !alias.scope !2776, !noalias !2781
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2783, !noalias !2784
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %_3.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2800, !noalias !2801, !noundef !37
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2801, !noalias !2800, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  %_3.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !2817, !noalias !2818, !noundef !37
  %_4.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2818, !noalias !2817, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  %_3.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !2834, !noalias !2835, !noundef !37
  %_4.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2835, !noalias !2834, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2836, !noalias !2841, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2843, !noalias !2844
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2836, !noalias !2841
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2843, !noalias !2844
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2836, !noalias !2841, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2843, !noalias !2844
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2836, !noalias !2841
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2843, !noalias !2844
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2836, !noalias !2841, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2843, !noalias !2844
  store i32 %14, ptr %gep27, align 4, !alias.scope !2836, !noalias !2841
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2843, !noalias !2844
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h31b40a91155d1a37E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h36d5f62234131c66E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hdc2434fb05cc41f1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !37
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2850
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %_3.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2866, !noalias !2867, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2870, !noalias !2871, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2845, !noalias !2872
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2888, !noalias !2889, !noundef !37
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2892, !noalias !2893, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2845, !noalias !2894
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2850, !noalias !2895
  br label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit

_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !37
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2905
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  %_3.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2921, !noalias !2922, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2925, !noalias !2926, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %14 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2900, !noalias !2927
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %_3.i.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2943, !noalias !2944, !noundef !37
  %_4.i.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2947, !noalias !2948, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2900, !noalias !2949
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2905, !noalias !2950
  br label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit

_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !37
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2960
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2981, !noalias !2982, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2985, !noalias !2986, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2955, !noalias !2987
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !3008, !noalias !3009, !noundef !37
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !3012, !noalias !3013, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2955, !noalias !3014
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2960, !noalias !3015
  br label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit

_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !3035, !noalias !3036, !noundef !37
  %_4.i.i.i = load i32, ptr %3, align 4, !alias.scope !3036, !noalias !3035, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !3052, !noalias !3053, !noundef !37
  %_4.i.i.i = load i32, ptr %4, align 4, !alias.scope !3053, !noalias !3052, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !3074, !noalias !3075, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3075, !noalias !3074, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %_3.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !3091, !noalias !3092, !noundef !37
  %_4.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !3092, !noalias !3091, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  %_3.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !3108, !noalias !3109, !noundef !37
  %_4.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !3109, !noalias !3108, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !3130, !noalias !3131, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !3131, !noalias !3130, !noundef !37
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
define void @_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %_3.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3147, !noalias !3148, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3151, !noalias !3152, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %5 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3153
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  %_3.i.i.i.i12 = load i32, ptr %_2059.i, align 4, !alias.scope !3169, !noalias !3170, !noundef !37
  %_4.i.i.i.i13 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3173, !noalias !3174, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i12, %_4.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i12, i32 %_4.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !3175
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !3176
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %_3.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3196, !noalias !3197, !noundef !37
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3200, !noalias !3201, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3202
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  %_3.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3218, !noalias !3219, !noundef !37
  %_4.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !3222, !noalias !3223, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i12, %_4.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12, i32 %_4.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !3224
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !3225
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3250, !noalias !3251, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3254, !noalias !3255, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3256
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3275)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3277, !noalias !3278, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !3281, !noalias !3282, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !3283
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !3284
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h065fd2052a4ec0b0E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3310, !noalias !3311, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3311, !noalias !3310, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !3312
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3335, !noalias !3336, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3336, !noalias !3335, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3337
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3358)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3360, !noalias !3361, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3361, !noalias !3360, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3362
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3385, !noalias !3386, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3386, !noalias !3385, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3387
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3408)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3410, !noalias !3411, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3411, !noalias !3410, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3412
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3415
  store i32 %13, ptr %dst.i68, align 4, !noalias !3415
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3418

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0dbffb0b826718d6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3435, !noalias !3436, !noundef !37
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3436, !noalias !3435, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !3437
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3455, !noalias !3456, !noundef !37
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3456, !noalias !3455, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !3457
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3475, !noalias !3476, !noundef !37
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3476, !noalias !3475, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !3477
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3495, !noalias !3496, !noundef !37
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3496, !noalias !3495, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !3497
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3515, !noalias !3516, !noundef !37
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3516, !noalias !3515, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !3517
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3520
  store i32 %13, ptr %dst.i68, align 4, !noalias !3520
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3523

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3547)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3549, !noalias !3550, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3550, !noalias !3549, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !3551
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3577)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3579, !noalias !3580, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3580, !noalias !3579, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !3581
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3609, !noalias !3610, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3610, !noalias !3609, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !3611
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3639, !noalias !3640, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3640, !noalias !3639, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !3641
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3669, !noalias !3670, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3670, !noalias !3669, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3671
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3674
  store i32 %13, ptr %dst.i68, align 4, !noalias !3674
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3677

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  %_3.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3698, !noalias !3699, !noundef !37
  %_4.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3699, !noalias !3698, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i, ptr %dst.i, align 4, !noalias !3700
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  %_3.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3723, !noalias !3724, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3724, !noalias !3723, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i26, ptr %dst.i31, align 4, !noalias !3725
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3746)
  %_3.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3748, !noalias !3749, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3749, !noalias !3748, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i36, ptr %dst.i41, align 4, !noalias !3750
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3771)
  %_3.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3773, !noalias !3774, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3774, !noalias !3773, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i46, ptr %dst.i51, align 4, !noalias !3775
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %_3.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3798, !noalias !3799, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3799, !noalias !3798, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3800
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3803
  store i32 %13, ptr %dst.i68, align 4, !noalias !3803
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3806

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3825)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3827, !noalias !3828, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3828, !noalias !3827, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !3829
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3850)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3852, !noalias !3853, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3853, !noalias !3852, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3854
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3877, !noalias !3878, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3878, !noalias !3877, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3879
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3902, !noalias !3903, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3903, !noalias !3902, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3904
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3927, !noalias !3928, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3928, !noalias !3927, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3929
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3932
  store i32 %13, ptr %dst.i68, align 4, !noalias !3932
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3935

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h81f5758e343580d8E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !3289

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  %_3.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3951, !noalias !3952, !noundef !37
  %_4.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3952, !noalias !3951, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i, ptr %dst.i, align 4, !noalias !3953
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3969)
  %_3.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3971, !noalias !3972, !noundef !37
  %_4.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3972, !noalias !3971, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i25, ptr %dst.i31, align 4, !noalias !3973
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %_3.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3991, !noalias !3992, !noundef !37
  %_4.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3992, !noalias !3991, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i35, ptr %dst.i41, align 4, !noalias !3993
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  %_3.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !4011, !noalias !4012, !noundef !37
  %_4.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !4012, !noalias !4011, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i45, ptr %dst.i51, align 4, !noalias !4013
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4029)
  %_3.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !4031, !noalias !4032, !noundef !37
  %_4.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !4032, !noalias !4031, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i55, ptr %dst.i61, align 4, !noalias !4033
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !4036
  store i32 %13, ptr %dst.i68, align 4, !noalias !4036
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !4039

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !37
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !37
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  call void @llvm.experimental.noalias.scope.decl(metadata !4045), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4051), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4053), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4056), !noalias !4048
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !4058, !noalias !4061, !noundef !37
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !4063, !noalias !4064, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !4065, !noalias !4072, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !37
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E.exit
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4076, !noalias !4083, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h81f5758e343580d8E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4087
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2643

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  call void @llvm.experimental.noalias.scope.decl(metadata !4096), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4102), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4104), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4107), !noalias !4099
  %_3.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !4109, !noalias !4112, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !4114, !noalias !4115, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_3.i.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !4116, !noalias !4123, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i5.i, %_4.i.i.i.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_3.i.i.i5.i, %_3.i.i.i.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !37
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E.exit
  %_4.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4127, !noalias !4134, !noundef !37
  %_0.i.not = icmp slt i32 %value, %_4.i.i.i
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0dbffb0b826718d6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4138
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2643

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  call void @llvm.experimental.noalias.scope.decl(metadata !4147), !noalias !4150
  call void @llvm.experimental.noalias.scope.decl(metadata !4153), !noalias !4150
  call void @llvm.experimental.noalias.scope.decl(metadata !4155), !noalias !4150
  call void @llvm.experimental.noalias.scope.decl(metadata !4158), !noalias !4150
  call void @llvm.experimental.noalias.scope.decl(metadata !4160), !noalias !4150
  call void @llvm.experimental.noalias.scope.decl(metadata !4163), !noalias !4150
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !4165, !noalias !4168, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !4170, !noalias !4171, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !4172, !noalias !4181, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !37
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4186, !noalias !4195, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h065fd2052a4ec0b0E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4200
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !2643

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !2641, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !2642, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hffd0da1f9aeed884E.exit", !prof !2643

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hffd0da1f9aeed884E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !37, !noundef !37
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h8cc1d4b419e93662E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !4204, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h821c791fa61a3feeE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !37
  %_5 = load ptr, ptr %self, align 8, !noundef !37
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdea9ce6810523ed2E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !37
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !4205, !noalias !4208, !noundef !37
  %_4.i = load i32, ptr %b, align 4, !alias.scope !4208, !noalias !4205, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !4213
  %b.i.i = icmp samesign ult i64 %A.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %A.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he4589bf084543de7E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !4218
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !4221
  %b.i.i6 = icmp samesign ult i64 %B.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb7.i.i7, !prof !4217

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"
  %b1.i.i8 = icmp samesign ult i64 %B.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !4217

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5478c093f613346bE(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", %bb10.i.i9, %bb9.i.i10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !4218
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_0.i.i.i15 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i15, label %bb7, label %bb8

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", %bb10
  %spec.select18 = phi i32 [ %spec.select, %bb10 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %result.sroa.0.017 = phi i32 [ %3, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %iter.sroa.0.016 = phi i32 [ %spec.select18, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ]
  %_15 = zext nneg i32 %iter.sroa.0.016 to i64
  %_17 = icmp samesign ugt i64 %A.1, %_15
  br i1 %_17, label %bb9, label %panic

bb8:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ], [ %3, %bb10 ]
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb7
  %0 = xor i32 %iter.sroa.0.016, -1
  %_20 = add i32 %n, %0
  %_19 = sext i32 %_20 to i64
  %_23 = icmp ugt i64 %B.1, %_19
  br i1 %_23, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %A.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_390ea9071b49ed4ab4959f8c81801f2f) #24
  unreachable

bb10:                                             ; preds = %bb9
  %1 = getelementptr inbounds nuw i32, ptr %A.0, i64 %_15
  %_14 = load i32, ptr %1, align 4, !noundef !37
  %2 = getelementptr inbounds nuw i32, ptr %B.0, i64 %_19
  %_18 = load i32, ptr %2, align 4, !noundef !37
  %_13 = mul i32 %_18, %_14
  %3 = add i32 %_13, %result.sroa.0.017
  %_0.i.i.i = icmp slt i32 %spec.select18, %n
  %4 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select18, %4
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %B.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3a0728a11c48e5aa548d60738b00786f) #24
  unreachable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4225
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !4228
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc1c2a334d7d9cd91E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf239ca8a44a6c18fE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4225
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

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #3

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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17he446f0ead8910bb9E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17he446f0ead8910bb9E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17he446f0ead8910bb9E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17he446f0ead8910bb9E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17he446f0ead8910bb9E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"cmpfunc: %a"}
!27 = distinct !{!27, !"cmpfunc"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"cmpfunc: %b"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!32 = distinct !{!32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!35 = !{!31, !26, !18, !13}
!36 = !{!34, !29, !24, !16, !21}
!37 = !{}
!38 = !{!34, !29, !24, !16}
!39 = !{!31, !26, !18, !13, !21}
!40 = !{!41, !43, !45, !47}
!41 = distinct !{!41, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!42 = distinct !{!42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!43 = distinct !{!43, !44, !"cmpfunc: %b"}
!44 = distinct !{!44, !"cmpfunc"}
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!61 = distinct !{!61, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!69 = distinct !{!69, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!72 = !{!68, !60, !55}
!73 = !{!71, !66, !58, !63}
!74 = !{!71, !66, !58}
!75 = !{!68, !60, !55, !63}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!78 = distinct !{!78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!79 = distinct !{!79, !80, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!80 = distinct !{!80, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!81 = distinct !{!81, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!82 = distinct !{!82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!83 = !{!84, !85, !86}
!84 = distinct !{!84, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!85 = distinct !{!85, !80, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!86 = distinct !{!86, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!94 = distinct !{!94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE: %c"}
!97 = distinct !{!97, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE"}
!98 = !{!99}
!99 = distinct !{!99, !94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!102 = distinct !{!102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!105 = !{!101, !99, !91}
!106 = !{!104, !93, !88, !96}
!107 = !{!104, !93, !88}
!108 = !{!101, !99, !91, !96}
!109 = !{!110, !112, !114}
!110 = distinct !{!110, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!111 = distinct !{!111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!112 = distinct !{!112, !113, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!113 = distinct !{!113, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!116 = !{!117, !118, !119}
!117 = distinct !{!117, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!118 = distinct !{!118, !113, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!119 = distinct !{!119, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!122 = distinct !{!122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!127 = distinct !{!127, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!132 = distinct !{!132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!135 = !{!131, !126, !121}
!136 = !{!134, !129, !124}
!137 = !{!138, !140, !142}
!138 = distinct !{!138, !139, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!139 = distinct !{!139, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!140 = distinct !{!140, !141, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!141 = distinct !{!141, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!142 = distinct !{!142, !143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!143 = distinct !{!143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!144 = !{!145, !146, !147}
!145 = distinct !{!145, !139, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!146 = distinct !{!146, !141, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!147 = distinct !{!147, !143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!150 = distinct !{!150, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!151 = distinct !{!151, !152, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!152 = distinct !{!152, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!155 = distinct !{!155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!160 = distinct !{!160, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!165 = distinct !{!165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!168 = !{!164, !162, !157}
!169 = !{!167, !159, !154}
!170 = !{!171, !173, !175}
!171 = distinct !{!171, !172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!172 = distinct !{!172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!173 = distinct !{!173, !174, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!174 = distinct !{!174, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!175 = distinct !{!175, !176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!176 = distinct !{!176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!177 = !{!178, !179, !180}
!178 = distinct !{!178, !172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!179 = distinct !{!179, !174, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!180 = distinct !{!180, !176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!183 = distinct !{!183, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!184 = distinct !{!184, !185, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!185 = distinct !{!185, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!188 = distinct !{!188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!193 = distinct !{!193, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"cmpfunc: %a"}
!198 = distinct !{!198, !"cmpfunc"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"cmpfunc: %b"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!203 = distinct !{!203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!206 = !{!202, !197, !192, !187}
!207 = !{!205, !200, !195, !190}
!208 = !{!209, !211, !213, !215}
!209 = distinct !{!209, !210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!210 = distinct !{!210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!211 = distinct !{!211, !212, !"cmpfunc: %b"}
!212 = distinct !{!212, !"cmpfunc"}
!213 = distinct !{!213, !214, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!214 = distinct !{!214, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!215 = distinct !{!215, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!216 = distinct !{!216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!217 = !{!218, !219, !220, !221}
!218 = distinct !{!218, !210, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!219 = distinct !{!219, !212, !"cmpfunc: %a"}
!220 = distinct !{!220, !214, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!221 = distinct !{!221, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!224 = distinct !{!224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!225 = distinct !{!225, !226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!226 = distinct !{!226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!234 = distinct !{!234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!239 = distinct !{!239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!242 = !{!238, !236, !231}
!243 = !{!241, !233, !228}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!246 = distinct !{!246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!251 = distinct !{!251, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!256 = distinct !{!256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!259 = !{!255, !253, !248}
!260 = !{!258, !250, !245}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!263 = distinct !{!263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!268 = distinct !{!268, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!273 = distinct !{!273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!276 = !{!272, !270, !265}
!277 = !{!275, !267, !262}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!280 = distinct !{!280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!285 = distinct !{!285, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!286 = !{!287}
!287 = distinct !{!287, !285, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!290 = distinct !{!290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!293 = !{!289, !287, !282}
!294 = !{!292, !284, !279}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!297 = distinct !{!297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!302 = distinct !{!302, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!307 = distinct !{!307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!310 = !{!306, !304, !299}
!311 = !{!309, !301, !296}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!314 = distinct !{!314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!319 = distinct !{!319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!324 = distinct !{!324, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!327 = !{!323, !318, !313}
!328 = !{!326, !321, !316}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!331 = distinct !{!331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!336 = distinct !{!336, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!341 = distinct !{!341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!344 = !{!340, !335, !330}
!345 = !{!343, !338, !333}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!348 = distinct !{!348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!353 = distinct !{!353, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!358 = distinct !{!358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!361 = !{!357, !352, !347}
!362 = !{!360, !355, !350}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!365 = distinct !{!365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!370 = distinct !{!370, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!375 = distinct !{!375, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!376 = !{!377}
!377 = distinct !{!377, !375, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!378 = !{!374, !369, !364}
!379 = !{!377, !372, !367}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!382 = distinct !{!382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!387 = distinct !{!387, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!392 = distinct !{!392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!395 = !{!391, !386, !381}
!396 = !{!394, !389, !384}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!399 = distinct !{!399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!400 = !{!401}
!401 = distinct !{!401, !399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!404 = distinct !{!404, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!405 = !{!406}
!406 = distinct !{!406, !404, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"cmpfunc: %a"}
!409 = distinct !{!409, !"cmpfunc"}
!410 = !{!411}
!411 = distinct !{!411, !409, !"cmpfunc: %b"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!414 = distinct !{!414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!417 = !{!413, !408, !403, !398}
!418 = !{!416, !411, !406, !401}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!421 = distinct !{!421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!422 = !{!423}
!423 = distinct !{!423, !421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!426 = distinct !{!426, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"cmpfunc: %a"}
!431 = distinct !{!431, !"cmpfunc"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"cmpfunc: %b"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!436 = distinct !{!436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!439 = !{!435, !430, !425, !420}
!440 = !{!438, !433, !428, !423}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!443 = distinct !{!443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!448 = distinct !{!448, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"cmpfunc: %a"}
!453 = distinct !{!453, !"cmpfunc"}
!454 = !{!455}
!455 = distinct !{!455, !453, !"cmpfunc: %b"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!458 = distinct !{!458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!461 = !{!457, !452, !447, !442}
!462 = !{!460, !455, !450, !445}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!465 = distinct !{!465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!470 = distinct !{!470, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!471 = !{!472}
!472 = distinct !{!472, !470, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"cmpfunc: %a"}
!475 = distinct !{!475, !"cmpfunc"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"cmpfunc: %b"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!480 = distinct !{!480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!483 = !{!479, !474, !469, !464}
!484 = !{!482, !477, !472, !467}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!487 = distinct !{!487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!488 = !{!489}
!489 = distinct !{!489, !487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!492 = distinct !{!492, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"cmpfunc: %a"}
!497 = distinct !{!497, !"cmpfunc"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"cmpfunc: %b"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!502 = distinct !{!502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!503 = !{!504}
!504 = distinct !{!504, !502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!505 = !{!501, !496, !491, !486}
!506 = !{!504, !499, !494, !489}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!509 = distinct !{!509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!514 = distinct !{!514, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!519 = distinct !{!519, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!520 = !{!521}
!521 = distinct !{!521, !519, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!522 = !{!518, !516, !511}
!523 = !{!521, !513, !508}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!526 = distinct !{!526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!531 = distinct !{!531, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!532 = !{!533}
!533 = distinct !{!533, !531, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!536 = distinct !{!536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!539 = !{!535, !533, !528}
!540 = !{!538, !530, !525}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!543 = distinct !{!543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!544 = !{!545}
!545 = distinct !{!545, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!548 = distinct !{!548, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!549 = !{!550}
!550 = distinct !{!550, !548, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!553 = distinct !{!553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!556 = !{!552, !550, !545}
!557 = !{!555, !547, !542}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!565 = distinct !{!565, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!570 = distinct !{!570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!573 = !{!569, !567, !562}
!574 = !{!572, !564, !559}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!577 = distinct !{!577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!582 = distinct !{!582, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!587 = distinct !{!587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!590 = !{!586, !584, !579}
!591 = !{!589, !581, !576}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!594 = distinct !{!594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!599 = distinct !{!599, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!604 = distinct !{!604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!607 = !{!603, !601, !596}
!608 = !{!606, !598, !593}
!609 = !{!610}
!610 = distinct !{!610, !611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!611 = distinct !{!611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!616 = distinct !{!616, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!617 = !{!618}
!618 = distinct !{!618, !616, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!621 = distinct !{!621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!622 = !{!623}
!623 = distinct !{!623, !621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!624 = !{!620, !618, !613}
!625 = !{!623, !615, !610}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!628 = distinct !{!628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!633 = distinct !{!633, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!638 = distinct !{!638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!641 = !{!637, !635, !630}
!642 = !{!640, !632, !627}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!645 = distinct !{!645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!650 = distinct !{!650, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!651 = !{!652}
!652 = distinct !{!652, !650, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!655 = distinct !{!655, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!656 = !{!657}
!657 = distinct !{!657, !655, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!658 = !{!654, !652, !647}
!659 = !{!657, !649, !644}
!660 = !{!661}
!661 = distinct !{!661, !662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!662 = distinct !{!662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!663 = !{!664}
!664 = distinct !{!664, !662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!667 = distinct !{!667, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!672 = distinct !{!672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!675 = !{!671, !669, !664}
!676 = !{!674, !666, !661}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E: %v.0"}
!679 = distinct !{!679, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!682 = distinct !{!682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!687 = distinct !{!687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %_0"}
!690 = distinct !{!690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE"}
!691 = !{!692}
!692 = distinct !{!692, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!695 = distinct !{!695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!698 = !{!694, !692, !684, !678}
!699 = !{!697, !686, !681, !689}
!700 = !{!697, !686, !681, !678}
!701 = !{!694, !692, !684, !689}
!702 = !{!689, !703, !678}
!703 = distinct !{!703, !690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %is_less"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!706 = distinct !{!706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!709 = !{!710}
!710 = distinct !{!710, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!711 = distinct !{!711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %_0"}
!714 = distinct !{!714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E"}
!715 = !{!716}
!716 = distinct !{!716, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!719 = distinct !{!719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!722 = !{!718, !716, !708, !678}
!723 = !{!721, !710, !705, !713}
!724 = !{!721, !710, !705, !678}
!725 = !{!718, !716, !708, !713}
!726 = !{!713, !727, !678}
!727 = distinct !{!727, !714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %is_less"}
!728 = !{!729}
!729 = distinct !{!729, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It1"}
!730 = !{!731}
!731 = distinct !{!731, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It1"}
!732 = !{!733}
!733 = distinct !{!733, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It1"}
!734 = !{!735}
!735 = distinct !{!735, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It1"}
!736 = !{!737}
!737 = distinct !{!737, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!738 = !{!739}
!739 = distinct !{!739, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!740 = !{!737, !735, !731, !678}
!741 = !{!739, !733, !729, !689}
!742 = !{!739, !733, !729, !678}
!743 = !{!737, !735, !731, !689}
!744 = !{!745}
!745 = distinct !{!745, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It1"}
!746 = !{!747}
!747 = distinct !{!747, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It1"}
!748 = !{!749}
!749 = distinct !{!749, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It1"}
!750 = !{!751}
!751 = distinct !{!751, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It1"}
!752 = !{!753}
!753 = distinct !{!753, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!754 = !{!755}
!755 = distinct !{!755, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!756 = !{!753, !751, !747, !678}
!757 = !{!755, !749, !745, !713}
!758 = !{!755, !749, !745, !678}
!759 = !{!753, !751, !747, !713}
!760 = !{!761}
!761 = distinct !{!761, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It2"}
!762 = !{!763}
!763 = distinct !{!763, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It2"}
!764 = !{!765}
!765 = distinct !{!765, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It2"}
!766 = !{!767}
!767 = distinct !{!767, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It2"}
!768 = !{!769}
!769 = distinct !{!769, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!770 = !{!771}
!771 = distinct !{!771, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!772 = !{!769, !767, !763, !678}
!773 = !{!771, !765, !761, !689}
!774 = !{!771, !765, !761, !678}
!775 = !{!769, !767, !763, !689}
!776 = !{!777}
!777 = distinct !{!777, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It2"}
!778 = !{!779}
!779 = distinct !{!779, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It2"}
!780 = !{!781}
!781 = distinct !{!781, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It2"}
!782 = !{!783}
!783 = distinct !{!783, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It2"}
!784 = !{!785}
!785 = distinct !{!785, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!786 = !{!787}
!787 = distinct !{!787, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!788 = !{!785, !783, !779, !678}
!789 = !{!787, !781, !777, !713}
!790 = !{!787, !781, !777, !678}
!791 = !{!785, !783, !779, !713}
!792 = !{!793}
!793 = distinct !{!793, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It3"}
!794 = !{!795}
!795 = distinct !{!795, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It3"}
!796 = !{!797}
!797 = distinct !{!797, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It3"}
!798 = !{!799}
!799 = distinct !{!799, !687, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It3"}
!800 = !{!801}
!801 = distinct !{!801, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!802 = !{!803}
!803 = distinct !{!803, !695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!804 = !{!801, !799, !795, !678}
!805 = !{!803, !797, !793, !689}
!806 = !{!803, !797, !793, !678}
!807 = !{!801, !799, !795, !689}
!808 = !{!809}
!809 = distinct !{!809, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It3"}
!810 = !{!811}
!811 = distinct !{!811, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It3"}
!812 = !{!813}
!813 = distinct !{!813, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It3"}
!814 = !{!815}
!815 = distinct !{!815, !711, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It3"}
!816 = !{!817}
!817 = distinct !{!817, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!818 = !{!819}
!819 = distinct !{!819, !719, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!820 = !{!817, !815, !811, !678}
!821 = !{!819, !813, !809, !713}
!822 = !{!819, !813, !809, !678}
!823 = !{!817, !815, !811, !713}
!824 = !{!"branch_weights", i32 4001, i32 4000000}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!827 = distinct !{!827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!832 = distinct !{!832, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!848 = distinct !{!848, !849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!849 = distinct !{!849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!850 = !{!851}
!851 = distinct !{!851, !849, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!852 = !{!853}
!853 = distinct !{!853, !854, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!854 = distinct !{!854, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!855 = !{!856}
!856 = distinct !{!856, !854, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!870 = distinct !{!870, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!871 = distinct !{!871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!876 = distinct !{!876, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!898 = distinct !{!898, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!914 = distinct !{!914, !915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!915 = distinct !{!915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!916 = !{!917}
!917 = distinct !{!917, !915, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!918 = !{!919}
!919 = distinct !{!919, !920, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!920 = distinct !{!920, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!921 = !{!922}
!922 = distinct !{!922, !920, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!936 = distinct !{!936, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!937 = distinct !{!937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!942 = distinct !{!942, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!943 = !{!944}
!944 = distinct !{!944, !942, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!958 = distinct !{!958, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!959 = distinct !{!959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!960 = !{!961}
!961 = distinct !{!961, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!964 = distinct !{!964, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"cmpfunc: %a"}
!969 = distinct !{!969, !"cmpfunc"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"cmpfunc: %b"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!974 = distinct !{!974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!977 = !{!973, !968, !963, !958}
!978 = !{!976, !971, !966, !961}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!981 = distinct !{!981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!986 = distinct !{!986, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!989 = !{!990}
!990 = distinct !{!990, !991, !"cmpfunc: %a"}
!991 = distinct !{!991, !"cmpfunc"}
!992 = !{!993}
!993 = distinct !{!993, !991, !"cmpfunc: %b"}
!994 = !{!995}
!995 = distinct !{!995, !996, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!996 = distinct !{!996, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!997 = !{!998}
!998 = distinct !{!998, !996, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!999 = !{!995, !990, !985, !980}
!1000 = !{!998, !993, !988, !983}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1003 = distinct !{!1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1008 = distinct !{!1008, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1008, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"cmpfunc: %a"}
!1013 = distinct !{!1013, !"cmpfunc"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1013, !"cmpfunc: %b"}
!1016 = !{!1017}
!1017 = distinct !{!1017, !1018, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1018 = distinct !{!1018, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1018, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1021 = !{!1017, !1012, !1007, !1002}
!1022 = !{!1020, !1015, !1010, !1005}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1025 = distinct !{!1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1025, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1030 = distinct !{!1030, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1030, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1035, !"cmpfunc: %a"}
!1035 = distinct !{!1035, !"cmpfunc"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1035, !"cmpfunc: %b"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1040 = distinct !{!1040, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1040, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1043 = !{!1039, !1034, !1029, !1024}
!1044 = !{!1042, !1037, !1032, !1027}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E: %v.0"}
!1047 = distinct !{!1047, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1050 = distinct !{!1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1055 = distinct !{!1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %_0"}
!1058 = distinct !{!1058, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"cmpfunc: %a"}
!1063 = distinct !{!1063, !"cmpfunc"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"cmpfunc: %b"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1068 = distinct !{!1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1071 = !{!1067, !1062, !1054, !1049, !1046}
!1072 = !{!1070, !1065, !1060, !1052, !1057}
!1073 = !{!1070, !1065, !1060, !1052, !1046}
!1074 = !{!1067, !1062, !1054, !1049, !1057}
!1075 = !{!1057, !1076, !1046}
!1076 = distinct !{!1076, !1058, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %is_less"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1079 = distinct !{!1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1084 = distinct !{!1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %_0"}
!1087 = distinct !{!1087, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1092, !"cmpfunc: %a"}
!1092 = distinct !{!1092, !"cmpfunc"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1092, !"cmpfunc: %b"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1097 = distinct !{!1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1100 = !{!1096, !1091, !1083, !1078, !1046}
!1101 = !{!1099, !1094, !1089, !1081, !1086}
!1102 = !{!1099, !1094, !1089, !1081, !1046}
!1103 = !{!1096, !1091, !1083, !1078, !1086}
!1104 = !{!1086, !1105, !1046}
!1105 = distinct !{!1105, !1087, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %is_less"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It1"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It1"}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It1"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It1"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1063, !"cmpfunc: %a:It1"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1063, !"cmpfunc: %b:It1"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1122 = !{!1119, !1115, !1111, !1107, !1046}
!1123 = !{!1121, !1117, !1113, !1109, !1057}
!1124 = !{!1121, !1117, !1113, !1109, !1046}
!1125 = !{!1119, !1115, !1111, !1107, !1057}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It1"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It1"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It1"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It1"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1092, !"cmpfunc: %a:It1"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1092, !"cmpfunc: %b:It1"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1142 = !{!1139, !1135, !1131, !1127, !1046}
!1143 = !{!1141, !1137, !1133, !1129, !1086}
!1144 = !{!1141, !1137, !1133, !1129, !1046}
!1145 = !{!1139, !1135, !1131, !1127, !1086}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It2"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It2"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It2"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It2"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1063, !"cmpfunc: %a:It2"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1063, !"cmpfunc: %b:It2"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1162 = !{!1159, !1155, !1151, !1147, !1046}
!1163 = !{!1161, !1157, !1153, !1149, !1057}
!1164 = !{!1161, !1157, !1153, !1149, !1046}
!1165 = !{!1159, !1155, !1151, !1147, !1057}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It2"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It2"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It2"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It2"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1092, !"cmpfunc: %a:It2"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1092, !"cmpfunc: %b:It2"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1182 = !{!1179, !1175, !1171, !1167, !1046}
!1183 = !{!1181, !1177, !1173, !1169, !1086}
!1184 = !{!1181, !1177, !1173, !1169, !1046}
!1185 = !{!1179, !1175, !1171, !1167, !1086}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It3"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It3"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It3"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1055, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It3"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1063, !"cmpfunc: %a:It3"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1063, !"cmpfunc: %b:It3"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1068, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1202 = !{!1199, !1195, !1191, !1187, !1046}
!1203 = !{!1201, !1197, !1193, !1189, !1057}
!1204 = !{!1201, !1197, !1193, !1189, !1046}
!1205 = !{!1199, !1195, !1191, !1187, !1057}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It3"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It3"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It3"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It3"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1092, !"cmpfunc: %a:It3"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1092, !"cmpfunc: %b:It3"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1097, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1222 = !{!1219, !1215, !1211, !1207, !1046}
!1223 = !{!1221, !1217, !1213, !1209, !1086}
!1224 = !{!1221, !1217, !1213, !1209, !1046}
!1225 = !{!1219, !1215, !1211, !1207, !1086}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1228 = distinct !{!1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1233 = distinct !{!1233, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1233, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1238 = distinct !{!1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1241 = !{!1237, !1232, !1227}
!1242 = !{!1240, !1235, !1230}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1245 = distinct !{!1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1250 = distinct !{!1250, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1255 = distinct !{!1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1258 = !{!1254, !1249, !1244}
!1259 = !{!1257, !1252, !1247}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1262 = distinct !{!1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1267 = distinct !{!1267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1272 = distinct !{!1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1275 = !{!1271, !1266, !1261}
!1276 = !{!1274, !1269, !1264}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1279 = distinct !{!1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1284 = distinct !{!1284, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1289 = distinct !{!1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1292 = !{!1288, !1283, !1278}
!1293 = !{!1291, !1286, !1281}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1296 = distinct !{!1296, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1301 = distinct !{!1301, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1301, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1306 = distinct !{!1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1309 = !{!1305, !1300, !1295}
!1310 = !{!1308, !1303, !1298}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1313 = distinct !{!1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1318 = distinct !{!1318, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1318, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1323 = distinct !{!1323, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1323, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1326 = !{!1322, !1317, !1312}
!1327 = !{!1325, !1320, !1315}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1330 = distinct !{!1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1335 = distinct !{!1335, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1335, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1340 = distinct !{!1340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1343 = !{!1339, !1334, !1329}
!1344 = !{!1342, !1337, !1332}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1347 = distinct !{!1347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1352 = distinct !{!1352, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1352, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1357 = distinct !{!1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1360 = !{!1356, !1351, !1346}
!1361 = !{!1359, !1354, !1349}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1364 = distinct !{!1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1369 = distinct !{!1369, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1369, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1374 = distinct !{!1374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1377 = !{!1373, !1368, !1363}
!1378 = !{!1376, !1371, !1366}
!1379 = !{!1380}
!1380 = distinct !{!1380, !1381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1381 = distinct !{!1381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1386, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1386 = distinct !{!1386, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1386, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1391 = distinct !{!1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1391, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1394 = !{!1390, !1385, !1380}
!1395 = !{!1393, !1388, !1383}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1398, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E: %v.0"}
!1398 = distinct !{!1398, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1401 = distinct !{!1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1406 = distinct !{!1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %_0"}
!1409 = distinct !{!1409, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1414 = distinct !{!1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1417 = !{!1413, !1405, !1400, !1397}
!1418 = !{!1416, !1411, !1403, !1408}
!1419 = !{!1416, !1411, !1403, !1397}
!1420 = !{!1413, !1405, !1400, !1408}
!1421 = !{!1408, !1422, !1397}
!1422 = distinct !{!1422, !1409, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %is_less"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1425 = distinct !{!1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1430 = distinct !{!1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %_0"}
!1433 = distinct !{!1433, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1438 = distinct !{!1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1441 = !{!1437, !1429, !1424, !1397}
!1442 = !{!1440, !1435, !1427, !1432}
!1443 = !{!1440, !1435, !1427, !1397}
!1444 = !{!1437, !1429, !1424, !1432}
!1445 = !{!1432, !1446, !1397}
!1446 = distinct !{!1446, !1433, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %is_less"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It1"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It1"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It1"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It1"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1459 = !{!1456, !1452, !1448, !1397}
!1460 = !{!1458, !1454, !1450, !1408}
!1461 = !{!1458, !1454, !1450, !1397}
!1462 = !{!1456, !1452, !1448, !1408}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It1"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It1"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It1"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It1"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1475 = !{!1472, !1468, !1464, !1397}
!1476 = !{!1474, !1470, !1466, !1432}
!1477 = !{!1474, !1470, !1466, !1397}
!1478 = !{!1472, !1468, !1464, !1432}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It2"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It2"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It2"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It2"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1491 = !{!1488, !1484, !1480, !1397}
!1492 = !{!1490, !1486, !1482, !1408}
!1493 = !{!1490, !1486, !1482, !1397}
!1494 = !{!1488, !1484, !1480, !1408}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It2"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It2"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It2"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It2"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1507 = !{!1504, !1500, !1496, !1397}
!1508 = !{!1506, !1502, !1498, !1432}
!1509 = !{!1506, !1502, !1498, !1397}
!1510 = !{!1504, !1500, !1496, !1432}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It3"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It3"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It3"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1406, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It3"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1523 = !{!1520, !1516, !1512, !1397}
!1524 = !{!1522, !1518, !1514, !1408}
!1525 = !{!1522, !1518, !1514, !1397}
!1526 = !{!1520, !1516, !1512, !1408}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It3"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It3"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It3"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1430, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It3"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1438, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1539 = !{!1536, !1532, !1528, !1397}
!1540 = !{!1538, !1534, !1530, !1432}
!1541 = !{!1538, !1534, !1530, !1397}
!1542 = !{!1536, !1532, !1528, !1432}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1545 = distinct !{!1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1550 = distinct !{!1550, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %_0"}
!1553 = distinct !{!1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1550, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1558 = distinct !{!1558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1561 = !{!1557, !1549, !1544}
!1562 = !{!1560, !1555, !1547, !1552}
!1563 = !{!1560, !1555, !1547}
!1564 = !{!1557, !1549, !1544, !1552}
!1565 = !{!1552, !1566}
!1566 = distinct !{!1566, !1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %is_less"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1569 = distinct !{!1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1574 = distinct !{!1574, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %_0"}
!1577 = distinct !{!1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1574, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1582 = distinct !{!1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1585 = !{!1581, !1573, !1568}
!1586 = !{!1584, !1579, !1571, !1576}
!1587 = !{!1584, !1579, !1571}
!1588 = !{!1581, !1573, !1568, !1576}
!1589 = !{!1576, !1590}
!1590 = distinct !{!1590, !1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %is_less"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1593 = distinct !{!1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1598, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1598 = distinct !{!1598, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %_0"}
!1601 = distinct !{!1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1598, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"cmpfunc: %a"}
!1606 = distinct !{!1606, !"cmpfunc"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1606, !"cmpfunc: %b"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1611 = distinct !{!1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1611, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1614 = !{!1610, !1605, !1597, !1592}
!1615 = !{!1613, !1608, !1603, !1595, !1600}
!1616 = !{!1613, !1608, !1603, !1595}
!1617 = !{!1610, !1605, !1597, !1592, !1600}
!1618 = !{!1600, !1619}
!1619 = distinct !{!1619, !1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %is_less"}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1622 = distinct !{!1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1627 = distinct !{!1627, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %_0"}
!1630 = distinct !{!1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1627, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"cmpfunc: %a"}
!1635 = distinct !{!1635, !"cmpfunc"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"cmpfunc: %b"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1640 = distinct !{!1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1643 = !{!1639, !1634, !1626, !1621}
!1644 = !{!1642, !1637, !1632, !1624, !1629}
!1645 = !{!1642, !1637, !1632, !1624}
!1646 = !{!1639, !1634, !1626, !1621, !1629}
!1647 = !{!1629, !1648}
!1648 = distinct !{!1648, !1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %is_less"}
!1649 = !{!1650}
!1650 = distinct !{!1650, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1651 = distinct !{!1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1656, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1656 = distinct !{!1656, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1657 = !{!1658}
!1658 = distinct !{!1658, !1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %_0"}
!1659 = distinct !{!1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1656, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1662 = !{!1663}
!1663 = distinct !{!1663, !1664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1664 = distinct !{!1664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1664, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1667 = !{!1663, !1661, !1653}
!1668 = !{!1666, !1655, !1650, !1658}
!1669 = !{!1666, !1655, !1650}
!1670 = !{!1663, !1661, !1653, !1658}
!1671 = !{!1658, !1672}
!1672 = distinct !{!1672, !1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %is_less"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1675 = distinct !{!1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1680 = distinct !{!1680, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %_0"}
!1683 = distinct !{!1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1680, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1688 = distinct !{!1688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1688, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1691 = !{!1687, !1685, !1677}
!1692 = !{!1690, !1679, !1674, !1682}
!1693 = !{!1690, !1679, !1674}
!1694 = !{!1687, !1685, !1677, !1682}
!1695 = !{!1682, !1696}
!1696 = distinct !{!1696, !1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %is_less"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1699 = distinct !{!1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1704 = distinct !{!1704, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1704, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1709 = distinct !{!1709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1712 = !{!1708, !1706, !1701}
!1713 = !{!1711, !1703, !1698}
!1714 = !{!1715, !1717, !1719}
!1715 = distinct !{!1715, !1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1716 = distinct !{!1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1717 = distinct !{!1717, !1718, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1718 = distinct !{!1718, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1719 = distinct !{!1719, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1720 = distinct !{!1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1721 = !{!1722, !1723, !1724}
!1722 = distinct !{!1722, !1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1723 = distinct !{!1723, !1718, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1724 = distinct !{!1724, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1725 = !{!1726, !1728}
!1726 = distinct !{!1726, !1727, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1727 = distinct !{!1727, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1728 = distinct !{!1728, !1729, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1729 = distinct !{!1729, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1732 = distinct !{!1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1737 = distinct !{!1737, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1737, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1742 = distinct !{!1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1745 = !{!1741, !1736, !1731}
!1746 = !{!1744, !1739, !1734}
!1747 = !{!1748, !1750, !1752}
!1748 = distinct !{!1748, !1749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1749 = distinct !{!1749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1750 = distinct !{!1750, !1751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1751 = distinct !{!1751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1752 = distinct !{!1752, !1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1753 = distinct !{!1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1754 = !{!1755, !1756, !1757}
!1755 = distinct !{!1755, !1749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1756 = distinct !{!1756, !1751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1757 = distinct !{!1757, !1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1758 = !{!1759, !1761}
!1759 = distinct !{!1759, !1760, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1760 = distinct !{!1760, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1761 = distinct !{!1761, !1762, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1762 = distinct !{!1762, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1765 = distinct !{!1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1770, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1770 = distinct !{!1770, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1770, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"cmpfunc: %a"}
!1775 = distinct !{!1775, !"cmpfunc"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1775, !"cmpfunc: %b"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1780 = distinct !{!1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1780, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1783 = !{!1779, !1774, !1769, !1764}
!1784 = !{!1782, !1777, !1772, !1767}
!1785 = !{!1786, !1788, !1790, !1792}
!1786 = distinct !{!1786, !1787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1787 = distinct !{!1787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1788 = distinct !{!1788, !1789, !"cmpfunc: %b"}
!1789 = distinct !{!1789, !"cmpfunc"}
!1790 = distinct !{!1790, !1791, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1791 = distinct !{!1791, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1792 = distinct !{!1792, !1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1793 = distinct !{!1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1794 = !{!1795, !1796, !1797, !1798}
!1795 = distinct !{!1795, !1787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1796 = distinct !{!1796, !1789, !"cmpfunc: %a"}
!1797 = distinct !{!1797, !1791, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1798 = distinct !{!1798, !1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1799 = !{!1800, !1802}
!1800 = distinct !{!1800, !1801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1801 = distinct !{!1801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1802 = distinct !{!1802, !1803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1803 = distinct !{!1803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1806 = distinct !{!1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1811, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1811 = distinct !{!1811, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1811, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1816, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1816 = distinct !{!1816, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1816, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1819 = !{!1815, !1813, !1808}
!1820 = !{!1818, !1810, !1805}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1823 = distinct !{!1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1826 = !{!1827}
!1827 = distinct !{!1827, !1828, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1828 = distinct !{!1828, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1829 = !{!1830}
!1830 = distinct !{!1830, !1828, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1833 = distinct !{!1833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1834 = !{!1835}
!1835 = distinct !{!1835, !1833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1836 = !{!1832, !1830, !1825}
!1837 = !{!1835, !1827, !1822}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1840 = distinct !{!1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1845 = distinct !{!1845, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1845, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1850 = distinct !{!1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1853 = !{!1849, !1847, !1842}
!1854 = !{!1852, !1844, !1839}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1857 = distinct !{!1857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1858 = !{!1859}
!1859 = distinct !{!1859, !1857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1862, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1862 = distinct !{!1862, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1862, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1867 = distinct !{!1867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1870 = !{!1866, !1864, !1859}
!1871 = !{!1869, !1861, !1856}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1874 = distinct !{!1874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1879, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1879 = distinct !{!1879, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1879, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1882 = !{!1883}
!1883 = distinct !{!1883, !1884, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1884 = distinct !{!1884, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1885 = !{!1886}
!1886 = distinct !{!1886, !1884, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1887 = !{!1883, !1881, !1876}
!1888 = !{!1886, !1878, !1873}
!1889 = !{!1890}
!1890 = distinct !{!1890, !1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1891 = distinct !{!1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1892 = !{!1893}
!1893 = distinct !{!1893, !1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1894 = !{!1895}
!1895 = distinct !{!1895, !1896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1896 = distinct !{!1896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1899 = !{!1900}
!1900 = distinct !{!1900, !1901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1901 = distinct !{!1901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1904 = !{!1900, !1898, !1893}
!1905 = !{!1903, !1895, !1890}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1908 = distinct !{!1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1913 = distinct !{!1913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1916 = !{!1917}
!1917 = distinct !{!1917, !1918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1918 = distinct !{!1918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1921 = !{!1917, !1915, !1910}
!1922 = !{!1920, !1912, !1907}
!1923 = !{!1924}
!1924 = distinct !{!1924, !1925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1925 = distinct !{!1925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1930, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1930 = distinct !{!1930, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1930, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1935 = distinct !{!1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1938 = !{!1934, !1932, !1927}
!1939 = !{!1937, !1929, !1924}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1942 = distinct !{!1942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1945 = !{!1946}
!1946 = distinct !{!1946, !1947, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1947 = distinct !{!1947, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1947, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1950 = !{!1951}
!1951 = distinct !{!1951, !1952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1952 = distinct !{!1952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1955 = !{!1951, !1949, !1944}
!1956 = !{!1954, !1946, !1941}
!1957 = !{!1958}
!1958 = distinct !{!1958, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1959 = distinct !{!1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1960 = !{!1961}
!1961 = distinct !{!1961, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1962 = !{!1963}
!1963 = distinct !{!1963, !1964, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1964 = distinct !{!1964, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1964, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1967 = !{!1968}
!1968 = distinct !{!1968, !1969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1969 = distinct !{!1969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1972 = !{!1968, !1966, !1961}
!1973 = !{!1971, !1963, !1958}
!1974 = !{!1975}
!1975 = distinct !{!1975, !1976, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE: %self.0"}
!1976 = distinct !{!1976, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE"}
!1977 = !{!1978}
!1978 = distinct !{!1978, !1979, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E: %v.0"}
!1979 = distinct !{!1979, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E"}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1982 = distinct !{!1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1987, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1987 = distinct !{!1987, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %_0"}
!1990 = distinct !{!1990, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1987, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1995 = distinct !{!1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1998 = !{!1994, !1992, !1984, !1978}
!1999 = !{!1997, !1986, !1981, !1989}
!2000 = !{!1997, !1986, !1981, !1978}
!2001 = !{!1994, !1992, !1984, !1989}
!2002 = !{!1989, !2003, !1978}
!2003 = distinct !{!2003, !1990, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %is_less"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2006 = distinct !{!2006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2006, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2009 = !{!2010}
!2010 = distinct !{!2010, !2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2011 = distinct !{!2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %_0"}
!2014 = distinct !{!2014, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2017 = !{!2018}
!2018 = distinct !{!2018, !2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2019 = distinct !{!2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2020 = !{!2021}
!2021 = distinct !{!2021, !2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2022 = !{!2018, !2016, !2008, !1978}
!2023 = !{!2021, !2010, !2005, !2013}
!2024 = !{!2021, !2010, !2005, !1978}
!2025 = !{!2018, !2016, !2008, !2013}
!2026 = !{!2013, !2027, !1978}
!2027 = distinct !{!2027, !2014, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %is_less"}
!2028 = !{!2029, !2031}
!2029 = distinct !{!2029, !2030, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2030 = distinct !{!2030, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2031 = distinct !{!2031, !2032, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2032 = distinct !{!2032, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2033 = !{!2034, !2036, !2038}
!2034 = distinct !{!2034, !2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2035 = distinct !{!2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2036 = distinct !{!2036, !2037, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2037 = distinct !{!2037, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2038 = distinct !{!2038, !2039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2039 = distinct !{!2039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2040 = !{!2041, !2042, !2043}
!2041 = distinct !{!2041, !2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2042 = distinct !{!2042, !2037, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2043 = distinct !{!2043, !2039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2044 = !{!2045, !2047, !2049}
!2045 = distinct !{!2045, !2046, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2046 = distinct !{!2046, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2047 = distinct !{!2047, !2048, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2048 = distinct !{!2048, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2049 = distinct !{!2049, !2050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2050 = distinct !{!2050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2051 = !{!2052, !2053, !2054}
!2052 = distinct !{!2052, !2046, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2053 = distinct !{!2053, !2048, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2054 = distinct !{!2054, !2050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2055 = !{!2056, !2058}
!2056 = distinct !{!2056, !2057, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2057 = distinct !{!2057, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2058 = distinct !{!2058, !2059, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2059 = distinct !{!2059, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2062 = distinct !{!2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2067 = distinct !{!2067, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2072 = distinct !{!2072, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2075 = !{!2071, !2066, !2061}
!2076 = !{!2074, !2069, !2064}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2079 = distinct !{!2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2082 = !{!2083}
!2083 = distinct !{!2083, !2084, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2084 = distinct !{!2084, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2085 = !{!2086}
!2086 = distinct !{!2086, !2084, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2089 = distinct !{!2089, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2089, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2092 = !{!2088, !2083, !2078}
!2093 = !{!2091, !2086, !2081}
!2094 = !{!2095}
!2095 = distinct !{!2095, !2096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2096 = distinct !{!2096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2099 = !{!2100}
!2100 = distinct !{!2100, !2101, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2101 = distinct !{!2101, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2101, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2106 = distinct !{!2106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2109 = !{!2105, !2100, !2095}
!2110 = !{!2108, !2103, !2098}
!2111 = !{!2112}
!2112 = distinct !{!2112, !2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2113 = distinct !{!2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2118 = distinct !{!2118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2121 = !{!2122}
!2122 = distinct !{!2122, !2123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2123 = distinct !{!2123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2126 = !{!2122, !2117, !2112}
!2127 = !{!2125, !2120, !2115}
!2128 = !{!2129}
!2129 = distinct !{!2129, !2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2130 = distinct !{!2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2133 = !{!2134}
!2134 = distinct !{!2134, !2135, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2135 = distinct !{!2135, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2135, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2140 = distinct !{!2140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2143 = !{!2139, !2134, !2129}
!2144 = !{!2142, !2137, !2132}
!2145 = !{!2146}
!2146 = distinct !{!2146, !2147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2147 = distinct !{!2147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2148 = !{!2149}
!2149 = distinct !{!2149, !2147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2152 = distinct !{!2152, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2152, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2157, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2157 = distinct !{!2157, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2157, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2160 = !{!2156, !2151, !2146}
!2161 = !{!2159, !2154, !2149}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2164 = distinct !{!2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2169 = distinct !{!2169, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2169, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2174 = distinct !{!2174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2177 = !{!2173, !2168, !2163}
!2178 = !{!2176, !2171, !2166}
!2179 = !{!2180}
!2180 = distinct !{!2180, !2181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2181 = distinct !{!2181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2186 = distinct !{!2186, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2186, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2189 = !{!2190}
!2190 = distinct !{!2190, !2191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2191 = distinct !{!2191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2194 = !{!2190, !2185, !2180}
!2195 = !{!2193, !2188, !2183}
!2196 = !{!2197}
!2197 = distinct !{!2197, !2198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2198 = distinct !{!2198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2203, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2203 = distinct !{!2203, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2203, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2208 = distinct !{!2208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2209 = !{!2210}
!2210 = distinct !{!2210, !2208, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2211 = !{!2207, !2202, !2197}
!2212 = !{!2210, !2205, !2200}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2215 = distinct !{!2215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2218 = !{!2219}
!2219 = distinct !{!2219, !2220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2220 = distinct !{!2220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2225 = distinct !{!2225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2226 = !{!2227}
!2227 = distinct !{!2227, !2225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2228 = !{!2224, !2219, !2214}
!2229 = !{!2227, !2222, !2217}
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE: %self.0"}
!2232 = distinct !{!2232, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE"}
!2233 = !{!2234}
!2234 = distinct !{!2234, !2235, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E: %v.0"}
!2235 = distinct !{!2235, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2238 = distinct !{!2238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2241 = !{!2242}
!2242 = distinct !{!2242, !2243, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2243 = distinct !{!2243, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %_0"}
!2246 = distinct !{!2246, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2243, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2251 = distinct !{!2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2251, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2254 = !{!2250, !2242, !2237, !2234}
!2255 = !{!2253, !2248, !2240, !2245}
!2256 = !{!2253, !2248, !2240, !2234}
!2257 = !{!2250, !2242, !2237, !2245}
!2258 = !{!2245, !2259, !2234}
!2259 = distinct !{!2259, !2246, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %is_less"}
!2260 = !{!2261}
!2261 = distinct !{!2261, !2262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2262 = distinct !{!2262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2262, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2265 = !{!2266}
!2266 = distinct !{!2266, !2267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2267 = distinct !{!2267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2268 = !{!2269}
!2269 = distinct !{!2269, !2270, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %_0"}
!2270 = distinct !{!2270, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2267, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2273 = !{!2274}
!2274 = distinct !{!2274, !2275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2275 = distinct !{!2275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2275, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2278 = !{!2274, !2266, !2261, !2234}
!2279 = !{!2277, !2272, !2264, !2269}
!2280 = !{!2277, !2272, !2264, !2234}
!2281 = !{!2274, !2266, !2261, !2269}
!2282 = !{!2269, !2283, !2234}
!2283 = distinct !{!2283, !2270, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %is_less"}
!2284 = !{!2285, !2287}
!2285 = distinct !{!2285, !2286, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2286 = distinct !{!2286, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2287 = distinct !{!2287, !2288, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2288 = distinct !{!2288, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2289 = !{!2290, !2292, !2294}
!2290 = distinct !{!2290, !2291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2291 = distinct !{!2291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2292 = distinct !{!2292, !2293, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2293 = distinct !{!2293, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2294 = distinct !{!2294, !2295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2295 = distinct !{!2295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2296 = !{!2297, !2298, !2299}
!2297 = distinct !{!2297, !2291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2298 = distinct !{!2298, !2293, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2299 = distinct !{!2299, !2295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2300 = !{!2301, !2303, !2305}
!2301 = distinct !{!2301, !2302, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2302 = distinct !{!2302, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2303 = distinct !{!2303, !2304, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2304 = distinct !{!2304, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2305 = distinct !{!2305, !2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2306 = distinct !{!2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2307 = !{!2308, !2309, !2310}
!2308 = distinct !{!2308, !2302, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2309 = distinct !{!2309, !2304, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2310 = distinct !{!2310, !2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2311 = !{!2312, !2314}
!2312 = distinct !{!2312, !2313, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2313 = distinct !{!2313, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2314 = distinct !{!2314, !2315, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2315 = distinct !{!2315, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2318 = distinct !{!2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2323 = distinct !{!2323, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2324 = !{!2325}
!2325 = distinct !{!2325, !2323, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2328, !"cmpfunc: %a"}
!2328 = distinct !{!2328, !"cmpfunc"}
!2329 = !{!2330}
!2330 = distinct !{!2330, !2328, !"cmpfunc: %b"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2333 = distinct !{!2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2334 = !{!2335}
!2335 = distinct !{!2335, !2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2336 = !{!2332, !2327, !2322, !2317}
!2337 = !{!2335, !2330, !2325, !2320}
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2340 = distinct !{!2340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2345 = distinct !{!2345, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2346 = !{!2347}
!2347 = distinct !{!2347, !2345, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"cmpfunc: %a"}
!2350 = distinct !{!2350, !"cmpfunc"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2350, !"cmpfunc: %b"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2355 = distinct !{!2355, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2355, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2358 = !{!2354, !2349, !2344, !2339}
!2359 = !{!2357, !2352, !2347, !2342}
!2360 = !{!2361}
!2361 = distinct !{!2361, !2362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2362 = distinct !{!2362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2365 = !{!2366}
!2366 = distinct !{!2366, !2367, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2367 = distinct !{!2367, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2368 = !{!2369}
!2369 = distinct !{!2369, !2367, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"cmpfunc: %a"}
!2372 = distinct !{!2372, !"cmpfunc"}
!2373 = !{!2374}
!2374 = distinct !{!2374, !2372, !"cmpfunc: %b"}
!2375 = !{!2376}
!2376 = distinct !{!2376, !2377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2377 = distinct !{!2377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2378 = !{!2379}
!2379 = distinct !{!2379, !2377, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2380 = !{!2376, !2371, !2366, !2361}
!2381 = !{!2379, !2374, !2369, !2364}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2384 = distinct !{!2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2385 = !{!2386}
!2386 = distinct !{!2386, !2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2389 = distinct !{!2389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2390 = !{!2391}
!2391 = distinct !{!2391, !2389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"cmpfunc: %a"}
!2394 = distinct !{!2394, !"cmpfunc"}
!2395 = !{!2396}
!2396 = distinct !{!2396, !2394, !"cmpfunc: %b"}
!2397 = !{!2398}
!2398 = distinct !{!2398, !2399, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2399 = distinct !{!2399, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2400 = !{!2401}
!2401 = distinct !{!2401, !2399, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2402 = !{!2398, !2393, !2388, !2383}
!2403 = !{!2401, !2396, !2391, !2386}
!2404 = !{!2405}
!2405 = distinct !{!2405, !2406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2406 = distinct !{!2406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2407 = !{!2408}
!2408 = distinct !{!2408, !2406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2411, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2411 = distinct !{!2411, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2412 = !{!2413}
!2413 = distinct !{!2413, !2411, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"cmpfunc: %a"}
!2416 = distinct !{!2416, !"cmpfunc"}
!2417 = !{!2418}
!2418 = distinct !{!2418, !2416, !"cmpfunc: %b"}
!2419 = !{!2420}
!2420 = distinct !{!2420, !2421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2421 = distinct !{!2421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2422 = !{!2423}
!2423 = distinct !{!2423, !2421, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2424 = !{!2420, !2415, !2410, !2405}
!2425 = !{!2423, !2418, !2413, !2408}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2428 = distinct !{!2428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2431 = !{!2432}
!2432 = distinct !{!2432, !2433, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2433 = distinct !{!2433, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2434 = !{!2435}
!2435 = distinct !{!2435, !2433, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"cmpfunc: %a"}
!2438 = distinct !{!2438, !"cmpfunc"}
!2439 = !{!2440}
!2440 = distinct !{!2440, !2438, !"cmpfunc: %b"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2443, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2443 = distinct !{!2443, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2444 = !{!2445}
!2445 = distinct !{!2445, !2443, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2446 = !{!2442, !2437, !2432, !2427}
!2447 = !{!2445, !2440, !2435, !2430}
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2450 = distinct !{!2450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2453 = !{!2454}
!2454 = distinct !{!2454, !2455, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2455 = distinct !{!2455, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2456 = !{!2457}
!2457 = distinct !{!2457, !2455, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"cmpfunc: %a"}
!2460 = distinct !{!2460, !"cmpfunc"}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2460, !"cmpfunc: %b"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2465 = distinct !{!2465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2468 = !{!2464, !2459, !2454, !2449}
!2469 = !{!2467, !2462, !2457, !2452}
!2470 = !{!2471}
!2471 = distinct !{!2471, !2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2472 = distinct !{!2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2473 = !{!2474}
!2474 = distinct !{!2474, !2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2477 = distinct !{!2477, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2477, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"cmpfunc: %a"}
!2482 = distinct !{!2482, !"cmpfunc"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2482, !"cmpfunc: %b"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2487 = distinct !{!2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2490 = !{!2486, !2481, !2476, !2471}
!2491 = !{!2489, !2484, !2479, !2474}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2494 = distinct !{!2494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2499, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2499 = distinct !{!2499, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2500 = !{!2501}
!2501 = distinct !{!2501, !2499, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2502 = !{!2503}
!2503 = distinct !{!2503, !2504, !"cmpfunc: %a"}
!2504 = distinct !{!2504, !"cmpfunc"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2504, !"cmpfunc: %b"}
!2507 = !{!2508}
!2508 = distinct !{!2508, !2509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2509 = distinct !{!2509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2510 = !{!2511}
!2511 = distinct !{!2511, !2509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2512 = !{!2508, !2503, !2498, !2493}
!2513 = !{!2511, !2506, !2501, !2496}
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2516 = distinct !{!2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2517 = !{!2518}
!2518 = distinct !{!2518, !2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2519 = !{!2520}
!2520 = distinct !{!2520, !2521, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2521 = distinct !{!2521, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2522 = !{!2523}
!2523 = distinct !{!2523, !2521, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2524 = !{!2525}
!2525 = distinct !{!2525, !2526, !"cmpfunc: %a"}
!2526 = distinct !{!2526, !"cmpfunc"}
!2527 = !{!2528}
!2528 = distinct !{!2528, !2526, !"cmpfunc: %b"}
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2531 = distinct !{!2531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2532 = !{!2533}
!2533 = distinct !{!2533, !2531, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2534 = !{!2530, !2525, !2520, !2515}
!2535 = !{!2533, !2528, !2523, !2518}
!2536 = !{!2537}
!2537 = distinct !{!2537, !2538, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE: %self.0"}
!2538 = distinct !{!2538, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he9329f89bfb7731fE"}
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E: %v.0"}
!2541 = distinct !{!2541, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2544 = distinct !{!2544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2545 = !{!2546}
!2546 = distinct !{!2546, !2544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2547 = !{!2548}
!2548 = distinct !{!2548, !2549, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2549 = distinct !{!2549, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %_0"}
!2552 = distinct !{!2552, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2549, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"cmpfunc: %a"}
!2557 = distinct !{!2557, !"cmpfunc"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2557, !"cmpfunc: %b"}
!2560 = !{!2561}
!2561 = distinct !{!2561, !2562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2562 = distinct !{!2562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2565 = !{!2561, !2556, !2548, !2543, !2540}
!2566 = !{!2564, !2559, !2554, !2546, !2551}
!2567 = !{!2564, !2559, !2554, !2546, !2540}
!2568 = !{!2561, !2556, !2548, !2543, !2551}
!2569 = !{!2551, !2570, !2540}
!2570 = distinct !{!2570, !2552, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %is_less"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2573 = distinct !{!2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2574 = !{!2575}
!2575 = distinct !{!2575, !2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2576 = !{!2577}
!2577 = distinct !{!2577, !2578, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2578 = distinct !{!2578, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2579 = !{!2580}
!2580 = distinct !{!2580, !2581, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %_0"}
!2581 = distinct !{!2581, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E"}
!2582 = !{!2583}
!2583 = distinct !{!2583, !2578, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"cmpfunc: %a"}
!2586 = distinct !{!2586, !"cmpfunc"}
!2587 = !{!2588}
!2588 = distinct !{!2588, !2586, !"cmpfunc: %b"}
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2591 = distinct !{!2591, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2592 = !{!2593}
!2593 = distinct !{!2593, !2591, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2594 = !{!2590, !2585, !2577, !2572, !2540}
!2595 = !{!2593, !2588, !2583, !2575, !2580}
!2596 = !{!2593, !2588, !2583, !2575, !2540}
!2597 = !{!2590, !2585, !2577, !2572, !2580}
!2598 = !{!2580, !2599, !2540}
!2599 = distinct !{!2599, !2581, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %is_less"}
!2600 = !{!2601, !2603}
!2601 = distinct !{!2601, !2602, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2602 = distinct !{!2602, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2603 = distinct !{!2603, !2604, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2604 = distinct !{!2604, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2605 = !{!2606, !2608, !2610, !2612}
!2606 = distinct !{!2606, !2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2607 = distinct !{!2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2608 = distinct !{!2608, !2609, !"cmpfunc: %b"}
!2609 = distinct !{!2609, !"cmpfunc"}
!2610 = distinct !{!2610, !2611, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2611 = distinct !{!2611, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2612 = distinct !{!2612, !2613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2613 = distinct !{!2613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = distinct !{!2615, !2607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2616 = distinct !{!2616, !2609, !"cmpfunc: %a"}
!2617 = distinct !{!2617, !2611, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2618 = distinct !{!2618, !2613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2619 = !{!2620, !2622, !2624, !2626}
!2620 = distinct !{!2620, !2621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2621 = distinct !{!2621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2622 = distinct !{!2622, !2623, !"cmpfunc: %b"}
!2623 = distinct !{!2623, !"cmpfunc"}
!2624 = distinct !{!2624, !2625, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2625 = distinct !{!2625, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2626 = distinct !{!2626, !2627, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2627 = distinct !{!2627, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = distinct !{!2629, !2621, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2630 = distinct !{!2630, !2623, !"cmpfunc: %a"}
!2631 = distinct !{!2631, !2625, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2632 = distinct !{!2632, !2627, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2633 = !{!2634, !2636}
!2634 = distinct !{!2634, !2635, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2635 = distinct !{!2635, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2636 = distinct !{!2636, !2637, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2637 = distinct !{!2637, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2638 = !{!2639}
!2639 = distinct !{!2639, !2640, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!2640 = distinct !{!2640, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!2641 = !{i64 0, i64 2}
!2642 = !{i64 0, i64 -9223372036854775807}
!2643 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!2646 = distinct !{!2646, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2649, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!2649 = distinct !{!2649, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!2650 = !{!2651}
!2651 = distinct !{!2651, !2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2652 = distinct !{!2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2653 = !{!2654}
!2654 = distinct !{!2654, !2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2657 = distinct !{!2657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2658 = !{!2659}
!2659 = distinct !{!2659, !2657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2662 = distinct !{!2662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2665 = !{!2661, !2659, !2654}
!2666 = !{!2664, !2656, !2651}
!2667 = !{!2668}
!2668 = distinct !{!2668, !2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2669 = distinct !{!2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2670 = !{!2671}
!2671 = distinct !{!2671, !2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2674 = distinct !{!2674, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2675 = !{!2676}
!2676 = distinct !{!2676, !2674, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2677 = !{!2678}
!2678 = distinct !{!2678, !2679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2679 = distinct !{!2679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2680 = !{!2681}
!2681 = distinct !{!2681, !2679, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2682 = !{!2678, !2676, !2671}
!2683 = !{!2681, !2673, !2668}
!2684 = !{!2685}
!2685 = distinct !{!2685, !2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2686 = distinct !{!2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2687 = !{!2688}
!2688 = distinct !{!2688, !2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2689 = !{!2690}
!2690 = distinct !{!2690, !2691, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2691 = distinct !{!2691, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2692 = !{!2693}
!2693 = distinct !{!2693, !2691, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2696 = distinct !{!2696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2697 = !{!2698}
!2698 = distinct !{!2698, !2696, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2699 = !{!2695, !2693, !2688}
!2700 = !{!2698, !2690, !2685}
!2701 = !{!2702, !2704}
!2702 = distinct !{!2702, !2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!2703 = distinct !{!2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!2704 = distinct !{!2704, !2705, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!2705 = distinct !{!2705, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!2708 = !{!2707, !2704}
!2709 = !{!2702}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2712 = distinct !{!2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2713 = !{!2714}
!2714 = distinct !{!2714, !2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2715 = !{!2716}
!2716 = distinct !{!2716, !2717, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2717 = distinct !{!2717, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2718 = !{!2719}
!2719 = distinct !{!2719, !2717, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2722, !"cmpfunc: %a"}
!2722 = distinct !{!2722, !"cmpfunc"}
!2723 = !{!2724}
!2724 = distinct !{!2724, !2722, !"cmpfunc: %b"}
!2725 = !{!2726}
!2726 = distinct !{!2726, !2727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2727 = distinct !{!2727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2728 = !{!2729}
!2729 = distinct !{!2729, !2727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2730 = !{!2726, !2721, !2716, !2711}
!2731 = !{!2729, !2724, !2719, !2714}
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2734 = distinct !{!2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2735 = !{!2736}
!2736 = distinct !{!2736, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2739 = distinct !{!2739, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2740 = !{!2741}
!2741 = distinct !{!2741, !2739, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2742 = !{!2743}
!2743 = distinct !{!2743, !2744, !"cmpfunc: %a"}
!2744 = distinct !{!2744, !"cmpfunc"}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2744, !"cmpfunc: %b"}
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2749 = distinct !{!2749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2750 = !{!2751}
!2751 = distinct !{!2751, !2749, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2752 = !{!2748, !2743, !2738, !2733}
!2753 = !{!2751, !2746, !2741, !2736}
!2754 = !{!2755}
!2755 = distinct !{!2755, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2756 = distinct !{!2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2761, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2761 = distinct !{!2761, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2762 = !{!2763}
!2763 = distinct !{!2763, !2761, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!2774 = !{!2770, !2765, !2760, !2755}
!2775 = !{!2773, !2768, !2763, !2758}
!2776 = !{!2777, !2779}
!2777 = distinct !{!2777, !2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!2778 = distinct !{!2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!2779 = distinct !{!2779, !2780, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!2780 = distinct !{!2780, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!2781 = !{!2782}
!2782 = distinct !{!2782, !2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!2783 = !{!2782, !2779}
!2784 = !{!2777}
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2787 = distinct !{!2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2788 = !{!2789}
!2789 = distinct !{!2789, !2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2790 = !{!2791}
!2791 = distinct !{!2791, !2792, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2792 = distinct !{!2792, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2793 = !{!2794}
!2794 = distinct !{!2794, !2792, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2797 = distinct !{!2797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2798 = !{!2799}
!2799 = distinct !{!2799, !2797, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2800 = !{!2796, !2791, !2786}
!2801 = !{!2799, !2794, !2789}
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2804 = distinct !{!2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2807 = !{!2808}
!2808 = distinct !{!2808, !2809, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2809 = distinct !{!2809, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2810 = !{!2811}
!2811 = distinct !{!2811, !2809, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2812 = !{!2813}
!2813 = distinct !{!2813, !2814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2814 = distinct !{!2814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2815 = !{!2816}
!2816 = distinct !{!2816, !2814, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2817 = !{!2813, !2808, !2803}
!2818 = !{!2816, !2811, !2806}
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2821 = distinct !{!2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2822 = !{!2823}
!2823 = distinct !{!2823, !2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2824 = !{!2825}
!2825 = distinct !{!2825, !2826, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2826 = distinct !{!2826, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2827 = !{!2828}
!2828 = distinct !{!2828, !2826, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2831 = distinct !{!2831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2832 = !{!2833}
!2833 = distinct !{!2833, !2831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2834 = !{!2830, !2825, !2820}
!2835 = !{!2833, !2828, !2823}
!2836 = !{!2837, !2839}
!2837 = distinct !{!2837, !2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!2838 = distinct !{!2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!2839 = distinct !{!2839, !2840, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!2840 = distinct !{!2840, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!2843 = !{!2842, !2839}
!2844 = !{!2837}
!2845 = !{!2846}
!2846 = distinct !{!2846, !2847, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E: %v.0"}
!2847 = distinct !{!2847, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E"}
!2848 = !{!2849}
!2849 = distinct !{!2849, !2847, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E: %scratch.0"}
!2850 = !{!2846, !2849}
!2851 = !{!2852}
!2852 = distinct !{!2852, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2853 = distinct !{!2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2854 = !{!2855}
!2855 = distinct !{!2855, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2856 = !{!2857}
!2857 = distinct !{!2857, !2858, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2858 = distinct !{!2858, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2859 = !{!2860}
!2860 = distinct !{!2860, !2858, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2863 = distinct !{!2863, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2863, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2866 = !{!2862, !2857, !2852, !2849}
!2867 = !{!2865, !2860, !2855, !2868, !2846}
!2868 = distinct !{!2868, !2869, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE: %self"}
!2869 = distinct !{!2869, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE"}
!2870 = !{!2865, !2860, !2855, !2846}
!2871 = !{!2862, !2857, !2852, !2868, !2849}
!2872 = !{!2868, !2849}
!2873 = !{!2874}
!2874 = distinct !{!2874, !2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2875 = distinct !{!2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2876 = !{!2877}
!2877 = distinct !{!2877, !2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2878 = !{!2879}
!2879 = distinct !{!2879, !2880, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2880 = distinct !{!2880, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2881 = !{!2882}
!2882 = distinct !{!2882, !2880, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2883 = !{!2884}
!2884 = distinct !{!2884, !2885, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2885 = distinct !{!2885, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2886 = !{!2887}
!2887 = distinct !{!2887, !2885, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2888 = !{!2884, !2879, !2874, !2846}
!2889 = !{!2887, !2882, !2877, !2890, !2849}
!2890 = distinct !{!2890, !2891, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E: %self"}
!2891 = distinct !{!2891, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E"}
!2892 = !{!2887, !2882, !2877, !2849}
!2893 = !{!2884, !2879, !2874, !2890, !2846}
!2894 = !{!2890, !2849}
!2895 = !{!2896, !2898}
!2896 = distinct !{!2896, !2897, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!2897 = distinct !{!2897, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!2898 = distinct !{!2898, !2899, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!2899 = distinct !{!2899, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!2900 = !{!2901}
!2901 = distinct !{!2901, !2902, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE: %v.0"}
!2902 = distinct !{!2902, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE"}
!2903 = !{!2904}
!2904 = distinct !{!2904, !2902, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE: %scratch.0"}
!2905 = !{!2901, !2904}
!2906 = !{!2907}
!2907 = distinct !{!2907, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2908 = distinct !{!2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2909 = !{!2910}
!2910 = distinct !{!2910, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2911 = !{!2912}
!2912 = distinct !{!2912, !2913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2913 = distinct !{!2913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2914 = !{!2915}
!2915 = distinct !{!2915, !2913, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2916 = !{!2917}
!2917 = distinct !{!2917, !2918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2918 = distinct !{!2918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2919 = !{!2920}
!2920 = distinct !{!2920, !2918, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2921 = !{!2917, !2915, !2910, !2901}
!2922 = !{!2920, !2912, !2907, !2923, !2904}
!2923 = distinct !{!2923, !2924, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E: %self"}
!2924 = distinct !{!2924, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E"}
!2925 = !{!2920, !2912, !2907, !2904}
!2926 = !{!2917, !2915, !2910, !2923, !2901}
!2927 = !{!2923, !2904}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2930 = distinct !{!2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2931 = !{!2932}
!2932 = distinct !{!2932, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2933 = !{!2934}
!2934 = distinct !{!2934, !2935, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2935 = distinct !{!2935, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2936 = !{!2937}
!2937 = distinct !{!2937, !2935, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2938 = !{!2939}
!2939 = distinct !{!2939, !2940, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2940 = distinct !{!2940, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2941 = !{!2942}
!2942 = distinct !{!2942, !2940, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2943 = !{!2939, !2937, !2932, !2904}
!2944 = !{!2942, !2934, !2929, !2945, !2901}
!2945 = distinct !{!2945, !2946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE: %self"}
!2946 = distinct !{!2946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE"}
!2947 = !{!2942, !2934, !2929, !2901}
!2948 = !{!2939, !2937, !2932, !2945, !2904}
!2949 = !{!2945, !2904}
!2950 = !{!2951, !2953}
!2951 = distinct !{!2951, !2952, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!2952 = distinct !{!2952, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!2953 = distinct !{!2953, !2954, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!2954 = distinct !{!2954, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!2955 = !{!2956}
!2956 = distinct !{!2956, !2957, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE: %v.0"}
!2957 = distinct !{!2957, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE"}
!2958 = !{!2959}
!2959 = distinct !{!2959, !2957, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE: %scratch.0"}
!2960 = !{!2956, !2959}
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2963 = distinct !{!2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2964 = !{!2965}
!2965 = distinct !{!2965, !2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2968 = distinct !{!2968, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2968, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2971 = !{!2972}
!2972 = distinct !{!2972, !2973, !"cmpfunc: %a"}
!2973 = distinct !{!2973, !"cmpfunc"}
!2974 = !{!2975}
!2975 = distinct !{!2975, !2973, !"cmpfunc: %b"}
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2978 = distinct !{!2978, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2979 = !{!2980}
!2980 = distinct !{!2980, !2978, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2981 = !{!2977, !2972, !2967, !2962, !2959}
!2982 = !{!2980, !2975, !2970, !2965, !2983, !2956}
!2983 = distinct !{!2983, !2984, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE: %self"}
!2984 = distinct !{!2984, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE"}
!2985 = !{!2980, !2975, !2970, !2965, !2956}
!2986 = !{!2977, !2972, !2967, !2962, !2983, !2959}
!2987 = !{!2983, !2959}
!2988 = !{!2989}
!2989 = distinct !{!2989, !2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2990 = distinct !{!2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2991 = !{!2992}
!2992 = distinct !{!2992, !2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2995 = distinct !{!2995, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2995, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2998 = !{!2999}
!2999 = distinct !{!2999, !3000, !"cmpfunc: %a"}
!3000 = distinct !{!3000, !"cmpfunc"}
!3001 = !{!3002}
!3002 = distinct !{!3002, !3000, !"cmpfunc: %b"}
!3003 = !{!3004}
!3004 = distinct !{!3004, !3005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3005 = distinct !{!3005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3006 = !{!3007}
!3007 = distinct !{!3007, !3005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3008 = !{!3004, !2999, !2994, !2989, !2956}
!3009 = !{!3007, !3002, !2997, !2992, !3010, !2959}
!3010 = distinct !{!3010, !3011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E: %self"}
!3011 = distinct !{!3011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E"}
!3012 = !{!3007, !3002, !2997, !2992, !2959}
!3013 = !{!3004, !2999, !2994, !2989, !3010, !2956}
!3014 = !{!3010, !2959}
!3015 = !{!3016, !3018}
!3016 = distinct !{!3016, !3017, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!3017 = distinct !{!3017, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!3018 = distinct !{!3018, !3019, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!3019 = distinct !{!3019, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!3020 = !{!3021}
!3021 = distinct !{!3021, !3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3022 = distinct !{!3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3023 = !{!3024}
!3024 = distinct !{!3024, !3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3027 = distinct !{!3027, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3028 = !{!3029}
!3029 = distinct !{!3029, !3027, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3030 = !{!3031}
!3031 = distinct !{!3031, !3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3032 = distinct !{!3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3033 = !{!3034}
!3034 = distinct !{!3034, !3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3035 = !{!3031, !3026, !3021}
!3036 = !{!3034, !3029, !3024}
!3037 = !{!3038}
!3038 = distinct !{!3038, !3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3039 = distinct !{!3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3040 = !{!3041}
!3041 = distinct !{!3041, !3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3042 = !{!3043}
!3043 = distinct !{!3043, !3044, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3044 = distinct !{!3044, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3045 = !{!3046}
!3046 = distinct !{!3046, !3044, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3047 = !{!3048}
!3048 = distinct !{!3048, !3049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3049 = distinct !{!3049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3050 = !{!3051}
!3051 = distinct !{!3051, !3049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3052 = !{!3048, !3046, !3041}
!3053 = !{!3051, !3043, !3038}
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3056 = distinct !{!3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3057 = !{!3058}
!3058 = distinct !{!3058, !3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3059 = !{!3060}
!3060 = distinct !{!3060, !3061, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3061 = distinct !{!3061, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3062 = !{!3063}
!3063 = distinct !{!3063, !3061, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3064 = !{!3065}
!3065 = distinct !{!3065, !3066, !"cmpfunc: %a"}
!3066 = distinct !{!3066, !"cmpfunc"}
!3067 = !{!3068}
!3068 = distinct !{!3068, !3066, !"cmpfunc: %b"}
!3069 = !{!3070}
!3070 = distinct !{!3070, !3071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3071 = distinct !{!3071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3072 = !{!3073}
!3073 = distinct !{!3073, !3071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3074 = !{!3070, !3065, !3060, !3055}
!3075 = !{!3073, !3068, !3063, !3058}
!3076 = !{!3077}
!3077 = distinct !{!3077, !3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3078 = distinct !{!3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3079 = !{!3080}
!3080 = distinct !{!3080, !3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3081 = !{!3082}
!3082 = distinct !{!3082, !3083, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3083 = distinct !{!3083, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3084 = !{!3085}
!3085 = distinct !{!3085, !3083, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3086 = !{!3087}
!3087 = distinct !{!3087, !3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3088 = distinct !{!3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3089 = !{!3090}
!3090 = distinct !{!3090, !3088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3091 = !{!3087, !3082, !3077}
!3092 = !{!3090, !3085, !3080}
!3093 = !{!3094}
!3094 = distinct !{!3094, !3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3095 = distinct !{!3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3096 = !{!3097}
!3097 = distinct !{!3097, !3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3098 = !{!3099}
!3099 = distinct !{!3099, !3100, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3100 = distinct !{!3100, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3101 = !{!3102}
!3102 = distinct !{!3102, !3100, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3103 = !{!3104}
!3104 = distinct !{!3104, !3105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3105 = distinct !{!3105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3106 = !{!3107}
!3107 = distinct !{!3107, !3105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3108 = !{!3104, !3102, !3097}
!3109 = !{!3107, !3099, !3094}
!3110 = !{!3111}
!3111 = distinct !{!3111, !3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3112 = distinct !{!3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3113 = !{!3114}
!3114 = distinct !{!3114, !3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3115 = !{!3116}
!3116 = distinct !{!3116, !3117, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3117 = distinct !{!3117, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3118 = !{!3119}
!3119 = distinct !{!3119, !3117, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3120 = !{!3121}
!3121 = distinct !{!3121, !3122, !"cmpfunc: %a"}
!3122 = distinct !{!3122, !"cmpfunc"}
!3123 = !{!3124}
!3124 = distinct !{!3124, !3122, !"cmpfunc: %b"}
!3125 = !{!3126}
!3126 = distinct !{!3126, !3127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3127 = distinct !{!3127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3128 = !{!3129}
!3129 = distinct !{!3129, !3127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3130 = !{!3126, !3121, !3116, !3111}
!3131 = !{!3129, !3124, !3119, !3114}
!3132 = !{!3133}
!3133 = distinct !{!3133, !3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3134 = distinct !{!3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3135 = !{!3136}
!3136 = distinct !{!3136, !3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3137 = !{!3138}
!3138 = distinct !{!3138, !3139, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3139 = distinct !{!3139, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3140 = !{!3141}
!3141 = distinct !{!3141, !3139, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3142 = !{!3143}
!3143 = distinct !{!3143, !3144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3144 = distinct !{!3144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3145 = !{!3146}
!3146 = distinct !{!3146, !3144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3147 = !{!3143, !3141, !3136}
!3148 = !{!3146, !3138, !3133, !3149}
!3149 = distinct !{!3149, !3150, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E: %self"}
!3150 = distinct !{!3150, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E"}
!3151 = !{!3146, !3138, !3133}
!3152 = !{!3143, !3141, !3136, !3149}
!3153 = !{!3149}
!3154 = !{!3155}
!3155 = distinct !{!3155, !3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3156 = distinct !{!3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3157 = !{!3158}
!3158 = distinct !{!3158, !3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3159 = !{!3160}
!3160 = distinct !{!3160, !3161, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3161 = distinct !{!3161, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3162 = !{!3163}
!3163 = distinct !{!3163, !3161, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3164 = !{!3165}
!3165 = distinct !{!3165, !3166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3166 = distinct !{!3166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3167 = !{!3168}
!3168 = distinct !{!3168, !3166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3169 = !{!3165, !3163, !3158}
!3170 = !{!3168, !3160, !3155, !3171}
!3171 = distinct !{!3171, !3172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE: %self"}
!3172 = distinct !{!3172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE"}
!3173 = !{!3168, !3160, !3155}
!3174 = !{!3165, !3163, !3158, !3171}
!3175 = !{!3171}
!3176 = !{!3177, !3179}
!3177 = distinct !{!3177, !3178, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!3178 = distinct !{!3178, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!3179 = distinct !{!3179, !3180, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!3180 = distinct !{!3180, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!3181 = !{!3182}
!3182 = distinct !{!3182, !3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3183 = distinct !{!3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3184 = !{!3185}
!3185 = distinct !{!3185, !3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3188 = distinct !{!3188, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3189 = !{!3190}
!3190 = distinct !{!3190, !3188, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3191 = !{!3192}
!3192 = distinct !{!3192, !3193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3193 = distinct !{!3193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3194 = !{!3195}
!3195 = distinct !{!3195, !3193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3196 = !{!3192, !3187, !3182}
!3197 = !{!3195, !3190, !3185, !3198}
!3198 = distinct !{!3198, !3199, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE: %self"}
!3199 = distinct !{!3199, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE"}
!3200 = !{!3195, !3190, !3185}
!3201 = !{!3192, !3187, !3182, !3198}
!3202 = !{!3198}
!3203 = !{!3204}
!3204 = distinct !{!3204, !3205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3205 = distinct !{!3205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3206 = !{!3207}
!3207 = distinct !{!3207, !3205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3208 = !{!3209}
!3209 = distinct !{!3209, !3210, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3210 = distinct !{!3210, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3211 = !{!3212}
!3212 = distinct !{!3212, !3210, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3213 = !{!3214}
!3214 = distinct !{!3214, !3215, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3215 = distinct !{!3215, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3216 = !{!3217}
!3217 = distinct !{!3217, !3215, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3218 = !{!3214, !3209, !3204}
!3219 = !{!3217, !3212, !3207, !3220}
!3220 = distinct !{!3220, !3221, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E: %self"}
!3221 = distinct !{!3221, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E"}
!3222 = !{!3217, !3212, !3207}
!3223 = !{!3214, !3209, !3204, !3220}
!3224 = !{!3220}
!3225 = !{!3226, !3228}
!3226 = distinct !{!3226, !3227, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!3227 = distinct !{!3227, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!3228 = distinct !{!3228, !3229, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!3229 = distinct !{!3229, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!3230 = !{!3231}
!3231 = distinct !{!3231, !3232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3232 = distinct !{!3232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3233 = !{!3234}
!3234 = distinct !{!3234, !3232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3235 = !{!3236}
!3236 = distinct !{!3236, !3237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3237 = distinct !{!3237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3238 = !{!3239}
!3239 = distinct !{!3239, !3237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3240 = !{!3241}
!3241 = distinct !{!3241, !3242, !"cmpfunc: %a"}
!3242 = distinct !{!3242, !"cmpfunc"}
!3243 = !{!3244}
!3244 = distinct !{!3244, !3242, !"cmpfunc: %b"}
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3247 = distinct !{!3247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3248 = !{!3249}
!3249 = distinct !{!3249, !3247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3250 = !{!3246, !3241, !3236, !3231}
!3251 = !{!3249, !3244, !3239, !3234, !3252}
!3252 = distinct !{!3252, !3253, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE: %self"}
!3253 = distinct !{!3253, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE"}
!3254 = !{!3249, !3244, !3239, !3234}
!3255 = !{!3246, !3241, !3236, !3231, !3252}
!3256 = !{!3252}
!3257 = !{!3258}
!3258 = distinct !{!3258, !3259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3259 = distinct !{!3259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3260 = !{!3261}
!3261 = distinct !{!3261, !3259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3262 = !{!3263}
!3263 = distinct !{!3263, !3264, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3264 = distinct !{!3264, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3265 = !{!3266}
!3266 = distinct !{!3266, !3264, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3267 = !{!3268}
!3268 = distinct !{!3268, !3269, !"cmpfunc: %a"}
!3269 = distinct !{!3269, !"cmpfunc"}
!3270 = !{!3271}
!3271 = distinct !{!3271, !3269, !"cmpfunc: %b"}
!3272 = !{!3273}
!3273 = distinct !{!3273, !3274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3274 = distinct !{!3274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3275 = !{!3276}
!3276 = distinct !{!3276, !3274, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3277 = !{!3273, !3268, !3263, !3258}
!3278 = !{!3276, !3271, !3266, !3261, !3279}
!3279 = distinct !{!3279, !3280, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E: %self"}
!3280 = distinct !{!3280, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E"}
!3281 = !{!3276, !3271, !3266, !3261}
!3282 = !{!3273, !3268, !3263, !3258, !3279}
!3283 = !{!3279}
!3284 = !{!3285, !3287}
!3285 = distinct !{!3285, !3286, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!3286 = distinct !{!3286, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!3287 = distinct !{!3287, !3288, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!3288 = distinct !{!3288, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!3289 = !{!"branch_weights", i32 4000000, i32 4001}
!3290 = !{!3291}
!3291 = distinct !{!3291, !3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3292 = distinct !{!3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3293 = !{!3294}
!3294 = distinct !{!3294, !3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3297 = distinct !{!3297, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3298 = !{!3299}
!3299 = distinct !{!3299, !3297, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3300 = !{!3301}
!3301 = distinct !{!3301, !3302, !"cmpfunc: %a"}
!3302 = distinct !{!3302, !"cmpfunc"}
!3303 = !{!3304}
!3304 = distinct !{!3304, !3302, !"cmpfunc: %b"}
!3305 = !{!3306}
!3306 = distinct !{!3306, !3307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3307 = distinct !{!3307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3308 = !{!3309}
!3309 = distinct !{!3309, !3307, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3310 = !{!3306, !3301, !3296, !3291}
!3311 = !{!3309, !3304, !3299, !3294}
!3312 = !{!3313}
!3313 = distinct !{!3313, !3314, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3314 = distinct !{!3314, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3317 = distinct !{!3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3318 = !{!3319}
!3319 = distinct !{!3319, !3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3320 = !{!3321}
!3321 = distinct !{!3321, !3322, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3322 = distinct !{!3322, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3323 = !{!3324}
!3324 = distinct !{!3324, !3322, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3325 = !{!3326}
!3326 = distinct !{!3326, !3327, !"cmpfunc: %a"}
!3327 = distinct !{!3327, !"cmpfunc"}
!3328 = !{!3329}
!3329 = distinct !{!3329, !3327, !"cmpfunc: %b"}
!3330 = !{!3331}
!3331 = distinct !{!3331, !3332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3332 = distinct !{!3332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3333 = !{!3334}
!3334 = distinct !{!3334, !3332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3335 = !{!3331, !3326, !3321, !3316}
!3336 = !{!3334, !3329, !3324, !3319}
!3337 = !{!3338}
!3338 = distinct !{!3338, !3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3339 = distinct !{!3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3342 = distinct !{!3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3343 = !{!3344}
!3344 = distinct !{!3344, !3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3345 = !{!3346}
!3346 = distinct !{!3346, !3347, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3347 = distinct !{!3347, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3348 = !{!3349}
!3349 = distinct !{!3349, !3347, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3350 = !{!3351}
!3351 = distinct !{!3351, !3352, !"cmpfunc: %a"}
!3352 = distinct !{!3352, !"cmpfunc"}
!3353 = !{!3354}
!3354 = distinct !{!3354, !3352, !"cmpfunc: %b"}
!3355 = !{!3356}
!3356 = distinct !{!3356, !3357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3357 = distinct !{!3357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3358 = !{!3359}
!3359 = distinct !{!3359, !3357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3360 = !{!3356, !3351, !3346, !3341}
!3361 = !{!3359, !3354, !3349, !3344}
!3362 = !{!3363}
!3363 = distinct !{!3363, !3364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3364 = distinct !{!3364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3365 = !{!3366}
!3366 = distinct !{!3366, !3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3367 = distinct !{!3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3368 = !{!3369}
!3369 = distinct !{!3369, !3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3372 = distinct !{!3372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3373 = !{!3374}
!3374 = distinct !{!3374, !3372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3375 = !{!3376}
!3376 = distinct !{!3376, !3377, !"cmpfunc: %a"}
!3377 = distinct !{!3377, !"cmpfunc"}
!3378 = !{!3379}
!3379 = distinct !{!3379, !3377, !"cmpfunc: %b"}
!3380 = !{!3381}
!3381 = distinct !{!3381, !3382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3382 = distinct !{!3382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3383 = !{!3384}
!3384 = distinct !{!3384, !3382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3385 = !{!3381, !3376, !3371, !3366}
!3386 = !{!3384, !3379, !3374, !3369}
!3387 = !{!3388}
!3388 = distinct !{!3388, !3389, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3389 = distinct !{!3389, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3392 = distinct !{!3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3393 = !{!3394}
!3394 = distinct !{!3394, !3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3395 = !{!3396}
!3396 = distinct !{!3396, !3397, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3397 = distinct !{!3397, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3398 = !{!3399}
!3399 = distinct !{!3399, !3397, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3400 = !{!3401}
!3401 = distinct !{!3401, !3402, !"cmpfunc: %a"}
!3402 = distinct !{!3402, !"cmpfunc"}
!3403 = !{!3404}
!3404 = distinct !{!3404, !3402, !"cmpfunc: %b"}
!3405 = !{!3406}
!3406 = distinct !{!3406, !3407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3407 = distinct !{!3407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3408 = !{!3409}
!3409 = distinct !{!3409, !3407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3410 = !{!3406, !3401, !3396, !3391}
!3411 = !{!3409, !3404, !3399, !3394}
!3412 = !{!3413}
!3413 = distinct !{!3413, !3414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3414 = distinct !{!3414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3415 = !{!3416}
!3416 = distinct !{!3416, !3417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3417 = distinct !{!3417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3418 = distinct !{!3418, !3419}
!3419 = !{!"llvm.loop.unroll.disable"}
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3422 = distinct !{!3422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3423 = !{!3424}
!3424 = distinct !{!3424, !3422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3425 = !{!3426}
!3426 = distinct !{!3426, !3427, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3427 = distinct !{!3427, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3428 = !{!3429}
!3429 = distinct !{!3429, !3427, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3430 = !{!3431}
!3431 = distinct !{!3431, !3432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3432 = distinct !{!3432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3433 = !{!3434}
!3434 = distinct !{!3434, !3432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3435 = !{!3431, !3429, !3424}
!3436 = !{!3434, !3426, !3421}
!3437 = !{!3438}
!3438 = distinct !{!3438, !3439, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3439 = distinct !{!3439, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3440 = !{!3441}
!3441 = distinct !{!3441, !3442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3442 = distinct !{!3442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3443 = !{!3444}
!3444 = distinct !{!3444, !3442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3447 = distinct !{!3447, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3448 = !{!3449}
!3449 = distinct !{!3449, !3447, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3450 = !{!3451}
!3451 = distinct !{!3451, !3452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3452 = distinct !{!3452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3453 = !{!3454}
!3454 = distinct !{!3454, !3452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3455 = !{!3451, !3449, !3444}
!3456 = !{!3454, !3446, !3441}
!3457 = !{!3458}
!3458 = distinct !{!3458, !3459, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3459 = distinct !{!3459, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3462 = distinct !{!3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3463 = !{!3464}
!3464 = distinct !{!3464, !3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3465 = !{!3466}
!3466 = distinct !{!3466, !3467, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3467 = distinct !{!3467, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3468 = !{!3469}
!3469 = distinct !{!3469, !3467, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3472 = distinct !{!3472, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3473 = !{!3474}
!3474 = distinct !{!3474, !3472, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3475 = !{!3471, !3469, !3464}
!3476 = !{!3474, !3466, !3461}
!3477 = !{!3478}
!3478 = distinct !{!3478, !3479, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3479 = distinct !{!3479, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3480 = !{!3481}
!3481 = distinct !{!3481, !3482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3482 = distinct !{!3482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3483 = !{!3484}
!3484 = distinct !{!3484, !3482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3485 = !{!3486}
!3486 = distinct !{!3486, !3487, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3487 = distinct !{!3487, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3488 = !{!3489}
!3489 = distinct !{!3489, !3487, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3490 = !{!3491}
!3491 = distinct !{!3491, !3492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3492 = distinct !{!3492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3493 = !{!3494}
!3494 = distinct !{!3494, !3492, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3495 = !{!3491, !3489, !3484}
!3496 = !{!3494, !3486, !3481}
!3497 = !{!3498}
!3498 = distinct !{!3498, !3499, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3499 = distinct !{!3499, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3500 = !{!3501}
!3501 = distinct !{!3501, !3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3502 = distinct !{!3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3503 = !{!3504}
!3504 = distinct !{!3504, !3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3505 = !{!3506}
!3506 = distinct !{!3506, !3507, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3507 = distinct !{!3507, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3508 = !{!3509}
!3509 = distinct !{!3509, !3507, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3510 = !{!3511}
!3511 = distinct !{!3511, !3512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3512 = distinct !{!3512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3513 = !{!3514}
!3514 = distinct !{!3514, !3512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3515 = !{!3511, !3509, !3504}
!3516 = !{!3514, !3506, !3501}
!3517 = !{!3518}
!3518 = distinct !{!3518, !3519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3519 = distinct !{!3519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3520 = !{!3521}
!3521 = distinct !{!3521, !3522, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3522 = distinct !{!3522, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3523 = distinct !{!3523, !3419}
!3524 = !{!3525}
!3525 = distinct !{!3525, !3526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!3526 = distinct !{!3526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!3527 = !{!3528}
!3528 = distinct !{!3528, !3526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!3529 = !{!3530}
!3530 = distinct !{!3530, !3531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3531 = distinct !{!3531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3532 = !{!3533}
!3533 = distinct !{!3533, !3531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3534 = !{!3535}
!3535 = distinct !{!3535, !3536, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3536 = distinct !{!3536, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3537 = !{!3538}
!3538 = distinct !{!3538, !3536, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3539 = !{!3540}
!3540 = distinct !{!3540, !3541, !"cmpfunc: %a"}
!3541 = distinct !{!3541, !"cmpfunc"}
!3542 = !{!3543}
!3543 = distinct !{!3543, !3541, !"cmpfunc: %b"}
!3544 = !{!3545}
!3545 = distinct !{!3545, !3546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3546 = distinct !{!3546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3547 = !{!3548}
!3548 = distinct !{!3548, !3546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3549 = !{!3545, !3540, !3535, !3530, !3528}
!3550 = !{!3548, !3543, !3538, !3533, !3525}
!3551 = !{!3552}
!3552 = distinct !{!3552, !3553, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3553 = distinct !{!3553, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3554 = !{!3555}
!3555 = distinct !{!3555, !3556, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!3556 = distinct !{!3556, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!3557 = !{!3558}
!3558 = distinct !{!3558, !3556, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!3559 = !{!3560}
!3560 = distinct !{!3560, !3561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3561 = distinct !{!3561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3562 = !{!3563}
!3563 = distinct !{!3563, !3561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3564 = !{!3565}
!3565 = distinct !{!3565, !3566, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3566 = distinct !{!3566, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3567 = !{!3568}
!3568 = distinct !{!3568, !3566, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3569 = !{!3570}
!3570 = distinct !{!3570, !3571, !"cmpfunc: %a"}
!3571 = distinct !{!3571, !"cmpfunc"}
!3572 = !{!3573}
!3573 = distinct !{!3573, !3571, !"cmpfunc: %b"}
!3574 = !{!3575}
!3575 = distinct !{!3575, !3576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3576 = distinct !{!3576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3577 = !{!3578}
!3578 = distinct !{!3578, !3576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3579 = !{!3575, !3570, !3565, !3560, !3558}
!3580 = !{!3578, !3573, !3568, !3563, !3555}
!3581 = !{!3582}
!3582 = distinct !{!3582, !3583, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3583 = distinct !{!3583, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3584 = !{!3585}
!3585 = distinct !{!3585, !3586, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!3586 = distinct !{!3586, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!3587 = !{!3588}
!3588 = distinct !{!3588, !3586, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!3589 = !{!3590}
!3590 = distinct !{!3590, !3591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3591 = distinct !{!3591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3592 = !{!3593}
!3593 = distinct !{!3593, !3591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3594 = !{!3595}
!3595 = distinct !{!3595, !3596, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3596 = distinct !{!3596, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3597 = !{!3598}
!3598 = distinct !{!3598, !3596, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3599 = !{!3600}
!3600 = distinct !{!3600, !3601, !"cmpfunc: %a"}
!3601 = distinct !{!3601, !"cmpfunc"}
!3602 = !{!3603}
!3603 = distinct !{!3603, !3601, !"cmpfunc: %b"}
!3604 = !{!3605}
!3605 = distinct !{!3605, !3606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3606 = distinct !{!3606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3607 = !{!3608}
!3608 = distinct !{!3608, !3606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3609 = !{!3605, !3600, !3595, !3590, !3588}
!3610 = !{!3608, !3603, !3598, !3593, !3585}
!3611 = !{!3612}
!3612 = distinct !{!3612, !3613, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3613 = distinct !{!3613, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3614 = !{!3615}
!3615 = distinct !{!3615, !3616, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!3616 = distinct !{!3616, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!3617 = !{!3618}
!3618 = distinct !{!3618, !3616, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!3619 = !{!3620}
!3620 = distinct !{!3620, !3621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3621 = distinct !{!3621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3622 = !{!3623}
!3623 = distinct !{!3623, !3621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3624 = !{!3625}
!3625 = distinct !{!3625, !3626, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3626 = distinct !{!3626, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3627 = !{!3628}
!3628 = distinct !{!3628, !3626, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3629 = !{!3630}
!3630 = distinct !{!3630, !3631, !"cmpfunc: %a"}
!3631 = distinct !{!3631, !"cmpfunc"}
!3632 = !{!3633}
!3633 = distinct !{!3633, !3631, !"cmpfunc: %b"}
!3634 = !{!3635}
!3635 = distinct !{!3635, !3636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3636 = distinct !{!3636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3637 = !{!3638}
!3638 = distinct !{!3638, !3636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3639 = !{!3635, !3630, !3625, !3620, !3618}
!3640 = !{!3638, !3633, !3628, !3623, !3615}
!3641 = !{!3642}
!3642 = distinct !{!3642, !3643, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3643 = distinct !{!3643, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3644 = !{!3645}
!3645 = distinct !{!3645, !3646, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!3646 = distinct !{!3646, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!3647 = !{!3648}
!3648 = distinct !{!3648, !3646, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!3649 = !{!3650}
!3650 = distinct !{!3650, !3651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!3651 = distinct !{!3651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!3652 = !{!3653}
!3653 = distinct !{!3653, !3651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!3654 = !{!3655}
!3655 = distinct !{!3655, !3656, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!3656 = distinct !{!3656, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!3657 = !{!3658}
!3658 = distinct !{!3658, !3656, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!3659 = !{!3660}
!3660 = distinct !{!3660, !3661, !"cmpfunc: %a"}
!3661 = distinct !{!3661, !"cmpfunc"}
!3662 = !{!3663}
!3663 = distinct !{!3663, !3661, !"cmpfunc: %b"}
!3664 = !{!3665}
!3665 = distinct !{!3665, !3666, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3666 = distinct !{!3666, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3667 = !{!3668}
!3668 = distinct !{!3668, !3666, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3669 = !{!3665, !3660, !3655, !3650, !3648}
!3670 = !{!3668, !3663, !3658, !3653, !3645}
!3671 = !{!3672}
!3672 = distinct !{!3672, !3673, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3673 = distinct !{!3673, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3674 = !{!3675}
!3675 = distinct !{!3675, !3676, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3676 = distinct !{!3676, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3677 = distinct !{!3677, !3419}
!3678 = !{!3679}
!3679 = distinct !{!3679, !3680, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!3680 = distinct !{!3680, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!3681 = !{!3682}
!3682 = distinct !{!3682, !3680, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!3683 = !{!3684}
!3684 = distinct !{!3684, !3685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3685 = distinct !{!3685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3686 = !{!3687}
!3687 = distinct !{!3687, !3685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3688 = !{!3689}
!3689 = distinct !{!3689, !3690, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3690 = distinct !{!3690, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3691 = !{!3692}
!3692 = distinct !{!3692, !3690, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3693 = !{!3694}
!3694 = distinct !{!3694, !3695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3695 = distinct !{!3695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3696 = !{!3697}
!3697 = distinct !{!3697, !3695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3698 = !{!3694, !3689, !3684, !3682}
!3699 = !{!3697, !3692, !3687, !3679}
!3700 = !{!3701}
!3701 = distinct !{!3701, !3702, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3702 = distinct !{!3702, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3703 = !{!3704}
!3704 = distinct !{!3704, !3705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!3705 = distinct !{!3705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!3706 = !{!3707}
!3707 = distinct !{!3707, !3705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!3708 = !{!3709}
!3709 = distinct !{!3709, !3710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3710 = distinct !{!3710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3711 = !{!3712}
!3712 = distinct !{!3712, !3710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3713 = !{!3714}
!3714 = distinct !{!3714, !3715, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3715 = distinct !{!3715, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3716 = !{!3717}
!3717 = distinct !{!3717, !3715, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3718 = !{!3719}
!3719 = distinct !{!3719, !3720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3720 = distinct !{!3720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3721 = !{!3722}
!3722 = distinct !{!3722, !3720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3723 = !{!3719, !3714, !3709, !3707}
!3724 = !{!3722, !3717, !3712, !3704}
!3725 = !{!3726}
!3726 = distinct !{!3726, !3727, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3727 = distinct !{!3727, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3728 = !{!3729}
!3729 = distinct !{!3729, !3730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!3730 = distinct !{!3730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!3731 = !{!3732}
!3732 = distinct !{!3732, !3730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!3733 = !{!3734}
!3734 = distinct !{!3734, !3735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3735 = distinct !{!3735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3736 = !{!3737}
!3737 = distinct !{!3737, !3735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3738 = !{!3739}
!3739 = distinct !{!3739, !3740, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3740 = distinct !{!3740, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3741 = !{!3742}
!3742 = distinct !{!3742, !3740, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3743 = !{!3744}
!3744 = distinct !{!3744, !3745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3745 = distinct !{!3745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3746 = !{!3747}
!3747 = distinct !{!3747, !3745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3748 = !{!3744, !3739, !3734, !3732}
!3749 = !{!3747, !3742, !3737, !3729}
!3750 = !{!3751}
!3751 = distinct !{!3751, !3752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3752 = distinct !{!3752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3753 = !{!3754}
!3754 = distinct !{!3754, !3755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!3755 = distinct !{!3755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!3756 = !{!3757}
!3757 = distinct !{!3757, !3755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!3758 = !{!3759}
!3759 = distinct !{!3759, !3760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3760 = distinct !{!3760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3761 = !{!3762}
!3762 = distinct !{!3762, !3760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3763 = !{!3764}
!3764 = distinct !{!3764, !3765, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3765 = distinct !{!3765, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3766 = !{!3767}
!3767 = distinct !{!3767, !3765, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3768 = !{!3769}
!3769 = distinct !{!3769, !3770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3770 = distinct !{!3770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3771 = !{!3772}
!3772 = distinct !{!3772, !3770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3773 = !{!3769, !3764, !3759, !3757}
!3774 = !{!3772, !3767, !3762, !3754}
!3775 = !{!3776}
!3776 = distinct !{!3776, !3777, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3777 = distinct !{!3777, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3778 = !{!3779}
!3779 = distinct !{!3779, !3780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!3780 = distinct !{!3780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!3781 = !{!3782}
!3782 = distinct !{!3782, !3780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!3783 = !{!3784}
!3784 = distinct !{!3784, !3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3785 = distinct !{!3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3786 = !{!3787}
!3787 = distinct !{!3787, !3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3788 = !{!3789}
!3789 = distinct !{!3789, !3790, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3790 = distinct !{!3790, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3791 = !{!3792}
!3792 = distinct !{!3792, !3790, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3793 = !{!3794}
!3794 = distinct !{!3794, !3795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3795 = distinct !{!3795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3796 = !{!3797}
!3797 = distinct !{!3797, !3795, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3798 = !{!3794, !3789, !3784, !3782}
!3799 = !{!3797, !3792, !3787, !3779}
!3800 = !{!3801}
!3801 = distinct !{!3801, !3802, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3802 = distinct !{!3802, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3803 = !{!3804}
!3804 = distinct !{!3804, !3805, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3805 = distinct !{!3805, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3806 = distinct !{!3806, !3419}
!3807 = !{!3808}
!3808 = distinct !{!3808, !3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!3809 = distinct !{!3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!3810 = !{!3811}
!3811 = distinct !{!3811, !3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!3812 = !{!3813}
!3813 = distinct !{!3813, !3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3814 = distinct !{!3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3815 = !{!3816}
!3816 = distinct !{!3816, !3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3817 = !{!3818}
!3818 = distinct !{!3818, !3819, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3819 = distinct !{!3819, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3820 = !{!3821}
!3821 = distinct !{!3821, !3819, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3822 = !{!3823}
!3823 = distinct !{!3823, !3824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3824 = distinct !{!3824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3825 = !{!3826}
!3826 = distinct !{!3826, !3824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3827 = !{!3823, !3821, !3816, !3808}
!3828 = !{!3826, !3818, !3813, !3811}
!3829 = !{!3830}
!3830 = distinct !{!3830, !3831, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3831 = distinct !{!3831, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3832 = !{!3833}
!3833 = distinct !{!3833, !3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!3834 = distinct !{!3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!3835 = !{!3836}
!3836 = distinct !{!3836, !3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!3837 = !{!3838}
!3838 = distinct !{!3838, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3839 = distinct !{!3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3840 = !{!3841}
!3841 = distinct !{!3841, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3842 = !{!3843}
!3843 = distinct !{!3843, !3844, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3844 = distinct !{!3844, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3845 = !{!3846}
!3846 = distinct !{!3846, !3844, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3847 = !{!3848}
!3848 = distinct !{!3848, !3849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3849 = distinct !{!3849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3850 = !{!3851}
!3851 = distinct !{!3851, !3849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3852 = !{!3848, !3846, !3841, !3833}
!3853 = !{!3851, !3843, !3838, !3836}
!3854 = !{!3855}
!3855 = distinct !{!3855, !3856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3856 = distinct !{!3856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3857 = !{!3858}
!3858 = distinct !{!3858, !3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!3859 = distinct !{!3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!3860 = !{!3861}
!3861 = distinct !{!3861, !3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!3862 = !{!3863}
!3863 = distinct !{!3863, !3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3864 = distinct !{!3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3865 = !{!3866}
!3866 = distinct !{!3866, !3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3867 = !{!3868}
!3868 = distinct !{!3868, !3869, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3869 = distinct !{!3869, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3870 = !{!3871}
!3871 = distinct !{!3871, !3869, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3872 = !{!3873}
!3873 = distinct !{!3873, !3874, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3874 = distinct !{!3874, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3875 = !{!3876}
!3876 = distinct !{!3876, !3874, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3877 = !{!3873, !3871, !3866, !3858}
!3878 = !{!3876, !3868, !3863, !3861}
!3879 = !{!3880}
!3880 = distinct !{!3880, !3881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3881 = distinct !{!3881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3882 = !{!3883}
!3883 = distinct !{!3883, !3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!3884 = distinct !{!3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!3885 = !{!3886}
!3886 = distinct !{!3886, !3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!3887 = !{!3888}
!3888 = distinct !{!3888, !3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3889 = distinct !{!3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3890 = !{!3891}
!3891 = distinct !{!3891, !3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3892 = !{!3893}
!3893 = distinct !{!3893, !3894, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3894 = distinct !{!3894, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3895 = !{!3896}
!3896 = distinct !{!3896, !3894, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3897 = !{!3898}
!3898 = distinct !{!3898, !3899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3899 = distinct !{!3899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3900 = !{!3901}
!3901 = distinct !{!3901, !3899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3902 = !{!3898, !3896, !3891, !3883}
!3903 = !{!3901, !3893, !3888, !3886}
!3904 = !{!3905}
!3905 = distinct !{!3905, !3906, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3906 = distinct !{!3906, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3907 = !{!3908}
!3908 = distinct !{!3908, !3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!3909 = distinct !{!3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!3910 = !{!3911}
!3911 = distinct !{!3911, !3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!3912 = !{!3913}
!3913 = distinct !{!3913, !3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!3914 = distinct !{!3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!3915 = !{!3916}
!3916 = distinct !{!3916, !3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!3917 = !{!3918}
!3918 = distinct !{!3918, !3919, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!3919 = distinct !{!3919, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!3920 = !{!3921}
!3921 = distinct !{!3921, !3919, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!3922 = !{!3923}
!3923 = distinct !{!3923, !3924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3924 = distinct !{!3924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3925 = !{!3926}
!3926 = distinct !{!3926, !3924, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3927 = !{!3923, !3921, !3916, !3908}
!3928 = !{!3926, !3918, !3913, !3911}
!3929 = !{!3930}
!3930 = distinct !{!3930, !3931, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3931 = distinct !{!3931, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3932 = !{!3933}
!3933 = distinct !{!3933, !3934, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3934 = distinct !{!3934, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3935 = distinct !{!3935, !3419}
!3936 = !{!3937}
!3937 = distinct !{!3937, !3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3938 = distinct !{!3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3939 = !{!3940}
!3940 = distinct !{!3940, !3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3941 = !{!3942}
!3942 = distinct !{!3942, !3943, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3943 = distinct !{!3943, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3944 = !{!3945}
!3945 = distinct !{!3945, !3943, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3946 = !{!3947}
!3947 = distinct !{!3947, !3948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3948 = distinct !{!3948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3949 = !{!3950}
!3950 = distinct !{!3950, !3948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3951 = !{!3947, !3942, !3937}
!3952 = !{!3950, !3945, !3940}
!3953 = !{!3954}
!3954 = distinct !{!3954, !3955, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3955 = distinct !{!3955, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3956 = !{!3957}
!3957 = distinct !{!3957, !3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3958 = distinct !{!3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3959 = !{!3960}
!3960 = distinct !{!3960, !3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3961 = !{!3962}
!3962 = distinct !{!3962, !3963, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3963 = distinct !{!3963, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3964 = !{!3965}
!3965 = distinct !{!3965, !3963, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3966 = !{!3967}
!3967 = distinct !{!3967, !3968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3968 = distinct !{!3968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3969 = !{!3970}
!3970 = distinct !{!3970, !3968, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3971 = !{!3967, !3962, !3957}
!3972 = !{!3970, !3965, !3960}
!3973 = !{!3974}
!3974 = distinct !{!3974, !3975, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3975 = distinct !{!3975, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3976 = !{!3977}
!3977 = distinct !{!3977, !3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3978 = distinct !{!3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3979 = !{!3980}
!3980 = distinct !{!3980, !3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!3981 = !{!3982}
!3982 = distinct !{!3982, !3983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!3983 = distinct !{!3983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!3984 = !{!3985}
!3985 = distinct !{!3985, !3983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!3986 = !{!3987}
!3987 = distinct !{!3987, !3988, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3988 = distinct !{!3988, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3989 = !{!3990}
!3990 = distinct !{!3990, !3988, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3991 = !{!3987, !3982, !3977}
!3992 = !{!3990, !3985, !3980}
!3993 = !{!3994}
!3994 = distinct !{!3994, !3995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!3995 = distinct !{!3995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!3996 = !{!3997}
!3997 = distinct !{!3997, !3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!3998 = distinct !{!3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!3999 = !{!4000}
!4000 = distinct !{!4000, !3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!4001 = !{!4002}
!4002 = distinct !{!4002, !4003, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!4003 = distinct !{!4003, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!4004 = !{!4005}
!4005 = distinct !{!4005, !4003, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!4006 = !{!4007}
!4007 = distinct !{!4007, !4008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4008 = distinct !{!4008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4009 = !{!4010}
!4010 = distinct !{!4010, !4008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4011 = !{!4007, !4002, !3997}
!4012 = !{!4010, !4005, !4000}
!4013 = !{!4014}
!4014 = distinct !{!4014, !4015, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!4015 = distinct !{!4015, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!4016 = !{!4017}
!4017 = distinct !{!4017, !4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!4018 = distinct !{!4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!4019 = !{!4020}
!4020 = distinct !{!4020, !4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!4021 = !{!4022}
!4022 = distinct !{!4022, !4023, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!4023 = distinct !{!4023, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!4024 = !{!4025}
!4025 = distinct !{!4025, !4023, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!4026 = !{!4027}
!4027 = distinct !{!4027, !4028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4028 = distinct !{!4028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4029 = !{!4030}
!4030 = distinct !{!4030, !4028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4031 = !{!4027, !4022, !4017}
!4032 = !{!4030, !4025, !4020}
!4033 = !{!4034}
!4034 = distinct !{!4034, !4035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!4035 = distinct !{!4035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!4036 = !{!4037}
!4037 = distinct !{!4037, !4038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!4038 = distinct !{!4038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!4039 = distinct !{!4039, !3419}
!4040 = !{!4041}
!4041 = distinct !{!4041, !4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!4042 = distinct !{!4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!4043 = !{!4044}
!4044 = distinct !{!4044, !4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!4045 = !{!4046}
!4046 = distinct !{!4046, !4047, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!4047 = distinct !{!4047, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!4048 = !{!4049}
!4049 = distinct !{!4049, !4050, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E: %c"}
!4050 = distinct !{!4050, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E"}
!4051 = !{!4052}
!4052 = distinct !{!4052, !4047, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!4053 = !{!4054}
!4054 = distinct !{!4054, !4055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4055 = distinct !{!4055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4056 = !{!4057}
!4057 = distinct !{!4057, !4055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4058 = !{!4054, !4046, !4041, !4059}
!4059 = distinct !{!4059, !4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E: %v.0"}
!4060 = distinct !{!4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E"}
!4061 = !{!4057, !4052, !4044, !4049, !4062}
!4062 = distinct !{!4062, !4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E: %is_less"}
!4063 = !{!4057, !4052, !4044, !4059}
!4064 = !{!4054, !4046, !4041, !4049, !4062}
!4065 = !{!4066, !4068, !4070, !4059}
!4066 = distinct !{!4066, !4067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4067 = distinct !{!4067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4068 = distinct !{!4068, !4069, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!4069 = distinct !{!4069, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!4070 = distinct !{!4070, !4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!4071 = distinct !{!4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!4072 = !{!4073, !4074, !4075, !4062}
!4073 = distinct !{!4073, !4067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4074 = distinct !{!4074, !4069, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!4075 = distinct !{!4075, !4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!4076 = !{!4077, !4079, !4081}
!4077 = distinct !{!4077, !4078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4078 = distinct !{!4078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4079 = distinct !{!4079, !4080, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!4080 = distinct !{!4080, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!4081 = distinct !{!4081, !4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!4082 = distinct !{!4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!4083 = !{!4084, !4085, !4086}
!4084 = distinct !{!4084, !4078, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4085 = distinct !{!4085, !4080, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!4086 = distinct !{!4086, !4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!4087 = !{!4088, !4090}
!4088 = distinct !{!4088, !4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!4089 = distinct !{!4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!4090 = distinct !{!4090, !4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!4091 = !{!4092}
!4092 = distinct !{!4092, !4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!4093 = distinct !{!4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!4094 = !{!4095}
!4095 = distinct !{!4095, !4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!4096 = !{!4097}
!4097 = distinct !{!4097, !4098, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!4098 = distinct !{!4098, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!4099 = !{!4100}
!4100 = distinct !{!4100, !4101, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE: %c"}
!4101 = distinct !{!4101, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE"}
!4102 = !{!4103}
!4103 = distinct !{!4103, !4098, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!4104 = !{!4105}
!4105 = distinct !{!4105, !4106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4106 = distinct !{!4106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4107 = !{!4108}
!4108 = distinct !{!4108, !4106, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4109 = !{!4105, !4103, !4095, !4110}
!4110 = distinct !{!4110, !4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E: %v.0"}
!4111 = distinct !{!4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E"}
!4112 = !{!4108, !4097, !4092, !4100, !4113}
!4113 = distinct !{!4113, !4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E: %is_less"}
!4114 = !{!4108, !4097, !4092, !4110}
!4115 = !{!4105, !4103, !4095, !4100, !4113}
!4116 = !{!4117, !4119, !4121, !4110}
!4117 = distinct !{!4117, !4118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4118 = distinct !{!4118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4119 = distinct !{!4119, !4120, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!4120 = distinct !{!4120, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!4121 = distinct !{!4121, !4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!4122 = distinct !{!4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!4123 = !{!4124, !4125, !4126, !4113}
!4124 = distinct !{!4124, !4118, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4125 = distinct !{!4125, !4120, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!4126 = distinct !{!4126, !4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!4127 = !{!4128, !4130, !4132}
!4128 = distinct !{!4128, !4129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4129 = distinct !{!4129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4130 = distinct !{!4130, !4131, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!4131 = distinct !{!4131, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!4132 = distinct !{!4132, !4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!4133 = distinct !{!4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!4134 = !{!4135, !4136, !4137}
!4135 = distinct !{!4135, !4129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4136 = distinct !{!4136, !4131, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!4137 = distinct !{!4137, !4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!4138 = !{!4139, !4141}
!4139 = distinct !{!4139, !4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!4140 = distinct !{!4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!4141 = distinct !{!4141, !4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!4142 = !{!4143}
!4143 = distinct !{!4143, !4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!4144 = distinct !{!4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!4145 = !{!4146}
!4146 = distinct !{!4146, !4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!4147 = !{!4148}
!4148 = distinct !{!4148, !4149, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!4149 = distinct !{!4149, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!4150 = !{!4151}
!4151 = distinct !{!4151, !4152, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE: %c"}
!4152 = distinct !{!4152, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE"}
!4153 = !{!4154}
!4154 = distinct !{!4154, !4149, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!4155 = !{!4156}
!4156 = distinct !{!4156, !4157, !"cmpfunc: %a"}
!4157 = distinct !{!4157, !"cmpfunc"}
!4158 = !{!4159}
!4159 = distinct !{!4159, !4157, !"cmpfunc: %b"}
!4160 = !{!4161}
!4161 = distinct !{!4161, !4162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4162 = distinct !{!4162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4163 = !{!4164}
!4164 = distinct !{!4164, !4162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4165 = !{!4161, !4156, !4148, !4143, !4166}
!4166 = distinct !{!4166, !4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE: %v.0"}
!4167 = distinct !{!4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE"}
!4168 = !{!4164, !4159, !4154, !4146, !4151, !4169}
!4169 = distinct !{!4169, !4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE: %is_less"}
!4170 = !{!4164, !4159, !4154, !4146, !4166}
!4171 = !{!4161, !4156, !4148, !4143, !4151, !4169}
!4172 = !{!4173, !4175, !4177, !4179, !4166}
!4173 = distinct !{!4173, !4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4174 = distinct !{!4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4175 = distinct !{!4175, !4176, !"cmpfunc: %b"}
!4176 = distinct !{!4176, !"cmpfunc"}
!4177 = distinct !{!4177, !4178, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!4178 = distinct !{!4178, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!4179 = distinct !{!4179, !4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!4180 = distinct !{!4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!4181 = !{!4182, !4183, !4184, !4185, !4169}
!4182 = distinct !{!4182, !4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4183 = distinct !{!4183, !4176, !"cmpfunc: %a"}
!4184 = distinct !{!4184, !4178, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!4185 = distinct !{!4185, !4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!4186 = !{!4187, !4189, !4191, !4193}
!4187 = distinct !{!4187, !4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4188 = distinct !{!4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4189 = distinct !{!4189, !4190, !"cmpfunc: %a"}
!4190 = distinct !{!4190, !"cmpfunc"}
!4191 = distinct !{!4191, !4192, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!4192 = distinct !{!4192, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!4193 = distinct !{!4193, !4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!4194 = distinct !{!4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!4195 = !{!4196, !4197, !4198, !4199}
!4196 = distinct !{!4196, !4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4197 = distinct !{!4197, !4190, !"cmpfunc: %b"}
!4198 = distinct !{!4198, !4192, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!4199 = distinct !{!4199, !4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!4200 = !{!4201, !4203}
!4201 = distinct !{!4201, !4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!4202 = distinct !{!4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!4203 = distinct !{!4203, !4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!4204 = !{i64 0, i64 -9223372036854775808}
!4205 = !{!4206}
!4206 = distinct !{!4206, !4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4207 = distinct !{!4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4208 = !{!4209}
!4209 = distinct !{!4209, !4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4210 = !{!4211}
!4211 = distinct !{!4211, !4212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE: %self.0"}
!4212 = distinct !{!4212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE"}
!4213 = !{!4214, !4216, !4211}
!4214 = distinct !{!4214, !4215, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE: %v.0"}
!4215 = distinct !{!4215, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE"}
!4216 = distinct !{!4216, !4215, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE: argument 1"}
!4217 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!4218 = !{!4219}
!4219 = distinct !{!4219, !4220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE: %self.0"}
!4220 = distinct !{!4220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE"}
!4221 = !{!4222, !4224, !4219}
!4222 = distinct !{!4222, !4223, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE: %v.0"}
!4223 = distinct !{!4223, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE"}
!4224 = distinct !{!4224, !4223, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE: argument 1"}
!4225 = !{!4226}
!4226 = distinct !{!4226, !4227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE: %self.0"}
!4227 = distinct !{!4227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE"}
!4228 = !{!4229, !4231, !4226}
!4229 = distinct !{!4229, !4230, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E: %v.0"}
!4230 = distinct !{!4230, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E"}
!4231 = distinct !{!4231, !4230, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E: argument 1"}
