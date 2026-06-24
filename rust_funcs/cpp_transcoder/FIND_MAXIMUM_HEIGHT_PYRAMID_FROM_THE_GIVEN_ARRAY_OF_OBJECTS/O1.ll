; ModuleID = 'FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_emit.a33aba560867d4f1-cgu.0'
source_filename = "FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_emit.a33aba560867d4f1-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_fac92d581be0196f6148d41fcbc05fdc = private unnamed_addr constant [173 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_emit.rs\00", align 1
@alloc_9714be769f0c5a2c9b41c7db778fec35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fac92d581be0196f6148d41fcbc05fdc, [16 x i8] c"\AC\00\00\00\00\00\00\00\1E\00\00\00\17\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h3a48856a8316066fE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h115a573b62773a90E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h115a573b62773a90E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h115a573b62773a90E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h115a573b62773a90E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcda4c44f4c50c6dcE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcda4c44f4c50c6dcE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcda4c44f4c50c6dcE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcda4c44f4c50c6dcE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56), !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !46
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !61, !noalias !62, !noundef !27
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !63, !noalias !64, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !65, !noalias !74, !noundef !27
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !99, !noalias !100, !noundef !27
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !100, !noalias !99, !noundef !27
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !101, !noalias !110, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !115
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %_3.i.i = load i32, ptr %tail, align 4, !alias.scope !130, !noalias !131, !noundef !27
  %_4.i.i = load i32, ptr %0, align 4, !alias.scope !131, !noalias !130, !noundef !27
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
  %_4.i.i2 = load i32, ptr %2, align 4, !alias.scope !132, !noalias !137, !noundef !27
  %_0.i.i3 = icmp slt i32 %_3.i.i, %_4.i.i2
  br i1 %_0.i.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i, ptr %sift.sroa.0.0, align 4, !noalias !140
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h580240c3bd619deeE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %_3.i.i = load i32, ptr %_7, align 4, !alias.scope !155, !noalias !156, !noundef !27
  %_4.i.i = load i32, ptr %v_base, align 4, !alias.scope !156, !noalias !155, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %_3.i.i7 = load i32, ptr %_12, align 4, !alias.scope !167, !noalias !168, !noundef !27
  %_4.i.i8 = load i32, ptr %_14, align 4, !alias.scope !168, !noalias !167, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %_3.i.i10 = load i32, ptr %c, align 4, !alias.scope !179, !noalias !180, !noundef !27
  %_4.i.i11 = load i32, ptr %a, align 4, !alias.scope !180, !noalias !179, !noundef !27
  %_0.i.i12 = icmp slt i32 %_3.i.i10, %_4.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %_3.i.i13 = load i32, ptr %d, align 4, !alias.scope !191, !noalias !192, !noundef !27
  %_4.i.i14 = load i32, ptr %b, align 4, !alias.scope !192, !noalias !191, !noundef !27
  %_0.i.i15 = icmp slt i32 %_3.i.i13, %_4.i.i14
  %0 = select i1 %_0.i.i12, ptr %c, ptr %a, !unpredictable !27
  %1 = select i1 %_0.i.i15, ptr %c, ptr %b, !unpredictable !27
  %2 = select i1 %_0.i.i12, ptr %a, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12, ptr %b, ptr %c, !unpredictable !27
  %4 = select i1 %_0.i.i15, ptr %d, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %_3.i.i16 = load i32, ptr %4, align 4, !alias.scope !203, !noalias !204, !noundef !27
  %_4.i.i17 = load i32, ptr %2, align 4, !alias.scope !204, !noalias !203, !noundef !27
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

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hc594768123505f3bE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !225, !noalias !226, !noundef !27
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !226, !noalias !225, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !247, !noalias !248, !noundef !27
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !248, !noalias !247, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !269, !noalias !270, !noundef !27
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !270, !noalias !269, !noundef !27
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !291, !noalias !292, !noundef !27
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !292, !noalias !291, !noundef !27
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !27
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !27
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !27
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !313, !noalias !314, !noundef !27
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !314, !noalias !313, !noundef !27
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h07c7e4f9a2ab98beE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !335, !noalias !336, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !336, !noalias !335, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !357, !noalias !358, !noundef !27
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !358, !noalias !357, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !379, !noalias !380, !noundef !27
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !380, !noalias !379, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !401, !noalias !402, !noundef !27
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !402, !noalias !401, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !423, !noalias !424, !noundef !27
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !424, !noalias !423, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !445, !noalias !446, !noundef !27
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !446, !noalias !445, !noundef !27
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !467, !noalias !468, !noundef !27
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !468, !noalias !467, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !489, !noalias !490, !noundef !27
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !490, !noalias !489, !noundef !27
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !511, !noalias !512, !noundef !27
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !512, !noalias !511, !noundef !27
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !27
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !27
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !27
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !533, !noalias !534, !noundef !27
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !534, !noalias !533, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559), !noalias !546
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !561, !noalias !562, !noundef !27
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !563, !noalias !564, !noundef !27
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !565
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !575
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !590, !noalias !591, !noundef !27
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !592, !noalias !593, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !594
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !546
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !612, !noalias !613, !noundef !27
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !614, !noalias !615, !noundef !27
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !565
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630), !noalias !575
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !632, !noalias !633, !noundef !27
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !634, !noalias !635, !noundef !27
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !594
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !546
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !652, !noalias !653, !noundef !27
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !654, !noalias !655, !noundef !27
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !565
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !575
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !672, !noalias !673, !noundef !27
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !674, !noalias !675, !noundef !27
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !594
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !546
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !692, !noalias !693, !noundef !27
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !694, !noalias !695, !noundef !27
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !565
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !575
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !712, !noalias !713, !noundef !27
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !714, !noalias !715, !noundef !27
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !594
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E.exit, !prof !716

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !535
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc790601d1aec28dbE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !727, !noalias !728, !noundef !27
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !728, !noalias !727, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !739, !noalias !740, !noundef !27
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !740, !noalias !739, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !751, !noalias !752, !noundef !27
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !752, !noalias !751, !noundef !27
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !763, !noalias !764, !noundef !27
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !764, !noalias !763, !noundef !27
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !775, !noalias !776, !noundef !27
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !776, !noalias !775, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !787, !noalias !788, !noundef !27
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !788, !noalias !787, !noundef !27
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !799, !noalias !800, !noundef !27
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !800, !noalias !799, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !811, !noalias !812, !noundef !27
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !812, !noalias !811, !noundef !27
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !823, !noalias !824, !noundef !27
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !824, !noalias !823, !noundef !27
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %10 = select i1 %_0.i.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !27
  %11 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !27
  %12 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !27
  %14 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %_3.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !835, !noalias !836, !noundef !27
  %_4.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !836, !noalias !835, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845), !noalias !848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851), !noalias !848
  %_3.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !853, !noalias !854, !noundef !27
  %_4.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !855, !noalias !856, !noundef !27
  %_0.i.i.i38 = icmp slt i32 %_3.i.i.i36, %_4.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36, i32 %_4.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !857
  %count.i.i = zext i1 %_0.i.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864), !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870), !noalias !867
  %_3.i.i19.i = load i32, ptr %21, align 4, !alias.scope !872, !noalias !873, !noundef !27
  %_4.i.i20.i = load i32, ptr %20, align 4, !alias.scope !874, !noalias !875, !noundef !27
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !876
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882), !noalias !848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884), !noalias !848
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !886, !noalias !887, !noundef !27
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !888, !noalias !889, !noundef !27
  %_0.i.i.i38.1 = icmp slt i32 %_3.i.i.i36.1, %_4.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.1, i32 %_4.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !857
  %count.i.i.1 = zext i1 %_0.i.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894), !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896), !noalias !867
  %_3.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !898, !noalias !899, !noundef !27
  %_4.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !900, !noalias !901, !noundef !27
  %_0.i.i21.i.1 = icmp slt i32 %_3.i.i19.i.1, %_4.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.1, i32 %_4.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !876
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906), !noalias !848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908), !noalias !848
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !910, !noalias !911, !noundef !27
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !912, !noalias !913, !noundef !27
  %_0.i.i.i38.2 = icmp slt i32 %_3.i.i.i36.2, %_4.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.2, i32 %_4.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !857
  %count.i.i.2 = zext i1 %_0.i.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918), !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920), !noalias !867
  %_3.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !922, !noalias !923, !noundef !27
  %_4.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !924, !noalias !925, !noundef !27
  %_0.i.i21.i.2 = icmp slt i32 %_3.i.i19.i.2, %_4.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.2, i32 %_4.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !876
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930), !noalias !848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932), !noalias !848
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !934, !noalias !935, !noundef !27
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !936, !noalias !937, !noundef !27
  %_0.i.i.i38.3 = icmp slt i32 %_3.i.i.i36.3, %_4.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.3, i32 %_4.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !857
  %count.i.i.3 = zext i1 %_0.i.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944), !noalias !867
  %_3.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !946, !noalias !947, !noundef !27
  %_4.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !948, !noalias !949, !noundef !27
  %_0.i.i21.i.3 = icmp slt i32 %_3.i.i19.i.3, %_4.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.3, i32 %_4.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !876
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E.exit, !prof !716

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !837
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955), !noalias !958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961), !noalias !958
  %_3.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !963, !noalias !964, !noundef !27
  %_4.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !965, !noalias !966, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %is_l.i18 = xor i1 %_0.i.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !967
  %count.i = zext i1 %_0.i.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !noalias !977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980), !noalias !977
  %_3.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !982, !noalias !983, !noundef !27
  %_4.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !984, !noalias !985, !noundef !27
  %_0.i.i21 = icmp slt i32 %_3.i.i19, %_4.i.i20
  %is_l.i = xor i1 %_0.i.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19, i32 %_4.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !986
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !716

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009), !noalias !996
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1011, !noalias !1012, !noundef !27
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1013, !noalias !1014, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1015
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022), !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028), !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030), !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033), !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038), !noalias !1025
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1040, !noalias !1041, !noundef !27
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1042, !noalias !1043, !noundef !27
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1044
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !716

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h69e1326b5a4a39a9E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %_3.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1056, !noalias !1057, !noundef !27
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !1057, !noalias !1056, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1058, !noalias !1063, !noundef !27
  %_0.i.i3.i = icmp slt i32 %_3.i.i.i, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1066
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc6bfbd40f47e92ceE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1091, !noalias !1092, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1092, !noalias !1091, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1093, !noalias !1102, !noundef !27
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1107
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h30906fef2f880f37E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h07c7e4f9a2ab98beE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h07c7e4f9a2ab98beE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1132, !noalias !1133, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1133, !noalias !1132, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1154, !noalias !1155, !noundef !27
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1155, !noalias !1154, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1176, !noalias !1177, !noundef !27
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1177, !noalias !1176, !noundef !27
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1198, !noalias !1199, !noundef !27
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1199, !noalias !1198, !noundef !27
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1220, !noalias !1221, !noundef !27
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1221, !noalias !1220, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1242, !noalias !1243, !noundef !27
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1243, !noalias !1242, !noundef !27
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1264, !noalias !1265, !noundef !27
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1265, !noalias !1264, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1286, !noalias !1287, !noundef !27
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1287, !noalias !1286, !noundef !27
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1308, !noalias !1309, !noundef !27
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1309, !noalias !1308, !noundef !27
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !27
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !27
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !27
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1330, !noalias !1331, !noundef !27
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1331, !noalias !1330, !noundef !27
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1332
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1332, !noundef !27
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343), !noalias !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349), !noalias !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351), !noalias !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354), !noalias !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356), !noalias !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359), !noalias !1346
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1361, !noalias !1362, !noundef !27
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1363, !noalias !1364, !noundef !27
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1365
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372), !noalias !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378), !noalias !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380), !noalias !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383), !noalias !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385), !noalias !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388), !noalias !1375
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1390, !noalias !1391, !noundef !27
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1392, !noalias !1393, !noundef !27
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1394
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1335
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1335
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !716

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1396
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1401, !noalias !1410, !noundef !27
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1415, !noalias !1424, !noundef !27
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1429
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4fc10420f4153d04E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hfb2f21a822d21becE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc790601d1aec28dbE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias nonnull align 1 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc790601d1aec28dbE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias nonnull align 1 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1444, !noalias !1445, !noundef !27
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1445, !noalias !1444, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1456, !noalias !1457, !noundef !27
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1457, !noalias !1456, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1468, !noalias !1469, !noundef !27
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1469, !noalias !1468, !noundef !27
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1480, !noalias !1481, !noundef !27
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1481, !noalias !1480, !noundef !27
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !27
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !27
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !27
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !27
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1492, !noalias !1493, !noundef !27
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1493, !noalias !1492, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %_3.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1504, !noalias !1505, !noundef !27
  %_4.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1505, !noalias !1504, !noundef !27
  %_0.i.i.i16 = icmp slt i32 %_3.i.i.i14, %_4.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %_3.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1516, !noalias !1517, !noundef !27
  %_4.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1517, !noalias !1516, !noundef !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %_3.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1528, !noalias !1529, !noundef !27
  %_4.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1529, !noalias !1528, !noundef !27
  %_0.i.i12.i33 = icmp slt i32 %_3.i.i10.i31, %_4.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %_3.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1540, !noalias !1541, !noundef !27
  %_4.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1541, !noalias !1540, !noundef !27
  %_0.i.i15.i36 = icmp slt i32 %_3.i.i13.i34, %_4.i.i14.i35
  %10 = select i1 %_0.i.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !27
  %11 = select i1 %_0.i.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !27
  %12 = select i1 %_0.i.i12.i33, ptr %a.i23, ptr %11, !unpredictable !27
  %13 = select i1 %_0.i.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !27
  %14 = select i1 %_0.i.i15.i36, ptr %d.i30, ptr %13, !unpredictable !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %_3.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1552, !noalias !1553, !noundef !27
  %_4.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1553, !noalias !1552, !noundef !27
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1554
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1554, !noundef !27
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565), !noalias !1568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571), !noalias !1568
  %_3.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1573, !noalias !1574, !noundef !27
  %_4.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1575, !noalias !1576, !noundef !27
  %_0.i.i.i51 = icmp slt i32 %_3.i.i.i49, %_4.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i49, i32 %_4.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1577
  %count.i.i = zext i1 %_0.i.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584), !noalias !1587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590), !noalias !1587
  %_3.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1592, !noalias !1593, !noundef !27
  %_4.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1594, !noalias !1595, !noundef !27
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1596
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1557
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1557
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !716

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1598
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1603, !noalias !1608, !noundef !27
  %_0.i.i.i57 = icmp slt i32 %40, %_4.i.i.i56
  br i1 %_0.i.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1611, !noalias !1616, !noundef !27
  %_0.i.i3.i = icmp slt i32 %40, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1619
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha3fd4a30b289a025E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h1f14626aedac684fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1624
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1627, !noalias !1624, !noundef !27
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !1624, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit", !prof !1629

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1624
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1624, !nonnull !27, !noundef !27
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1624
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h0f81b98c8d37d841E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17ha546fcd5d60cb7acE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1630
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1627, !noalias !1630, !noundef !27
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !1630, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit", !prof !1629

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1630
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1630, !nonnull !27, !noundef !27
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1630
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h43cc142363b5e8ffE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hecb4ab15c39694e9E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h147598ce0852736bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1653, !noalias !1654, !noundef !27
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1654, !noalias !1653, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1675, !noalias !1676, !noundef !27
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1676, !noalias !1675, !noundef !27
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1697, !noalias !1698, !noundef !27
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1698, !noalias !1697, !noundef !27
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h09cb752236562fb5E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1699, !noalias !1704, !noundef !27
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1706, !noalias !1707
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1699, !noalias !1704
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1706, !noalias !1707
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1699, !noalias !1704, !noundef !27
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1706, !noalias !1707
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1699, !noalias !1704
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1706, !noalias !1707
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1699, !noalias !1704, !noundef !27
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1706, !noalias !1707
  store i32 %14, ptr %gep27, align 4, !alias.scope !1699, !noalias !1704
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1706, !noalias !1707
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h6a4f68e4294bfe9eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %_3.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1718, !noalias !1719, !noundef !27
  %_4.i.i = load i32, ptr %v.0, align 4, !alias.scope !1719, !noalias !1718, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  %_3.i.i1 = load i32, ptr %0, align 4, !alias.scope !1730, !noalias !1731, !noundef !27
  %_4.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1731, !noalias !1730, !noundef !27
  %_0.i.i3 = icmp slt i32 %_3.i.i1, %_4.i.i2
  br i1 %_0.i.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %_3.i.i4 = load i32, ptr %2, align 4, !alias.scope !1742, !noalias !1743, !noundef !27
  %_4.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1743, !noalias !1742, !noundef !27
  %_0.i.i6 = icmp slt i32 %_3.i.i4, %_4.i.i5
  br i1 %_0.i.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h44acff7df5bb4086E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1744, !noalias !1749, !noundef !27
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1751, !noalias !1752
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1744, !noalias !1749
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1751, !noalias !1752
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1744, !noalias !1749, !noundef !27
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1751, !noalias !1752
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1744, !noalias !1749
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1751, !noalias !1752
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1744, !noalias !1749, !noundef !27
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1751, !noalias !1752
  store i32 %14, ptr %gep27, align 4, !alias.scope !1744, !noalias !1749
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1751, !noalias !1752
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h064bf88927f05c42E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h8d23b265196530ffE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h0f81b98c8d37d841E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h6a4f68e4294bfe9eE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !27
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1758
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %_3.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1769, !noalias !1770, !noundef !27
  %_4.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1773, !noalias !1774, !noundef !27
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1753, !noalias !1775
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1786, !noalias !1787, !noundef !27
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1790, !noalias !1791, !noundef !27
  %_0.i.i.i14.i = icmp slt i32 %_3.i.i.i12.i, %_4.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12.i, i32 %_4.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1753, !noalias !1792
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1758, !noalias !1793
  br label %_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit

