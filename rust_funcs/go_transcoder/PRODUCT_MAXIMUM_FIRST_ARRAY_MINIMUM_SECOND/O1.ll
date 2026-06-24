; ModuleID = 'PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.20328749ed934861-cgu.0'
source_filename = "PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.20328749ed934861-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_a10b664eca82549d81cab5e5995dde2a = private unnamed_addr constant [138 x i8] c"/root/es/vert/vert/rust_funcs/go_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs\00", align 1
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_66c3de894cc23437f97268b1a6d4bdd4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a10b664eca82549d81cab5e5995dde2a, [16 x i8] c"\89\00\00\00\00\00\00\00\19\00\00\00\05\00\00\00" }>, align 8
@alloc_99a1c1dbdd6e8c0ca6baae108b218afe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a10b664eca82549d81cab5e5995dde2a, [16 x i8] c"\89\00\00\00\00\00\00\00\19\00\00\00\1D\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7e9d50d361dcbc80E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3be6e15b4653cfdfE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3be6e15b4653cfdfE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3be6e15b4653cfdfE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3be6e15b4653cfdfE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb5bbb20143997882E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb5bbb20143997882E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb5bbb20143997882E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb5bbb20143997882E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_4.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !72, !noalias !73, !noundef !37
  %_5.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !74, !noalias !75, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !76, !noalias !83, !noundef !37
  %_0.i7 = icmp slt i32 %_4.i.i.i, %_5.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_5.i.i.i, %_5.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc69b9fb143795ed5E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc69b9fb143795ed5E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc69b9fb143795ed5E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc69b9fb143795ed5E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !105, !noalias !106, !noundef !37
  %_5.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !107, !noalias !108, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_4.i.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !109, !noalias !116, !noundef !37
  %_0.i7 = icmp slt i32 %_4.i.i.i5, %_5.i.i.i
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i5, %_4.i.i.i
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !140, !noalias !141, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !141, !noalias !140, !noundef !37
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !142, !noalias !151, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !156
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %_4.i.i.i = load i32, ptr %0, align 4, !alias.scope !176, !noalias !177, !noundef !37
  %_5.i.i.i = load i32, ptr %tail, align 4, !alias.scope !177, !noalias !176, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
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
  %_4.i.i.i1 = load i32, ptr %2, align 4, !alias.scope !178, !noalias !185, !noundef !37
  %_0.i3 = icmp slt i32 %_4.i.i.i1, %_5.i.i.i
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_5.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !189
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %_4.i.i.i = load i32, ptr %tail, align 4, !alias.scope !209, !noalias !210, !noundef !37
  %_5.i.i.i = load i32, ptr %0, align 4, !alias.scope !210, !noalias !209, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
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
  %_5.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !211, !noalias !218, !noundef !37
  %_0.i3 = icmp slt i32 %_4.i.i.i, %_5.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !222
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hd7eaeae6c218f95aE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %_4.i.i.i = load i32, ptr %_7, align 4, !alias.scope !242, !noalias !243, !noundef !37
  %_5.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !243, !noalias !242, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %_4.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !259, !noalias !260, !noundef !37
  %_5.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !260, !noalias !259, !noundef !37
  %_0.i9 = icmp slt i32 %_4.i.i.i7, %_5.i.i.i8
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
  %_4.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !276, !noalias !277, !noundef !37
  %_5.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !277, !noalias !276, !noundef !37
  %_0.i12 = icmp slt i32 %_4.i.i.i10, %_5.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %_4.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !293, !noalias !294, !noundef !37
  %_5.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !294, !noalias !293, !noundef !37
  %_0.i15 = icmp slt i32 %_4.i.i.i13, %_5.i.i.i14
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
  %_4.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !310, !noalias !311, !noundef !37
  %_5.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !311, !noalias !310, !noundef !37
  %_0.i18 = icmp slt i32 %_4.i.i.i16, %_5.i.i.i17
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hddaaf23d365e29fcE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !332, !noalias !333, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !333, !noalias !332, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !354, !noalias !355, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !355, !noalias !354, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !376, !noalias !377, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !377, !noalias !376, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !398, !noalias !399, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !399, !noalias !398, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !420, !noalias !421, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !421, !noalias !420, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hed6e9c79dcd54f7aE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !437, !noalias !438, !noundef !37
  %_5.i.i.i = load i32, ptr %_7, align 4, !alias.scope !438, !noalias !437, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %_4.i.i.i7 = load i32, ptr %_14, align 4, !alias.scope !454, !noalias !455, !noundef !37
  %_5.i.i.i8 = load i32, ptr %_12, align 4, !alias.scope !455, !noalias !454, !noundef !37
  %_0.i9 = icmp slt i32 %_4.i.i.i7, %_5.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %_4.i.i.i10 = load i32, ptr %a, align 4, !alias.scope !471, !noalias !472, !noundef !37
  %_5.i.i.i11 = load i32, ptr %c, align 4, !alias.scope !472, !noalias !471, !noundef !37
  %_0.i12 = icmp slt i32 %_4.i.i.i10, %_5.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %_4.i.i.i13 = load i32, ptr %b, align 4, !alias.scope !488, !noalias !489, !noundef !37
  %_5.i.i.i14 = load i32, ptr %d, align 4, !alias.scope !489, !noalias !488, !noundef !37
  %_0.i15 = icmp slt i32 %_4.i.i.i13, %_5.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %_4.i.i.i16 = load i32, ptr %2, align 4, !alias.scope !505, !noalias !506, !noundef !37
  %_5.i.i.i17 = load i32, ptr %4, align 4, !alias.scope !506, !noalias !505, !noundef !37
  %_0.i18 = icmp slt i32 %_4.i.i.i16, %_5.i.i.i17
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h04b695d01a5e5d68E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !522, !noalias !523, !noundef !37
  %_5.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !523, !noalias !522, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %_4.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !539, !noalias !540, !noundef !37
  %_5.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !540, !noalias !539, !noundef !37
  %_0.i9.i = icmp slt i32 %_4.i.i.i7.i, %_5.i.i.i8.i
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
  %_4.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !556, !noalias !557, !noundef !37
  %_5.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !557, !noalias !556, !noundef !37
  %_0.i12.i = icmp slt i32 %_4.i.i.i10.i, %_5.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %_4.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !573, !noalias !574, !noundef !37
  %_5.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !574, !noalias !573, !noundef !37
  %_0.i15.i = icmp slt i32 %_4.i.i.i13.i, %_5.i.i.i14.i
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
  %_4.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !590, !noalias !591, !noundef !37
  %_5.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !591, !noalias !590, !noundef !37
  %_0.i18.i = icmp slt i32 %_4.i.i.i16.i, %_5.i.i.i17.i
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
  %_4.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !607, !noalias !608, !noundef !37
  %_5.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !608, !noalias !607, !noundef !37
  %_0.i.i4 = icmp slt i32 %_4.i.i.i.i2, %_5.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %_4.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !624, !noalias !625, !noundef !37
  %_5.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !625, !noalias !624, !noundef !37
  %_0.i9.i9 = icmp slt i32 %_4.i.i.i7.i7, %_5.i.i.i8.i8
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
  %_4.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !641, !noalias !642, !noundef !37
  %_5.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !642, !noalias !641, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_4.i.i.i10.i19, %_5.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %_4.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !658, !noalias !659, !noundef !37
  %_5.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !659, !noalias !658, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_4.i.i.i13.i22, %_5.i.i.i14.i23
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
  %_4.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !675, !noalias !676, !noundef !37
  %_5.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !676, !noalias !675, !noundef !37
  %_0.i18.i27 = icmp slt i32 %_4.i.i.i16.i25, %_5.i.i.i17.i26
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
  %_4.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !698, !noalias !699, !noundef !37
  %_5.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !700, !noalias !701, !noundef !37
  %_0.i.i38 = icmp slt i32 %_4.i.i.i.i36, %_5.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i36, i32 %_5.i.i.i.i37)
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
  %_4.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !722, !noalias !723, !noundef !37
  %_5.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !724, !noalias !725, !noundef !37
  %_0.i21.i = icmp slt i32 %_4.i.i.i19.i, %_5.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19.i, i32 %_5.i.i.i20.i)
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
  %_4.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !37
  %_5.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !742, !noalias !743, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i.i36.1, %_5.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i36.1, i32 %_5.i.i.i.i37.1)
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
  %_4.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !756, !noalias !757, !noundef !37
  %_5.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !758, !noalias !759, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19.i.1, i32 %_5.i.i.i20.i.1)
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
  %_4.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !772, !noalias !773, !noundef !37
  %_5.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !774, !noalias !775, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i.i36.2, %_5.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i36.2, i32 %_5.i.i.i.i37.2)
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
  %_4.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !788, !noalias !789, !noundef !37
  %_5.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !790, !noalias !791, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19.i.2, i32 %_5.i.i.i20.i.2)
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
  %_4.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !804, !noalias !805, !noundef !37
  %_5.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !806, !noalias !807, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i.i36.3, %_5.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i36.3, i32 %_5.i.i.i.i37.3)
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
  %_4.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !820, !noalias !821, !noundef !37
  %_5.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !822, !noalias !823, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19.i.3, i32 %_5.i.i.i20.i.3)
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !677
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h935c031a7d679bafE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !840, !noalias !841, !noundef !37
  %_5.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !841, !noalias !840, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %_4.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !857, !noalias !858, !noundef !37
  %_5.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !858, !noalias !857, !noundef !37
  %_0.i9.i = icmp slt i32 %_4.i.i.i7.i, %_5.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %_4.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !874, !noalias !875, !noundef !37
  %_5.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !875, !noalias !874, !noundef !37
  %_0.i12.i = icmp slt i32 %_4.i.i.i10.i, %_5.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %_4.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !891, !noalias !892, !noundef !37
  %_5.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !892, !noalias !891, !noundef !37
  %_0.i15.i = icmp slt i32 %_4.i.i.i13.i, %_5.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %_4.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !908, !noalias !909, !noundef !37
  %_5.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !909, !noalias !908, !noundef !37
  %_0.i18.i = icmp slt i32 %_4.i.i.i16.i, %_5.i.i.i17.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %_4.i.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !925, !noalias !926, !noundef !37
  %_5.i.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !926, !noalias !925, !noundef !37
  %_0.i.i4 = icmp slt i32 %_4.i.i.i.i2, %_5.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %_4.i.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !942, !noalias !943, !noundef !37
  %_5.i.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !943, !noalias !942, !noundef !37
  %_0.i9.i9 = icmp slt i32 %_4.i.i.i7.i7, %_5.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %_4.i.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !959, !noalias !960, !noundef !37
  %_5.i.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !960, !noalias !959, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_4.i.i.i10.i19, %_5.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %_4.i.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !976, !noalias !977, !noundef !37
  %_5.i.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !977, !noalias !976, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_4.i.i.i13.i22, %_5.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %_4.i.i.i16.i25 = load i32, ptr %12, align 4, !alias.scope !993, !noalias !994, !noundef !37
  %_5.i.i.i17.i26 = load i32, ptr %14, align 4, !alias.scope !994, !noalias !993, !noundef !37
  %_0.i18.i27 = icmp slt i32 %_4.i.i.i16.i25, %_5.i.i.i17.i26
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014), !noalias !1006
  %_4.i.i.i.i36 = load i32, ptr %scratch_base, align 4, !alias.scope !1016, !noalias !1017, !noundef !37
  %_5.i.i.i.i37 = load i32, ptr %_10, align 4, !alias.scope !1018, !noalias !1019, !noundef !37
  %_0.i.i38 = icmp slt i32 %_4.i.i.i.i36, %_5.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i36, i32 %_5.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1020
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038), !noalias !1030
  %_4.i.i.i19.i = load i32, ptr %20, align 4, !alias.scope !1040, !noalias !1041, !noundef !37
  %_5.i.i.i20.i = load i32, ptr %21, align 4, !alias.scope !1042, !noalias !1043, !noundef !37
  %_0.i21.i = icmp slt i32 %_4.i.i.i19.i, %_5.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19.i, i32 %_5.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1044
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056), !noalias !1006
  %_4.i.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1058, !noalias !1059, !noundef !37
  %_5.i.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1060, !noalias !1061, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i.i36.1, %_5.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i36.1, i32 %_5.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1020
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072), !noalias !1030
  %_4.i.i.i19.i.1 = load i32, ptr %26, align 4, !alias.scope !1074, !noalias !1075, !noundef !37
  %_5.i.i.i20.i.1 = load i32, ptr %25, align 4, !alias.scope !1076, !noalias !1077, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19.i.1, i32 %_5.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1044
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088), !noalias !1006
  %_4.i.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1090, !noalias !1091, !noundef !37
  %_5.i.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1092, !noalias !1093, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i.i36.2, %_5.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i36.2, i32 %_5.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1020
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104), !noalias !1030
  %_4.i.i.i19.i.2 = load i32, ptr %31, align 4, !alias.scope !1106, !noalias !1107, !noundef !37
  %_5.i.i.i20.i.2 = load i32, ptr %30, align 4, !alias.scope !1108, !noalias !1109, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19.i.2, i32 %_5.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1044
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118), !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120), !noalias !1006
  %_4.i.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1122, !noalias !1123, !noundef !37
  %_5.i.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1124, !noalias !1125, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i.i36.3, %_5.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i36.3, i32 %_5.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1020
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134), !noalias !1030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1030
  %_4.i.i.i19.i.3 = load i32, ptr %36, align 4, !alias.scope !1138, !noalias !1139, !noundef !37
  %_5.i.i.i20.i.3 = load i32, ptr %35, align 4, !alias.scope !1140, !noalias !1141, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19.i.3, i32 %_5.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1044
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !995
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7ae7b6acab53429E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1162, !noalias !1163, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !1163, !noalias !1162, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1184, !noalias !1185, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1185, !noalias !1184, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1206, !noalias !1207, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1207, !noalias !1206, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1228, !noalias !1229, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1229, !noalias !1228, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1250, !noalias !1251, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1251, !noalias !1250, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !1272, !noalias !1273, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !1273, !noalias !1272, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !1294, !noalias !1295, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !1295, !noalias !1294, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !1316, !noalias !1317, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !1317, !noalias !1316, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !1338, !noalias !1339, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !1339, !noalias !1338, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !1360, !noalias !1361, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !1361, !noalias !1360, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386), !noalias !1373
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !1388, !noalias !1389, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !1390, !noalias !1391, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1392
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415), !noalias !1402
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !1417, !noalias !1418, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !1419, !noalias !1420, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1421
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437), !noalias !1373
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1439, !noalias !1440, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1441, !noalias !1442, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1392
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457), !noalias !1402
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1459, !noalias !1460, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1461, !noalias !1462, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1421
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477), !noalias !1373
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1479, !noalias !1480, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1481, !noalias !1482, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1392
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497), !noalias !1402
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1499, !noalias !1500, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1501, !noalias !1502, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1421
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515), !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517), !noalias !1373
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1519, !noalias !1520, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1521, !noalias !1522, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1392
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535), !noalias !1402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537), !noalias !1402
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1539, !noalias !1540, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1541, !noalias !1542, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1421
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E.exit, !prof !824

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1362
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %_4.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1561, !noalias !1562, !noundef !37
  %_5.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1563, !noalias !1564, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
  %_4.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1585, !noalias !1586, !noundef !37
  %_5.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1587, !noalias !1588, !noundef !37
  %_0.i21 = icmp slt i32 %_4.i.i.i19, %_5.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19, i32 %_5.i.i.i20)
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
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %_4.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1667, !noalias !1668, !noundef !37
  %_5.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1669, !noalias !1670, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
  %_4.i.i.i19 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1691, !noalias !1692, !noundef !37
  %_5.i.i.i20 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1693, !noalias !1694, !noundef !37
  %_0.i21 = icmp slt i32 %_4.i.i.i19, %_5.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19, i32 %_5.i.i.i20)
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
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h132ab36f5bb8cf1aE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %_4.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1712, !noalias !1713, !noundef !37
  %_5.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1713, !noalias !1712, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1714, !noalias !1721, !noundef !37
  %_0.i3.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1725
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9b948b749a54898aE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1750, !noalias !1751, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1751, !noalias !1750, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1752, !noalias !1761, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1766
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9d2335476d459babE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1786, !noalias !1787, !noundef !37
  %_5.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1787, !noalias !1786, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i1.i = load i32, ptr %4, align 4, !alias.scope !1788, !noalias !1795, !noundef !37
  %_0.i3.i = icmp slt i32 %_4.i.i.i1.i, %_5.i.i.i.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_5.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1799
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1986d9b99dc80942E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7ae7b6acab53429E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7ae7b6acab53429E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1824, !noalias !1825, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1825, !noalias !1824, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1846, !noalias !1847, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1847, !noalias !1846, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1868, !noalias !1869, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1869, !noalias !1868, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1890, !noalias !1891, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1891, !noalias !1890, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1912, !noalias !1913, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1913, !noalias !1912, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1934, !noalias !1935, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1935, !noalias !1934, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1956, !noalias !1957, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1957, !noalias !1956, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1978, !noalias !1979, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1979, !noalias !1978, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2000, !noalias !2001, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2001, !noalias !2000, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2022, !noalias !2023, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2023, !noalias !2022, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2024
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2024, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035), !noalias !2038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041), !noalias !2038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043), !noalias !2038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046), !noalias !2038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048), !noalias !2038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051), !noalias !2038
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2053, !noalias !2054, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2055, !noalias !2056, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2057
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064), !noalias !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070), !noalias !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072), !noalias !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075), !noalias !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077), !noalias !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080), !noalias !2067
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2082, !noalias !2083, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2084, !noalias !2085, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2086
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2027
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2027
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2088
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2093, !noalias !2102, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2107, !noalias !2116, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2121
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h169bc66e21d4f611E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h606242472619021aE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h935c031a7d679bafE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h935c031a7d679bafE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2141, !noalias !2142, !noundef !37
  %_5.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !2142, !noalias !2141, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  %_4.i.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !2158, !noalias !2159, !noundef !37
  %_5.i.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !2159, !noalias !2158, !noundef !37
  %_0.i9.i = icmp slt i32 %_4.i.i.i7.i, %_5.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %_4.i.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !2175, !noalias !2176, !noundef !37
  %_5.i.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !2176, !noalias !2175, !noundef !37
  %_0.i12.i = icmp slt i32 %_4.i.i.i10.i, %_5.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  %_4.i.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !2192, !noalias !2193, !noundef !37
  %_5.i.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !2193, !noalias !2192, !noundef !37
  %_0.i15.i = icmp slt i32 %_4.i.i.i13.i, %_5.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %_4.i.i.i16.i = load i32, ptr %2, align 4, !alias.scope !2209, !noalias !2210, !noundef !37
  %_5.i.i.i17.i = load i32, ptr %4, align 4, !alias.scope !2210, !noalias !2209, !noundef !37
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i16.i, i32 %_5.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i16.i, i32 %_5.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i13.i, i32 %_5.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %_4.i.i.i.i14 = load i32, ptr %_27, align 4, !alias.scope !2226, !noalias !2227, !noundef !37
  %_5.i.i.i.i15 = load i32, ptr %_7.i13, align 4, !alias.scope !2227, !noalias !2226, !noundef !37
  %_0.i.i16 = icmp slt i32 %_4.i.i.i.i14, %_5.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %_4.i.i.i7.i19 = load i32, ptr %_14.i18, align 4, !alias.scope !2243, !noalias !2244, !noundef !37
  %_5.i.i.i8.i20 = load i32, ptr %_12.i17, align 4, !alias.scope !2244, !noalias !2243, !noundef !37
  %_0.i9.i21 = icmp slt i32 %_4.i.i.i7.i19, %_5.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  %_4.i.i.i10.i31 = load i32, ptr %a.i23, align 4, !alias.scope !2260, !noalias !2261, !noundef !37
  %_5.i.i.i11.i32 = load i32, ptr %c.i28, align 4, !alias.scope !2261, !noalias !2260, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_4.i.i.i10.i31, %_5.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %_4.i.i.i13.i34 = load i32, ptr %b.i26, align 4, !alias.scope !2277, !noalias !2278, !noundef !37
  %_5.i.i.i14.i35 = load i32, ptr %d.i30, align 4, !alias.scope !2278, !noalias !2277, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_4.i.i.i13.i34, %_5.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  %_4.i.i.i16.i37 = load i32, ptr %12, align 4, !alias.scope !2294, !noalias !2295, !noundef !37
  %_5.i.i.i17.i38 = load i32, ptr %14, align 4, !alias.scope !2295, !noalias !2294, !noundef !37
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i16.i37, i32 %_5.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i16.i37, i32 %_5.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i13.i34, i32 %_5.i.i.i14.i35)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2296
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2296, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307), !noalias !2310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313), !noalias !2310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2315), !noalias !2310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318), !noalias !2310
  %_4.i.i.i.i49 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2320, !noalias !2321, !noundef !37
  %_5.i.i.i.i50 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2322, !noalias !2323, !noundef !37
  %_0.i.i51 = icmp slt i32 %_4.i.i.i.i49, %_5.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i49, i32 %_5.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2324
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331), !noalias !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2337), !noalias !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339), !noalias !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342), !noalias !2334
  %_4.i.i.i19.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2344, !noalias !2345, !noundef !37
  %_5.i.i.i20.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2346, !noalias !2347, !noundef !37
  %_0.i21.i = icmp slt i32 %_4.i.i.i19.i, %_5.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i19.i, i32 %_5.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2348
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2299
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2299
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2350
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i55 = load i32, ptr %41, align 4, !alias.scope !2355, !noalias !2362, !noundef !37
  %_0.i.i57 = icmp slt i32 %_4.i.i.i.i55, %40
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i1.i = load i32, ptr %43, align 4, !alias.scope !2366, !noalias !2373, !noundef !37
  %_0.i3.i = icmp slt i32 %_4.i.i.i1.i, %40
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2377
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h608ac98aa8ad81b2E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hfe3d03db74412601E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h04b695d01a5e5d68E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h04b695d01a5e5d68E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %_4.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !2397, !noalias !2398, !noundef !37
  %_5.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2398, !noalias !2397, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %_4.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !2414, !noalias !2415, !noundef !37
  %_5.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !2415, !noalias !2414, !noundef !37
  %_0.i9.i = icmp slt i32 %_4.i.i.i7.i, %_5.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  %_4.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !2431, !noalias !2432, !noundef !37
  %_5.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !2432, !noalias !2431, !noundef !37
  %_0.i12.i = icmp slt i32 %_4.i.i.i10.i, %_5.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  %_4.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !2448, !noalias !2449, !noundef !37
  %_5.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !2449, !noalias !2448, !noundef !37
  %_0.i15.i = icmp slt i32 %_4.i.i.i13.i, %_5.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %_4.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !2465, !noalias !2466, !noundef !37
  %_5.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !2466, !noalias !2465, !noundef !37
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i16.i, i32 %_5.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i16.i, i32 %_5.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i13.i, i32 %_5.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  %_4.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !2482, !noalias !2483, !noundef !37
  %_5.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !2483, !noalias !2482, !noundef !37
  %_0.i.i16 = icmp slt i32 %_4.i.i.i.i14, %_5.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %_4.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !2499, !noalias !2500, !noundef !37
  %_5.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !2500, !noalias !2499, !noundef !37
  %_0.i9.i21 = icmp slt i32 %_4.i.i.i7.i19, %_5.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %_4.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !2516, !noalias !2517, !noundef !37
  %_5.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !2517, !noalias !2516, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_4.i.i.i10.i31, %_5.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %_4.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !2533, !noalias !2534, !noundef !37
  %_5.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !2534, !noalias !2533, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_4.i.i.i13.i34, %_5.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %_4.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !2550, !noalias !2551, !noundef !37
  %_5.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !2551, !noalias !2550, !noundef !37
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i16.i37, i32 %_5.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i16.i37, i32 %_5.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i13.i34, i32 %_5.i.i.i14.i35)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !2552
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !2552, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563), !noalias !2566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569), !noalias !2566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571), !noalias !2566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574), !noalias !2566
  %_4.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !2576, !noalias !2577, !noundef !37
  %_5.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !2578, !noalias !2579, !noundef !37
  %_0.i.i51 = icmp slt i32 %_4.i.i.i.i49, %_5.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i49, i32 %_5.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !2580
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587), !noalias !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593), !noalias !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595), !noalias !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598), !noalias !2590
  %_4.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !2600, !noalias !2601, !noundef !37
  %_5.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !2602, !noalias !2603, !noundef !37
  %_0.i21.i = icmp slt i32 %_4.i.i.i19.i, %_5.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i19.i, i32 %_5.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !2604
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !2555
  store i32 %37, ptr %_16.i.i, align 4, !noalias !2555
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !2606
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_5.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !2611, !noalias !2618, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_5.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !2622, !noalias !2629, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_5.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !2633
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he20b6fc2915f781cE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h5442fc87e02861cdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2638
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit": ; preds = %.noexc
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17ha822b47792fd0b63E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17h9388a405acdab576E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2644
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit": ; preds = %.noexc
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17he99b1aa18d33d671E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17ha15009eb1b75ff5bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", !prof !2643

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !2647
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit": ; preds = %.noexc
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hfa64f24281f43381E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hd2d9274e6f48b9a1E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h4f2f49e3a8e4f4ebE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2665, !noalias !2666, !noundef !37
  %_5.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2666, !noalias !2665, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb5.i.preheader

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
  %_4.i.i.i1 = load i32, ptr %gep, align 4, !alias.scope !2682, !noalias !2683, !noundef !37
  %_5.i.i.i2 = load i32, ptr %0, align 4, !alias.scope !2683, !noalias !2682, !noundef !37
  %_0.i3 = icmp slt i32 %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb12.i

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
  %_4.i.i.i4 = load i32, ptr %gep25, align 4, !alias.scope !2699, !noalias !2700, !noundef !37
  %_5.i.i.i5 = load i32, ptr %2, align 4, !alias.scope !2700, !noalias !2699, !noundef !37
  %_0.i6 = icmp slt i32 %_4.i.i.i4, %_5.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5961a4cc7143e6e9E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h8550914493a6bef0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb2.i

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
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb5.i.preheader

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
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb12.i

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
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2514d753d0456ca2E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h8bf9debd4f31d575E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %_4.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2800, !noalias !2801, !noundef !37
  %_5.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2801, !noalias !2800, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb5.i.preheader

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
  %_4.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !2817, !noalias !2818, !noundef !37
  %_5.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2818, !noalias !2817, !noundef !37
  %_0.i3 = icmp slt i32 %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb12.i

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
  %_4.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !2834, !noalias !2835, !noundef !37
  %_5.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2835, !noalias !2834, !noundef !37
  %_0.i6 = icmp slt i32 %_4.i.i.i4, %_5.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4b3fcaa18aaf27f1E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h8982b5afe4df41faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17ha17a59add1ee135cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hf5b7eac6daf24801E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17ha822b47792fd0b63E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h4f2f49e3a8e4f4ebE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit, label %bb5.i37

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
  %_4.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2866, !noalias !2867, !noundef !37
  %_5.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2870, !noalias !2871, !noundef !37
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i.i, %_5.i.i.i.i.i
  %14 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i.i, i32 %_5.i.i.i.i.i)
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
  %_4.i.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2888, !noalias !2889, !noundef !37
  %_5.i.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2892, !noalias !2893, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i.i12.i, %_5.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i12.i, i32 %_5.i.i.i.i13.i)
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit

_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17ha570748a6354c949E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17he99b1aa18d33d671E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h8bf9debd4f31d575E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit, label %bb5.i37

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
  %_4.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2921, !noalias !2922, !noundef !37
  %_5.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2925, !noalias !2926, !noundef !37
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i.i, %_5.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i.i, i32 %_5.i.i.i.i.i)
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
  %_4.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2943, !noalias !2944, !noundef !37
  %_5.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2947, !noalias !2948, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i.i12.i, %_5.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i12.i, i32 %_5.i.i.i.i13.i)
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit

_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h57e270760d463abdE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17hfa64f24281f43381E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h8550914493a6bef0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit, label %bb5.i37

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
  br label %_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit

_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17he2da984c3556b4beE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3de6ba1a9facafb0E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  %_4.i.i.i = load i32, ptr %3, align 4, !alias.scope !3035, !noalias !3036, !noundef !37
  %_5.i.i.i = load i32, ptr %4, align 4, !alias.scope !3036, !noalias !3035, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %6 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h636e6dbe2203b876E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  %_4.i.i.i = load i32, ptr %4, align 4, !alias.scope !3052, !noalias !3053, !noundef !37
  %_5.i.i.i = load i32, ptr %3, align 4, !alias.scope !3053, !noalias !3052, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6978843d0e45a2f4E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6361771d6af77759E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  %_4.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !3091, !noalias !3092, !noundef !37
  %_5.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !3092, !noalias !3091, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hda5bd3707f49a2e3E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  %_4.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !3108, !noalias !3109, !noundef !37
  %_5.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !3109, !noalias !3108, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i, i32 %_5.i.i.i)
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hdd0580a6f9a58bdbE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
define void @_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3147, !noalias !3148, !noundef !37
  %_5.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3151, !noalias !3152, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %5 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
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
  %_4.i.i.i.i12 = load i32, ptr %_2059.i, align 4, !alias.scope !3169, !noalias !3170, !noundef !37
  %_5.i.i.i.i13 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3173, !noalias !3174, !noundef !37
  %_0.i.i14 = icmp slt i32 %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i12, i32 %_5.i.i.i.i13)
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
define void @_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3201, !noalias !3202, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3205, !noalias !3206, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3207
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3228, !noalias !3229, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !3232, !noalias !3233, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !3234
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !3235
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !3255, !noalias !3256, !noundef !37
  %_5.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !3259, !noalias !3260, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !3261
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3275)
  %_4.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !3277, !noalias !3278, !noundef !37
  %_5.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !3281, !noalias !3282, !noundef !37
  %_0.i.i14 = icmp slt i32 %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i12, i32 %_5.i.i.i.i13)
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h06cf9708450c6094E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1e14ad41de46d454E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  %_4.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3440, !noalias !3441, !noundef !37
  %_5.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3441, !noalias !3440, !noundef !37
  %_0.i.i = icmp sge i32 %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i, ptr %dst.i, align 4, !noalias !3442
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  %_4.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3465, !noalias !3466, !noundef !37
  %_5.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3466, !noalias !3465, !noundef !37
  %_0.i.i27 = icmp sge i32 %_4.i.i.i.i25, %_5.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3467
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  %_4.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3490, !noalias !3491, !noundef !37
  %_5.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3491, !noalias !3490, !noundef !37
  %_0.i.i37 = icmp sge i32 %_4.i.i.i.i35, %_5.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3492
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  %_4.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3515, !noalias !3516, !noundef !37
  %_5.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3516, !noalias !3515, !noundef !37
  %_0.i.i47 = icmp sge i32 %_4.i.i.i.i45, %_5.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3517
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  %_4.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3540, !noalias !3541, !noundef !37
  %_5.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3541, !noalias !3540, !noundef !37
  %_0.i.i57 = icmp sge i32 %_4.i.i.i.i55, %_5.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3542
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3545
  store i32 %13, ptr %dst.i68, align 4, !noalias !3545
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3548

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4bec14b2b40c7d08E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3574, !noalias !3575, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3575, !noalias !3574, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !3576
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3602)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3604, !noalias !3605, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3605, !noalias !3604, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !3606
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3634, !noalias !3635, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3635, !noalias !3634, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !3636
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3664, !noalias !3665, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3665, !noalias !3664, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !3666
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3694, !noalias !3695, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3695, !noalias !3694, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3696
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3699
  store i32 %13, ptr %dst.i68, align 4, !noalias !3699
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3702

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6eedc708437f2cf4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3718, !noalias !3719, !noundef !37
  %_5.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3719, !noalias !3718, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !3720
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3736)
  %_4.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3738, !noalias !3739, !noundef !37
  %_5.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3739, !noalias !3738, !noundef !37
  %_0.i27 = icmp slt i32 %_4.i.i.i25, %_5.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i25, ptr %dst.i31, align 4, !noalias !3740
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  %_4.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3758, !noalias !3759, !noundef !37
  %_5.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3759, !noalias !3758, !noundef !37
  %_0.i37 = icmp slt i32 %_4.i.i.i35, %_5.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i35, ptr %dst.i41, align 4, !noalias !3760
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %_4.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3778, !noalias !3779, !noundef !37
  %_5.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3779, !noalias !3778, !noundef !37
  %_0.i47 = icmp slt i32 %_4.i.i.i45, %_5.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i45, ptr %dst.i51, align 4, !noalias !3780
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %_4.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3798, !noalias !3799, !noundef !37
  %_5.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3799, !noalias !3798, !noundef !37
  %_0.i57 = icmp slt i32 %_4.i.i.i55, %_5.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i55, ptr %dst.i61, align 4, !noalias !3800
  %_8.i63 = zext i1 %_0.i57 to i64
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd383d179c4ad74ceE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3827, !noalias !3828, !noundef !37
  %_5.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3828, !noalias !3827, !noundef !37
  %_0.i.i = icmp sge i32 %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_5.i.i.i.i, ptr %dst.i, align 4, !noalias !3829
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
  %_4.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3852, !noalias !3853, !noundef !37
  %_5.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3853, !noalias !3852, !noundef !37
  %_0.i.i27 = icmp sge i32 %_4.i.i.i.i25, %_5.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_5.i.i.i.i26, ptr %dst.i31, align 4, !noalias !3854
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
  %_4.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3877, !noalias !3878, !noundef !37
  %_5.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3878, !noalias !3877, !noundef !37
  %_0.i.i37 = icmp sge i32 %_4.i.i.i.i35, %_5.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_5.i.i.i.i36, ptr %dst.i41, align 4, !noalias !3879
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
  %_4.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !3902, !noalias !3903, !noundef !37
  %_5.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !3903, !noalias !3902, !noundef !37
  %_0.i.i47 = icmp sge i32 %_4.i.i.i.i45, %_5.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_5.i.i.i.i46, ptr %dst.i51, align 4, !noalias !3904
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
  %_4.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3927, !noalias !3928, !noundef !37
  %_5.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3928, !noalias !3927, !noundef !37
  %_0.i.i57 = icmp sge i32 %_4.i.i.i.i55, %_5.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_5.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3929
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf6caa6046c0181c2E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  %_4.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3951, !noalias !3952, !noundef !37
  %_5.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3952, !noalias !3951, !noundef !37
  %_0.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_5.i.i.i, ptr %dst.i, align 4, !noalias !3953
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3969)
  %_4.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !3971, !noalias !3972, !noundef !37
  %_5.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !3972, !noalias !3971, !noundef !37
  %_0.i27 = icmp slt i32 %_4.i.i.i25, %_5.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_5.i.i.i26, ptr %dst.i31, align 4, !noalias !3973
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %_4.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !3991, !noalias !3992, !noundef !37
  %_5.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !3992, !noalias !3991, !noundef !37
  %_0.i37 = icmp slt i32 %_4.i.i.i35, %_5.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_5.i.i.i36, ptr %dst.i41, align 4, !noalias !3993
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  %_4.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !4011, !noalias !4012, !noundef !37
  %_5.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !4012, !noalias !4011, !noundef !37
  %_0.i47 = icmp slt i32 %_4.i.i.i45, %_5.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_5.i.i.i46, ptr %dst.i51, align 4, !noalias !4013
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
  %_4.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !4031, !noalias !4032, !noundef !37
  %_5.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !4032, !noalias !4031, !noundef !37
  %_0.i57 = icmp slt i32 %_4.i.i.i55, %_5.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_5.i.i.i56, ptr %dst.i61, align 4, !noalias !4033
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
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h606242472619021aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hc69b9fb143795ed5E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  call void @llvm.experimental.noalias.scope.decl(metadata !4045), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4051), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4053), !noalias !4048
  call void @llvm.experimental.noalias.scope.decl(metadata !4056), !noalias !4048
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !4058, !noalias !4061, !noundef !37
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !4063, !noalias !4064, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_4.i.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !4065, !noalias !4072, !noundef !37
  %_0.i7.i = icmp slt i32 %_4.i.i.i5.i, %_5.i.i.i.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i5.i, %_4.i.i.i.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17ha822b47792fd0b63E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE.exit
  %_5.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4076, !noalias !4083, !noundef !37
  %_0.i.not = icmp slt i32 %value, %_5.i.i.i
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf6caa6046c0181c2E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4087
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h509e5c279881e0ddE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1e14ad41de46d454E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hfe3d03db74412601E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb5bbb20143997882E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  call void @llvm.experimental.noalias.scope.decl(metadata !4096), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4102), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4104), !noalias !4099
  call void @llvm.experimental.noalias.scope.decl(metadata !4107), !noalias !4099
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !4109, !noalias !4112, !noundef !37
  %_5.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !4114, !noalias !4115, !noundef !37
  %_0.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_5.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !4116, !noalias !4123, !noundef !37
  %_0.i7.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i.i, %_5.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17he99b1aa18d33d671E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE.exit
  %_4.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4127, !noalias !4134, !noundef !37
  %_0.i.not = icmp slt i32 %_4.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6eedc708437f2cf4E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4138
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he92e3fc2f9e16a97E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd383d179c4ad74ceE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1986d9b99dc80942E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3be6e15b4653cfdfE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E.exit

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
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17hfa64f24281f43381E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !4186, !noalias !4195, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h06cf9708450c6094E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit", !prof !2643

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !4200
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf06b491cea26c3faE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4bec14b2b40c7d08E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
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
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h700cf9ad7f54f410E.exit", !prof !2643

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h700cf9ad7f54f410E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h9bcd405bf73b6c6aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12a4e3329d9c2ed4E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6fa73d5eb519815E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2041ce8c0bad8a1bE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, i32 noundef %n1, i32 noundef %n2) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i2 = alloca [0 x i8], align 1
  %is_less.i.i3 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  store ptr %compare.i2, ptr %is_less.i.i, align 8, !noalias !4213
  %b.i.i = icmp samesign ult i64 %arr1.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr1.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h9388a405acdab576E(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h132ab36f5bb8cf1aE(ptr noalias noundef nonnull align 4 %arr1.0, i64 noundef range(i64 0, 2305843009213693952) %arr1.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4210
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !4218
  store ptr %compare.i2, ptr %is_less.i.i3, align 8, !noalias !4221
  %b.i.i4 = icmp samesign ult i64 %arr2.1, 2
  br i1 %b.i.i4, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit", label %bb7.i.i5, !prof !4217

bb7.i.i5:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit"
  %b1.i.i6 = icmp samesign ult i64 %arr2.1, 21
  br i1 %b1.i.i6, label %bb9.i.i8, label %bb10.i.i7, !prof !4217

bb10.i.i7:                                        ; preds = %bb7.i.i5
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5442fc87e02861cdE(ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i3)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"

bb9.i.i8:                                         ; preds = %bb7.i.i5
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9d2335476d459babE(ptr noalias noundef nonnull align 4 %arr2.0, i64 noundef range(i64 0, 2305843009213693952) %arr2.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E.exit", %bb10.i.i7, %bb9.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i3), !noalias !4218
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i2)
  %_9 = sext i32 %n1 to i64
  %_8 = add nsw i64 %_9, -1
  %_11 = icmp ult i64 %_8, %arr1.1
  br i1 %_11, label %bb3, label %panic

bb3:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"
  %_14.not = icmp eq i64 %arr2.1, 0
  br i1 %_14.not, label %panic1, label %bb4

panic:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE.exit"
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef %arr1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66c3de894cc23437f97268b1a6d4bdd4) #24
  unreachable

bb4:                                              ; preds = %bb3
  %0 = getelementptr inbounds nuw i32, ptr %arr1.0, i64 %_8
  %_7 = load i32, ptr %0, align 4, !noundef !37
  %_12 = load i32, ptr %arr2.0, align 4, !noundef !37
  %_0 = mul i32 %_12, %_7
  ret i32 %_0

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_99a1c1dbdd6e8c0ca6baae108b218afe) #24
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
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E.exit", label %bb7.i.i, !prof !4217

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !4217

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha15009eb1b75ff5bE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9b948b749a54898aE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !4225
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

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
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

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
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h55aa0a73c512cc52E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h55aa0a73c512cc52E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h55aa0a73c512cc52E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h55aa0a73c512cc52E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h55aa0a73c512cc52E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h4a03f6a592de37dcE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h4a03f6a592de37dcE"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!61 = distinct !{!61, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317hba2f50250246aee6E: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317hba2f50250246aee6E"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!69 = distinct !{!69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!72 = !{!68, !60, !55}
!73 = !{!71, !66, !58, !63}
!74 = !{!71, !66, !58}
!75 = !{!68, !60, !55, !63}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!78 = distinct !{!78, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!79 = distinct !{!79, !80, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!80 = distinct !{!80, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!81 = distinct !{!81, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!82 = distinct !{!82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!83 = !{!84, !85, !86}
!84 = distinct !{!84, !78, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!85 = distinct !{!85, !80, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!86 = distinct !{!86, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!94 = distinct !{!94, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4core5slice4sort6shared5pivot7median317h327220d96162fa5eE: %c"}
!97 = distinct !{!97, !"_ZN4core5slice4sort6shared5pivot7median317h327220d96162fa5eE"}
!98 = !{!99}
!99 = distinct !{!99, !94, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!102 = distinct !{!102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!105 = !{!101, !99, !91}
!106 = !{!104, !93, !88, !96}
!107 = !{!104, !93, !88}
!108 = !{!101, !99, !91, !96}
!109 = !{!110, !112, !114}
!110 = distinct !{!110, !111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!111 = distinct !{!111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!112 = distinct !{!112, !113, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!113 = distinct !{!113, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!116 = !{!117, !118, !119}
!117 = distinct !{!117, !111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!118 = distinct !{!118, !113, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!119 = distinct !{!119, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!122 = distinct !{!122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!127 = distinct !{!127, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"cmpfunc: %a"}
!132 = distinct !{!132, !"cmpfunc"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"cmpfunc: %b"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!137 = distinct !{!137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!140 = !{!136, !131, !126, !121}
!141 = !{!139, !134, !129, !124}
!142 = !{!143, !145, !147, !149}
!143 = distinct !{!143, !144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!144 = distinct !{!144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!145 = distinct !{!145, !146, !"cmpfunc: %b"}
!146 = distinct !{!146, !"cmpfunc"}
!147 = distinct !{!147, !148, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!148 = distinct !{!148, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!149 = distinct !{!149, !150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!150 = distinct !{!150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!151 = !{!152, !153, !154, !155}
!152 = distinct !{!152, !144, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!153 = distinct !{!153, !146, !"cmpfunc: %a"}
!154 = distinct !{!154, !148, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!155 = distinct !{!155, !150, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!158 = distinct !{!158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!159 = distinct !{!159, !160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!160 = distinct !{!160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!163 = distinct !{!163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!168 = distinct !{!168, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!173 = distinct !{!173, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!176 = !{!172, !170, !165}
!177 = !{!175, !167, !162}
!178 = !{!179, !181, !183}
!179 = distinct !{!179, !180, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!180 = distinct !{!180, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!181 = distinct !{!181, !182, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!182 = distinct !{!182, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!183 = distinct !{!183, !184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!184 = distinct !{!184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!185 = !{!186, !187, !188}
!186 = distinct !{!186, !180, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!187 = distinct !{!187, !182, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!188 = distinct !{!188, !184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!189 = !{!190, !192}
!190 = distinct !{!190, !191, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!191 = distinct !{!191, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!192 = distinct !{!192, !193, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!193 = distinct !{!193, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!196 = distinct !{!196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!201 = distinct !{!201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!206 = distinct !{!206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!209 = !{!205, !200, !195}
!210 = !{!208, !203, !198}
!211 = !{!212, !214, !216}
!212 = distinct !{!212, !213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!213 = distinct !{!213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!214 = distinct !{!214, !215, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!215 = distinct !{!215, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!216 = distinct !{!216, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!217 = distinct !{!217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!218 = !{!219, !220, !221}
!219 = distinct !{!219, !213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!220 = distinct !{!220, !215, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!221 = distinct !{!221, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!224 = distinct !{!224, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!225 = distinct !{!225, !226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!226 = distinct !{!226, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!234 = distinct !{!234, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!239 = distinct !{!239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!242 = !{!238, !233, !228}
!243 = !{!241, !236, !231}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!246 = distinct !{!246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!251 = distinct !{!251, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!256 = distinct !{!256, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!259 = !{!255, !250, !245}
!260 = !{!258, !253, !248}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!263 = distinct !{!263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!268 = distinct !{!268, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!273 = distinct !{!273, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!276 = !{!272, !267, !262}
!277 = !{!275, !270, !265}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!280 = distinct !{!280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!285 = distinct !{!285, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!286 = !{!287}
!287 = distinct !{!287, !285, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!290 = distinct !{!290, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!293 = !{!289, !284, !279}
!294 = !{!292, !287, !282}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!297 = distinct !{!297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!302 = distinct !{!302, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!307 = distinct !{!307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!310 = !{!306, !301, !296}
!311 = !{!309, !304, !299}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!314 = distinct !{!314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!319 = distinct !{!319, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"cmpfunc: %a"}
!324 = distinct !{!324, !"cmpfunc"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"cmpfunc: %b"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!329 = distinct !{!329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!332 = !{!328, !323, !318, !313}
!333 = !{!331, !326, !321, !316}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!336 = distinct !{!336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!341 = distinct !{!341, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"cmpfunc: %a"}
!346 = distinct !{!346, !"cmpfunc"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"cmpfunc: %b"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!351 = distinct !{!351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!354 = !{!350, !345, !340, !335}
!355 = !{!353, !348, !343, !338}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!358 = distinct !{!358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!363 = distinct !{!363, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"cmpfunc: %a"}
!368 = distinct !{!368, !"cmpfunc"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"cmpfunc: %b"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!373 = distinct !{!373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!376 = !{!372, !367, !362, !357}
!377 = !{!375, !370, !365, !360}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!380 = distinct !{!380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!385 = distinct !{!385, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"cmpfunc: %a"}
!390 = distinct !{!390, !"cmpfunc"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"cmpfunc: %b"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!395 = distinct !{!395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!398 = !{!394, !389, !384, !379}
!399 = !{!397, !392, !387, !382}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!402 = distinct !{!402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!407 = distinct !{!407, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"cmpfunc: %a"}
!412 = distinct !{!412, !"cmpfunc"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"cmpfunc: %b"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!417 = distinct !{!417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!420 = !{!416, !411, !406, !401}
!421 = !{!419, !414, !409, !404}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!424 = distinct !{!424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!429 = distinct !{!429, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!434 = distinct !{!434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!435 = !{!436}
!436 = distinct !{!436, !434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!437 = !{!433, !431, !426}
!438 = !{!436, !428, !423}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!441 = distinct !{!441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!446 = distinct !{!446, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!451 = distinct !{!451, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!454 = !{!450, !448, !443}
!455 = !{!453, !445, !440}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!458 = distinct !{!458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!463 = distinct !{!463, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!464 = !{!465}
!465 = distinct !{!465, !463, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!468 = distinct !{!468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!471 = !{!467, !465, !460}
!472 = !{!470, !462, !457}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!475 = distinct !{!475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!480 = distinct !{!480, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!483 = !{!484}
!484 = distinct !{!484, !485, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!485 = distinct !{!485, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!486 = !{!487}
!487 = distinct !{!487, !485, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!488 = !{!484, !482, !477}
!489 = !{!487, !479, !474}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!492 = distinct !{!492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!497 = distinct !{!497, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!502 = distinct !{!502, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!503 = !{!504}
!504 = distinct !{!504, !502, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!505 = !{!501, !499, !494}
!506 = !{!504, !496, !491}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!509 = distinct !{!509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!514 = distinct !{!514, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!519 = distinct !{!519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!520 = !{!521}
!521 = distinct !{!521, !519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!522 = !{!518, !513, !508}
!523 = !{!521, !516, !511}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!526 = distinct !{!526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!531 = distinct !{!531, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!532 = !{!533}
!533 = distinct !{!533, !531, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!536 = distinct !{!536, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!539 = !{!535, !530, !525}
!540 = !{!538, !533, !528}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!543 = distinct !{!543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!544 = !{!545}
!545 = distinct !{!545, !543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!548 = distinct !{!548, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!549 = !{!550}
!550 = distinct !{!550, !548, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!553 = distinct !{!553, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!556 = !{!552, !547, !542}
!557 = !{!555, !550, !545}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!565 = distinct !{!565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!570 = distinct !{!570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!573 = !{!569, !564, !559}
!574 = !{!572, !567, !562}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!577 = distinct !{!577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!582 = distinct !{!582, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!587 = distinct !{!587, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!590 = !{!586, !581, !576}
!591 = !{!589, !584, !579}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!594 = distinct !{!594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!599 = distinct !{!599, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!604 = distinct !{!604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!607 = !{!603, !598, !593}
!608 = !{!606, !601, !596}
!609 = !{!610}
!610 = distinct !{!610, !611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!611 = distinct !{!611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!612 = !{!613}
!613 = distinct !{!613, !611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!616 = distinct !{!616, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!617 = !{!618}
!618 = distinct !{!618, !616, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!621 = distinct !{!621, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!622 = !{!623}
!623 = distinct !{!623, !621, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!624 = !{!620, !615, !610}
!625 = !{!623, !618, !613}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!628 = distinct !{!628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!633 = distinct !{!633, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!638 = distinct !{!638, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!641 = !{!637, !632, !627}
!642 = !{!640, !635, !630}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!645 = distinct !{!645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!650 = distinct !{!650, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!651 = !{!652}
!652 = distinct !{!652, !650, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!655 = distinct !{!655, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!656 = !{!657}
!657 = distinct !{!657, !655, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!658 = !{!654, !649, !644}
!659 = !{!657, !652, !647}
!660 = !{!661}
!661 = distinct !{!661, !662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!662 = distinct !{!662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!663 = !{!664}
!664 = distinct !{!664, !662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!667 = distinct !{!667, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!672 = distinct !{!672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!675 = !{!671, !666, !661}
!676 = !{!674, !669, !664}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE: %v.0"}
!679 = distinct !{!679, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!682 = distinct !{!682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!687 = distinct !{!687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %_0"}
!690 = distinct !{!690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E"}
!691 = !{!692}
!692 = distinct !{!692, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!695 = distinct !{!695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!698 = !{!694, !686, !681, !678}
!699 = !{!697, !692, !684, !689}
!700 = !{!697, !692, !684, !678}
!701 = !{!694, !686, !681, !689}
!702 = !{!689, !703, !678}
!703 = distinct !{!703, !690, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %is_less"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!706 = distinct !{!706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!709 = !{!710}
!710 = distinct !{!710, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!711 = distinct !{!711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %_0"}
!714 = distinct !{!714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E"}
!715 = !{!716}
!716 = distinct !{!716, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!719 = distinct !{!719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!722 = !{!718, !710, !705, !678}
!723 = !{!721, !716, !708, !713}
!724 = !{!721, !716, !708, !678}
!725 = !{!718, !710, !705, !713}
!726 = !{!713, !727, !678}
!727 = distinct !{!727, !714, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %is_less"}
!728 = !{!729}
!729 = distinct !{!729, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It1"}
!730 = !{!731}
!731 = distinct !{!731, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It1"}
!732 = !{!733}
!733 = distinct !{!733, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It1"}
!734 = !{!735}
!735 = distinct !{!735, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It1"}
!736 = !{!737}
!737 = distinct !{!737, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It1"}
!738 = !{!739}
!739 = distinct !{!739, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It1"}
!740 = !{!737, !733, !729, !678}
!741 = !{!739, !735, !731, !689}
!742 = !{!739, !735, !731, !678}
!743 = !{!737, !733, !729, !689}
!744 = !{!745}
!745 = distinct !{!745, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It1"}
!746 = !{!747}
!747 = distinct !{!747, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It1"}
!748 = !{!749}
!749 = distinct !{!749, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It1"}
!750 = !{!751}
!751 = distinct !{!751, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It1"}
!752 = !{!753}
!753 = distinct !{!753, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It1"}
!754 = !{!755}
!755 = distinct !{!755, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It1"}
!756 = !{!753, !749, !745, !678}
!757 = !{!755, !751, !747, !713}
!758 = !{!755, !751, !747, !678}
!759 = !{!753, !749, !745, !713}
!760 = !{!761}
!761 = distinct !{!761, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It2"}
!762 = !{!763}
!763 = distinct !{!763, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It2"}
!764 = !{!765}
!765 = distinct !{!765, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It2"}
!766 = !{!767}
!767 = distinct !{!767, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It2"}
!768 = !{!769}
!769 = distinct !{!769, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It2"}
!770 = !{!771}
!771 = distinct !{!771, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It2"}
!772 = !{!769, !765, !761, !678}
!773 = !{!771, !767, !763, !689}
!774 = !{!771, !767, !763, !678}
!775 = !{!769, !765, !761, !689}
!776 = !{!777}
!777 = distinct !{!777, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It2"}
!778 = !{!779}
!779 = distinct !{!779, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It2"}
!780 = !{!781}
!781 = distinct !{!781, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It2"}
!782 = !{!783}
!783 = distinct !{!783, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It2"}
!784 = !{!785}
!785 = distinct !{!785, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It2"}
!786 = !{!787}
!787 = distinct !{!787, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It2"}
!788 = !{!785, !781, !777, !678}
!789 = !{!787, !783, !779, !713}
!790 = !{!787, !783, !779, !678}
!791 = !{!785, !781, !777, !713}
!792 = !{!793}
!793 = distinct !{!793, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It3"}
!794 = !{!795}
!795 = distinct !{!795, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It3"}
!796 = !{!797}
!797 = distinct !{!797, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It3"}
!798 = !{!799}
!799 = distinct !{!799, !687, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It3"}
!800 = !{!801}
!801 = distinct !{!801, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It3"}
!802 = !{!803}
!803 = distinct !{!803, !695, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It3"}
!804 = !{!801, !797, !793, !678}
!805 = !{!803, !799, !795, !689}
!806 = !{!803, !799, !795, !678}
!807 = !{!801, !797, !793, !689}
!808 = !{!809}
!809 = distinct !{!809, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a:It3"}
!810 = !{!811}
!811 = distinct !{!811, !706, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b:It3"}
!812 = !{!813}
!813 = distinct !{!813, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a:It3"}
!814 = !{!815}
!815 = distinct !{!815, !711, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b:It3"}
!816 = !{!817}
!817 = distinct !{!817, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It3"}
!818 = !{!819}
!819 = distinct !{!819, !719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It3"}
!820 = !{!817, !813, !809, !678}
!821 = !{!819, !815, !811, !713}
!822 = !{!819, !815, !811, !678}
!823 = !{!817, !813, !809, !713}
!824 = !{!"branch_weights", i32 4001, i32 4000000}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!827 = distinct !{!827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!832 = distinct !{!832, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!835 = !{!836}
!836 = distinct !{!836, !837, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!837 = distinct !{!837, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!838 = !{!839}
!839 = distinct !{!839, !837, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!840 = !{!836, !834, !829}
!841 = !{!839, !831, !826}
!842 = !{!843}
!843 = distinct !{!843, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!844 = distinct !{!844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!849 = distinct !{!849, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!850 = !{!851}
!851 = distinct !{!851, !849, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!852 = !{!853}
!853 = distinct !{!853, !854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!854 = distinct !{!854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!855 = !{!856}
!856 = distinct !{!856, !854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!857 = !{!853, !851, !846}
!858 = !{!856, !848, !843}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!861 = distinct !{!861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!866 = distinct !{!866, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!867 = !{!868}
!868 = distinct !{!868, !866, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!871 = distinct !{!871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!874 = !{!870, !868, !863}
!875 = !{!873, !865, !860}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!878 = distinct !{!878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!879 = !{!880}
!880 = distinct !{!880, !878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!881 = !{!882}
!882 = distinct !{!882, !883, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!883 = distinct !{!883, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!884 = !{!885}
!885 = distinct !{!885, !883, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!886 = !{!887}
!887 = distinct !{!887, !888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!888 = distinct !{!888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!889 = !{!890}
!890 = distinct !{!890, !888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!891 = !{!887, !885, !880}
!892 = !{!890, !882, !877}
!893 = !{!894}
!894 = distinct !{!894, !895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!895 = distinct !{!895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!896 = !{!897}
!897 = distinct !{!897, !895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!898 = !{!899}
!899 = distinct !{!899, !900, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!900 = distinct !{!900, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!901 = !{!902}
!902 = distinct !{!902, !900, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!905 = distinct !{!905, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!908 = !{!904, !902, !897}
!909 = !{!907, !899, !894}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!912 = distinct !{!912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!913 = !{!914}
!914 = distinct !{!914, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!915 = !{!916}
!916 = distinct !{!916, !917, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!917 = distinct !{!917, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!918 = !{!919}
!919 = distinct !{!919, !917, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!922 = distinct !{!922, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!925 = !{!921, !919, !914}
!926 = !{!924, !916, !911}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!929 = distinct !{!929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!934 = distinct !{!934, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!935 = !{!936}
!936 = distinct !{!936, !934, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!939 = distinct !{!939, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!940 = !{!941}
!941 = distinct !{!941, !939, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!942 = !{!938, !936, !931}
!943 = !{!941, !933, !928}
!944 = !{!945}
!945 = distinct !{!945, !946, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!946 = distinct !{!946, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!947 = !{!948}
!948 = distinct !{!948, !946, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!951 = distinct !{!951, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!952 = !{!953}
!953 = distinct !{!953, !951, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!956 = distinct !{!956, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!957 = !{!958}
!958 = distinct !{!958, !956, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!959 = !{!955, !953, !948}
!960 = !{!958, !950, !945}
!961 = !{!962}
!962 = distinct !{!962, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!963 = distinct !{!963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!964 = !{!965}
!965 = distinct !{!965, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!968 = distinct !{!968, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!969 = !{!970}
!970 = distinct !{!970, !968, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!973 = distinct !{!973, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!974 = !{!975}
!975 = distinct !{!975, !973, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!976 = !{!972, !970, !965}
!977 = !{!975, !967, !962}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!980 = distinct !{!980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!981 = !{!982}
!982 = distinct !{!982, !980, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!983 = !{!984}
!984 = distinct !{!984, !985, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!985 = distinct !{!985, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!986 = !{!987}
!987 = distinct !{!987, !985, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!990 = distinct !{!990, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!991 = !{!992}
!992 = distinct !{!992, !990, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!993 = !{!989, !987, !982}
!994 = !{!992, !984, !979}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E: %v.0"}
!997 = distinct !{!997, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1000 = distinct !{!1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1005 = distinct !{!1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %_0"}
!1008 = distinct !{!1008, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1013 = distinct !{!1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1016 = !{!1012, !1010, !1002, !996}
!1017 = !{!1015, !1004, !999, !1007}
!1018 = !{!1015, !1004, !999, !996}
!1019 = !{!1012, !1010, !1002, !1007}
!1020 = !{!1007, !1021, !996}
!1021 = distinct !{!1021, !1008, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %is_less"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1024 = distinct !{!1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1027 = !{!1028}
!1028 = distinct !{!1028, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1029 = distinct !{!1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1032, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %_0"}
!1032 = distinct !{!1032, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1037 = distinct !{!1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1040 = !{!1036, !1034, !1026, !996}
!1041 = !{!1039, !1028, !1023, !1031}
!1042 = !{!1039, !1028, !1023, !996}
!1043 = !{!1036, !1034, !1026, !1031}
!1044 = !{!1031, !1045, !996}
!1045 = distinct !{!1045, !1032, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %is_less"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It1"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It1"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It1"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It1"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It1"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It1"}
!1058 = !{!1055, !1053, !1049, !996}
!1059 = !{!1057, !1051, !1047, !1007}
!1060 = !{!1057, !1051, !1047, !996}
!1061 = !{!1055, !1053, !1049, !1007}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It1"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It1"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It1"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It1"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It1"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It1"}
!1074 = !{!1071, !1069, !1065, !996}
!1075 = !{!1073, !1067, !1063, !1031}
!1076 = !{!1073, !1067, !1063, !996}
!1077 = !{!1071, !1069, !1065, !1031}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It2"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It2"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It2"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It2"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It2"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It2"}
!1090 = !{!1087, !1085, !1081, !996}
!1091 = !{!1089, !1083, !1079, !1007}
!1092 = !{!1089, !1083, !1079, !996}
!1093 = !{!1087, !1085, !1081, !1007}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It2"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It2"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It2"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It2"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It2"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It2"}
!1106 = !{!1103, !1101, !1097, !996}
!1107 = !{!1105, !1099, !1095, !1031}
!1108 = !{!1105, !1099, !1095, !996}
!1109 = !{!1103, !1101, !1097, !1031}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It3"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It3"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It3"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1005, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It3"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It3"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1013, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It3"}
!1122 = !{!1119, !1117, !1113, !996}
!1123 = !{!1121, !1115, !1111, !1007}
!1124 = !{!1121, !1115, !1111, !996}
!1125 = !{!1119, !1117, !1113, !1007}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a:It3"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b:It3"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a:It3"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1029, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b:It3"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self:It3"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other:It3"}
!1138 = !{!1135, !1133, !1129, !996}
!1139 = !{!1137, !1131, !1127, !1031}
!1140 = !{!1137, !1131, !1127, !996}
!1141 = !{!1135, !1133, !1129, !1031}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1144 = distinct !{!1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1149 = distinct !{!1149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"cmpfunc: %a"}
!1154 = distinct !{!1154, !"cmpfunc"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"cmpfunc: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1159 = distinct !{!1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1162 = !{!1158, !1153, !1148, !1143}
!1163 = !{!1161, !1156, !1151, !1146}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1166 = distinct !{!1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1171 = distinct !{!1171, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1171, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"cmpfunc: %a"}
!1176 = distinct !{!1176, !"cmpfunc"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1176, !"cmpfunc: %b"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1181 = distinct !{!1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1184 = !{!1180, !1175, !1170, !1165}
!1185 = !{!1183, !1178, !1173, !1168}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1188 = distinct !{!1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1193 = distinct !{!1193, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1210 = distinct !{!1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1215 = distinct !{!1215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !"cmpfunc"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"cmpfunc: %b"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1225 = distinct !{!1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1228 = !{!1224, !1219, !1214, !1209}
!1229 = !{!1227, !1222, !1217, !1212}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1232 = distinct !{!1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1237 = distinct !{!1237, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1242, !"cmpfunc: %a"}
!1242 = distinct !{!1242, !"cmpfunc"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1242, !"cmpfunc: %b"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1247 = distinct !{!1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1250 = !{!1246, !1241, !1236, !1231}
!1251 = !{!1249, !1244, !1239, !1234}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1254 = distinct !{!1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1259 = distinct !{!1259, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"cmpfunc: %a"}
!1264 = distinct !{!1264, !"cmpfunc"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1264, !"cmpfunc: %b"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1269 = distinct !{!1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1272 = !{!1268, !1263, !1258, !1253}
!1273 = !{!1271, !1266, !1261, !1256}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1276 = distinct !{!1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1281 = distinct !{!1281, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1281, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"cmpfunc: %a"}
!1286 = distinct !{!1286, !"cmpfunc"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"cmpfunc: %b"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1291 = distinct !{!1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1294 = !{!1290, !1285, !1280, !1275}
!1295 = !{!1293, !1288, !1283, !1278}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1298 = distinct !{!1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1303 = distinct !{!1303, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"cmpfunc: %a"}
!1308 = distinct !{!1308, !"cmpfunc"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1308, !"cmpfunc: %b"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1313 = distinct !{!1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1316 = !{!1312, !1307, !1302, !1297}
!1317 = !{!1315, !1310, !1305, !1300}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1320 = distinct !{!1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1325, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1325 = distinct !{!1325, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1325, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"cmpfunc: %a"}
!1330 = distinct !{!1330, !"cmpfunc"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1330, !"cmpfunc: %b"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1335 = distinct !{!1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1338 = !{!1334, !1329, !1324, !1319}
!1339 = !{!1337, !1332, !1327, !1322}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1342 = distinct !{!1342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1347 = distinct !{!1347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"cmpfunc: %a"}
!1352 = distinct !{!1352, !"cmpfunc"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1352, !"cmpfunc: %b"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1357 = distinct !{!1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1360 = !{!1356, !1351, !1346, !1341}
!1361 = !{!1359, !1354, !1349, !1344}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E: %v.0"}
!1364 = distinct !{!1364, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1367 = distinct !{!1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1372 = distinct !{!1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %_0"}
!1375 = distinct !{!1375, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"cmpfunc: %a"}
!1380 = distinct !{!1380, !"cmpfunc"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"cmpfunc: %b"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1385 = distinct !{!1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1388 = !{!1384, !1379, !1371, !1366, !1363}
!1389 = !{!1387, !1382, !1377, !1369, !1374}
!1390 = !{!1387, !1382, !1377, !1369, !1363}
!1391 = !{!1384, !1379, !1371, !1366, !1374}
!1392 = !{!1374, !1393, !1363}
!1393 = distinct !{!1393, !1375, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %is_less"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1396 = distinct !{!1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1401 = distinct !{!1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %_0"}
!1404 = distinct !{!1404, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"cmpfunc: %a"}
!1409 = distinct !{!1409, !"cmpfunc"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"cmpfunc: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1414 = distinct !{!1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1417 = !{!1413, !1408, !1400, !1395, !1363}
!1418 = !{!1416, !1411, !1406, !1398, !1403}
!1419 = !{!1416, !1411, !1406, !1398, !1363}
!1420 = !{!1413, !1408, !1400, !1395, !1403}
!1421 = !{!1403, !1422, !1363}
!1422 = distinct !{!1422, !1404, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %is_less"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It1"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It1"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It1"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It1"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1380, !"cmpfunc: %a:It1"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1380, !"cmpfunc: %b:It1"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1439 = !{!1436, !1432, !1428, !1424, !1363}
!1440 = !{!1438, !1434, !1430, !1426, !1374}
!1441 = !{!1438, !1434, !1430, !1426, !1363}
!1442 = !{!1436, !1432, !1428, !1424, !1374}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It1"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It1"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It1"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It1"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1409, !"cmpfunc: %a:It1"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1409, !"cmpfunc: %b:It1"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1459 = !{!1456, !1452, !1448, !1444, !1363}
!1460 = !{!1458, !1454, !1450, !1446, !1403}
!1461 = !{!1458, !1454, !1450, !1446, !1363}
!1462 = !{!1456, !1452, !1448, !1444, !1403}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It2"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It2"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It2"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It2"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1380, !"cmpfunc: %a:It2"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1380, !"cmpfunc: %b:It2"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1479 = !{!1476, !1472, !1468, !1464, !1363}
!1480 = !{!1478, !1474, !1470, !1466, !1374}
!1481 = !{!1478, !1474, !1470, !1466, !1363}
!1482 = !{!1476, !1472, !1468, !1464, !1374}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It2"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It2"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It2"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It2"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1409, !"cmpfunc: %a:It2"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1409, !"cmpfunc: %b:It2"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1499 = !{!1496, !1492, !1488, !1484, !1363}
!1500 = !{!1498, !1494, !1490, !1486, !1403}
!1501 = !{!1498, !1494, !1490, !1486, !1363}
!1502 = !{!1496, !1492, !1488, !1484, !1403}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It3"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It3"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It3"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It3"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1380, !"cmpfunc: %a:It3"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1380, !"cmpfunc: %b:It3"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1385, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1519 = !{!1516, !1512, !1508, !1504, !1363}
!1520 = !{!1518, !1514, !1510, !1506, !1374}
!1521 = !{!1518, !1514, !1510, !1506, !1363}
!1522 = !{!1516, !1512, !1508, !1504, !1374}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a:It3"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b:It3"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0:It3"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1401, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1:It3"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1409, !"cmpfunc: %a:It3"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1409, !"cmpfunc: %b:It3"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1539 = !{!1536, !1532, !1528, !1524, !1363}
!1540 = !{!1538, !1534, !1530, !1526, !1403}
!1541 = !{!1538, !1534, !1530, !1526, !1363}
!1542 = !{!1536, !1532, !1528, !1524, !1403}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!1545 = distinct !{!1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!1550 = distinct !{!1550, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %_0"}
!1553 = distinct !{!1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1550, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1558, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1558 = distinct !{!1558, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1558, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1561 = !{!1557, !1549, !1544}
!1562 = !{!1560, !1555, !1547, !1552}
!1563 = !{!1560, !1555, !1547}
!1564 = !{!1557, !1549, !1544, !1552}
!1565 = !{!1552, !1566}
!1566 = distinct !{!1566, !1553, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %is_less"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!1569 = distinct !{!1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!1574 = distinct !{!1574, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %_0"}
!1577 = distinct !{!1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1574, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1582 = distinct !{!1582, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1582, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1585 = !{!1581, !1573, !1568}
!1586 = !{!1584, !1579, !1571, !1576}
!1587 = !{!1584, !1579, !1571}
!1588 = !{!1581, !1573, !1568, !1576}
!1589 = !{!1576, !1590}
!1590 = distinct !{!1590, !1577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %is_less"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1593 = distinct !{!1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1598, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1598 = distinct !{!1598, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %_0"}
!1601 = distinct !{!1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1598, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!1619 = distinct !{!1619, !1601, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %is_less"}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1622 = distinct !{!1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1627 = distinct !{!1627, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %_0"}
!1630 = distinct !{!1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1627, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!1648 = distinct !{!1648, !1630, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %is_less"}
!1649 = !{!1650}
!1650 = distinct !{!1650, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1651 = distinct !{!1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1656, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1656 = distinct !{!1656, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1657 = !{!1658}
!1658 = distinct !{!1658, !1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %_0"}
!1659 = distinct !{!1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1656, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1662 = !{!1663}
!1663 = distinct !{!1663, !1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1664 = distinct !{!1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1667 = !{!1663, !1661, !1653}
!1668 = !{!1666, !1655, !1650, !1658}
!1669 = !{!1666, !1655, !1650}
!1670 = !{!1663, !1661, !1653, !1658}
!1671 = !{!1658, !1672}
!1672 = distinct !{!1672, !1659, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %is_less"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1675 = distinct !{!1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1680 = distinct !{!1680, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %_0"}
!1683 = distinct !{!1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1680, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1688, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1688 = distinct !{!1688, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1688, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1691 = !{!1687, !1685, !1677}
!1692 = !{!1690, !1679, !1674, !1682}
!1693 = !{!1690, !1679, !1674}
!1694 = !{!1687, !1685, !1677, !1682}
!1695 = !{!1682, !1696}
!1696 = distinct !{!1696, !1683, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %is_less"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!1699 = distinct !{!1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!1704 = distinct !{!1704, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1704, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1709, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1709 = distinct !{!1709, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1709, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1712 = !{!1708, !1703, !1698}
!1713 = !{!1711, !1706, !1701}
!1714 = !{!1715, !1717, !1719}
!1715 = distinct !{!1715, !1716, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1716 = distinct !{!1716, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1717 = distinct !{!1717, !1718, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!1718 = distinct !{!1718, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!1719 = distinct !{!1719, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!1720 = distinct !{!1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!1721 = !{!1722, !1723, !1724}
!1722 = distinct !{!1722, !1716, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1723 = distinct !{!1723, !1718, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!1724 = distinct !{!1724, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!1725 = !{!1726, !1728}
!1726 = distinct !{!1726, !1727, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!1727 = distinct !{!1727, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!1728 = distinct !{!1728, !1729, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!1729 = distinct !{!1729, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1732 = distinct !{!1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1737 = distinct !{!1737, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1737, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"cmpfunc: %a"}
!1742 = distinct !{!1742, !"cmpfunc"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1742, !"cmpfunc: %b"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1747 = distinct !{!1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1748 = !{!1749}
!1749 = distinct !{!1749, !1747, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1750 = !{!1746, !1741, !1736, !1731}
!1751 = !{!1749, !1744, !1739, !1734}
!1752 = !{!1753, !1755, !1757, !1759}
!1753 = distinct !{!1753, !1754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1754 = distinct !{!1754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1755 = distinct !{!1755, !1756, !"cmpfunc: %b"}
!1756 = distinct !{!1756, !"cmpfunc"}
!1757 = distinct !{!1757, !1758, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1758 = distinct !{!1758, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1759 = distinct !{!1759, !1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1760 = distinct !{!1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = distinct !{!1762, !1754, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1763 = distinct !{!1763, !1756, !"cmpfunc: %a"}
!1764 = distinct !{!1764, !1758, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1765 = distinct !{!1765, !1760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1766 = !{!1767, !1769}
!1767 = distinct !{!1767, !1768, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!1768 = distinct !{!1768, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!1769 = distinct !{!1769, !1770, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!1770 = distinct !{!1770, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1773 = distinct !{!1773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1778, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1778 = distinct !{!1778, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1778, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1783 = distinct !{!1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1786 = !{!1782, !1780, !1775}
!1787 = !{!1785, !1777, !1772}
!1788 = !{!1789, !1791, !1793}
!1789 = distinct !{!1789, !1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!1790 = distinct !{!1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!1791 = distinct !{!1791, !1792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!1792 = distinct !{!1792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!1793 = distinct !{!1793, !1794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!1794 = distinct !{!1794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!1795 = !{!1796, !1797, !1798}
!1796 = distinct !{!1796, !1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!1797 = distinct !{!1797, !1792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!1798 = distinct !{!1798, !1794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!1799 = !{!1800, !1802}
!1800 = distinct !{!1800, !1801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!1801 = distinct !{!1801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!1802 = distinct !{!1802, !1803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!1803 = distinct !{!1803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1806 = distinct !{!1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1811, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1811 = distinct !{!1811, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1811, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1816, !"cmpfunc: %a"}
!1816 = distinct !{!1816, !"cmpfunc"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1816, !"cmpfunc: %b"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1821 = distinct !{!1821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1824 = !{!1820, !1815, !1810, !1805}
!1825 = !{!1823, !1818, !1813, !1808}
!1826 = !{!1827}
!1827 = distinct !{!1827, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1828 = distinct !{!1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1829 = !{!1830}
!1830 = distinct !{!1830, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1833 = distinct !{!1833, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1834 = !{!1835}
!1835 = distinct !{!1835, !1833, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"cmpfunc: %a"}
!1838 = distinct !{!1838, !"cmpfunc"}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1838, !"cmpfunc: %b"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1843 = distinct !{!1843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1843, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1846 = !{!1842, !1837, !1832, !1827}
!1847 = !{!1845, !1840, !1835, !1830}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1850 = distinct !{!1850, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1850, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1855, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1855 = distinct !{!1855, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1856 = !{!1857}
!1857 = distinct !{!1857, !1855, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1858 = !{!1859}
!1859 = distinct !{!1859, !1860, !"cmpfunc: %a"}
!1860 = distinct !{!1860, !"cmpfunc"}
!1861 = !{!1862}
!1862 = distinct !{!1862, !1860, !"cmpfunc: %b"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1865 = distinct !{!1865, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1865, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1868 = !{!1864, !1859, !1854, !1849}
!1869 = !{!1867, !1862, !1857, !1852}
!1870 = !{!1871}
!1871 = distinct !{!1871, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1872 = distinct !{!1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1877 = distinct !{!1877, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1882, !"cmpfunc: %a"}
!1882 = distinct !{!1882, !"cmpfunc"}
!1883 = !{!1884}
!1884 = distinct !{!1884, !1882, !"cmpfunc: %b"}
!1885 = !{!1886}
!1886 = distinct !{!1886, !1887, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1887 = distinct !{!1887, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1888 = !{!1889}
!1889 = distinct !{!1889, !1887, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1890 = !{!1886, !1881, !1876, !1871}
!1891 = !{!1889, !1884, !1879, !1874}
!1892 = !{!1893}
!1893 = distinct !{!1893, !1894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1894 = distinct !{!1894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1895 = !{!1896}
!1896 = distinct !{!1896, !1894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1899, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1899 = distinct !{!1899, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1899, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"cmpfunc: %a"}
!1904 = distinct !{!1904, !"cmpfunc"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1904, !"cmpfunc: %b"}
!1907 = !{!1908}
!1908 = distinct !{!1908, !1909, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1909 = distinct !{!1909, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1910 = !{!1911}
!1911 = distinct !{!1911, !1909, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1912 = !{!1908, !1903, !1898, !1893}
!1913 = !{!1911, !1906, !1901, !1896}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1916 = distinct !{!1916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1921 = distinct !{!1921, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1921, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"cmpfunc: %a"}
!1926 = distinct !{!1926, !"cmpfunc"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1926, !"cmpfunc: %b"}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1931 = distinct !{!1931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1931, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1934 = !{!1930, !1925, !1920, !1915}
!1935 = !{!1933, !1928, !1923, !1918}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1938 = distinct !{!1938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1943, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1943 = distinct !{!1943, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1943, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"cmpfunc: %a"}
!1948 = distinct !{!1948, !"cmpfunc"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1948, !"cmpfunc: %b"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1953, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1953 = distinct !{!1953, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1954 = !{!1955}
!1955 = distinct !{!1955, !1953, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1956 = !{!1952, !1947, !1942, !1937}
!1957 = !{!1955, !1950, !1945, !1940}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1960 = distinct !{!1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1965, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1965 = distinct !{!1965, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1965, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"cmpfunc: %a"}
!1970 = distinct !{!1970, !"cmpfunc"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"cmpfunc: %b"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1975 = distinct !{!1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1978 = !{!1974, !1969, !1964, !1959}
!1979 = !{!1977, !1972, !1967, !1962}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!1982 = distinct !{!1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1987, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!1987 = distinct !{!1987, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1987, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!1990 = !{!1991}
!1991 = distinct !{!1991, !1992, !"cmpfunc: %a"}
!1992 = distinct !{!1992, !"cmpfunc"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1992, !"cmpfunc: %b"}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1997 = distinct !{!1997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !1997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2000 = !{!1996, !1991, !1986, !1981}
!2001 = !{!1999, !1994, !1989, !1984}
!2002 = !{!2003}
!2003 = distinct !{!2003, !2004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2004 = distinct !{!2004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2005 = !{!2006}
!2006 = distinct !{!2006, !2004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2009, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2009 = distinct !{!2009, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2009, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"cmpfunc: %a"}
!2014 = distinct !{!2014, !"cmpfunc"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2014, !"cmpfunc: %b"}
!2017 = !{!2018}
!2018 = distinct !{!2018, !2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2019 = distinct !{!2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2020 = !{!2021}
!2021 = distinct !{!2021, !2019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2022 = !{!2018, !2013, !2008, !2003}
!2023 = !{!2021, !2016, !2011, !2006}
!2024 = !{!2025}
!2025 = distinct !{!2025, !2026, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE: %self.0"}
!2026 = distinct !{!2026, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE"}
!2027 = !{!2028}
!2028 = distinct !{!2028, !2029, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E: %v.0"}
!2029 = distinct !{!2029, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha65bf0adc6d30810E"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2032 = distinct !{!2032, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2032, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2035 = !{!2036}
!2036 = distinct !{!2036, !2037, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2037 = distinct !{!2037, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %_0"}
!2040 = distinct !{!2040, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2037, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"cmpfunc: %a"}
!2045 = distinct !{!2045, !"cmpfunc"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"cmpfunc: %b"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2050 = distinct !{!2050, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2050, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2053 = !{!2049, !2044, !2036, !2031, !2028}
!2054 = !{!2052, !2047, !2042, !2034, !2039}
!2055 = !{!2052, !2047, !2042, !2034, !2028}
!2056 = !{!2049, !2044, !2036, !2031, !2039}
!2057 = !{!2039, !2058, !2028}
!2058 = distinct !{!2058, !2040, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdfbcba1e4c9561dcE: %is_less"}
!2059 = !{!2060}
!2060 = distinct !{!2060, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2061 = distinct !{!2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2064 = !{!2065}
!2065 = distinct !{!2065, !2066, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2066 = distinct !{!2066, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2069, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %_0"}
!2069 = distinct !{!2069, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2066, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!2072 = !{!2073}
!2073 = distinct !{!2073, !2074, !"cmpfunc: %a"}
!2074 = distinct !{!2074, !"cmpfunc"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2074, !"cmpfunc: %b"}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2079 = distinct !{!2079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2079, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2082 = !{!2078, !2073, !2065, !2060, !2028}
!2083 = !{!2081, !2076, !2071, !2063, !2068}
!2084 = !{!2081, !2076, !2071, !2063, !2028}
!2085 = !{!2078, !2073, !2065, !2060, !2068}
!2086 = !{!2068, !2087, !2028}
!2087 = distinct !{!2087, !2069, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he5e563c6ffa46373E: %is_less"}
!2088 = !{!2089, !2091}
!2089 = distinct !{!2089, !2090, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2090 = distinct !{!2090, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2091 = distinct !{!2091, !2092, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2092 = distinct !{!2092, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2093 = !{!2094, !2096, !2098, !2100}
!2094 = distinct !{!2094, !2095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2095 = distinct !{!2095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2096 = distinct !{!2096, !2097, !"cmpfunc: %b"}
!2097 = distinct !{!2097, !"cmpfunc"}
!2098 = distinct !{!2098, !2099, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!2099 = distinct !{!2099, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2100 = distinct !{!2100, !2101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2101 = distinct !{!2101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2102 = !{!2103, !2104, !2105, !2106}
!2103 = distinct !{!2103, !2095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2104 = distinct !{!2104, !2097, !"cmpfunc: %a"}
!2105 = distinct !{!2105, !2099, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2106 = distinct !{!2106, !2101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2107 = !{!2108, !2110, !2112, !2114}
!2108 = distinct !{!2108, !2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2109 = distinct !{!2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2110 = distinct !{!2110, !2111, !"cmpfunc: %b"}
!2111 = distinct !{!2111, !"cmpfunc"}
!2112 = distinct !{!2112, !2113, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!2113 = distinct !{!2113, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2114 = distinct !{!2114, !2115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2115 = distinct !{!2115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = distinct !{!2117, !2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2118 = distinct !{!2118, !2111, !"cmpfunc: %a"}
!2119 = distinct !{!2119, !2113, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2120 = distinct !{!2120, !2115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2121 = !{!2122, !2124}
!2122 = distinct !{!2122, !2123, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2123 = distinct !{!2123, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2124 = distinct !{!2124, !2125, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2125 = distinct !{!2125, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2126 = !{!2127}
!2127 = distinct !{!2127, !2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2128 = distinct !{!2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2133 = distinct !{!2133, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2133, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2138 = distinct !{!2138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2141 = !{!2137, !2135, !2130}
!2142 = !{!2140, !2132, !2127}
!2143 = !{!2144}
!2144 = distinct !{!2144, !2145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2145 = distinct !{!2145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2146 = !{!2147}
!2147 = distinct !{!2147, !2145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2148 = !{!2149}
!2149 = distinct !{!2149, !2150, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2150 = distinct !{!2150, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2151 = !{!2152}
!2152 = distinct !{!2152, !2150, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2155 = distinct !{!2155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2158 = !{!2154, !2152, !2147}
!2159 = !{!2157, !2149, !2144}
!2160 = !{!2161}
!2161 = distinct !{!2161, !2162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2162 = distinct !{!2162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2162, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2167, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2167 = distinct !{!2167, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2167, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2172 = distinct !{!2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2175 = !{!2171, !2169, !2164}
!2176 = !{!2174, !2166, !2161}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2179 = distinct !{!2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2184, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2184 = distinct !{!2184, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2184, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2189 = distinct !{!2189, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2189, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2192 = !{!2188, !2186, !2181}
!2193 = !{!2191, !2183, !2178}
!2194 = !{!2195}
!2195 = distinct !{!2195, !2196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2196 = distinct !{!2196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2201 = distinct !{!2201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2201, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2206 = distinct !{!2206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2206, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2209 = !{!2205, !2203, !2198}
!2210 = !{!2208, !2200, !2195}
!2211 = !{!2212}
!2212 = distinct !{!2212, !2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2213 = distinct !{!2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2218, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2218 = distinct !{!2218, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2219 = !{!2220}
!2220 = distinct !{!2220, !2218, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2223, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2223 = distinct !{!2223, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2223, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2226 = !{!2222, !2220, !2215}
!2227 = !{!2225, !2217, !2212}
!2228 = !{!2229}
!2229 = distinct !{!2229, !2230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2230 = distinct !{!2230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2231 = !{!2232}
!2232 = distinct !{!2232, !2230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2233 = !{!2234}
!2234 = distinct !{!2234, !2235, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2235 = distinct !{!2235, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2235, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2238 = !{!2239}
!2239 = distinct !{!2239, !2240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2240 = distinct !{!2240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2241 = !{!2242}
!2242 = distinct !{!2242, !2240, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2243 = !{!2239, !2237, !2232}
!2244 = !{!2242, !2234, !2229}
!2245 = !{!2246}
!2246 = distinct !{!2246, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2247 = distinct !{!2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2248 = !{!2249}
!2249 = distinct !{!2249, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2252 = distinct !{!2252, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2252, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2255 = !{!2256}
!2256 = distinct !{!2256, !2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2257 = distinct !{!2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2258 = !{!2259}
!2259 = distinct !{!2259, !2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2260 = !{!2256, !2254, !2249}
!2261 = !{!2259, !2251, !2246}
!2262 = !{!2263}
!2263 = distinct !{!2263, !2264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2264 = distinct !{!2264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2265 = !{!2266}
!2266 = distinct !{!2266, !2264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2269 = distinct !{!2269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2270 = !{!2271}
!2271 = distinct !{!2271, !2269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2274 = distinct !{!2274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2275 = !{!2276}
!2276 = distinct !{!2276, !2274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2277 = !{!2273, !2271, !2266}
!2278 = !{!2276, !2268, !2263}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2281 = distinct !{!2281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2282 = !{!2283}
!2283 = distinct !{!2283, !2281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2284 = !{!2285}
!2285 = distinct !{!2285, !2286, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2286 = distinct !{!2286, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2286, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2291 = distinct !{!2291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2294 = !{!2290, !2288, !2283}
!2295 = !{!2293, !2285, !2280}
!2296 = !{!2297}
!2297 = distinct !{!2297, !2298, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE: %self.0"}
!2298 = distinct !{!2298, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E: %v.0"}
!2301 = distinct !{!2301, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha8fa04fd71282dd1E"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2304 = distinct !{!2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2305 = !{!2306}
!2306 = distinct !{!2306, !2304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2307 = !{!2308}
!2308 = distinct !{!2308, !2309, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2309 = distinct !{!2309, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2310 = !{!2311}
!2311 = distinct !{!2311, !2312, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %_0"}
!2312 = distinct !{!2312, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE"}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2309, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2315 = !{!2316}
!2316 = distinct !{!2316, !2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2317 = distinct !{!2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2318 = !{!2319}
!2319 = distinct !{!2319, !2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2320 = !{!2316, !2314, !2306, !2300}
!2321 = !{!2319, !2308, !2303, !2311}
!2322 = !{!2319, !2308, !2303, !2300}
!2323 = !{!2316, !2314, !2306, !2311}
!2324 = !{!2311, !2325, !2300}
!2325 = distinct !{!2325, !2312, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h35348c3b6539963aE: %is_less"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2328 = distinct !{!2328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2329 = !{!2330}
!2330 = distinct !{!2330, !2328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2333 = distinct !{!2333, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2334 = !{!2335}
!2335 = distinct !{!2335, !2336, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %_0"}
!2336 = distinct !{!2336, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E"}
!2337 = !{!2338}
!2338 = distinct !{!2338, !2333, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2341 = distinct !{!2341, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2341, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2344 = !{!2340, !2338, !2330, !2300}
!2345 = !{!2343, !2332, !2327, !2335}
!2346 = !{!2343, !2332, !2327, !2300}
!2347 = !{!2340, !2338, !2330, !2335}
!2348 = !{!2335, !2349, !2300}
!2349 = distinct !{!2349, !2336, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h11bea0efca2372c2E: %is_less"}
!2350 = !{!2351, !2353}
!2351 = distinct !{!2351, !2352, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2352 = distinct !{!2352, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2353 = distinct !{!2353, !2354, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2354 = distinct !{!2354, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2355 = !{!2356, !2358, !2360}
!2356 = distinct !{!2356, !2357, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2357 = distinct !{!2357, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2358 = distinct !{!2358, !2359, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2359 = distinct !{!2359, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2360 = distinct !{!2360, !2361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2361 = distinct !{!2361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2362 = !{!2363, !2364, !2365}
!2363 = distinct !{!2363, !2357, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2364 = distinct !{!2364, !2359, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2365 = distinct !{!2365, !2361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2366 = !{!2367, !2369, !2371}
!2367 = distinct !{!2367, !2368, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2368 = distinct !{!2368, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2369 = distinct !{!2369, !2370, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2370 = distinct !{!2370, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2371 = distinct !{!2371, !2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2372 = distinct !{!2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2373 = !{!2374, !2375, !2376}
!2374 = distinct !{!2374, !2368, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2375 = distinct !{!2375, !2370, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2376 = distinct !{!2376, !2372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2377 = !{!2378, !2380}
!2378 = distinct !{!2378, !2379, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2379 = distinct !{!2379, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2380 = distinct !{!2380, !2381, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2381 = distinct !{!2381, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2384 = distinct !{!2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2385 = !{!2386}
!2386 = distinct !{!2386, !2384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2389 = distinct !{!2389, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2390 = !{!2391}
!2391 = distinct !{!2391, !2389, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2394 = distinct !{!2394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2395 = !{!2396}
!2396 = distinct !{!2396, !2394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2397 = !{!2393, !2388, !2383}
!2398 = !{!2396, !2391, !2386}
!2399 = !{!2400}
!2400 = distinct !{!2400, !2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2401 = distinct !{!2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2402 = !{!2403}
!2403 = distinct !{!2403, !2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2404 = !{!2405}
!2405 = distinct !{!2405, !2406, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2406 = distinct !{!2406, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2407 = !{!2408}
!2408 = distinct !{!2408, !2406, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2411 = distinct !{!2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2412 = !{!2413}
!2413 = distinct !{!2413, !2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2414 = !{!2410, !2405, !2400}
!2415 = !{!2413, !2408, !2403}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2418 = distinct !{!2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2419 = !{!2420}
!2420 = distinct !{!2420, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2423 = distinct !{!2423, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2423, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2428, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2428 = distinct !{!2428, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2428, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2431 = !{!2427, !2422, !2417}
!2432 = !{!2430, !2425, !2420}
!2433 = !{!2434}
!2434 = distinct !{!2434, !2435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2435 = distinct !{!2435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2440 = distinct !{!2440, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2440, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2445 = distinct !{!2445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2446 = !{!2447}
!2447 = distinct !{!2447, !2445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2448 = !{!2444, !2439, !2434}
!2449 = !{!2447, !2442, !2437}
!2450 = !{!2451}
!2451 = distinct !{!2451, !2452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2452 = distinct !{!2452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2453 = !{!2454}
!2454 = distinct !{!2454, !2452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2457 = distinct !{!2457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2462 = distinct !{!2462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2465 = !{!2461, !2456, !2451}
!2466 = !{!2464, !2459, !2454}
!2467 = !{!2468}
!2468 = distinct !{!2468, !2469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2469 = distinct !{!2469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2470 = !{!2471}
!2471 = distinct !{!2471, !2469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2472 = !{!2473}
!2473 = distinct !{!2473, !2474, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2474 = distinct !{!2474, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2474, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2479 = distinct !{!2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2482 = !{!2478, !2473, !2468}
!2483 = !{!2481, !2476, !2471}
!2484 = !{!2485}
!2485 = distinct !{!2485, !2486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2486 = distinct !{!2486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2487 = !{!2488}
!2488 = distinct !{!2488, !2486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2491, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2491 = distinct !{!2491, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2491, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2494 = !{!2495}
!2495 = distinct !{!2495, !2496, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2496 = distinct !{!2496, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2496, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2499 = !{!2495, !2490, !2485}
!2500 = !{!2498, !2493, !2488}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2503 = distinct !{!2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2508 = distinct !{!2508, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2508, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2513 = distinct !{!2513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2514 = !{!2515}
!2515 = distinct !{!2515, !2513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2516 = !{!2512, !2507, !2502}
!2517 = !{!2515, !2510, !2505}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2520 = distinct !{!2520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2521 = !{!2522}
!2522 = distinct !{!2522, !2520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2523 = !{!2524}
!2524 = distinct !{!2524, !2525, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2525 = distinct !{!2525, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2526 = !{!2527}
!2527 = distinct !{!2527, !2525, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2528 = !{!2529}
!2529 = distinct !{!2529, !2530, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2530 = distinct !{!2530, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2531 = !{!2532}
!2532 = distinct !{!2532, !2530, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2533 = !{!2529, !2524, !2519}
!2534 = !{!2532, !2527, !2522}
!2535 = !{!2536}
!2536 = distinct !{!2536, !2537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2537 = distinct !{!2537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2538 = !{!2539}
!2539 = distinct !{!2539, !2537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2542 = distinct !{!2542, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2543 = !{!2544}
!2544 = distinct !{!2544, !2542, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2545 = !{!2546}
!2546 = distinct !{!2546, !2547, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2547 = distinct !{!2547, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2547, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2550 = !{!2546, !2541, !2536}
!2551 = !{!2549, !2544, !2539}
!2552 = !{!2553}
!2553 = distinct !{!2553, !2554, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE: %self.0"}
!2554 = distinct !{!2554, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h36c54a516815093aE"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE: %v.0"}
!2557 = distinct !{!2557, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h908ffcb6fe1d58ccE"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2560 = distinct !{!2560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2561 = !{!2562}
!2562 = distinct !{!2562, !2560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2565 = distinct !{!2565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2566 = !{!2567}
!2567 = distinct !{!2567, !2568, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %_0"}
!2568 = distinct !{!2568, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E"}
!2569 = !{!2570}
!2570 = distinct !{!2570, !2565, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2573, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2573 = distinct !{!2573, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2574 = !{!2575}
!2575 = distinct !{!2575, !2573, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2576 = !{!2572, !2564, !2559, !2556}
!2577 = !{!2575, !2570, !2562, !2567}
!2578 = !{!2575, !2570, !2562, !2556}
!2579 = !{!2572, !2564, !2559, !2567}
!2580 = !{!2567, !2581, !2556}
!2581 = distinct !{!2581, !2568, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h96a97a48c983e824E: %is_less"}
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2584 = distinct !{!2584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2585 = !{!2586}
!2586 = distinct !{!2586, !2584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2587 = !{!2588}
!2588 = distinct !{!2588, !2589, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2589 = distinct !{!2589, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2590 = !{!2591}
!2591 = distinct !{!2591, !2592, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %_0"}
!2592 = distinct !{!2592, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E"}
!2593 = !{!2594}
!2594 = distinct !{!2594, !2589, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2595 = !{!2596}
!2596 = distinct !{!2596, !2597, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2597 = distinct !{!2597, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2598 = !{!2599}
!2599 = distinct !{!2599, !2597, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2600 = !{!2596, !2588, !2583, !2556}
!2601 = !{!2599, !2594, !2586, !2591}
!2602 = !{!2599, !2594, !2586, !2556}
!2603 = !{!2596, !2588, !2583, !2591}
!2604 = !{!2591, !2605, !2556}
!2605 = distinct !{!2605, !2592, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h8d2bb4de5c1c0859E: %is_less"}
!2606 = !{!2607, !2609}
!2607 = distinct !{!2607, !2608, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2608 = distinct !{!2608, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2609 = distinct !{!2609, !2610, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2610 = distinct !{!2610, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2611 = !{!2612, !2614, !2616}
!2612 = distinct !{!2612, !2613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2613 = distinct !{!2613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2614 = distinct !{!2614, !2615, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2615 = distinct !{!2615, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2616 = distinct !{!2616, !2617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2617 = distinct !{!2617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2618 = !{!2619, !2620, !2621}
!2619 = distinct !{!2619, !2613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2620 = distinct !{!2620, !2615, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2621 = distinct !{!2621, !2617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2622 = !{!2623, !2625, !2627}
!2623 = distinct !{!2623, !2624, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2624 = distinct !{!2624, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2625 = distinct !{!2625, !2626, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2626 = distinct !{!2626, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2627 = distinct !{!2627, !2628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2628 = distinct !{!2628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2629 = !{!2630, !2631, !2632}
!2630 = distinct !{!2630, !2624, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2631 = distinct !{!2631, !2626, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2632 = distinct !{!2632, !2628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2633 = !{!2634, !2636}
!2634 = distinct !{!2634, !2635, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE: %self"}
!2635 = distinct !{!2635, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6a98d89edb9b84fE"}
!2636 = distinct !{!2636, !2637, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E: %_1"}
!2637 = distinct !{!2637, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hebc620b3ae955351E"}
!2638 = !{!2639}
!2639 = distinct !{!2639, !2640, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E: %_0"}
!2640 = distinct !{!2640, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E"}
!2641 = !{i64 0, i64 2}
!2642 = !{i64 0, i64 -9223372036854775807}
!2643 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E: %_0"}
!2646 = distinct !{!2646, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2649, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E: %_0"}
!2649 = distinct !{!2649, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h10bdae547965f703E"}
!2650 = !{!2651}
!2651 = distinct !{!2651, !2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2652 = distinct !{!2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2653 = !{!2654}
!2654 = distinct !{!2654, !2652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2657, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2657 = distinct !{!2657, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2658 = !{!2659}
!2659 = distinct !{!2659, !2657, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2662, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2662 = distinct !{!2662, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2662, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2665 = !{!2661, !2659, !2654}
!2666 = !{!2664, !2656, !2651}
!2667 = !{!2668}
!2668 = distinct !{!2668, !2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2669 = distinct !{!2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2670 = !{!2671}
!2671 = distinct !{!2671, !2669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2674 = distinct !{!2674, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2675 = !{!2676}
!2676 = distinct !{!2676, !2674, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2677 = !{!2678}
!2678 = distinct !{!2678, !2679, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2679 = distinct !{!2679, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2680 = !{!2681}
!2681 = distinct !{!2681, !2679, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2682 = !{!2678, !2676, !2671}
!2683 = !{!2681, !2673, !2668}
!2684 = !{!2685}
!2685 = distinct !{!2685, !2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2686 = distinct !{!2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2687 = !{!2688}
!2688 = distinct !{!2688, !2686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2689 = !{!2690}
!2690 = distinct !{!2690, !2691, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2691 = distinct !{!2691, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2692 = !{!2693}
!2693 = distinct !{!2693, !2691, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2696 = distinct !{!2696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2697 = !{!2698}
!2698 = distinct !{!2698, !2696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2699 = !{!2695, !2693, !2688}
!2700 = !{!2698, !2690, !2685}
!2701 = !{!2702, !2704}
!2702 = distinct !{!2702, !2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %a.0"}
!2703 = distinct !{!2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E"}
!2704 = distinct !{!2704, !2705, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE: %self.0"}
!2705 = distinct !{!2705, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE"}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %b.0"}
!2708 = !{!2707, !2704}
!2709 = !{!2702}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2712 = distinct !{!2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2713 = !{!2714}
!2714 = distinct !{!2714, !2712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2715 = !{!2716}
!2716 = distinct !{!2716, !2717, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2717 = distinct !{!2717, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2718 = !{!2719}
!2719 = distinct !{!2719, !2717, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!2733 = distinct !{!2733, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2734 = distinct !{!2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2735 = !{!2736}
!2736 = distinct !{!2736, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2739 = distinct !{!2739, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2740 = !{!2741}
!2741 = distinct !{!2741, !2739, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!2755 = distinct !{!2755, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2756 = distinct !{!2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2756, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2761, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2761 = distinct !{!2761, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2762 = !{!2763}
!2763 = distinct !{!2763, !2761, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!2777 = distinct !{!2777, !2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %a.0"}
!2778 = distinct !{!2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E"}
!2779 = distinct !{!2779, !2780, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE: %self.0"}
!2780 = distinct !{!2780, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE"}
!2781 = !{!2782}
!2782 = distinct !{!2782, !2778, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %b.0"}
!2783 = !{!2782, !2779}
!2784 = !{!2777}
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2787 = distinct !{!2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2788 = !{!2789}
!2789 = distinct !{!2789, !2787, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2790 = !{!2791}
!2791 = distinct !{!2791, !2792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2792 = distinct !{!2792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2793 = !{!2794}
!2794 = distinct !{!2794, !2792, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2797 = distinct !{!2797, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2798 = !{!2799}
!2799 = distinct !{!2799, !2797, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2800 = !{!2796, !2791, !2786}
!2801 = !{!2799, !2794, !2789}
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2804 = distinct !{!2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2807 = !{!2808}
!2808 = distinct !{!2808, !2809, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2809 = distinct !{!2809, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2810 = !{!2811}
!2811 = distinct !{!2811, !2809, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2812 = !{!2813}
!2813 = distinct !{!2813, !2814, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2814 = distinct !{!2814, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2815 = !{!2816}
!2816 = distinct !{!2816, !2814, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2817 = !{!2813, !2808, !2803}
!2818 = !{!2816, !2811, !2806}
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2821 = distinct !{!2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2822 = !{!2823}
!2823 = distinct !{!2823, !2821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2824 = !{!2825}
!2825 = distinct !{!2825, !2826, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2826 = distinct !{!2826, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2827 = !{!2828}
!2828 = distinct !{!2828, !2826, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2831 = distinct !{!2831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2832 = !{!2833}
!2833 = distinct !{!2833, !2831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2834 = !{!2830, !2825, !2820}
!2835 = !{!2833, !2828, !2823}
!2836 = !{!2837, !2839}
!2837 = distinct !{!2837, !2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %a.0"}
!2838 = distinct !{!2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E"}
!2839 = distinct !{!2839, !2840, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE: %self.0"}
!2840 = distinct !{!2840, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf36017dbea4649eaE"}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2838, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h29e96590cbbebdd2E: %b.0"}
!2843 = !{!2842, !2839}
!2844 = !{!2837}
!2845 = !{!2846}
!2846 = distinct !{!2846, !2847, !"_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E: %v.0"}
!2847 = distinct !{!2847, !"_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E"}
!2848 = !{!2849}
!2849 = distinct !{!2849, !2847, !"_ZN4core5slice4sort6stable5merge5merge17h3c9e44bd2e2a0842E: %scratch.0"}
!2850 = !{!2846, !2849}
!2851 = !{!2852}
!2852 = distinct !{!2852, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2853 = distinct !{!2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2854 = !{!2855}
!2855 = distinct !{!2855, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2856 = !{!2857}
!2857 = distinct !{!2857, !2858, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2858 = distinct !{!2858, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2859 = !{!2860}
!2860 = distinct !{!2860, !2858, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2863 = distinct !{!2863, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2863, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2866 = !{!2862, !2860, !2855, !2846}
!2867 = !{!2865, !2857, !2852, !2868, !2849}
!2868 = distinct !{!2868, !2869, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3de6ba1a9facafb0E: %self"}
!2869 = distinct !{!2869, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3de6ba1a9facafb0E"}
!2870 = !{!2865, !2857, !2852, !2849}
!2871 = !{!2862, !2860, !2855, !2868, !2846}
!2872 = !{!2868, !2849}
!2873 = !{!2874}
!2874 = distinct !{!2874, !2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!2875 = distinct !{!2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!2876 = !{!2877}
!2877 = distinct !{!2877, !2875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!2878 = !{!2879}
!2879 = distinct !{!2879, !2880, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!2880 = distinct !{!2880, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!2881 = !{!2882}
!2882 = distinct !{!2882, !2880, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!2883 = !{!2884}
!2884 = distinct !{!2884, !2885, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2885 = distinct !{!2885, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2886 = !{!2887}
!2887 = distinct !{!2887, !2885, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2888 = !{!2884, !2882, !2877, !2849}
!2889 = !{!2887, !2879, !2874, !2890, !2846}
!2890 = distinct !{!2890, !2891, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hda5bd3707f49a2e3E: %self"}
!2891 = distinct !{!2891, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hda5bd3707f49a2e3E"}
!2892 = !{!2887, !2879, !2874, !2846}
!2893 = !{!2884, !2882, !2877, !2890, !2849}
!2894 = !{!2890, !2849}
!2895 = !{!2896, !2898}
!2896 = distinct !{!2896, !2897, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!2897 = distinct !{!2897, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!2898 = distinct !{!2898, !2899, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!2899 = distinct !{!2899, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!2900 = !{!2901}
!2901 = distinct !{!2901, !2902, !"_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE: %v.0"}
!2902 = distinct !{!2902, !"_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE"}
!2903 = !{!2904}
!2904 = distinct !{!2904, !2902, !"_ZN4core5slice4sort6stable5merge5merge17h929af8fd12d25d8dE: %scratch.0"}
!2905 = !{!2901, !2904}
!2906 = !{!2907}
!2907 = distinct !{!2907, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2908 = distinct !{!2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2909 = !{!2910}
!2910 = distinct !{!2910, !2908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2911 = !{!2912}
!2912 = distinct !{!2912, !2913, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2913 = distinct !{!2913, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2914 = !{!2915}
!2915 = distinct !{!2915, !2913, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2916 = !{!2917}
!2917 = distinct !{!2917, !2918, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2918 = distinct !{!2918, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2919 = !{!2920}
!2920 = distinct !{!2920, !2918, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2921 = !{!2917, !2912, !2907, !2904}
!2922 = !{!2920, !2915, !2910, !2923, !2901}
!2923 = distinct !{!2923, !2924, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h636e6dbe2203b876E: %self"}
!2924 = distinct !{!2924, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h636e6dbe2203b876E"}
!2925 = !{!2920, !2915, !2910, !2901}
!2926 = !{!2917, !2912, !2907, !2923, !2904}
!2927 = !{!2923, !2904}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!2930 = distinct !{!2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!2931 = !{!2932}
!2932 = distinct !{!2932, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!2933 = !{!2934}
!2934 = distinct !{!2934, !2935, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!2935 = distinct !{!2935, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!2936 = !{!2937}
!2937 = distinct !{!2937, !2935, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!2938 = !{!2939}
!2939 = distinct !{!2939, !2940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!2940 = distinct !{!2940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!2941 = !{!2942}
!2942 = distinct !{!2942, !2940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!2943 = !{!2939, !2934, !2929, !2901}
!2944 = !{!2942, !2937, !2932, !2945, !2904}
!2945 = distinct !{!2945, !2946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6361771d6af77759E: %self"}
!2946 = distinct !{!2946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6361771d6af77759E"}
!2947 = !{!2942, !2937, !2932, !2904}
!2948 = !{!2939, !2934, !2929, !2945, !2901}
!2949 = !{!2945, !2904}
!2950 = !{!2951, !2953}
!2951 = distinct !{!2951, !2952, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!2952 = distinct !{!2952, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!2953 = distinct !{!2953, !2954, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!2954 = distinct !{!2954, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!2955 = !{!2956}
!2956 = distinct !{!2956, !2957, !"_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E: %v.0"}
!2957 = distinct !{!2957, !"_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E"}
!2958 = !{!2959}
!2959 = distinct !{!2959, !2957, !"_ZN4core5slice4sort6stable5merge5merge17h697529efddc23899E: %scratch.0"}
!2960 = !{!2956, !2959}
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2963 = distinct !{!2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2964 = !{!2965}
!2965 = distinct !{!2965, !2963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2968 = distinct !{!2968, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2968, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!2983 = distinct !{!2983, !2984, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6978843d0e45a2f4E: %self"}
!2984 = distinct !{!2984, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6978843d0e45a2f4E"}
!2985 = !{!2980, !2975, !2970, !2965, !2956}
!2986 = !{!2977, !2972, !2967, !2962, !2983, !2959}
!2987 = !{!2983, !2959}
!2988 = !{!2989}
!2989 = distinct !{!2989, !2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!2990 = distinct !{!2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!2991 = !{!2992}
!2992 = distinct !{!2992, !2990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!2995 = distinct !{!2995, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2995, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3010 = distinct !{!3010, !3011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hdd0580a6f9a58bdbE: %self"}
!3011 = distinct !{!3011, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hdd0580a6f9a58bdbE"}
!3012 = !{!3007, !3002, !2997, !2992, !2959}
!3013 = !{!3004, !2999, !2994, !2989, !3010, !2956}
!3014 = !{!3010, !2959}
!3015 = !{!3016, !3018}
!3016 = distinct !{!3016, !3017, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!3017 = distinct !{!3017, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!3018 = distinct !{!3018, !3019, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!3019 = distinct !{!3019, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!3020 = !{!3021}
!3021 = distinct !{!3021, !3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3022 = distinct !{!3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3023 = !{!3024}
!3024 = distinct !{!3024, !3022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3027 = distinct !{!3027, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3028 = !{!3029}
!3029 = distinct !{!3029, !3027, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3030 = !{!3031}
!3031 = distinct !{!3031, !3032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3032 = distinct !{!3032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3033 = !{!3034}
!3034 = distinct !{!3034, !3032, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3035 = !{!3031, !3029, !3024}
!3036 = !{!3034, !3026, !3021}
!3037 = !{!3038}
!3038 = distinct !{!3038, !3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3039 = distinct !{!3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3040 = !{!3041}
!3041 = distinct !{!3041, !3039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3042 = !{!3043}
!3043 = distinct !{!3043, !3044, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3044 = distinct !{!3044, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3045 = !{!3046}
!3046 = distinct !{!3046, !3044, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3047 = !{!3048}
!3048 = distinct !{!3048, !3049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3049 = distinct !{!3049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3050 = !{!3051}
!3051 = distinct !{!3051, !3049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3052 = !{!3048, !3043, !3038}
!3053 = !{!3051, !3046, !3041}
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3056 = distinct !{!3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3057 = !{!3058}
!3058 = distinct !{!3058, !3056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3059 = !{!3060}
!3060 = distinct !{!3060, !3061, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3061 = distinct !{!3061, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3062 = !{!3063}
!3063 = distinct !{!3063, !3061, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3077 = distinct !{!3077, !3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3078 = distinct !{!3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3079 = !{!3080}
!3080 = distinct !{!3080, !3078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3081 = !{!3082}
!3082 = distinct !{!3082, !3083, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3083 = distinct !{!3083, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3084 = !{!3085}
!3085 = distinct !{!3085, !3083, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3086 = !{!3087}
!3087 = distinct !{!3087, !3088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3088 = distinct !{!3088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3089 = !{!3090}
!3090 = distinct !{!3090, !3088, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3091 = !{!3087, !3082, !3077}
!3092 = !{!3090, !3085, !3080}
!3093 = !{!3094}
!3094 = distinct !{!3094, !3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3095 = distinct !{!3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3096 = !{!3097}
!3097 = distinct !{!3097, !3095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3098 = !{!3099}
!3099 = distinct !{!3099, !3100, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3100 = distinct !{!3100, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3101 = !{!3102}
!3102 = distinct !{!3102, !3100, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3103 = !{!3104}
!3104 = distinct !{!3104, !3105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3105 = distinct !{!3105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3106 = !{!3107}
!3107 = distinct !{!3107, !3105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3108 = !{!3104, !3102, !3097}
!3109 = !{!3107, !3099, !3094}
!3110 = !{!3111}
!3111 = distinct !{!3111, !3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3112 = distinct !{!3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3113 = !{!3114}
!3114 = distinct !{!3114, !3112, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3115 = !{!3116}
!3116 = distinct !{!3116, !3117, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3117 = distinct !{!3117, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3118 = !{!3119}
!3119 = distinct !{!3119, !3117, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3133 = distinct !{!3133, !3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3134 = distinct !{!3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3135 = !{!3136}
!3136 = distinct !{!3136, !3134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3137 = !{!3138}
!3138 = distinct !{!3138, !3139, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3139 = distinct !{!3139, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3140 = !{!3141}
!3141 = distinct !{!3141, !3139, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3142 = !{!3143}
!3143 = distinct !{!3143, !3144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3144 = distinct !{!3144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3145 = !{!3146}
!3146 = distinct !{!3146, !3144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3147 = !{!3143, !3141, !3136}
!3148 = !{!3146, !3138, !3133, !3149}
!3149 = distinct !{!3149, !3150, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3de6ba1a9facafb0E: %self"}
!3150 = distinct !{!3150, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3de6ba1a9facafb0E"}
!3151 = !{!3146, !3138, !3133}
!3152 = !{!3143, !3141, !3136, !3149}
!3153 = !{!3149}
!3154 = !{!3155}
!3155 = distinct !{!3155, !3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3156 = distinct !{!3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3157 = !{!3158}
!3158 = distinct !{!3158, !3156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3159 = !{!3160}
!3160 = distinct !{!3160, !3161, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3161 = distinct !{!3161, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3162 = !{!3163}
!3163 = distinct !{!3163, !3161, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3164 = !{!3165}
!3165 = distinct !{!3165, !3166, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3166 = distinct !{!3166, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3167 = !{!3168}
!3168 = distinct !{!3168, !3166, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3169 = !{!3165, !3163, !3158}
!3170 = !{!3168, !3160, !3155, !3171}
!3171 = distinct !{!3171, !3172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hda5bd3707f49a2e3E: %self"}
!3172 = distinct !{!3172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hda5bd3707f49a2e3E"}
!3173 = !{!3168, !3160, !3155}
!3174 = !{!3165, !3163, !3158, !3171}
!3175 = !{!3171}
!3176 = !{!3177, !3179}
!3177 = distinct !{!3177, !3178, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!3178 = distinct !{!3178, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!3179 = distinct !{!3179, !3180, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!3180 = distinct !{!3180, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!3181 = !{!3182}
!3182 = distinct !{!3182, !3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3183 = distinct !{!3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3184 = !{!3185}
!3185 = distinct !{!3185, !3183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3188 = distinct !{!3188, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3189 = !{!3190}
!3190 = distinct !{!3190, !3188, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3191 = !{!3192}
!3192 = distinct !{!3192, !3193, !"cmpfunc: %a"}
!3193 = distinct !{!3193, !"cmpfunc"}
!3194 = !{!3195}
!3195 = distinct !{!3195, !3193, !"cmpfunc: %b"}
!3196 = !{!3197}
!3197 = distinct !{!3197, !3198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3198 = distinct !{!3198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3199 = !{!3200}
!3200 = distinct !{!3200, !3198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3201 = !{!3197, !3192, !3187, !3182}
!3202 = !{!3200, !3195, !3190, !3185, !3203}
!3203 = distinct !{!3203, !3204, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6978843d0e45a2f4E: %self"}
!3204 = distinct !{!3204, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6978843d0e45a2f4E"}
!3205 = !{!3200, !3195, !3190, !3185}
!3206 = !{!3197, !3192, !3187, !3182, !3203}
!3207 = !{!3203}
!3208 = !{!3209}
!3209 = distinct !{!3209, !3210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3210 = distinct !{!3210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3211 = !{!3212}
!3212 = distinct !{!3212, !3210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3213 = !{!3214}
!3214 = distinct !{!3214, !3215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3215 = distinct !{!3215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3216 = !{!3217}
!3217 = distinct !{!3217, !3215, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3218 = !{!3219}
!3219 = distinct !{!3219, !3220, !"cmpfunc: %a"}
!3220 = distinct !{!3220, !"cmpfunc"}
!3221 = !{!3222}
!3222 = distinct !{!3222, !3220, !"cmpfunc: %b"}
!3223 = !{!3224}
!3224 = distinct !{!3224, !3225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3225 = distinct !{!3225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3226 = !{!3227}
!3227 = distinct !{!3227, !3225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3228 = !{!3224, !3219, !3214, !3209}
!3229 = !{!3227, !3222, !3217, !3212, !3230}
!3230 = distinct !{!3230, !3231, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hdd0580a6f9a58bdbE: %self"}
!3231 = distinct !{!3231, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hdd0580a6f9a58bdbE"}
!3232 = !{!3227, !3222, !3217, !3212}
!3233 = !{!3224, !3219, !3214, !3209, !3230}
!3234 = !{!3230}
!3235 = !{!3236, !3238}
!3236 = distinct !{!3236, !3237, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!3237 = distinct !{!3237, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!3238 = distinct !{!3238, !3239, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!3239 = distinct !{!3239, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!3240 = !{!3241}
!3241 = distinct !{!3241, !3242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3242 = distinct !{!3242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3243 = !{!3244}
!3244 = distinct !{!3244, !3242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3247 = distinct !{!3247, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3248 = !{!3249}
!3249 = distinct !{!3249, !3247, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3250 = !{!3251}
!3251 = distinct !{!3251, !3252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3252 = distinct !{!3252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3253 = !{!3254}
!3254 = distinct !{!3254, !3252, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3255 = !{!3251, !3246, !3241}
!3256 = !{!3254, !3249, !3244, !3257}
!3257 = distinct !{!3257, !3258, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h636e6dbe2203b876E: %self"}
!3258 = distinct !{!3258, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h636e6dbe2203b876E"}
!3259 = !{!3254, !3249, !3244}
!3260 = !{!3251, !3246, !3241, !3257}
!3261 = !{!3257}
!3262 = !{!3263}
!3263 = distinct !{!3263, !3264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3264 = distinct !{!3264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3265 = !{!3266}
!3266 = distinct !{!3266, !3264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3267 = !{!3268}
!3268 = distinct !{!3268, !3269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3269 = distinct !{!3269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3270 = !{!3271}
!3271 = distinct !{!3271, !3269, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3272 = !{!3273}
!3273 = distinct !{!3273, !3274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3274 = distinct !{!3274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3275 = !{!3276}
!3276 = distinct !{!3276, !3274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3277 = !{!3273, !3268, !3263}
!3278 = !{!3276, !3271, !3266, !3279}
!3279 = distinct !{!3279, !3280, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6361771d6af77759E: %self"}
!3280 = distinct !{!3280, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6361771d6af77759E"}
!3281 = !{!3276, !3271, !3266}
!3282 = !{!3273, !3268, !3263, !3279}
!3283 = !{!3279}
!3284 = !{!3285, !3287}
!3285 = distinct !{!3285, !3286, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E: %self"}
!3286 = distinct !{!3286, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95593646ab19f6d9E"}
!3287 = distinct !{!3287, !3288, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE: %_1"}
!3288 = distinct !{!3288, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h52805d640b955a0aE"}
!3289 = !{!"branch_weights", i32 4000000, i32 4001}
!3290 = !{!3291}
!3291 = distinct !{!3291, !3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3292 = distinct !{!3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3293 = !{!3294}
!3294 = distinct !{!3294, !3292, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3297 = distinct !{!3297, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3298 = !{!3299}
!3299 = distinct !{!3299, !3297, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3313 = distinct !{!3313, !3314, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3314 = distinct !{!3314, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3317 = distinct !{!3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3318 = !{!3319}
!3319 = distinct !{!3319, !3317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3320 = !{!3321}
!3321 = distinct !{!3321, !3322, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3322 = distinct !{!3322, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3323 = !{!3324}
!3324 = distinct !{!3324, !3322, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3338 = distinct !{!3338, !3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3339 = distinct !{!3339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3342 = distinct !{!3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3343 = !{!3344}
!3344 = distinct !{!3344, !3342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3345 = !{!3346}
!3346 = distinct !{!3346, !3347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3347 = distinct !{!3347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3348 = !{!3349}
!3349 = distinct !{!3349, !3347, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3363 = distinct !{!3363, !3364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3364 = distinct !{!3364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3365 = !{!3366}
!3366 = distinct !{!3366, !3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3367 = distinct !{!3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3368 = !{!3369}
!3369 = distinct !{!3369, !3367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3372 = distinct !{!3372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3373 = !{!3374}
!3374 = distinct !{!3374, !3372, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3388 = distinct !{!3388, !3389, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3389 = distinct !{!3389, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3392 = distinct !{!3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3393 = !{!3394}
!3394 = distinct !{!3394, !3392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3395 = !{!3396}
!3396 = distinct !{!3396, !3397, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3397 = distinct !{!3397, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3398 = !{!3399}
!3399 = distinct !{!3399, !3397, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!3413 = distinct !{!3413, !3414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3414 = distinct !{!3414, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3415 = !{!3416}
!3416 = distinct !{!3416, !3417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3417 = distinct !{!3417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3418 = distinct !{!3418, !3419}
!3419 = !{!"llvm.loop.unroll.disable"}
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %a"}
!3422 = distinct !{!3422, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE"}
!3423 = !{!3424}
!3424 = distinct !{!3424, !3422, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %b"}
!3425 = !{!3426}
!3426 = distinct !{!3426, !3427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3427 = distinct !{!3427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3428 = !{!3429}
!3429 = distinct !{!3429, !3427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3430 = !{!3431}
!3431 = distinct !{!3431, !3432, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3432 = distinct !{!3432, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3433 = !{!3434}
!3434 = distinct !{!3434, !3432, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3435 = !{!3436}
!3436 = distinct !{!3436, !3437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3437 = distinct !{!3437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3438 = !{!3439}
!3439 = distinct !{!3439, !3437, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3440 = !{!3436, !3434, !3429, !3421}
!3441 = !{!3439, !3431, !3426, !3424}
!3442 = !{!3443}
!3443 = distinct !{!3443, !3444, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3444 = distinct !{!3444, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %a"}
!3447 = distinct !{!3447, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE"}
!3448 = !{!3449}
!3449 = distinct !{!3449, !3447, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %b"}
!3450 = !{!3451}
!3451 = distinct !{!3451, !3452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3452 = distinct !{!3452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3453 = !{!3454}
!3454 = distinct !{!3454, !3452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3455 = !{!3456}
!3456 = distinct !{!3456, !3457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3457 = distinct !{!3457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3458 = !{!3459}
!3459 = distinct !{!3459, !3457, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3462 = distinct !{!3462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3463 = !{!3464}
!3464 = distinct !{!3464, !3462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3465 = !{!3461, !3459, !3454, !3446}
!3466 = !{!3464, !3456, !3451, !3449}
!3467 = !{!3468}
!3468 = distinct !{!3468, !3469, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3469 = distinct !{!3469, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %a"}
!3472 = distinct !{!3472, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE"}
!3473 = !{!3474}
!3474 = distinct !{!3474, !3472, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %b"}
!3475 = !{!3476}
!3476 = distinct !{!3476, !3477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3477 = distinct !{!3477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3478 = !{!3479}
!3479 = distinct !{!3479, !3477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3480 = !{!3481}
!3481 = distinct !{!3481, !3482, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3482 = distinct !{!3482, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3483 = !{!3484}
!3484 = distinct !{!3484, !3482, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3485 = !{!3486}
!3486 = distinct !{!3486, !3487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3487 = distinct !{!3487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3488 = !{!3489}
!3489 = distinct !{!3489, !3487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3490 = !{!3486, !3484, !3479, !3471}
!3491 = !{!3489, !3481, !3476, !3474}
!3492 = !{!3493}
!3493 = distinct !{!3493, !3494, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3494 = distinct !{!3494, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3495 = !{!3496}
!3496 = distinct !{!3496, !3497, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %a"}
!3497 = distinct !{!3497, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE"}
!3498 = !{!3499}
!3499 = distinct !{!3499, !3497, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %b"}
!3500 = !{!3501}
!3501 = distinct !{!3501, !3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3502 = distinct !{!3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3503 = !{!3504}
!3504 = distinct !{!3504, !3502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3505 = !{!3506}
!3506 = distinct !{!3506, !3507, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3507 = distinct !{!3507, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3508 = !{!3509}
!3509 = distinct !{!3509, !3507, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3510 = !{!3511}
!3511 = distinct !{!3511, !3512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3512 = distinct !{!3512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3513 = !{!3514}
!3514 = distinct !{!3514, !3512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3515 = !{!3511, !3509, !3504, !3496}
!3516 = !{!3514, !3506, !3501, !3499}
!3517 = !{!3518}
!3518 = distinct !{!3518, !3519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3519 = distinct !{!3519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3520 = !{!3521}
!3521 = distinct !{!3521, !3522, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %a"}
!3522 = distinct !{!3522, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE"}
!3523 = !{!3524}
!3524 = distinct !{!3524, !3522, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hab8f6b7f6377928dE: %b"}
!3525 = !{!3526}
!3526 = distinct !{!3526, !3527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3527 = distinct !{!3527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3528 = !{!3529}
!3529 = distinct !{!3529, !3527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3530 = !{!3531}
!3531 = distinct !{!3531, !3532, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3532 = distinct !{!3532, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3533 = !{!3534}
!3534 = distinct !{!3534, !3532, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3535 = !{!3536}
!3536 = distinct !{!3536, !3537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3537 = distinct !{!3537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3538 = !{!3539}
!3539 = distinct !{!3539, !3537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3540 = !{!3536, !3534, !3529, !3521}
!3541 = !{!3539, !3531, !3526, !3524}
!3542 = !{!3543}
!3543 = distinct !{!3543, !3544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3544 = distinct !{!3544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3545 = !{!3546}
!3546 = distinct !{!3546, !3547, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3547 = distinct !{!3547, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3548 = distinct !{!3548, !3419}
!3549 = !{!3550}
!3550 = distinct !{!3550, !3551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %a"}
!3551 = distinct !{!3551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E"}
!3552 = !{!3553}
!3553 = distinct !{!3553, !3551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %b"}
!3554 = !{!3555}
!3555 = distinct !{!3555, !3556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3556 = distinct !{!3556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3557 = !{!3558}
!3558 = distinct !{!3558, !3556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3559 = !{!3560}
!3560 = distinct !{!3560, !3561, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3561 = distinct !{!3561, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3562 = !{!3563}
!3563 = distinct !{!3563, !3561, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3564 = !{!3565}
!3565 = distinct !{!3565, !3566, !"cmpfunc: %a"}
!3566 = distinct !{!3566, !"cmpfunc"}
!3567 = !{!3568}
!3568 = distinct !{!3568, !3566, !"cmpfunc: %b"}
!3569 = !{!3570}
!3570 = distinct !{!3570, !3571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3571 = distinct !{!3571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3572 = !{!3573}
!3573 = distinct !{!3573, !3571, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3574 = !{!3570, !3565, !3560, !3555, !3553}
!3575 = !{!3573, !3568, !3563, !3558, !3550}
!3576 = !{!3577}
!3577 = distinct !{!3577, !3578, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3578 = distinct !{!3578, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3579 = !{!3580}
!3580 = distinct !{!3580, !3581, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %a"}
!3581 = distinct !{!3581, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E"}
!3582 = !{!3583}
!3583 = distinct !{!3583, !3581, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %b"}
!3584 = !{!3585}
!3585 = distinct !{!3585, !3586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3586 = distinct !{!3586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3587 = !{!3588}
!3588 = distinct !{!3588, !3586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3589 = !{!3590}
!3590 = distinct !{!3590, !3591, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3591 = distinct !{!3591, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3592 = !{!3593}
!3593 = distinct !{!3593, !3591, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3594 = !{!3595}
!3595 = distinct !{!3595, !3596, !"cmpfunc: %a"}
!3596 = distinct !{!3596, !"cmpfunc"}
!3597 = !{!3598}
!3598 = distinct !{!3598, !3596, !"cmpfunc: %b"}
!3599 = !{!3600}
!3600 = distinct !{!3600, !3601, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3601 = distinct !{!3601, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3602 = !{!3603}
!3603 = distinct !{!3603, !3601, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3604 = !{!3600, !3595, !3590, !3585, !3583}
!3605 = !{!3603, !3598, !3593, !3588, !3580}
!3606 = !{!3607}
!3607 = distinct !{!3607, !3608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3608 = distinct !{!3608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3609 = !{!3610}
!3610 = distinct !{!3610, !3611, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %a"}
!3611 = distinct !{!3611, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E"}
!3612 = !{!3613}
!3613 = distinct !{!3613, !3611, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %b"}
!3614 = !{!3615}
!3615 = distinct !{!3615, !3616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3616 = distinct !{!3616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3617 = !{!3618}
!3618 = distinct !{!3618, !3616, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3619 = !{!3620}
!3620 = distinct !{!3620, !3621, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3621 = distinct !{!3621, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3622 = !{!3623}
!3623 = distinct !{!3623, !3621, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3624 = !{!3625}
!3625 = distinct !{!3625, !3626, !"cmpfunc: %a"}
!3626 = distinct !{!3626, !"cmpfunc"}
!3627 = !{!3628}
!3628 = distinct !{!3628, !3626, !"cmpfunc: %b"}
!3629 = !{!3630}
!3630 = distinct !{!3630, !3631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3631 = distinct !{!3631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3632 = !{!3633}
!3633 = distinct !{!3633, !3631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3634 = !{!3630, !3625, !3620, !3615, !3613}
!3635 = !{!3633, !3628, !3623, !3618, !3610}
!3636 = !{!3637}
!3637 = distinct !{!3637, !3638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3638 = distinct !{!3638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3639 = !{!3640}
!3640 = distinct !{!3640, !3641, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %a"}
!3641 = distinct !{!3641, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E"}
!3642 = !{!3643}
!3643 = distinct !{!3643, !3641, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %b"}
!3644 = !{!3645}
!3645 = distinct !{!3645, !3646, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3646 = distinct !{!3646, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3647 = !{!3648}
!3648 = distinct !{!3648, !3646, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3649 = !{!3650}
!3650 = distinct !{!3650, !3651, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3651 = distinct !{!3651, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3652 = !{!3653}
!3653 = distinct !{!3653, !3651, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3654 = !{!3655}
!3655 = distinct !{!3655, !3656, !"cmpfunc: %a"}
!3656 = distinct !{!3656, !"cmpfunc"}
!3657 = !{!3658}
!3658 = distinct !{!3658, !3656, !"cmpfunc: %b"}
!3659 = !{!3660}
!3660 = distinct !{!3660, !3661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3661 = distinct !{!3661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3662 = !{!3663}
!3663 = distinct !{!3663, !3661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3664 = !{!3660, !3655, !3650, !3645, !3643}
!3665 = !{!3663, !3658, !3653, !3648, !3640}
!3666 = !{!3667}
!3667 = distinct !{!3667, !3668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3668 = distinct !{!3668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3669 = !{!3670}
!3670 = distinct !{!3670, !3671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %a"}
!3671 = distinct !{!3671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E"}
!3672 = !{!3673}
!3673 = distinct !{!3673, !3671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd115dd05d5838a82E: %b"}
!3674 = !{!3675}
!3675 = distinct !{!3675, !3676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!3676 = distinct !{!3676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!3677 = !{!3678}
!3678 = distinct !{!3678, !3676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!3679 = !{!3680}
!3680 = distinct !{!3680, !3681, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!3681 = distinct !{!3681, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!3682 = !{!3683}
!3683 = distinct !{!3683, !3681, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!3684 = !{!3685}
!3685 = distinct !{!3685, !3686, !"cmpfunc: %a"}
!3686 = distinct !{!3686, !"cmpfunc"}
!3687 = !{!3688}
!3688 = distinct !{!3688, !3686, !"cmpfunc: %b"}
!3689 = !{!3690}
!3690 = distinct !{!3690, !3691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3691 = distinct !{!3691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3692 = !{!3693}
!3693 = distinct !{!3693, !3691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3694 = !{!3690, !3685, !3680, !3675, !3673}
!3695 = !{!3693, !3688, !3683, !3678, !3670}
!3696 = !{!3697}
!3697 = distinct !{!3697, !3698, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3698 = distinct !{!3698, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3699 = !{!3700}
!3700 = distinct !{!3700, !3701, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3701 = distinct !{!3701, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3702 = distinct !{!3702, !3419}
!3703 = !{!3704}
!3704 = distinct !{!3704, !3705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3705 = distinct !{!3705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3706 = !{!3707}
!3707 = distinct !{!3707, !3705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3708 = !{!3709}
!3709 = distinct !{!3709, !3710, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3710 = distinct !{!3710, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3711 = !{!3712}
!3712 = distinct !{!3712, !3710, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3713 = !{!3714}
!3714 = distinct !{!3714, !3715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3715 = distinct !{!3715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3716 = !{!3717}
!3717 = distinct !{!3717, !3715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3718 = !{!3714, !3709, !3704}
!3719 = !{!3717, !3712, !3707}
!3720 = !{!3721}
!3721 = distinct !{!3721, !3722, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3722 = distinct !{!3722, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3723 = !{!3724}
!3724 = distinct !{!3724, !3725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3725 = distinct !{!3725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3726 = !{!3727}
!3727 = distinct !{!3727, !3725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3728 = !{!3729}
!3729 = distinct !{!3729, !3730, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3730 = distinct !{!3730, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3731 = !{!3732}
!3732 = distinct !{!3732, !3730, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3733 = !{!3734}
!3734 = distinct !{!3734, !3735, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3735 = distinct !{!3735, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3736 = !{!3737}
!3737 = distinct !{!3737, !3735, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3738 = !{!3734, !3729, !3724}
!3739 = !{!3737, !3732, !3727}
!3740 = !{!3741}
!3741 = distinct !{!3741, !3742, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3742 = distinct !{!3742, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3743 = !{!3744}
!3744 = distinct !{!3744, !3745, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3745 = distinct !{!3745, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3746 = !{!3747}
!3747 = distinct !{!3747, !3745, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3748 = !{!3749}
!3749 = distinct !{!3749, !3750, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3750 = distinct !{!3750, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3751 = !{!3752}
!3752 = distinct !{!3752, !3750, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3753 = !{!3754}
!3754 = distinct !{!3754, !3755, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3755 = distinct !{!3755, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3756 = !{!3757}
!3757 = distinct !{!3757, !3755, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3758 = !{!3754, !3749, !3744}
!3759 = !{!3757, !3752, !3747}
!3760 = !{!3761}
!3761 = distinct !{!3761, !3762, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3762 = distinct !{!3762, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3763 = !{!3764}
!3764 = distinct !{!3764, !3765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3765 = distinct !{!3765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3766 = !{!3767}
!3767 = distinct !{!3767, !3765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3768 = !{!3769}
!3769 = distinct !{!3769, !3770, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3770 = distinct !{!3770, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3771 = !{!3772}
!3772 = distinct !{!3772, !3770, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3773 = !{!3774}
!3774 = distinct !{!3774, !3775, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3775 = distinct !{!3775, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3776 = !{!3777}
!3777 = distinct !{!3777, !3775, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3778 = !{!3774, !3769, !3764}
!3779 = !{!3777, !3772, !3767}
!3780 = !{!3781}
!3781 = distinct !{!3781, !3782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3782 = distinct !{!3782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3783 = !{!3784}
!3784 = distinct !{!3784, !3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3785 = distinct !{!3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3786 = !{!3787}
!3787 = distinct !{!3787, !3785, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3788 = !{!3789}
!3789 = distinct !{!3789, !3790, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3790 = distinct !{!3790, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3791 = !{!3792}
!3792 = distinct !{!3792, !3790, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3793 = !{!3794}
!3794 = distinct !{!3794, !3795, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3795 = distinct !{!3795, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3796 = !{!3797}
!3797 = distinct !{!3797, !3795, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3798 = !{!3794, !3789, !3784}
!3799 = !{!3797, !3792, !3787}
!3800 = !{!3801}
!3801 = distinct !{!3801, !3802, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3802 = distinct !{!3802, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3803 = !{!3804}
!3804 = distinct !{!3804, !3805, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3805 = distinct !{!3805, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3806 = distinct !{!3806, !3419}
!3807 = !{!3808}
!3808 = distinct !{!3808, !3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %a"}
!3809 = distinct !{!3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE"}
!3810 = !{!3811}
!3811 = distinct !{!3811, !3809, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %b"}
!3812 = !{!3813}
!3813 = distinct !{!3813, !3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3814 = distinct !{!3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3815 = !{!3816}
!3816 = distinct !{!3816, !3814, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3817 = !{!3818}
!3818 = distinct !{!3818, !3819, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3819 = distinct !{!3819, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3820 = !{!3821}
!3821 = distinct !{!3821, !3819, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3822 = !{!3823}
!3823 = distinct !{!3823, !3824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3824 = distinct !{!3824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3825 = !{!3826}
!3826 = distinct !{!3826, !3824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3827 = !{!3823, !3818, !3813, !3811}
!3828 = !{!3826, !3821, !3816, !3808}
!3829 = !{!3830}
!3830 = distinct !{!3830, !3831, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3831 = distinct !{!3831, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3832 = !{!3833}
!3833 = distinct !{!3833, !3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %a"}
!3834 = distinct !{!3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE"}
!3835 = !{!3836}
!3836 = distinct !{!3836, !3834, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %b"}
!3837 = !{!3838}
!3838 = distinct !{!3838, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3839 = distinct !{!3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3840 = !{!3841}
!3841 = distinct !{!3841, !3839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3842 = !{!3843}
!3843 = distinct !{!3843, !3844, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3844 = distinct !{!3844, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3845 = !{!3846}
!3846 = distinct !{!3846, !3844, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3847 = !{!3848}
!3848 = distinct !{!3848, !3849, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3849 = distinct !{!3849, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3850 = !{!3851}
!3851 = distinct !{!3851, !3849, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3852 = !{!3848, !3843, !3838, !3836}
!3853 = !{!3851, !3846, !3841, !3833}
!3854 = !{!3855}
!3855 = distinct !{!3855, !3856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3856 = distinct !{!3856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3857 = !{!3858}
!3858 = distinct !{!3858, !3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %a"}
!3859 = distinct !{!3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE"}
!3860 = !{!3861}
!3861 = distinct !{!3861, !3859, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %b"}
!3862 = !{!3863}
!3863 = distinct !{!3863, !3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3864 = distinct !{!3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3865 = !{!3866}
!3866 = distinct !{!3866, !3864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3867 = !{!3868}
!3868 = distinct !{!3868, !3869, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3869 = distinct !{!3869, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3870 = !{!3871}
!3871 = distinct !{!3871, !3869, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3872 = !{!3873}
!3873 = distinct !{!3873, !3874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3874 = distinct !{!3874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3875 = !{!3876}
!3876 = distinct !{!3876, !3874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3877 = !{!3873, !3868, !3863, !3861}
!3878 = !{!3876, !3871, !3866, !3858}
!3879 = !{!3880}
!3880 = distinct !{!3880, !3881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3881 = distinct !{!3881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3882 = !{!3883}
!3883 = distinct !{!3883, !3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %a"}
!3884 = distinct !{!3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE"}
!3885 = !{!3886}
!3886 = distinct !{!3886, !3884, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %b"}
!3887 = !{!3888}
!3888 = distinct !{!3888, !3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3889 = distinct !{!3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3890 = !{!3891}
!3891 = distinct !{!3891, !3889, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3892 = !{!3893}
!3893 = distinct !{!3893, !3894, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3894 = distinct !{!3894, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3895 = !{!3896}
!3896 = distinct !{!3896, !3894, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3897 = !{!3898}
!3898 = distinct !{!3898, !3899, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3899 = distinct !{!3899, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3900 = !{!3901}
!3901 = distinct !{!3901, !3899, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3902 = !{!3898, !3893, !3888, !3886}
!3903 = !{!3901, !3896, !3891, !3883}
!3904 = !{!3905}
!3905 = distinct !{!3905, !3906, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3906 = distinct !{!3906, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3907 = !{!3908}
!3908 = distinct !{!3908, !3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %a"}
!3909 = distinct !{!3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE"}
!3910 = !{!3911}
!3911 = distinct !{!3911, !3909, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he9e57bd01c7ec91bE: %b"}
!3912 = !{!3913}
!3913 = distinct !{!3913, !3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!3914 = distinct !{!3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!3915 = !{!3916}
!3916 = distinct !{!3916, !3914, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!3917 = !{!3918}
!3918 = distinct !{!3918, !3919, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!3919 = distinct !{!3919, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!3920 = !{!3921}
!3921 = distinct !{!3921, !3919, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!3922 = !{!3923}
!3923 = distinct !{!3923, !3924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3924 = distinct !{!3924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3925 = !{!3926}
!3926 = distinct !{!3926, !3924, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3927 = !{!3923, !3918, !3913, !3911}
!3928 = !{!3926, !3921, !3916, !3908}
!3929 = !{!3930}
!3930 = distinct !{!3930, !3931, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3931 = distinct !{!3931, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3932 = !{!3933}
!3933 = distinct !{!3933, !3934, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3934 = distinct !{!3934, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3935 = distinct !{!3935, !3419}
!3936 = !{!3937}
!3937 = distinct !{!3937, !3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3938 = distinct !{!3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3939 = !{!3940}
!3940 = distinct !{!3940, !3938, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3941 = !{!3942}
!3942 = distinct !{!3942, !3943, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3943 = distinct !{!3943, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3944 = !{!3945}
!3945 = distinct !{!3945, !3943, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3946 = !{!3947}
!3947 = distinct !{!3947, !3948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3948 = distinct !{!3948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3949 = !{!3950}
!3950 = distinct !{!3950, !3948, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3951 = !{!3947, !3945, !3940}
!3952 = !{!3950, !3942, !3937}
!3953 = !{!3954}
!3954 = distinct !{!3954, !3955, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3955 = distinct !{!3955, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3956 = !{!3957}
!3957 = distinct !{!3957, !3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3958 = distinct !{!3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3959 = !{!3960}
!3960 = distinct !{!3960, !3958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3961 = !{!3962}
!3962 = distinct !{!3962, !3963, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3963 = distinct !{!3963, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3964 = !{!3965}
!3965 = distinct !{!3965, !3963, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3966 = !{!3967}
!3967 = distinct !{!3967, !3968, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3968 = distinct !{!3968, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3969 = !{!3970}
!3970 = distinct !{!3970, !3968, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3971 = !{!3967, !3965, !3960}
!3972 = !{!3970, !3962, !3957}
!3973 = !{!3974}
!3974 = distinct !{!3974, !3975, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3975 = distinct !{!3975, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3976 = !{!3977}
!3977 = distinct !{!3977, !3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3978 = distinct !{!3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3979 = !{!3980}
!3980 = distinct !{!3980, !3978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!3981 = !{!3982}
!3982 = distinct !{!3982, !3983, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!3983 = distinct !{!3983, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!3984 = !{!3985}
!3985 = distinct !{!3985, !3983, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!3986 = !{!3987}
!3987 = distinct !{!3987, !3988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!3988 = distinct !{!3988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!3989 = !{!3990}
!3990 = distinct !{!3990, !3988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!3991 = !{!3987, !3985, !3980}
!3992 = !{!3990, !3982, !3977}
!3993 = !{!3994}
!3994 = distinct !{!3994, !3995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!3995 = distinct !{!3995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!3996 = !{!3997}
!3997 = distinct !{!3997, !3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!3998 = distinct !{!3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!3999 = !{!4000}
!4000 = distinct !{!4000, !3998, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!4001 = !{!4002}
!4002 = distinct !{!4002, !4003, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!4003 = distinct !{!4003, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!4004 = !{!4005}
!4005 = distinct !{!4005, !4003, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!4006 = !{!4007}
!4007 = distinct !{!4007, !4008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4008 = distinct !{!4008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4009 = !{!4010}
!4010 = distinct !{!4010, !4008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4011 = !{!4007, !4005, !4000}
!4012 = !{!4010, !4002, !3997}
!4013 = !{!4014}
!4014 = distinct !{!4014, !4015, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!4015 = distinct !{!4015, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!4016 = !{!4017}
!4017 = distinct !{!4017, !4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!4018 = distinct !{!4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!4019 = !{!4020}
!4020 = distinct !{!4020, !4018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!4021 = !{!4022}
!4022 = distinct !{!4022, !4023, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!4023 = distinct !{!4023, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!4024 = !{!4025}
!4025 = distinct !{!4025, !4023, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!4026 = !{!4027}
!4027 = distinct !{!4027, !4028, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4028 = distinct !{!4028, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4029 = !{!4030}
!4030 = distinct !{!4030, !4028, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4031 = !{!4027, !4025, !4020}
!4032 = !{!4030, !4022, !4017}
!4033 = !{!4034}
!4034 = distinct !{!4034, !4035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!4035 = distinct !{!4035, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!4036 = !{!4037}
!4037 = distinct !{!4037, !4038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E: %self"}
!4038 = distinct !{!4038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2c2550eafcaf4649E"}
!4039 = distinct !{!4039, !3419}
!4040 = !{!4041}
!4041 = distinct !{!4041, !4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!4042 = distinct !{!4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!4043 = !{!4044}
!4044 = distinct !{!4044, !4042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!4045 = !{!4046}
!4046 = distinct !{!4046, !4047, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!4047 = distinct !{!4047, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!4048 = !{!4049}
!4049 = distinct !{!4049, !4050, !"_ZN4core5slice4sort6shared5pivot7median317h327220d96162fa5eE: %c"}
!4050 = distinct !{!4050, !"_ZN4core5slice4sort6shared5pivot7median317h327220d96162fa5eE"}
!4051 = !{!4052}
!4052 = distinct !{!4052, !4047, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!4053 = !{!4054}
!4054 = distinct !{!4054, !4055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4055 = distinct !{!4055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4056 = !{!4057}
!4057 = distinct !{!4057, !4055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4058 = !{!4054, !4052, !4044, !4059}
!4059 = distinct !{!4059, !4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE: %v.0"}
!4060 = distinct !{!4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE"}
!4061 = !{!4057, !4046, !4041, !4049, !4062}
!4062 = distinct !{!4062, !4060, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7ceeba9495de184eE: %is_less"}
!4063 = !{!4057, !4046, !4041, !4059}
!4064 = !{!4054, !4052, !4044, !4049, !4062}
!4065 = !{!4066, !4068, !4070, !4059}
!4066 = distinct !{!4066, !4067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4067 = distinct !{!4067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4068 = distinct !{!4068, !4069, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!4069 = distinct !{!4069, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!4070 = distinct !{!4070, !4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!4071 = distinct !{!4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!4072 = !{!4073, !4074, !4075, !4062}
!4073 = distinct !{!4073, !4067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4074 = distinct !{!4074, !4069, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!4075 = distinct !{!4075, !4071, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!4076 = !{!4077, !4079, !4081}
!4077 = distinct !{!4077, !4078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4078 = distinct !{!4078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4079 = distinct !{!4079, !4080, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %a"}
!4080 = distinct !{!4080, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E"}
!4081 = distinct !{!4081, !4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %a"}
!4082 = distinct !{!4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E"}
!4083 = !{!4084, !4085, !4086}
!4084 = distinct !{!4084, !4078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4085 = distinct !{!4085, !4080, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h0d78d65a42ed3996E: %b"}
!4086 = distinct !{!4086, !4082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hea4ca6ea865be290E: %b"}
!4087 = !{!4088, !4090}
!4088 = distinct !{!4088, !4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %pair"}
!4089 = distinct !{!4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE"}
!4090 = distinct !{!4090, !4089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %self.0"}
!4091 = !{!4092}
!4092 = distinct !{!4092, !4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!4093 = distinct !{!4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!4094 = !{!4095}
!4095 = distinct !{!4095, !4093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!4096 = !{!4097}
!4097 = distinct !{!4097, !4098, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!4098 = distinct !{!4098, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!4099 = !{!4100}
!4100 = distinct !{!4100, !4101, !"_ZN4core5slice4sort6shared5pivot7median317hba2f50250246aee6E: %c"}
!4101 = distinct !{!4101, !"_ZN4core5slice4sort6shared5pivot7median317hba2f50250246aee6E"}
!4102 = !{!4103}
!4103 = distinct !{!4103, !4098, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!4104 = !{!4105}
!4105 = distinct !{!4105, !4106, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4106 = distinct !{!4106, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4107 = !{!4108}
!4108 = distinct !{!4108, !4106, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4109 = !{!4105, !4097, !4092, !4110}
!4110 = distinct !{!4110, !4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE: %v.0"}
!4111 = distinct !{!4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE"}
!4112 = !{!4108, !4103, !4095, !4100, !4113}
!4113 = distinct !{!4113, !4111, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h843ccc4b9b85e8aaE: %is_less"}
!4114 = !{!4108, !4103, !4095, !4110}
!4115 = !{!4105, !4097, !4092, !4100, !4113}
!4116 = !{!4117, !4119, !4121, !4110}
!4117 = distinct !{!4117, !4118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4118 = distinct !{!4118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4119 = distinct !{!4119, !4120, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!4120 = distinct !{!4120, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!4121 = distinct !{!4121, !4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!4122 = distinct !{!4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!4123 = !{!4124, !4125, !4126, !4113}
!4124 = distinct !{!4124, !4118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4125 = distinct !{!4125, !4120, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!4126 = distinct !{!4126, !4122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!4127 = !{!4128, !4130, !4132}
!4128 = distinct !{!4128, !4129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %self"}
!4129 = distinct !{!4129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E"}
!4130 = distinct !{!4130, !4131, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %a"}
!4131 = distinct !{!4131, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE"}
!4132 = distinct !{!4132, !4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %a"}
!4133 = distinct !{!4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E"}
!4134 = !{!4135, !4136, !4137}
!4135 = distinct !{!4135, !4129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$11partial_cmp17he3531931f41b9797E: %other"}
!4136 = distinct !{!4136, !4131, !"_ZN47PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h9091aa6c1a89152fE: %b"}
!4137 = distinct !{!4137, !4133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5941f6a321e914f9E: %b"}
!4138 = !{!4139, !4141}
!4139 = distinct !{!4139, !4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %pair"}
!4140 = distinct !{!4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE"}
!4141 = distinct !{!4141, !4140, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %self.0"}
!4142 = !{!4143}
!4143 = distinct !{!4143, !4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!4144 = distinct !{!4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!4145 = !{!4146}
!4146 = distinct !{!4146, !4144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!4147 = !{!4148}
!4148 = distinct !{!4148, !4149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!4149 = distinct !{!4149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!4150 = !{!4151}
!4151 = distinct !{!4151, !4152, !"_ZN4core5slice4sort6shared5pivot7median317h4a03f6a592de37dcE: %c"}
!4152 = distinct !{!4152, !"_ZN4core5slice4sort6shared5pivot7median317h4a03f6a592de37dcE"}
!4153 = !{!4154}
!4154 = distinct !{!4154, !4149, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
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
!4166 = distinct !{!4166, !4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E: %v.0"}
!4167 = distinct !{!4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E"}
!4168 = !{!4164, !4159, !4154, !4146, !4151, !4169}
!4169 = distinct !{!4169, !4167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h46bfee9927479982E: %is_less"}
!4170 = !{!4164, !4159, !4154, !4146, !4166}
!4171 = !{!4161, !4156, !4148, !4143, !4151, !4169}
!4172 = !{!4173, !4175, !4177, !4179, !4166}
!4173 = distinct !{!4173, !4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4174 = distinct !{!4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4175 = distinct !{!4175, !4176, !"cmpfunc: %b"}
!4176 = distinct !{!4176, !"cmpfunc"}
!4177 = distinct !{!4177, !4178, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!4178 = distinct !{!4178, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!4179 = distinct !{!4179, !4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!4180 = distinct !{!4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!4181 = !{!4182, !4183, !4184, !4185, !4169}
!4182 = distinct !{!4182, !4174, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4183 = distinct !{!4183, !4176, !"cmpfunc: %a"}
!4184 = distinct !{!4184, !4178, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!4185 = distinct !{!4185, !4180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!4186 = !{!4187, !4189, !4191, !4193}
!4187 = distinct !{!4187, !4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4188 = distinct !{!4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4189 = distinct !{!4189, !4190, !"cmpfunc: %a"}
!4190 = distinct !{!4190, !"cmpfunc"}
!4191 = distinct !{!4191, !4192, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 0"}
!4192 = distinct !{!4192, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E"}
!4193 = distinct !{!4193, !4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %a"}
!4194 = distinct !{!4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E"}
!4195 = !{!4196, !4197, !4198, !4199}
!4196 = distinct !{!4196, !4188, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4197 = distinct !{!4197, !4190, !"cmpfunc: %b"}
!4198 = distinct !{!4198, !4192, !"_ZN4core3ops8function5FnMut8call_mut17h0e26808644ac9b32E: argument 1"}
!4199 = distinct !{!4199, !4194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdf7c86d619214290E: %b"}
!4200 = !{!4201, !4203}
!4201 = distinct !{!4201, !4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %pair"}
!4202 = distinct !{!4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE"}
!4203 = distinct !{!4203, !4202, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2a71b8993aa2a89bE: %self.0"}
!4204 = !{i64 0, i64 -9223372036854775808}
!4205 = !{!4206}
!4206 = distinct !{!4206, !4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!4207 = distinct !{!4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!4208 = !{!4209}
!4209 = distinct !{!4209, !4207, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!4210 = !{!4211}
!4211 = distinct !{!4211, !4212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E: %self.0"}
!4212 = distinct !{!4212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7a452c23dc78710E"}
!4213 = !{!4214, !4216, !4211}
!4214 = distinct !{!4214, !4215, !"_ZN5alloc5slice11stable_sort17h9d6d07927fc9248bE: %v.0"}
!4215 = distinct !{!4215, !"_ZN5alloc5slice11stable_sort17h9d6d07927fc9248bE"}
!4216 = distinct !{!4216, !4215, !"_ZN5alloc5slice11stable_sort17h9d6d07927fc9248bE: argument 1"}
!4217 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!4218 = !{!4219}
!4219 = distinct !{!4219, !4220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE: %self.0"}
!4220 = distinct !{!4220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h526bf3a5f17c7aabE"}
!4221 = !{!4222, !4224, !4219}
!4222 = distinct !{!4222, !4223, !"_ZN5alloc5slice11stable_sort17h52c0bf666cbc0cd4E: %v.0"}
!4223 = distinct !{!4223, !"_ZN5alloc5slice11stable_sort17h52c0bf666cbc0cd4E"}
!4224 = distinct !{!4224, !4223, !"_ZN5alloc5slice11stable_sort17h52c0bf666cbc0cd4E: argument 1"}
!4225 = !{!4226}
!4226 = distinct !{!4226, !4227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E: %self.0"}
!4227 = distinct !{!4227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h2b92065b209d5156E"}
!4228 = !{!4229, !4231, !4226}
!4229 = distinct !{!4229, !4230, !"_ZN5alloc5slice11stable_sort17hd799920b99579fe8E: %v.0"}
!4230 = distinct !{!4230, !"_ZN5alloc5slice11stable_sort17hd799920b99579fe8E"}
!4231 = distinct !{!4231, !4230, !"_ZN5alloc5slice11stable_sort17hd799920b99579fe8E: argument 1"}