_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h08116ec7b5611cbeE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17h43cc142363b5e8ffE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h147598ce0852736bE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !27
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1803
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1824, !noalias !1825, !noundef !27
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1828, !noalias !1829, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1798, !noalias !1830
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1851, !noalias !1852, !noundef !27
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1855, !noalias !1856, !noundef !27
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1798, !noalias !1857
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1803, !noalias !1858
  br label %_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit

_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h419fe5a2a34005c9E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h35794339d539ed60E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1883, !noalias !1884, !noundef !27
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1884, !noalias !1883, !noundef !27
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

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hac285fbaf6eb1c43E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !1895, !noalias !1896, !noundef !27
  %_4.i.i = load i32, ptr %3, align 4, !alias.scope !1896, !noalias !1895, !noundef !27
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

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5480a74e9faed3e9E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1917, !noalias !1918, !noundef !27
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1918, !noalias !1917, !noundef !27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf358f0aa63dc12eaE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %_3.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1929, !noalias !1930, !noundef !27
  %_4.i.i = load i32, ptr %_2059, align 4, !alias.scope !1930, !noalias !1929, !noundef !27
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
define void @_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1951, !noalias !1952, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1955, !noalias !1956, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1957
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1978, !noalias !1979, !noundef !27
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1982, !noalias !1983, !noundef !27
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1984
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1985
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !2000, !noalias !2001, !noundef !27
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !2004, !noalias !2005, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2006
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %_3.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2017, !noalias !2018, !noundef !27
  %_4.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2021, !noalias !2022, !noundef !27
  %_0.i.i.i14 = icmp slt i32 %_3.i.i.i12, %_4.i.i.i13
  %consume_left.i = xor i1 %_0.i.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2023
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2024
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2c6e1c4135238010E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2029

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  %_3.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2040, !noalias !2041, !noundef !27
  %_4.i.i = load i32, ptr %pivot, align 4, !alias.scope !2041, !noalias !2040, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i, ptr %dst.i, align 4, !noalias !2042
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %_3.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2055, !noalias !2056, !noundef !27
  %_4.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2056, !noalias !2055, !noundef !27
  %_0.i.i27 = icmp slt i32 %_3.i.i25, %_4.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i25, ptr %dst.i31, align 4, !noalias !2057
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %_3.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2070, !noalias !2071, !noundef !27
  %_4.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2071, !noalias !2070, !noundef !27
  %_0.i.i37 = icmp slt i32 %_3.i.i35, %_4.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i35, ptr %dst.i41, align 4, !noalias !2072
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %_3.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2085, !noalias !2086, !noundef !27
  %_4.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2086, !noalias !2085, !noundef !27
  %_0.i.i47 = icmp slt i32 %_3.i.i45, %_4.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i45, ptr %dst.i51, align 4, !noalias !2087
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %_3.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2100, !noalias !2101, !noundef !27
  %_4.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2101, !noalias !2100, !noundef !27
  %_0.i.i57 = icmp slt i32 %_3.i.i55, %_4.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i55, ptr %dst.i61, align 4, !noalias !2102
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2105
  store i32 %13, ptr %dst.i68, align 4, !noalias !2105
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2108

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h66ebb099558cf116E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2029

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2125, !noalias !2126, !noundef !27
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2126, !noalias !2125, !noundef !27
  %_0.i.i.i = icmp sge i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !2127
  %_8.i = zext i1 %_0.i.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2145, !noalias !2146, !noundef !27
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2146, !noalias !2145, !noundef !27
  %_0.i.i.i27 = icmp sge i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !2147
  %_8.i33 = zext i1 %_0.i.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2165, !noalias !2166, !noundef !27
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2166, !noalias !2165, !noundef !27
  %_0.i.i.i37 = icmp sge i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !2167
  %_8.i43 = zext i1 %_0.i.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2185, !noalias !2186, !noundef !27
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2186, !noalias !2185, !noundef !27
  %_0.i.i.i47 = icmp sge i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !2187
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2205, !noalias !2206, !noundef !27
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2206, !noalias !2205, !noundef !27
  %_0.i.i.i57 = icmp sge i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !2207
  %_8.i63 = zext i1 %_0.i.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2210
  store i32 %13, ptr %dst.i68, align 4, !noalias !2210
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2213

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc1f19d77230c9c7aE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2029

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2234, !noalias !2235, !noundef !27
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2235, !noalias !2234, !noundef !27
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2236
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2259, !noalias !2260, !noundef !27
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2260, !noalias !2259, !noundef !27
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2261
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2284, !noalias !2285, !noundef !27
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2285, !noalias !2284, !noundef !27
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2286
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2309, !noalias !2310, !noundef !27
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2310, !noalias !2309, !noundef !27
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2311
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2334, !noalias !2335, !noundef !27
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2335, !noalias !2334, !noundef !27
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2336
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2339
  store i32 %13, ptr %dst.i68, align 4, !noalias !2339
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2342

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he297285d044dc2dbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2029

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2368, !noalias !2369, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2369, !noalias !2368, !noundef !27
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2370
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2398, !noalias !2399, !noundef !27
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2399, !noalias !2398, !noundef !27
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2400
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2428, !noalias !2429, !noundef !27
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2429, !noalias !2428, !noundef !27
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2430
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2458, !noalias !2459, !noundef !27
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2459, !noalias !2458, !noundef !27
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2460
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2488, !noalias !2489, !noundef !27
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2489, !noalias !2488, !noundef !27
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2490
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2493
  store i32 %13, ptr %dst.i68, align 4, !noalias !2493
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2496

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hfb2f21a822d21becE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 1 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h115a573b62773a90E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 1 %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2502), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2508), !noalias !2505
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2510, !noalias !2513, !noundef !27
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2515, !noalias !2516, !noundef !27
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2517, !noalias !2522, !noundef !27
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %5 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h0f81b98c8d37d841E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E.exit
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2525, !noalias !2530, !noundef !27
  %_0.i.i.not = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2c6e1c4135238010E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias nonnull align 1 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit", !prof !1629

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2533
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9da3bce4ffdbd62fE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h66ebb099558cf116E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1629

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h30906fef2f880f37E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcda4c44f4c50c6dcE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2542), !noalias !2545
  call void @llvm.experimental.noalias.scope.decl(metadata !2548), !noalias !2545
  call void @llvm.experimental.noalias.scope.decl(metadata !2550), !noalias !2545
  call void @llvm.experimental.noalias.scope.decl(metadata !2553), !noalias !2545
  call void @llvm.experimental.noalias.scope.decl(metadata !2555), !noalias !2545
  call void @llvm.experimental.noalias.scope.decl(metadata !2558), !noalias !2545
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2560, !noalias !2563, !noundef !27
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2565, !noalias !2566, !noundef !27
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2567, !noalias !2576, !noundef !27
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h43cc142363b5e8ffE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2581, !noalias !2590, !noundef !27
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc1f19d77230c9c7aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit", !prof !1629

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2595
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbcc1ca93909b4ce8E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he297285d044dc2dbE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1629

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1627, !noundef !27
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1628, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h059cf3a1c9630701E.exit", !prof !1629

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h059cf3a1c9630701E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hddb4ef2e44fe8e0dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !27
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2599, !noundef !27
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h233170761ef886bbE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2b27555a741e2e9bE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcccc2aea1324040aE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2600, !noalias !2603, !noundef !27
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2603, !noalias !2600, !noundef !27
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %boxes.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %boxes.sroa.4.0.extract.shift = lshr i64 %0, 32
  %boxes.sroa.4.0.extract.trunc = trunc nuw i64 %boxes.sroa.4.0.extract.shift to i32
  %_0.i.i.i.i.i.i = icmp slt i32 %boxes.sroa.4.0.extract.trunc, %boxes.sroa.0.0.extract.trunc
  %_0.i.i.i11 = icmp sle i32 %n, 1
  %_0.i.i.i.not = icmp eq i32 %n, 2
  %or.cond = or i1 %_0.i.i.i11, %_0.i.i.i.not
  br i1 %or.cond, label %bb7, label %bb6.1

bb7:                                              ; preds = %start
  ret i32 1

bb6.1:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9714be769f0c5a2c9b41c7db778fec35) #24
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2605
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2608
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E.exit", label %bb7.i.i, !prof !2612

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2612

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha546fcd5d60cb7acE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc6bfbd40f47e92ceE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2605
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h5d06a9be5f805237E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h5d06a9be5f805237E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h5d06a9be5f805237E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h5d06a9be5f805237E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h5d06a9be5f805237E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!14 = distinct !{!14, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!19 = distinct !{!19, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h8341110a3094ae3aE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h8341110a3094ae3aE"}
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
!33 = distinct !{!33, !34, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!34 = distinct !{!34, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!35 = !{!36, !37}
!36 = distinct !{!36, !32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!37 = distinct !{!37, !34, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!40 = distinct !{!40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!45 = distinct !{!45, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core5slice4sort6shared5pivot7median317h2f286c64558f19f2E: %c"}
!48 = distinct !{!48, !"_ZN4core5slice4sort6shared5pivot7median317h2f286c64558f19f2E"}
!49 = !{!50}
!50 = distinct !{!50, !45, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"cmpfunc: %a"}
!53 = distinct !{!53, !"cmpfunc"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"cmpfunc: %b"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!58 = distinct !{!58, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!61 = !{!57, !52, !44, !39}
!62 = !{!60, !55, !50, !42, !47}
!63 = !{!60, !55, !50, !42}
!64 = !{!57, !52, !44, !39, !47}
!65 = !{!66, !68, !70, !72}
!66 = distinct !{!66, !67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!67 = distinct !{!67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!68 = distinct !{!68, !69, !"cmpfunc: %b"}
!69 = distinct !{!69, !"cmpfunc"}
!70 = distinct !{!70, !71, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!71 = distinct !{!71, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!72 = distinct !{!72, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!73 = distinct !{!73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!76 = distinct !{!76, !69, !"cmpfunc: %a"}
!77 = distinct !{!77, !71, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!78 = distinct !{!78, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"cmpfunc: %a"}
!91 = distinct !{!91, !"cmpfunc"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"cmpfunc: %b"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!96 = distinct !{!96, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!99 = !{!95, !90, !85, !80}
!100 = !{!98, !93, !88, !83}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!103 = distinct !{!103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!104 = distinct !{!104, !105, !"cmpfunc: %b"}
!105 = distinct !{!105, !"cmpfunc"}
!106 = distinct !{!106, !107, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!107 = distinct !{!107, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!108 = distinct !{!108, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!109 = distinct !{!109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!110 = !{!111, !112, !113, !114}
!111 = distinct !{!111, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!112 = distinct !{!112, !105, !"cmpfunc: %a"}
!113 = distinct !{!113, !107, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!114 = distinct !{!114, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!117 = distinct !{!117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!118 = distinct !{!118, !119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!119 = distinct !{!119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!122 = distinct !{!122, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!127 = distinct !{!127, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!130 = !{!126, !121}
!131 = !{!129, !124}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!134 = distinct !{!134, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!137 = !{!138, !139}
!138 = distinct !{!138, !134, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!139 = distinct !{!139, !136, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!142 = distinct !{!142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!143 = distinct !{!143, !144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!144 = distinct !{!144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!147 = distinct !{!147, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!152 = distinct !{!152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!155 = !{!151, !146}
!156 = !{!154, !149}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!159 = distinct !{!159, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!164 = distinct !{!164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!167 = !{!163, !158}
!168 = !{!166, !161}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!176 = distinct !{!176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!179 = !{!175, !170}
!180 = !{!178, !173}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!183 = distinct !{!183, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!188 = distinct !{!188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!191 = !{!187, !182}
!192 = !{!190, !185}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!195 = distinct !{!195, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!200 = distinct !{!200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!203 = !{!199, !194}
!204 = !{!202, !197}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!207 = distinct !{!207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!212 = distinct !{!212, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"cmpfunc: %a"}
!217 = distinct !{!217, !"cmpfunc"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"cmpfunc: %b"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!222 = distinct !{!222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!223 = !{!224}
!224 = distinct !{!224, !222, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!225 = !{!221, !216, !211, !206}
!226 = !{!224, !219, !214, !209}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!234 = distinct !{!234, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"cmpfunc: %a"}
!239 = distinct !{!239, !"cmpfunc"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"cmpfunc: %b"}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!244 = distinct !{!244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!245 = !{!246}
!246 = distinct !{!246, !244, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!247 = !{!243, !238, !233, !228}
!248 = !{!246, !241, !236, !231}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!251 = distinct !{!251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!256 = distinct !{!256, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"cmpfunc: %a"}
!261 = distinct !{!261, !"cmpfunc"}
!262 = !{!263}
!263 = distinct !{!263, !261, !"cmpfunc: %b"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!266 = distinct !{!266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!267 = !{!268}
!268 = distinct !{!268, !266, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!269 = !{!265, !260, !255, !250}
!270 = !{!268, !263, !258, !253}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!273 = distinct !{!273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!278 = distinct !{!278, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"cmpfunc: %a"}
!283 = distinct !{!283, !"cmpfunc"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"cmpfunc: %b"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!288 = distinct !{!288, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!289 = !{!290}
!290 = distinct !{!290, !288, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!291 = !{!287, !282, !277, !272}
!292 = !{!290, !285, !280, !275}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!295 = distinct !{!295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!300 = distinct !{!300, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"cmpfunc: %a"}
!305 = distinct !{!305, !"cmpfunc"}
!306 = !{!307}
!307 = distinct !{!307, !305, !"cmpfunc: %b"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!310 = distinct !{!310, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!313 = !{!309, !304, !299, !294}
!314 = !{!312, !307, !302, !297}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!317 = distinct !{!317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!322 = distinct !{!322, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"cmpfunc: %a"}
!327 = distinct !{!327, !"cmpfunc"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"cmpfunc: %b"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!332 = distinct !{!332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!335 = !{!331, !326, !321, !316}
!336 = !{!334, !329, !324, !319}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!339 = distinct !{!339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!344 = distinct !{!344, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"cmpfunc: %a"}
!349 = distinct !{!349, !"cmpfunc"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"cmpfunc: %b"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!354 = distinct !{!354, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!355 = !{!356}
!356 = distinct !{!356, !354, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!357 = !{!353, !348, !343, !338}
!358 = !{!356, !351, !346, !341}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!361 = distinct !{!361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!366 = distinct !{!366, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"cmpfunc: %a"}
!371 = distinct !{!371, !"cmpfunc"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"cmpfunc: %b"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!376 = distinct !{!376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!379 = !{!375, !370, !365, !360}
!380 = !{!378, !373, !368, !363}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!383 = distinct !{!383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!388 = distinct !{!388, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"cmpfunc: %a"}
!393 = distinct !{!393, !"cmpfunc"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"cmpfunc: %b"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!398 = distinct !{!398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!401 = !{!397, !392, !387, !382}
!402 = !{!400, !395, !390, !385}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!405 = distinct !{!405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!410 = distinct !{!410, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"cmpfunc: %a"}
!415 = distinct !{!415, !"cmpfunc"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"cmpfunc: %b"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!420 = distinct !{!420, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!423 = !{!419, !414, !409, !404}
!424 = !{!422, !417, !412, !407}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!427 = distinct !{!427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!432 = distinct !{!432, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"cmpfunc: %a"}
!437 = distinct !{!437, !"cmpfunc"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"cmpfunc: %b"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!442 = distinct !{!442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!445 = !{!441, !436, !431, !426}
!446 = !{!444, !439, !434, !429}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!449 = distinct !{!449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!454 = distinct !{!454, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"cmpfunc: %a"}
!459 = distinct !{!459, !"cmpfunc"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"cmpfunc: %b"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!464 = distinct !{!464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!465 = !{!466}
!466 = distinct !{!466, !464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!467 = !{!463, !458, !453, !448}
!468 = !{!466, !461, !456, !451}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!471 = distinct !{!471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!476 = distinct !{!476, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!477 = !{!478}
!478 = distinct !{!478, !476, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"cmpfunc: %a"}
!481 = distinct !{!481, !"cmpfunc"}
!482 = !{!483}
!483 = distinct !{!483, !481, !"cmpfunc: %b"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!486 = distinct !{!486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!487 = !{!488}
!488 = distinct !{!488, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!489 = !{!485, !480, !475, !470}
!490 = !{!488, !483, !478, !473}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!493 = distinct !{!493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!498 = distinct !{!498, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!499 = !{!500}
!500 = distinct !{!500, !498, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!511 = !{!507, !502, !497, !492}
!512 = !{!510, !505, !500, !495}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!515 = distinct !{!515, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!516 = !{!517}
!517 = distinct !{!517, !515, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!518 = !{!519}
!519 = distinct !{!519, !520, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!520 = distinct !{!520, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!521 = !{!522}
!522 = distinct !{!522, !520, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"cmpfunc: %a"}
!525 = distinct !{!525, !"cmpfunc"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"cmpfunc: %b"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!530 = distinct !{!530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!533 = !{!529, !524, !519, !514}
!534 = !{!532, !527, !522, !517}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E: %v.0"}
!537 = distinct !{!537, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!540 = distinct !{!540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!541 = !{!542}
!542 = distinct !{!542, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!545 = distinct !{!545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %_0"}
!548 = distinct !{!548, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE"}
!549 = !{!550}
!550 = distinct !{!550, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"cmpfunc: %a"}
!553 = distinct !{!553, !"cmpfunc"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"cmpfunc: %b"}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!558 = distinct !{!558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!559 = !{!560}
!560 = distinct !{!560, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!561 = !{!557, !552, !544, !539, !536}
!562 = !{!560, !555, !550, !542, !547}
!563 = !{!560, !555, !550, !542, !536}
!564 = !{!557, !552, !544, !539, !547}
!565 = !{!547, !566, !536}
!566 = distinct !{!566, !548, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %is_less"}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!569 = distinct !{!569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!570 = !{!571}
!571 = distinct !{!571, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!574 = distinct !{!574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %_0"}
!577 = distinct !{!577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E"}
!578 = !{!579}
!579 = distinct !{!579, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"cmpfunc: %a"}
!582 = distinct !{!582, !"cmpfunc"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"cmpfunc: %b"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!587 = distinct !{!587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!590 = !{!586, !581, !573, !568, !536}
!591 = !{!589, !584, !579, !571, !576}
!592 = !{!589, !584, !579, !571, !536}
!593 = !{!586, !581, !573, !568, !576}
!594 = !{!576, !595, !536}
!595 = distinct !{!595, !577, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %is_less"}
!596 = !{!597}
!597 = distinct !{!597, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It1"}
!598 = !{!599}
!599 = distinct !{!599, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It1"}
!600 = !{!601}
!601 = distinct !{!601, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It1"}
!602 = !{!603}
!603 = distinct !{!603, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It1"}
!604 = !{!605}
!605 = distinct !{!605, !553, !"cmpfunc: %a:It1"}
!606 = !{!607}
!607 = distinct !{!607, !553, !"cmpfunc: %b:It1"}
!608 = !{!609}
!609 = distinct !{!609, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!610 = !{!611}
!611 = distinct !{!611, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!612 = !{!609, !605, !601, !597, !536}
!613 = !{!611, !607, !603, !599, !547}
!614 = !{!611, !607, !603, !599, !536}
!615 = !{!609, !605, !601, !597, !547}
!616 = !{!617}
!617 = distinct !{!617, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It1"}
!618 = !{!619}
!619 = distinct !{!619, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It1"}
!620 = !{!621}
!621 = distinct !{!621, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It1"}
!622 = !{!623}
!623 = distinct !{!623, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It1"}
!624 = !{!625}
!625 = distinct !{!625, !582, !"cmpfunc: %a:It1"}
!626 = !{!627}
!627 = distinct !{!627, !582, !"cmpfunc: %b:It1"}
!628 = !{!629}
!629 = distinct !{!629, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!630 = !{!631}
!631 = distinct !{!631, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!632 = !{!629, !625, !621, !617, !536}
!633 = !{!631, !627, !623, !619, !576}
!634 = !{!631, !627, !623, !619, !536}
!635 = !{!629, !625, !621, !617, !576}
!636 = !{!637}
!637 = distinct !{!637, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It2"}
!638 = !{!639}
!639 = distinct !{!639, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It2"}
!640 = !{!641}
!641 = distinct !{!641, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It2"}
!642 = !{!643}
!643 = distinct !{!643, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It2"}
!644 = !{!645}
!645 = distinct !{!645, !553, !"cmpfunc: %a:It2"}
!646 = !{!647}
!647 = distinct !{!647, !553, !"cmpfunc: %b:It2"}
!648 = !{!649}
!649 = distinct !{!649, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!650 = !{!651}
!651 = distinct !{!651, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!652 = !{!649, !645, !641, !637, !536}
!653 = !{!651, !647, !643, !639, !547}
!654 = !{!651, !647, !643, !639, !536}
!655 = !{!649, !645, !641, !637, !547}
!656 = !{!657}
!657 = distinct !{!657, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It2"}
!658 = !{!659}
!659 = distinct !{!659, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It2"}
!660 = !{!661}
!661 = distinct !{!661, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It2"}
!662 = !{!663}
!663 = distinct !{!663, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It2"}
!664 = !{!665}
!665 = distinct !{!665, !582, !"cmpfunc: %a:It2"}
!666 = !{!667}
!667 = distinct !{!667, !582, !"cmpfunc: %b:It2"}
!668 = !{!669}
!669 = distinct !{!669, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!670 = !{!671}
!671 = distinct !{!671, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!672 = !{!669, !665, !661, !657, !536}
!673 = !{!671, !667, !663, !659, !576}
!674 = !{!671, !667, !663, !659, !536}
!675 = !{!669, !665, !661, !657, !576}
!676 = !{!677}
!677 = distinct !{!677, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It3"}
!678 = !{!679}
!679 = distinct !{!679, !540, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It3"}
!680 = !{!681}
!681 = distinct !{!681, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It3"}
!682 = !{!683}
!683 = distinct !{!683, !545, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It3"}
!684 = !{!685}
!685 = distinct !{!685, !553, !"cmpfunc: %a:It3"}
!686 = !{!687}
!687 = distinct !{!687, !553, !"cmpfunc: %b:It3"}
!688 = !{!689}
!689 = distinct !{!689, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!690 = !{!691}
!691 = distinct !{!691, !558, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!692 = !{!689, !685, !681, !677, !536}
!693 = !{!691, !687, !683, !679, !547}
!694 = !{!691, !687, !683, !679, !536}
!695 = !{!689, !685, !681, !677, !547}
!696 = !{!697}
!697 = distinct !{!697, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a:It3"}
!698 = !{!699}
!699 = distinct !{!699, !569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b:It3"}
!700 = !{!701}
!701 = distinct !{!701, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0:It3"}
!702 = !{!703}
!703 = distinct !{!703, !574, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1:It3"}
!704 = !{!705}
!705 = distinct !{!705, !582, !"cmpfunc: %a:It3"}
!706 = !{!707}
!707 = distinct !{!707, !582, !"cmpfunc: %b:It3"}
!708 = !{!709}
!709 = distinct !{!709, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!710 = !{!711}
!711 = distinct !{!711, !587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!712 = !{!709, !705, !701, !697, !536}
!713 = !{!711, !707, !703, !699, !576}
!714 = !{!711, !707, !703, !699, !536}
!715 = !{!709, !705, !701, !697, !576}
!716 = !{!"branch_weights", i32 4001, i32 4000000}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!719 = distinct !{!719, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!720 = !{!721}
!721 = distinct !{!721, !719, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!724 = distinct !{!724, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!725 = !{!726}
!726 = distinct !{!726, !724, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!727 = !{!723, !718}
!728 = !{!726, !721}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!731 = distinct !{!731, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!732 = !{!733}
!733 = distinct !{!733, !731, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!736 = distinct !{!736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!737 = !{!738}
!738 = distinct !{!738, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!739 = !{!735, !730}
!740 = !{!738, !733}
!741 = !{!742}
!742 = distinct !{!742, !743, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!743 = distinct !{!743, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!744 = !{!745}
!745 = distinct !{!745, !743, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!748 = distinct !{!748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!749 = !{!750}
!750 = distinct !{!750, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!751 = !{!747, !742}
!752 = !{!750, !745}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!755 = distinct !{!755, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!756 = !{!757}
!757 = distinct !{!757, !755, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!760 = distinct !{!760, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!763 = !{!759, !754}
!764 = !{!762, !757}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!767 = distinct !{!767, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!768 = !{!769}
!769 = distinct !{!769, !767, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!770 = !{!771}
!771 = distinct !{!771, !772, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!772 = distinct !{!772, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!773 = !{!774}
!774 = distinct !{!774, !772, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!775 = !{!771, !766}
!776 = !{!774, !769}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!779 = distinct !{!779, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!784 = distinct !{!784, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!785 = !{!786}
!786 = distinct !{!786, !784, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!787 = !{!783, !778}
!788 = !{!786, !781}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!791 = distinct !{!791, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!796 = distinct !{!796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!799 = !{!795, !790}
!800 = !{!798, !793}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!803 = distinct !{!803, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!808 = distinct !{!808, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!809 = !{!810}
!810 = distinct !{!810, !808, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!811 = !{!807, !802}
!812 = !{!810, !805}
!813 = !{!814}
!814 = distinct !{!814, !815, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!815 = distinct !{!815, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!816 = !{!817}
!817 = distinct !{!817, !815, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!820 = distinct !{!820, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!821 = !{!822}
!822 = distinct !{!822, !820, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!823 = !{!819, !814}
!824 = !{!822, !817}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!827 = distinct !{!827, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!832 = distinct !{!832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!835 = !{!831, !826}
!836 = !{!834, !829}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E: %v.0"}
!839 = distinct !{!839, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E"}
!840 = !{!841}
!841 = distinct !{!841, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!842 = distinct !{!842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!843 = !{!844}
!844 = distinct !{!844, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!845 = !{!846}
!846 = distinct !{!846, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!847 = distinct !{!847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!848 = !{!849}
!849 = distinct !{!849, !850, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %_0"}
!850 = distinct !{!850, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE"}
!851 = !{!852}
!852 = distinct !{!852, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!853 = !{!846, !841, !838}
!854 = !{!852, !844, !849}
!855 = !{!852, !844, !838}
!856 = !{!846, !841, !849}
!857 = !{!849, !858, !838}
!858 = distinct !{!858, !850, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %is_less"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!861 = distinct !{!861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!866 = distinct !{!866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!867 = !{!868}
!868 = distinct !{!868, !869, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %_0"}
!869 = distinct !{!869, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E"}
!870 = !{!871}
!871 = distinct !{!871, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!872 = !{!865, !860, !838}
!873 = !{!871, !863, !868}
!874 = !{!871, !863, !838}
!875 = !{!865, !860, !868}
!876 = !{!868, !877, !838}
!877 = distinct !{!877, !869, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %is_less"}
!878 = !{!879}
!879 = distinct !{!879, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It1"}
!880 = !{!881}
!881 = distinct !{!881, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It1"}
!882 = !{!883}
!883 = distinct !{!883, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!884 = !{!885}
!885 = distinct !{!885, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!886 = !{!883, !879, !838}
!887 = !{!885, !881, !849}
!888 = !{!885, !881, !838}
!889 = !{!883, !879, !849}
!890 = !{!891}
!891 = distinct !{!891, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It1"}
!892 = !{!893}
!893 = distinct !{!893, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It1"}
!894 = !{!895}
!895 = distinct !{!895, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!896 = !{!897}
!897 = distinct !{!897, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!898 = !{!895, !891, !838}
!899 = !{!897, !893, !868}
!900 = !{!897, !893, !838}
!901 = !{!895, !891, !868}
!902 = !{!903}
!903 = distinct !{!903, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It2"}
!904 = !{!905}
!905 = distinct !{!905, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It2"}
!906 = !{!907}
!907 = distinct !{!907, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!908 = !{!909}
!909 = distinct !{!909, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!910 = !{!907, !903, !838}
!911 = !{!909, !905, !849}
!912 = !{!909, !905, !838}
!913 = !{!907, !903, !849}
!914 = !{!915}
!915 = distinct !{!915, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It2"}
!916 = !{!917}
!917 = distinct !{!917, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It2"}
!918 = !{!919}
!919 = distinct !{!919, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!920 = !{!921}
!921 = distinct !{!921, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!922 = !{!919, !915, !838}
!923 = !{!921, !917, !868}
!924 = !{!921, !917, !838}
!925 = !{!919, !915, !868}
!926 = !{!927}
!927 = distinct !{!927, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It3"}
!928 = !{!929}
!929 = distinct !{!929, !842, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It3"}
!930 = !{!931}
!931 = distinct !{!931, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!932 = !{!933}
!933 = distinct !{!933, !847, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!934 = !{!931, !927, !838}
!935 = !{!933, !929, !849}
!936 = !{!933, !929, !838}
!937 = !{!931, !927, !849}
!938 = !{!939}
!939 = distinct !{!939, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0:It3"}
!940 = !{!941}
!941 = distinct !{!941, !861, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1:It3"}
!942 = !{!943}
!943 = distinct !{!943, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!944 = !{!945}
!945 = distinct !{!945, !866, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!946 = !{!943, !939, !838}
!947 = !{!945, !941, !868}
!948 = !{!945, !941, !838}
!949 = !{!943, !939, !868}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!952 = distinct !{!952, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!957 = distinct !{!957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %_0"}
!960 = distinct !{!960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE"}
!961 = !{!962}
!962 = distinct !{!962, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!963 = !{!956, !951}
!964 = !{!962, !954, !959}
!965 = !{!962, !954}
!966 = !{!956, !951, !959}
!967 = !{!959, !968}
!968 = distinct !{!968, !960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %is_less"}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!971 = distinct !{!971, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!972 = !{!973}
!973 = distinct !{!973, !971, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!976 = distinct !{!976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %_0"}
!979 = distinct !{!979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E"}
!980 = !{!981}
!981 = distinct !{!981, !976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!982 = !{!975, !970}
!983 = !{!981, !973, !978}
!984 = !{!981, !973}
!985 = !{!975, !970, !978}
!986 = !{!978, !987}
!987 = distinct !{!987, !979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %is_less"}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!990 = distinct !{!990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!991 = !{!992}
!992 = distinct !{!992, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!993 = !{!994}
!994 = distinct !{!994, !995, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!995 = distinct !{!995, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %_0"}
!998 = distinct !{!998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE"}
!999 = !{!1000}
!1000 = distinct !{!1000, !995, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"cmpfunc: %a"}
!1003 = distinct !{!1003, !"cmpfunc"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1003, !"cmpfunc: %b"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1008 = distinct !{!1008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1008, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1011 = !{!1007, !1002, !994, !989}
!1012 = !{!1010, !1005, !1000, !992, !997}
!1013 = !{!1010, !1005, !1000, !992}
!1014 = !{!1007, !1002, !994, !989, !997}
!1015 = !{!997, !1016}
!1016 = distinct !{!1016, !998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %is_less"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1019 = distinct !{!1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1024 = distinct !{!1024, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %_0"}
!1027 = distinct !{!1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1024, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1032, !"cmpfunc: %a"}
!1032 = distinct !{!1032, !"cmpfunc"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1032, !"cmpfunc: %b"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1037, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1037 = distinct !{!1037, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1037, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1040 = !{!1036, !1031, !1023, !1018}
!1041 = !{!1039, !1034, !1029, !1021, !1026}
!1042 = !{!1039, !1034, !1029, !1021}
!1043 = !{!1036, !1031, !1023, !1018, !1026}
!1044 = !{!1026, !1045}
!1045 = distinct !{!1045, !1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %is_less"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1048 = distinct !{!1048, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1053, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1053 = distinct !{!1053, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1053, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1056 = !{!1052, !1047}
!1057 = !{!1055, !1050}
!1058 = !{!1059, !1061}
!1059 = distinct !{!1059, !1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1060 = distinct !{!1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1061 = distinct !{!1061, !1062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1062 = distinct !{!1062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1063 = !{!1064, !1065}
!1064 = distinct !{!1064, !1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1065 = distinct !{!1065, !1062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1066 = !{!1067, !1069}
!1067 = distinct !{!1067, !1068, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1068 = distinct !{!1068, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1069 = distinct !{!1069, !1070, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1070 = distinct !{!1070, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1073 = distinct !{!1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1078 = distinct !{!1078, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1078, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"cmpfunc: %a"}
!1083 = distinct !{!1083, !"cmpfunc"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"cmpfunc: %b"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1088 = distinct !{!1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1091 = !{!1087, !1082, !1077, !1072}
!1092 = !{!1090, !1085, !1080, !1075}
!1093 = !{!1094, !1096, !1098, !1100}
!1094 = distinct !{!1094, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1095 = distinct !{!1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1096 = distinct !{!1096, !1097, !"cmpfunc: %b"}
!1097 = distinct !{!1097, !"cmpfunc"}
!1098 = distinct !{!1098, !1099, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1099 = distinct !{!1099, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1100 = distinct !{!1100, !1101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1101 = distinct !{!1101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = distinct !{!1103, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1104 = distinct !{!1104, !1097, !"cmpfunc: %a"}
!1105 = distinct !{!1105, !1099, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1106 = distinct !{!1106, !1101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1107 = !{!1108, !1110}
!1108 = distinct !{!1108, !1109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1109 = distinct !{!1109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1110 = distinct !{!1110, !1111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1111 = distinct !{!1111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1114 = distinct !{!1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1119 = distinct !{!1119, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"cmpfunc: %a"}
!1124 = distinct !{!1124, !"cmpfunc"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1124, !"cmpfunc: %b"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1129 = distinct !{!1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1132 = !{!1128, !1123, !1118, !1113}
!1133 = !{!1131, !1126, !1121, !1116}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1136 = distinct !{!1136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1141 = distinct !{!1141, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1141, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"cmpfunc: %a"}
!1146 = distinct !{!1146, !"cmpfunc"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1146, !"cmpfunc: %b"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1151 = distinct !{!1151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1151, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1154 = !{!1150, !1145, !1140, !1135}
!1155 = !{!1153, !1148, !1143, !1138}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1158 = distinct !{!1158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1163 = distinct !{!1163, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1163, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1168, !"cmpfunc: %a"}
!1168 = distinct !{!1168, !"cmpfunc"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1168, !"cmpfunc: %b"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1173 = distinct !{!1173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1173, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1176 = !{!1172, !1167, !1162, !1157}
!1177 = !{!1175, !1170, !1165, !1160}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1180 = distinct !{!1180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1180, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1185, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1185 = distinct !{!1185, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1185, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1190, !"cmpfunc: %a"}
!1190 = distinct !{!1190, !"cmpfunc"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1190, !"cmpfunc: %b"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1195 = distinct !{!1195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1195, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1198 = !{!1194, !1189, !1184, !1179}
!1199 = !{!1197, !1192, !1187, !1182}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1202 = distinct !{!1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1202, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1207, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1207 = distinct !{!1207, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1207, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1212, !"cmpfunc: %a"}
!1212 = distinct !{!1212, !"cmpfunc"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1212, !"cmpfunc: %b"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1217 = distinct !{!1217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1217, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1220 = !{!1216, !1211, !1206, !1201}
!1221 = !{!1219, !1214, !1209, !1204}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1224 = distinct !{!1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1229 = distinct !{!1229, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"cmpfunc: %a"}
!1234 = distinct !{!1234, !"cmpfunc"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"cmpfunc: %b"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1239 = distinct !{!1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1242 = !{!1238, !1233, !1228, !1223}
!1243 = !{!1241, !1236, !1231, !1226}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1246 = distinct !{!1246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1251, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1251 = distinct !{!1251, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1251, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"cmpfunc: %a"}
!1256 = distinct !{!1256, !"cmpfunc"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1256, !"cmpfunc: %b"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1261 = distinct !{!1261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1261, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1264 = !{!1260, !1255, !1250, !1245}
!1265 = !{!1263, !1258, !1253, !1248}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1268 = distinct !{!1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1273 = distinct !{!1273, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1273, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"cmpfunc: %a"}
!1278 = distinct !{!1278, !"cmpfunc"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"cmpfunc: %b"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1283 = distinct !{!1283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1286 = !{!1282, !1277, !1272, !1267}
!1287 = !{!1285, !1280, !1275, !1270}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1290 = distinct !{!1290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1295 = distinct !{!1295, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1295, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"cmpfunc: %a"}
!1300 = distinct !{!1300, !"cmpfunc"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"cmpfunc: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1305 = distinct !{!1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1308 = !{!1304, !1299, !1294, !1289}
!1309 = !{!1307, !1302, !1297, !1292}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1312 = distinct !{!1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1317 = distinct !{!1317, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"cmpfunc: %a"}
!1322 = distinct !{!1322, !"cmpfunc"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1322, !"cmpfunc: %b"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1327 = distinct !{!1327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1327, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1330 = !{!1326, !1321, !1316, !1311}
!1331 = !{!1329, !1324, !1319, !1314}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E: %self.0"}
!1334 = distinct !{!1334, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E: %v.0"}
!1337 = distinct !{!1337, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf73c4c85b5e7b238E"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1340 = distinct !{!1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1345 = distinct !{!1345, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %_0"}
!1348 = distinct !{!1348, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1345, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"cmpfunc: %a"}
!1353 = distinct !{!1353, !"cmpfunc"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"cmpfunc: %b"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1358 = distinct !{!1358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1361 = !{!1357, !1352, !1344, !1339, !1336}
!1362 = !{!1360, !1355, !1350, !1342, !1347}
!1363 = !{!1360, !1355, !1350, !1342, !1336}
!1364 = !{!1357, !1352, !1344, !1339, !1347}
!1365 = !{!1347, !1366, !1336}
!1366 = distinct !{!1366, !1348, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb7c5ffcd0b435baaE: %is_less"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1369 = distinct !{!1369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1374 = distinct !{!1374, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %_0"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1374, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!1390 = !{!1386, !1381, !1373, !1368, !1336}
!1391 = !{!1389, !1384, !1379, !1371, !1376}
!1392 = !{!1389, !1384, !1379, !1371, !1336}
!1393 = !{!1386, !1381, !1373, !1368, !1376}
!1394 = !{!1376, !1395, !1336}
!1395 = distinct !{!1395, !1377, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbfc8c704095f1bc5E: %is_less"}
!1396 = !{!1397, !1399}
!1397 = distinct !{!1397, !1398, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1398 = distinct !{!1398, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1399 = distinct !{!1399, !1400, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1400 = distinct !{!1400, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1401 = !{!1402, !1404, !1406, !1408}
!1402 = distinct !{!1402, !1403, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1403 = distinct !{!1403, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1404 = distinct !{!1404, !1405, !"cmpfunc: %b"}
!1405 = distinct !{!1405, !"cmpfunc"}
!1406 = distinct !{!1406, !1407, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1407 = distinct !{!1407, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1408 = distinct !{!1408, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1409 = distinct !{!1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1410 = !{!1411, !1412, !1413, !1414}
!1411 = distinct !{!1411, !1403, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1412 = distinct !{!1412, !1405, !"cmpfunc: %a"}
!1413 = distinct !{!1413, !1407, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1414 = distinct !{!1414, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1415 = !{!1416, !1418, !1420, !1422}
!1416 = distinct !{!1416, !1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1417 = distinct !{!1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1418 = distinct !{!1418, !1419, !"cmpfunc: %b"}
!1419 = distinct !{!1419, !"cmpfunc"}
!1420 = distinct !{!1420, !1421, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1421 = distinct !{!1421, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1422 = distinct !{!1422, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1423 = distinct !{!1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1424 = !{!1425, !1426, !1427, !1428}
!1425 = distinct !{!1425, !1417, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1426 = distinct !{!1426, !1419, !"cmpfunc: %a"}
!1427 = distinct !{!1427, !1421, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1428 = distinct !{!1428, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1429 = !{!1430, !1432}
!1430 = distinct !{!1430, !1431, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1431 = distinct !{!1431, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1432 = distinct !{!1432, !1433, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1433 = distinct !{!1433, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1436 = distinct !{!1436, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1441 = distinct !{!1441, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1441, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1444 = !{!1440, !1435}
!1445 = !{!1443, !1438}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1448 = distinct !{!1448, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1453 = distinct !{!1453, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1456 = !{!1452, !1447}
!1457 = !{!1455, !1450}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1465 = distinct !{!1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1468 = !{!1464, !1459}
!1469 = !{!1467, !1462}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1472, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1472 = distinct !{!1472, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1472, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1477 = distinct !{!1477, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1477, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1480 = !{!1476, !1471}
!1481 = !{!1479, !1474}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1484 = distinct !{!1484, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1489, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1489 = distinct !{!1489, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1489, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1492 = !{!1488, !1483}
!1493 = !{!1491, !1486}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1496 = distinct !{!1496, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1501 = distinct !{!1501, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1501, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1504 = !{!1500, !1495}
!1505 = !{!1503, !1498}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1508 = distinct !{!1508, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1508, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1513 = distinct !{!1513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1513, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1516 = !{!1512, !1507}
!1517 = !{!1515, !1510}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1520 = distinct !{!1520, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1525, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1525 = distinct !{!1525, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1525, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1528 = !{!1524, !1519}
!1529 = !{!1527, !1522}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1532 = distinct !{!1532, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1532, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1537 = distinct !{!1537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1537, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1540 = !{!1536, !1531}
!1541 = !{!1539, !1534}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1544 = distinct !{!1544, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1549 = distinct !{!1549, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1549, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1552 = !{!1548, !1543}
!1553 = !{!1551, !1546}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E: %self.0"}
!1556 = distinct !{!1556, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h80aea9c7cc112d61E"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E: %v.0"}
!1559 = distinct !{!1559, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hc602d96a34fcba93E"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1562 = distinct !{!1562, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1567 = distinct !{!1567, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1570, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %_0"}
!1570 = distinct !{!1570, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1567, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1573 = !{!1566, !1561, !1558}
!1574 = !{!1572, !1564, !1569}
!1575 = !{!1572, !1564, !1558}
!1576 = !{!1566, !1561, !1569}
!1577 = !{!1569, !1578, !1558}
!1578 = distinct !{!1578, !1570, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf30de8993b8a651eE: %is_less"}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1581 = distinct !{!1581, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1581, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1586, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1586 = distinct !{!1586, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %_0"}
!1589 = distinct !{!1589, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1586, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1592 = !{!1585, !1580, !1558}
!1593 = !{!1591, !1583, !1588}
!1594 = !{!1591, !1583, !1558}
!1595 = !{!1585, !1580, !1588}
!1596 = !{!1588, !1597, !1558}
!1597 = distinct !{!1597, !1589, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbe8d741a4d4adfa0E: %is_less"}
!1598 = !{!1599, !1601}
!1599 = distinct !{!1599, !1600, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1600 = distinct !{!1600, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1601 = distinct !{!1601, !1602, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1602 = distinct !{!1602, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1603 = !{!1604, !1606}
!1604 = distinct !{!1604, !1605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1605 = distinct !{!1605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1606 = distinct !{!1606, !1607, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1607 = distinct !{!1607, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1608 = !{!1609, !1610}
!1609 = distinct !{!1609, !1605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1610 = distinct !{!1610, !1607, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1611 = !{!1612, !1614}
!1612 = distinct !{!1612, !1613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1613 = distinct !{!1613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1614 = distinct !{!1614, !1615, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1615 = distinct !{!1615, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1616 = !{!1617, !1618}
!1617 = distinct !{!1617, !1613, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1618 = distinct !{!1618, !1615, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1619 = !{!1620, !1622}
!1620 = distinct !{!1620, !1621, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E: %self"}
!1621 = distinct !{!1621, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc903c56f33030fb7E"}
!1622 = distinct !{!1622, !1623, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE: %_1"}
!1623 = distinct !{!1623, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h11d3bbd2ae8cd67dE"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1626, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E: %_0"}
!1626 = distinct !{!1626, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E"}
!1627 = !{i64 0, i64 2}
!1628 = !{i64 0, i64 -9223372036854775807}
!1629 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1632, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E: %_0"}
!1632 = distinct !{!1632, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h2f39f5f3148cb285E"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1635 = distinct !{!1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1640 = distinct !{!1640, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"cmpfunc: %a"}
!1645 = distinct !{!1645, !"cmpfunc"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1645, !"cmpfunc: %b"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1650 = distinct !{!1650, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1650, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1653 = !{!1649, !1644, !1639, !1634}
!1654 = !{!1652, !1647, !1642, !1637}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1657 = distinct !{!1657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1662 = distinct !{!1662, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1663 = !{!1664}
!1664 = distinct !{!1664, !1662, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"cmpfunc: %a"}
!1667 = distinct !{!1667, !"cmpfunc"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1667, !"cmpfunc: %b"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1672 = distinct !{!1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1672, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1675 = !{!1671, !1666, !1661, !1656}
!1676 = !{!1674, !1669, !1664, !1659}
!1677 = !{!1678}
!1678 = distinct !{!1678, !1679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1679 = distinct !{!1679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1684, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1684 = distinct !{!1684, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1684, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1689, !"cmpfunc: %a"}
!1689 = distinct !{!1689, !"cmpfunc"}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1689, !"cmpfunc: %b"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1694 = distinct !{!1694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1697 = !{!1693, !1688, !1683, !1678}
!1698 = !{!1696, !1691, !1686, !1681}
!1699 = !{!1700, !1702}
!1700 = distinct !{!1700, !1701, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E: %a.0"}
!1701 = distinct !{!1701, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E"}
!1702 = distinct !{!1702, !1703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3214b291aa1b4f1cE: %self.0"}
!1703 = distinct !{!1703, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3214b291aa1b4f1cE"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1701, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E: %b.0"}
!1706 = !{!1705, !1702}
!1707 = !{!1700}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1710, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1710 = distinct !{!1710, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1710, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1713 = !{!1714}
!1714 = distinct !{!1714, !1715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1715 = distinct !{!1715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1715, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1718 = !{!1714, !1709}
!1719 = !{!1717, !1712}
!1720 = !{!1721}
!1721 = distinct !{!1721, !1722, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1722 = distinct !{!1722, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1723 = !{!1724}
!1724 = distinct !{!1724, !1722, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1727, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1727 = distinct !{!1727, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1727, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1730 = !{!1726, !1721}
!1731 = !{!1729, !1724}
!1732 = !{!1733}
!1733 = distinct !{!1733, !1734, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1734 = distinct !{!1734, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1734, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1739 = distinct !{!1739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1742 = !{!1738, !1733}
!1743 = !{!1741, !1736}
!1744 = !{!1745, !1747}
!1745 = distinct !{!1745, !1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E: %a.0"}
!1746 = distinct !{!1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E"}
!1747 = distinct !{!1747, !1748, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3214b291aa1b4f1cE: %self.0"}
!1748 = distinct !{!1748, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3214b291aa1b4f1cE"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h5d86ffee21b6fc22E: %b.0"}
!1751 = !{!1750, !1747}
!1752 = !{!1745}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E: %v.0"}
!1755 = distinct !{!1755, !"_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1755, !"_ZN4core5slice4sort6stable5merge5merge17haf5be3e2c48839b7E: %scratch.0"}
!1758 = !{!1754, !1757}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1761 = distinct !{!1761, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1761, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1766 = distinct !{!1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1767 = !{!1768}
!1768 = distinct !{!1768, !1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1769 = !{!1765, !1760, !1757}
!1770 = !{!1768, !1763, !1771, !1754}
!1771 = distinct !{!1771, !1772, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hac285fbaf6eb1c43E: %self"}
!1772 = distinct !{!1772, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hac285fbaf6eb1c43E"}
!1773 = !{!1768, !1763, !1754}
!1774 = !{!1765, !1760, !1771, !1757}
!1775 = !{!1771, !1757}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1778, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1778 = distinct !{!1778, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1778, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1783 = distinct !{!1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1783, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1786 = !{!1782, !1777, !1754}
!1787 = !{!1785, !1780, !1788, !1757}
!1788 = distinct !{!1788, !1789, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf358f0aa63dc12eaE: %self"}
!1789 = distinct !{!1789, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf358f0aa63dc12eaE"}
!1790 = !{!1785, !1780, !1757}
!1791 = !{!1782, !1777, !1788, !1754}
!1792 = !{!1788, !1757}
!1793 = !{!1794, !1796}
!1794 = distinct !{!1794, !1795, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E: %self"}
!1795 = distinct !{!1795, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E"}
!1796 = distinct !{!1796, !1797, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE: %_1"}
!1797 = distinct !{!1797, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE"}
!1798 = !{!1799}
!1799 = distinct !{!1799, !1800, !"_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E: %v.0"}
!1800 = distinct !{!1800, !"_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1800, !"_ZN4core5slice4sort6stable5merge5merge17h4a891c3a9cdb7c70E: %scratch.0"}
!1803 = !{!1799, !1802}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1806 = distinct !{!1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1811, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1811 = distinct !{!1811, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1811, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!1824 = !{!1820, !1815, !1810, !1805, !1802}
!1825 = !{!1823, !1818, !1813, !1808, !1826, !1799}
!1826 = distinct !{!1826, !1827, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h35794339d539ed60E: %self"}
!1827 = distinct !{!1827, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h35794339d539ed60E"}
!1828 = !{!1823, !1818, !1813, !1808, !1799}
!1829 = !{!1820, !1815, !1810, !1805, !1826, !1802}
!1830 = !{!1826, !1802}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1833 = distinct !{!1833, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1834 = !{!1835}
!1835 = distinct !{!1835, !1833, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1838 = distinct !{!1838, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1838, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"cmpfunc: %a"}
!1843 = distinct !{!1843, !"cmpfunc"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1843, !"cmpfunc: %b"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1848, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1848 = distinct !{!1848, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1848, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1851 = !{!1847, !1842, !1837, !1832, !1799}
!1852 = !{!1850, !1845, !1840, !1835, !1853, !1802}
!1853 = distinct !{!1853, !1854, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5480a74e9faed3e9E: %self"}
!1854 = distinct !{!1854, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5480a74e9faed3e9E"}
!1855 = !{!1850, !1845, !1840, !1835, !1802}
!1856 = !{!1847, !1842, !1837, !1832, !1853, !1799}
!1857 = !{!1853, !1802}
!1858 = !{!1859, !1861}
!1859 = distinct !{!1859, !1860, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E: %self"}
!1860 = distinct !{!1860, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E"}
!1861 = distinct !{!1861, !1862, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE: %_1"}
!1862 = distinct !{!1862, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1865 = distinct !{!1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1870 = distinct !{!1870, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"cmpfunc: %a"}
!1875 = distinct !{!1875, !"cmpfunc"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1875, !"cmpfunc: %b"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1880 = distinct !{!1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1883 = !{!1879, !1874, !1869, !1864}
!1884 = !{!1882, !1877, !1872, !1867}
!1885 = !{!1886}
!1886 = distinct !{!1886, !1887, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1887 = distinct !{!1887, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1888 = !{!1889}
!1889 = distinct !{!1889, !1887, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1890 = !{!1891}
!1891 = distinct !{!1891, !1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1892 = distinct !{!1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1895 = !{!1891, !1886}
!1896 = !{!1894, !1889}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1899 = distinct !{!1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1904 = distinct !{!1904, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1904, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1907 = !{!1908}
!1908 = distinct !{!1908, !1909, !"cmpfunc: %a"}
!1909 = distinct !{!1909, !"cmpfunc"}
!1910 = !{!1911}
!1911 = distinct !{!1911, !1909, !"cmpfunc: %b"}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1914 = distinct !{!1914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1915 = !{!1916}
!1916 = distinct !{!1916, !1914, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1917 = !{!1913, !1908, !1903, !1898}
!1918 = !{!1916, !1911, !1906, !1901}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1921 = distinct !{!1921, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1921, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1926 = distinct !{!1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1929 = !{!1925, !1920}
!1930 = !{!1928, !1923}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1933 = distinct !{!1933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1938 = distinct !{!1938, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1938, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1943, !"cmpfunc: %a"}
!1943 = distinct !{!1943, !"cmpfunc"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1943, !"cmpfunc: %b"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1948 = distinct !{!1948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1948, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1951 = !{!1947, !1942, !1937, !1932}
!1952 = !{!1950, !1945, !1940, !1935, !1953}
!1953 = distinct !{!1953, !1954, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h35794339d539ed60E: %self"}
!1954 = distinct !{!1954, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h35794339d539ed60E"}
!1955 = !{!1950, !1945, !1940, !1935}
!1956 = !{!1947, !1942, !1937, !1932, !1953}
!1957 = !{!1953}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!1960 = distinct !{!1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1965, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!1965 = distinct !{!1965, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1965, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!1979 = !{!1977, !1972, !1967, !1962, !1980}
!1980 = distinct !{!1980, !1981, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5480a74e9faed3e9E: %self"}
!1981 = distinct !{!1981, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5480a74e9faed3e9E"}
!1982 = !{!1977, !1972, !1967, !1962}
!1983 = !{!1974, !1969, !1964, !1959, !1980}
!1984 = !{!1980}
!1985 = !{!1986, !1988}
!1986 = distinct !{!1986, !1987, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E: %self"}
!1987 = distinct !{!1987, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E"}
!1988 = distinct !{!1988, !1989, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE: %_1"}
!1989 = distinct !{!1989, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE"}
!1990 = !{!1991}
!1991 = distinct !{!1991, !1992, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!1992 = distinct !{!1992, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1992, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1997 = distinct !{!1997, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !1997, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2000 = !{!1996, !1991}
!2001 = !{!1999, !1994, !2002}
!2002 = distinct !{!2002, !2003, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hac285fbaf6eb1c43E: %self"}
!2003 = distinct !{!2003, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hac285fbaf6eb1c43E"}
!2004 = !{!1999, !1994}
!2005 = !{!1996, !1991, !2002}
!2006 = !{!2002}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2009, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2009 = distinct !{!2009, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2009, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2014 = distinct !{!2014, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2014, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2017 = !{!2013, !2008}
!2018 = !{!2016, !2011, !2019}
!2019 = distinct !{!2019, !2020, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf358f0aa63dc12eaE: %self"}
!2020 = distinct !{!2020, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf358f0aa63dc12eaE"}
!2021 = !{!2016, !2011}
!2022 = !{!2013, !2008, !2019}
!2023 = !{!2019}
!2024 = !{!2025, !2027}
!2025 = distinct !{!2025, !2026, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E: %self"}
!2026 = distinct !{!2026, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bc9599ad010e1d8E"}
!2027 = distinct !{!2027, !2028, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE: %_1"}
!2028 = distinct !{!2028, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7a2f094e9524367cE"}
!2029 = !{!"branch_weights", i32 4000000, i32 4001}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2032 = distinct !{!2032, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2032, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2035 = !{!2036}
!2036 = distinct !{!2036, !2037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2037 = distinct !{!2037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2040 = !{!2036, !2031}
!2041 = !{!2039, !2034}
!2042 = !{!2043}
!2043 = distinct !{!2043, !2044, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2044 = distinct !{!2044, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2045 = !{!2046}
!2046 = distinct !{!2046, !2047, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2047 = distinct !{!2047, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2047, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2050 = !{!2051}
!2051 = distinct !{!2051, !2052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2052 = distinct !{!2052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2055 = !{!2051, !2046}
!2056 = !{!2054, !2049}
!2057 = !{!2058}
!2058 = distinct !{!2058, !2059, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2059 = distinct !{!2059, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2062 = distinct !{!2062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2062, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2067 = distinct !{!2067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2070 = !{!2066, !2061}
!2071 = !{!2069, !2064}
!2072 = !{!2073}
!2073 = distinct !{!2073, !2074, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2074 = distinct !{!2074, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2077 = distinct !{!2077, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2082 = distinct !{!2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2085 = !{!2081, !2076}
!2086 = !{!2084, !2079}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2089 = distinct !{!2089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2092, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2092 = distinct !{!2092, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2092, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2095 = !{!2096}
!2096 = distinct !{!2096, !2097, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2097 = distinct !{!2097, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2097, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2100 = !{!2096, !2091}
!2101 = !{!2099, !2094}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2104 = distinct !{!2104, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2105 = !{!2106}
!2106 = distinct !{!2106, !2107, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2107 = distinct !{!2107, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2108 = distinct !{!2108, !2109}
!2109 = !{!"llvm.loop.unroll.disable"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %a"}
!2112 = distinct !{!2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %b"}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2117, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2117 = distinct !{!2117, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2118 = !{!2119}
!2119 = distinct !{!2119, !2117, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2122 = distinct !{!2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2125 = !{!2121, !2116, !2114}
!2126 = !{!2124, !2119, !2111}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2129, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2129 = distinct !{!2129, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2130 = !{!2131}
!2131 = distinct !{!2131, !2132, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %a"}
!2132 = distinct !{!2132, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E"}
!2133 = !{!2134}
!2134 = distinct !{!2134, !2132, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %b"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2137, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2137 = distinct !{!2137, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2138 = !{!2139}
!2139 = distinct !{!2139, !2137, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2140 = !{!2141}
!2141 = distinct !{!2141, !2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2142 = distinct !{!2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2143 = !{!2144}
!2144 = distinct !{!2144, !2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2145 = !{!2141, !2136, !2134}
!2146 = !{!2144, !2139, !2131}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2149, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2149 = distinct !{!2149, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %a"}
!2152 = distinct !{!2152, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2152, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %b"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2157, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2157 = distinct !{!2157, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2157, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2160 = !{!2161}
!2161 = distinct !{!2161, !2162, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2162 = distinct !{!2162, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2162, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2165 = !{!2161, !2156, !2154}
!2166 = !{!2164, !2159, !2151}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2169 = distinct !{!2169, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %a"}
!2172 = distinct !{!2172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %b"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2177 = distinct !{!2177, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2177, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2182 = distinct !{!2182, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2182, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2185 = !{!2181, !2176, !2174}
!2186 = !{!2184, !2179, !2171}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2189 = distinct !{!2189, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2192, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %a"}
!2192 = distinct !{!2192, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2192, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b2c7bdb010ce773E: %b"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2197 = distinct !{!2197, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2197, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2202 = distinct !{!2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2205 = !{!2201, !2196, !2194}
!2206 = !{!2204, !2199, !2191}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2209 = distinct !{!2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2212 = distinct !{!2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2213 = distinct !{!2213, !2109}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2216 = distinct !{!2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2219 = !{!2220}
!2220 = distinct !{!2220, !2221, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2221 = distinct !{!2221, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2222 = !{!2223}
!2223 = distinct !{!2223, !2221, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"cmpfunc: %a"}
!2226 = distinct !{!2226, !"cmpfunc"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2226, !"cmpfunc: %b"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2231 = distinct !{!2231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2234 = !{!2230, !2225, !2220, !2215}
!2235 = !{!2233, !2228, !2223, !2218}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2238, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2238 = distinct !{!2238, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2241 = distinct !{!2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2246 = distinct !{!2246, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!2262 = distinct !{!2262, !2263, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2263 = distinct !{!2263, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2266 = distinct !{!2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2271 = distinct !{!2271, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2271, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2276, !"cmpfunc: %a"}
!2276 = distinct !{!2276, !"cmpfunc"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2276, !"cmpfunc: %b"}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2281, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2281 = distinct !{!2281, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2282 = !{!2283}
!2283 = distinct !{!2283, !2281, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2284 = !{!2280, !2275, !2270, !2265}
!2285 = !{!2283, !2278, !2273, !2268}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2288 = distinct !{!2288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2291 = distinct !{!2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2296 = distinct !{!2296, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2296, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!2312 = distinct !{!2312, !2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2313 = distinct !{!2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2316 = distinct !{!2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2317 = !{!2318}
!2318 = distinct !{!2318, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2321, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2321 = distinct !{!2321, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2322 = !{!2323}
!2323 = distinct !{!2323, !2321, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
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
!2337 = distinct !{!2337, !2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2338 = distinct !{!2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2341 = distinct !{!2341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2342 = distinct !{!2342, !2109}
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %a"}
!2345 = distinct !{!2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E"}
!2346 = !{!2347}
!2347 = distinct !{!2347, !2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %b"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2350 = distinct !{!2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2355 = distinct !{!2355, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2355, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2358 = !{!2359}
!2359 = distinct !{!2359, !2360, !"cmpfunc: %a"}
!2360 = distinct !{!2360, !"cmpfunc"}
!2361 = !{!2362}
!2362 = distinct !{!2362, !2360, !"cmpfunc: %b"}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2365 = distinct !{!2365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2366 = !{!2367}
!2367 = distinct !{!2367, !2365, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2368 = !{!2364, !2359, !2354, !2349, !2347}
!2369 = !{!2367, !2362, !2357, !2352, !2344}
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2372 = distinct !{!2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %a"}
!2375 = distinct !{!2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E"}
!2376 = !{!2377}
!2377 = distinct !{!2377, !2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %b"}
!2378 = !{!2379}
!2379 = distinct !{!2379, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2380 = distinct !{!2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2381 = !{!2382}
!2382 = distinct !{!2382, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2385 = distinct !{!2385, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2385, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2388 = !{!2389}
!2389 = distinct !{!2389, !2390, !"cmpfunc: %a"}
!2390 = distinct !{!2390, !"cmpfunc"}
!2391 = !{!2392}
!2392 = distinct !{!2392, !2390, !"cmpfunc: %b"}
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2395 = distinct !{!2395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2396 = !{!2397}
!2397 = distinct !{!2397, !2395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2398 = !{!2394, !2389, !2384, !2379, !2377}
!2399 = !{!2397, !2392, !2387, !2382, !2374}
!2400 = !{!2401}
!2401 = distinct !{!2401, !2402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2402 = distinct !{!2402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %a"}
!2405 = distinct !{!2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E"}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %b"}
!2408 = !{!2409}
!2409 = distinct !{!2409, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2410 = distinct !{!2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2411 = !{!2412}
!2412 = distinct !{!2412, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2415 = distinct !{!2415, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2415, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"cmpfunc: %a"}
!2420 = distinct !{!2420, !"cmpfunc"}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2420, !"cmpfunc: %b"}
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2425 = distinct !{!2425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2428 = !{!2424, !2419, !2414, !2409, !2407}
!2429 = !{!2427, !2422, !2417, !2412, !2404}
!2430 = !{!2431}
!2431 = distinct !{!2431, !2432, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2432 = distinct !{!2432, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2433 = !{!2434}
!2434 = distinct !{!2434, !2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %a"}
!2435 = distinct !{!2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %b"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2440 = distinct !{!2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2445 = distinct !{!2445, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2446 = !{!2447}
!2447 = distinct !{!2447, !2445, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"cmpfunc: %a"}
!2450 = distinct !{!2450, !"cmpfunc"}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2450, !"cmpfunc: %b"}
!2453 = !{!2454}
!2454 = distinct !{!2454, !2455, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2455 = distinct !{!2455, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2456 = !{!2457}
!2457 = distinct !{!2457, !2455, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2458 = !{!2454, !2449, !2444, !2439, !2437}
!2459 = !{!2457, !2452, !2447, !2442, !2434}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2462, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2462 = distinct !{!2462, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %a"}
!2465 = distinct !{!2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h93280d7f6037a451E: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2470 = distinct !{!2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2475 = distinct !{!2475, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2475, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2480, !"cmpfunc: %a"}
!2480 = distinct !{!2480, !"cmpfunc"}
!2481 = !{!2482}
!2482 = distinct !{!2482, !2480, !"cmpfunc: %b"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2485, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2485 = distinct !{!2485, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2485, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2488 = !{!2484, !2479, !2474, !2469, !2467}
!2489 = !{!2487, !2482, !2477, !2472, !2464}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2492 = distinct !{!2492, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE: %self"}
!2495 = distinct !{!2495, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hbdb3f9da7b3c327fE"}
!2496 = distinct !{!2496, !2109}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2499, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2499 = distinct !{!2499, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2500 = !{!2501}
!2501 = distinct !{!2501, !2499, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2502 = !{!2503}
!2503 = distinct !{!2503, !2504, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2504 = distinct !{!2504, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"_ZN4core5slice4sort6shared5pivot7median317h8341110a3094ae3aE: %c"}
!2507 = distinct !{!2507, !"_ZN4core5slice4sort6shared5pivot7median317h8341110a3094ae3aE"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2504, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2510 = !{!2503, !2498, !2511}
!2511 = distinct !{!2511, !2512, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E: %v.0"}
!2512 = distinct !{!2512, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E"}
!2513 = !{!2509, !2501, !2506, !2514}
!2514 = distinct !{!2514, !2512, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4d29cec86e20f599E: %is_less"}
!2515 = !{!2509, !2501, !2511}
!2516 = !{!2503, !2498, !2506, !2514}
!2517 = !{!2518, !2520, !2511}
!2518 = distinct !{!2518, !2519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2519 = distinct !{!2519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2520 = distinct !{!2520, !2521, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2521 = distinct !{!2521, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2522 = !{!2523, !2524, !2514}
!2523 = distinct !{!2523, !2519, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2524 = distinct !{!2524, !2521, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2525 = !{!2526, !2528}
!2526 = distinct !{!2526, !2527, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2527 = distinct !{!2527, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2528 = distinct !{!2528, !2529, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 0"}
!2529 = distinct !{!2529, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E"}
!2530 = !{!2531, !2532}
!2531 = distinct !{!2531, !2527, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2532 = distinct !{!2532, !2529, !"_ZN4core3ops8function5FnMut8call_mut17hdea3a9ae3ceb5365E: argument 1"}
!2533 = !{!2534, !2536}
!2534 = distinct !{!2534, !2535, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE: %pair"}
!2535 = distinct !{!2535, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE"}
!2536 = distinct !{!2536, !2535, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE: %self.0"}
!2537 = !{!2538}
!2538 = distinct !{!2538, !2539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2539 = distinct !{!2539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2540 = !{!2541}
!2541 = distinct !{!2541, !2539, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2544, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2544 = distinct !{!2544, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2545 = !{!2546}
!2546 = distinct !{!2546, !2547, !"_ZN4core5slice4sort6shared5pivot7median317h2f286c64558f19f2E: %c"}
!2547 = distinct !{!2547, !"_ZN4core5slice4sort6shared5pivot7median317h2f286c64558f19f2E"}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2544, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"cmpfunc: %a"}
!2552 = distinct !{!2552, !"cmpfunc"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2552, !"cmpfunc: %b"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2557 = distinct !{!2557, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2557, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2560 = !{!2556, !2551, !2543, !2538, !2561}
!2561 = distinct !{!2561, !2562, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE: %v.0"}
!2562 = distinct !{!2562, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE"}
!2563 = !{!2559, !2554, !2549, !2541, !2546, !2564}
!2564 = distinct !{!2564, !2562, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h18d5be789bac028fE: %is_less"}
!2565 = !{!2559, !2554, !2549, !2541, !2561}
!2566 = !{!2556, !2551, !2543, !2538, !2546, !2564}
!2567 = !{!2568, !2570, !2572, !2574, !2561}
!2568 = distinct !{!2568, !2569, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2569 = distinct !{!2569, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2570 = distinct !{!2570, !2571, !"cmpfunc: %b"}
!2571 = distinct !{!2571, !"cmpfunc"}
!2572 = distinct !{!2572, !2573, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2573 = distinct !{!2573, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2574 = distinct !{!2574, !2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2575 = distinct !{!2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2576 = !{!2577, !2578, !2579, !2580, !2564}
!2577 = distinct !{!2577, !2569, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2578 = distinct !{!2578, !2571, !"cmpfunc: %a"}
!2579 = distinct !{!2579, !2573, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2580 = distinct !{!2580, !2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2581 = !{!2582, !2584, !2586, !2588}
!2582 = distinct !{!2582, !2583, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2583 = distinct !{!2583, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2584 = distinct !{!2584, !2585, !"cmpfunc: %a"}
!2585 = distinct !{!2585, !"cmpfunc"}
!2586 = distinct !{!2586, !2587, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 0"}
!2587 = distinct !{!2587, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE"}
!2588 = distinct !{!2588, !2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %a"}
!2589 = distinct !{!2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E"}
!2590 = !{!2591, !2592, !2593, !2594}
!2591 = distinct !{!2591, !2583, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2592 = distinct !{!2592, !2585, !"cmpfunc: %b"}
!2593 = distinct !{!2593, !2587, !"_ZN4core3ops8function5FnMut8call_mut17hbbdefe3f2cf6a19eE: argument 1"}
!2594 = distinct !{!2594, !2589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hbb4ede7d17d52c70E: %b"}
!2595 = !{!2596, !2598}
!2596 = distinct !{!2596, !2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE: %pair"}
!2597 = distinct !{!2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE"}
!2598 = distinct !{!2598, !2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h850fe5d33bac213bE: %self.0"}
!2599 = !{i64 0, i64 -9223372036854775808}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2602 = distinct !{!2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E: %self.0"}
!2607 = distinct !{!2607, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hebdb8aff81cc9e68E"}
!2608 = !{!2609, !2611, !2606}
!2609 = distinct !{!2609, !2610, !"_ZN5alloc5slice11stable_sort17h4f78cd92935c946aE: %v.0"}
!2610 = distinct !{!2610, !"_ZN5alloc5slice11stable_sort17h4f78cd92935c946aE"}
!2611 = distinct !{!2611, !2610, !"_ZN5alloc5slice11stable_sort17h4f78cd92935c946aE: argument 1"}
!2612 = !{!"branch_weights", !"expected", i32 2000, i32 1}
