; ModuleID = 'MAXIMUM_TRIPLET_SUM_ARRAY_1_emit.427434041f4a4603-cgu.0'
source_filename = "MAXIMUM_TRIPLET_SUM_ARRAY_1_emit.427434041f4a4603-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_99a5ff9106a1f76bd6dee89ccc3c4faa = private unnamed_addr constant [109 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_1/MAXIMUM_TRIPLET_SUM_ARRAY_1_emit.rs\00", align 1
@alloc_037c982f7113fad382747c29e3244c82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_99a5ff9106a1f76bd6dee89ccc3c4faa, [16 x i8] c"l\00\00\00\00\00\00\00\1C\00\00\00\05\00\00\00" }>, align 8
@alloc_39aec2478f319ecb6e41d0d81fffd071 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_99a5ff9106a1f76bd6dee89ccc3c4faa, [16 x i8] c"l\00\00\00\00\00\00\00\1C\00\00\00\1B\00\00\00" }>, align 8
@alloc_4385c5a3a89a390cbd2f10c6aa51708b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_99a5ff9106a1f76bd6dee89ccc3c4faa, [16 x i8] c"l\00\00\00\00\00\00\00\1C\00\00\001\00\00\00" }>, align 8

; <core::slice::sort::unstable::quicksort::GapGuardRaw<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN102_$LT$core..slice..sort..unstable..quicksort..GapGuardRaw$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc3bdeca563f1fbb4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_3 = load ptr, ptr %0, align 8, !noundef !3
  %dst = load ptr, ptr %self, align 8, !noundef !3
  %1 = load i32, ptr %_3, align 4
  store i32 %1, ptr %dst, align 4
  ret void
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hc524609d3962f36eE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !4, !noalias !7
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !7, !noalias !4
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !4, !noalias !7
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !7, !noalias !4
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !4, !noalias !7
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !7, !noalias !4
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !4, !noalias !7
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !7, !noalias !4
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !9, !noalias !11
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !11, !noalias !9
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !9, !noalias !11
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !11, !noalias !9
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::slice::<impl [T]>::swap_unchecked
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"(ptr noalias noundef nonnull align 4 captures(none) %self.0, i64 noundef range(i64 0, 2305843009213693952) %self.1, i64 noundef %a, i64 noundef %b, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
start:
  %_9 = getelementptr inbounds nuw i32, ptr %self.0, i64 %a
  %_10 = getelementptr inbounds nuw i32, ptr %self.0, i64 %b
  %tmp.sroa.0.0.copyload.i = load i32, ptr %_9, align 4
  %1 = load i32, ptr %_10, align 4
  store i32 %1, ptr %_9, align 4
  store i32 %tmp.sroa.0.0.copyload.i, ptr %_10, align 4
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h699636c8fd66cc26E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h699636c8fd66cc26E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h699636c8fd66cc26E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h699636c8fd66cc26E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18), !noalias !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24), !noalias !21
  %_3.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !26, !noalias !27, !noundef !3
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !28, !noalias !29, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_4.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !30, !noalias !35, !noundef !3
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82c3dc874e93e11dE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82c3dc874e93e11dE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82c3dc874e93e11dE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82c3dc874e93e11dE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !61, !noalias !62, !noundef !3
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !63, !noalias !64, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !65, !noalias !74, !noundef !3
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !99, !noalias !100, !noundef !3
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !100, !noalias !99, !noundef !3
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !101, !noalias !110, !noundef !3
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !115
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %_3.i.i = load i32, ptr %tail, align 4, !alias.scope !130, !noalias !131, !noundef !3
  %_4.i.i = load i32, ptr %0, align 4, !alias.scope !131, !noalias !130, !noundef !3
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
  %_4.i.i2 = load i32, ptr %2, align 4, !alias.scope !132, !noalias !137, !noundef !3
  %_0.i.i3 = icmp slt i32 %_3.i.i, %_4.i.i2
  br i1 %_0.i.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i, ptr %sift.sroa.0.0, align 4, !noalias !140
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h06abc9fe69446a3eE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %_3.i.i = load i32, ptr %_7, align 4, !alias.scope !155, !noalias !156, !noundef !3
  %_4.i.i = load i32, ptr %v_base, align 4, !alias.scope !156, !noalias !155, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %_3.i.i7 = load i32, ptr %_12, align 4, !alias.scope !167, !noalias !168, !noundef !3
  %_4.i.i8 = load i32, ptr %_14, align 4, !alias.scope !168, !noalias !167, !noundef !3
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
  %_3.i.i10 = load i32, ptr %c, align 4, !alias.scope !179, !noalias !180, !noundef !3
  %_4.i.i11 = load i32, ptr %a, align 4, !alias.scope !180, !noalias !179, !noundef !3
  %_0.i.i12 = icmp slt i32 %_3.i.i10, %_4.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %_3.i.i13 = load i32, ptr %d, align 4, !alias.scope !191, !noalias !192, !noundef !3
  %_4.i.i14 = load i32, ptr %b, align 4, !alias.scope !192, !noalias !191, !noundef !3
  %_0.i.i15 = icmp slt i32 %_3.i.i13, %_4.i.i14
  %0 = select i1 %_0.i.i12, ptr %c, ptr %a, !unpredictable !3
  %1 = select i1 %_0.i.i15, ptr %c, ptr %b, !unpredictable !3
  %2 = select i1 %_0.i.i12, ptr %a, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i.i12, ptr %b, ptr %c, !unpredictable !3
  %4 = select i1 %_0.i.i15, ptr %d, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %_3.i.i16 = load i32, ptr %4, align 4, !alias.scope !203, !noalias !204, !noundef !3
  %_4.i.i17 = load i32, ptr %2, align 4, !alias.scope !204, !noalias !203, !noundef !3
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h45ee6d890e9cfffbE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !225, !noalias !226, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !226, !noalias !225, !noundef !3
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
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !247, !noalias !248, !noundef !3
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !248, !noalias !247, !noundef !3
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
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !269, !noalias !270, !noundef !3
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !270, !noalias !269, !noundef !3
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !291, !noalias !292, !noundef !3
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !292, !noalias !291, !noundef !3
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !3
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !3
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !3
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !313, !noalias !314, !noundef !3
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !314, !noalias !313, !noundef !3
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8f40b1ab8dfb694cE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !325, !noalias !326, !noundef !3
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !326, !noalias !325, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !337, !noalias !338, !noundef !3
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !338, !noalias !337, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !349, !noalias !350, !noundef !3
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !350, !noalias !349, !noundef !3
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !361, !noalias !362, !noundef !3
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !362, !noalias !361, !noundef !3
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !373, !noalias !374, !noundef !3
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !374, !noalias !373, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !385, !noalias !386, !noundef !3
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !386, !noalias !385, !noundef !3
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !397, !noalias !398, !noundef !3
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !398, !noalias !397, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !409, !noalias !410, !noundef !3
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !410, !noalias !409, !noundef !3
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !421, !noalias !422, !noundef !3
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !422, !noalias !421, !noundef !3
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %10 = select i1 %_0.i.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !3
  %11 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !3
  %12 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !3
  %14 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %_3.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !433, !noalias !434, !noundef !3
  %_4.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !434, !noalias !433, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443), !noalias !446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !446
  %_3.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !451, !noalias !452, !noundef !3
  %_4.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !453, !noalias !454, !noundef !3
  %_0.i.i.i38 = icmp slt i32 %_3.i.i.i36, %_4.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36, i32 %_4.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !455
  %count.i.i = zext i1 %_0.i.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468), !noalias !465
  %_3.i.i19.i = load i32, ptr %21, align 4, !alias.scope !470, !noalias !471, !noundef !3
  %_4.i.i20.i = load i32, ptr %20, align 4, !alias.scope !472, !noalias !473, !noundef !3
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !474
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480), !noalias !446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !446
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !484, !noalias !485, !noundef !3
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !486, !noalias !487, !noundef !3
  %_0.i.i.i38.1 = icmp slt i32 %_3.i.i.i36.1, %_4.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.1, i32 %_4.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !455
  %count.i.i.1 = zext i1 %_0.i.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494), !noalias !465
  %_3.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !496, !noalias !497, !noundef !3
  %_4.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !498, !noalias !499, !noundef !3
  %_0.i.i21.i.1 = icmp slt i32 %_3.i.i19.i.1, %_4.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.1, i32 %_4.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !474
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !446
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !508, !noalias !509, !noundef !3
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !510, !noalias !511, !noundef !3
  %_0.i.i.i38.2 = icmp slt i32 %_3.i.i.i36.2, %_4.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.2, i32 %_4.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !455
  %count.i.i.2 = zext i1 %_0.i.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !465
  %_3.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !520, !noalias !521, !noundef !3
  %_4.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !522, !noalias !523, !noundef !3
  %_0.i.i21.i.2 = icmp slt i32 %_3.i.i19.i.2, %_4.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.2, i32 %_4.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !474
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !446
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !532, !noalias !533, !noundef !3
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !534, !noalias !535, !noundef !3
  %_0.i.i.i38.3 = icmp slt i32 %_3.i.i.i36.3, %_4.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.3, i32 %_4.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !455
  %count.i.i.3 = zext i1 %_0.i.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542), !noalias !465
  %_3.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !544, !noalias !545, !noundef !3
  %_4.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !546, !noalias !547, !noundef !3
  %_0.i.i21.i.3 = icmp slt i32 %_3.i.i19.i.3, %_4.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.3, i32 %_4.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !474
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE.exit, !prof !548

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26, !noalias !435
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb0cbdea04def2101E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !569, !noalias !570, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !570, !noalias !569, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !591, !noalias !592, !noundef !3
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !592, !noalias !591, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !613, !noalias !614, !noundef !3
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !614, !noalias !613, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !635, !noalias !636, !noundef !3
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !636, !noalias !635, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !657, !noalias !658, !noundef !3
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !658, !noalias !657, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !679, !noalias !680, !noundef !3
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !680, !noalias !679, !noundef !3
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !701, !noalias !702, !noundef !3
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !702, !noalias !701, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !723, !noalias !724, !noundef !3
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !724, !noalias !723, !noundef !3
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !745, !noalias !746, !noundef !3
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !746, !noalias !745, !noundef !3
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !3
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !3
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !3
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !767, !noalias !768, !noundef !3
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !768, !noalias !767, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793), !noalias !780
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !795, !noalias !796, !noundef !3
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !797, !noalias !798, !noundef !3
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !799
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822), !noalias !809
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !824, !noalias !825, !noundef !3
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !826, !noalias !827, !noundef !3
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !828
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844), !noalias !780
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !846, !noalias !847, !noundef !3
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !848, !noalias !849, !noundef !3
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !799
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864), !noalias !809
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !866, !noalias !867, !noundef !3
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !868, !noalias !869, !noundef !3
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !828
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884), !noalias !780
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !886, !noalias !887, !noundef !3
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !888, !noalias !889, !noundef !3
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !799
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904), !noalias !809
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !906, !noalias !907, !noundef !3
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !908, !noalias !909, !noundef !3
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !828
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922), !noalias !780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !noalias !780
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !926, !noalias !927, !noundef !3
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !928, !noalias !929, !noundef !3
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !799
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944), !noalias !809
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !946, !noalias !947, !noundef !3
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !948, !noalias !949, !noundef !3
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !828
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE.exit, !prof !548

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26, !noalias !769
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::swap_if_less
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12swap_if_less17h0651d247e7a4cbe2E(ptr noundef captures(none) %v_base, i64 noundef %a_pos, i64 noundef %b_pos, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %v_a = getelementptr inbounds nuw i32, ptr %v_base, i64 %a_pos
  %v_b = getelementptr inbounds nuw i32, ptr %v_base, i64 %b_pos
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %_3.i.i = load i32, ptr %v_b, align 4, !alias.scope !960, !noalias !961, !noundef !3
  %_4.i.i = load i32, ptr %v_a, align 4, !alias.scope !961, !noalias !960, !noundef !3
  %value = tail call i32 @llvm.smax.i32(i32 %_3.i.i, i32 %_4.i.i)
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %0, ptr %v_a, align 4
  store i32 %value, ptr %v_b, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort9_optimal
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort13sort9_optimal17h71f2d61fdd80e445E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_3 = icmp samesign ult i64 %v.1, 9
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %v_b.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %_3.i.i.i = load i32, ptr %v_b.i, align 4, !alias.scope !972, !noalias !973, !noundef !3
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !973, !noalias !972, !noundef !3
  %value.i = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %0, ptr %v.0, align 4
  store i32 %value.i, ptr %v_b.i, align 4
  %v_a.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  %v_b.i1 = getelementptr inbounds nuw i8, ptr %v.0, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %_3.i.i.i2 = load i32, ptr %v_b.i1, align 4, !alias.scope !984, !noalias !985, !noundef !3
  %_4.i.i.i3 = load i32, ptr %v_a.i, align 4, !alias.scope !985, !noalias !984, !noundef !3
  %value.i4 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i2, i32 %_4.i.i.i3)
  %1 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i2, i32 %_4.i.i.i3)
  store i32 %1, ptr %v_a.i, align 4
  store i32 %value.i4, ptr %v_b.i1, align 4
  %v_a.i5 = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %v_b.i6 = getelementptr inbounds nuw i8, ptr %v.0, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %_3.i.i.i7 = load i32, ptr %v_b.i6, align 4, !alias.scope !996, !noalias !997, !noundef !3
  %_4.i.i.i8 = load i32, ptr %v_a.i5, align 4, !alias.scope !997, !noalias !996, !noundef !3
  %value.i9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i7, i32 %_4.i.i.i8)
  %2 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i7, i32 %_4.i.i.i8)
  store i32 %2, ptr %v_a.i5, align 4
  store i32 %value.i9, ptr %v_b.i6, align 4
  %v_a.i10 = getelementptr inbounds nuw i8, ptr %v.0, i64 16
  %v_b.i11 = getelementptr inbounds nuw i8, ptr %v.0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %_3.i.i.i12 = load i32, ptr %v_b.i11, align 4, !alias.scope !1008, !noalias !1009, !noundef !3
  %_4.i.i.i13 = load i32, ptr %v_a.i10, align 4, !alias.scope !1009, !noalias !1008, !noundef !3
  %value.i14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  store i32 %3, ptr %v_a.i10, align 4
  store i32 %value.i14, ptr %v_b.i11, align 4
  %value.i19 = tail call i32 @llvm.smax.i32(i32 %value.i4, i32 %0)
  %4 = tail call i32 @llvm.smin.i32(i32 %value.i4, i32 %0)
  store i32 %4, ptr %v.0, align 4
  store i32 %value.i19, ptr %v_b.i1, align 4
  %value.i24 = tail call i32 @llvm.smax.i32(i32 %3, i32 %2)
  %5 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2)
  store i32 %5, ptr %v_a.i5, align 4
  store i32 %value.i24, ptr %v_a.i10, align 4
  %value.i29 = tail call i32 @llvm.smax.i32(i32 %value.i14, i32 %value.i)
  %6 = tail call i32 @llvm.smin.i32(i32 %value.i14, i32 %value.i)
  store i32 %6, ptr %v_b.i, align 4
  store i32 %value.i29, ptr %v_b.i11, align 4
  %v_b.i31 = getelementptr inbounds nuw i8, ptr %v.0, i64 24
  %_3.i.i.i32 = load i32, ptr %v_b.i31, align 4, !alias.scope !1010, !noalias !1015, !noundef !3
  %value.i34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i32, i32 %value.i9)
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i32, i32 %value.i9)
  store i32 %7, ptr %v_b.i6, align 4
  store i32 %value.i34, ptr %v_b.i31, align 4
  %value.i39 = tail call i32 @llvm.smax.i32(i32 %5, i32 %4)
  %8 = tail call i32 @llvm.smin.i32(i32 %5, i32 %4)
  store i32 %8, ptr %v.0, align 4
  store i32 %value.i39, ptr %v_a.i5, align 4
  %value.i44 = tail call i32 @llvm.smax.i32(i32 %6, i32 %1)
  %9 = tail call i32 @llvm.smin.i32(i32 %6, i32 %1)
  store i32 %9, ptr %v_a.i, align 4
  store i32 %value.i44, ptr %v_b.i, align 4
  %value.i49 = tail call i32 @llvm.smax.i32(i32 %7, i32 %value.i24)
  %10 = tail call i32 @llvm.smin.i32(i32 %7, i32 %value.i24)
  store i32 %10, ptr %v_a.i10, align 4
  store i32 %value.i49, ptr %v_b.i6, align 4
  %value.i54 = tail call i32 @llvm.smax.i32(i32 %value.i29, i32 %value.i19)
  %11 = tail call i32 @llvm.smin.i32(i32 %value.i29, i32 %value.i19)
  store i32 %11, ptr %v_b.i1, align 4
  store i32 %value.i54, ptr %v_b.i11, align 4
  %value.i59 = tail call i32 @llvm.smax.i32(i32 %10, i32 %9)
  %12 = tail call i32 @llvm.smin.i32(i32 %10, i32 %9)
  store i32 %12, ptr %v_a.i, align 4
  store i32 %value.i59, ptr %v_a.i10, align 4
  %value.i64 = tail call i32 @llvm.smax.i32(i32 %value.i34, i32 %value.i44)
  %13 = tail call i32 @llvm.smin.i32(i32 %value.i34, i32 %value.i44)
  store i32 %13, ptr %v_b.i, align 4
  store i32 %value.i64, ptr %v_b.i31, align 4
  %value.i69 = tail call i32 @llvm.smax.i32(i32 %11, i32 %value.i49)
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %value.i49)
  store i32 %14, ptr %v_b.i6, align 4
  store i32 %value.i69, ptr %v_b.i1, align 4
  %value.i74 = tail call i32 @llvm.smax.i32(i32 %12, i32 %8)
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 %8)
  store i32 %15, ptr %v.0, align 4
  store i32 %value.i74, ptr %v_a.i, align 4
  %value.i79 = tail call i32 @llvm.smax.i32(i32 %value.i59, i32 %value.i39)
  %16 = tail call i32 @llvm.smin.i32(i32 %value.i59, i32 %value.i39)
  store i32 %16, ptr %v_a.i5, align 4
  store i32 %value.i79, ptr %v_a.i10, align 4
  %value.i84 = tail call i32 @llvm.smax.i32(i32 %14, i32 %13)
  %17 = tail call i32 @llvm.smin.i32(i32 %14, i32 %13)
  store i32 %17, ptr %v_b.i, align 4
  store i32 %value.i84, ptr %v_b.i6, align 4
  %value.i89 = tail call i32 @llvm.smax.i32(i32 %value.i54, i32 %value.i64)
  %18 = tail call i32 @llvm.smin.i32(i32 %value.i54, i32 %value.i64)
  store i32 %18, ptr %v_b.i31, align 4
  store i32 %value.i89, ptr %v_b.i11, align 4
  %value.i94 = tail call i32 @llvm.smax.i32(i32 %17, i32 %16)
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 %16)
  store i32 %19, ptr %v_a.i5, align 4
  store i32 %value.i94, ptr %v_b.i, align 4
  %value.i99 = tail call i32 @llvm.smax.i32(i32 %value.i84, i32 %value.i79)
  %20 = tail call i32 @llvm.smin.i32(i32 %value.i84, i32 %value.i79)
  store i32 %20, ptr %v_a.i10, align 4
  store i32 %value.i99, ptr %v_b.i6, align 4
  %value.i104 = tail call i32 @llvm.smax.i32(i32 %value.i69, i32 %18)
  %21 = tail call i32 @llvm.smin.i32(i32 %value.i69, i32 %18)
  store i32 %21, ptr %v_b.i31, align 4
  store i32 %value.i104, ptr %v_b.i1, align 4
  %value.i109 = tail call i32 @llvm.smax.i32(i32 %19, i32 %value.i74)
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 %value.i74)
  store i32 %22, ptr %v_a.i, align 4
  store i32 %value.i109, ptr %v_a.i5, align 4
  %value.i114 = tail call i32 @llvm.smax.i32(i32 %20, i32 %value.i94)
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %value.i94)
  store i32 %23, ptr %v_b.i, align 4
  store i32 %value.i114, ptr %v_a.i10, align 4
  %value.i119 = tail call i32 @llvm.smax.i32(i32 %21, i32 %value.i99)
  %24 = tail call i32 @llvm.smin.i32(i32 %21, i32 %value.i99)
  store i32 %24, ptr %v_b.i6, align 4
  store i32 %value.i119, ptr %v_b.i31, align 4
  ret void

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; core::slice::sort::shared::smallsort::sort13_optimal
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort14sort13_optimal17h7058d0955e0ee911E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_3 = icmp samesign ult i64 %v.1, 13
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %v_b.i = getelementptr inbounds nuw i8, ptr %v.0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %_3.i.i.i = load i32, ptr %v_b.i, align 4, !alias.scope !1028, !noalias !1029, !noundef !3
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1029, !noalias !1028, !noundef !3
  %value.i = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %0, ptr %v.0, align 4
  store i32 %value.i, ptr %v_b.i, align 4
  %v_a.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  %v_b.i1 = getelementptr inbounds nuw i8, ptr %v.0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %_3.i.i.i2 = load i32, ptr %v_b.i1, align 4, !alias.scope !1040, !noalias !1041, !noundef !3
  %_4.i.i.i3 = load i32, ptr %v_a.i, align 4, !alias.scope !1041, !noalias !1040, !noundef !3
  %value.i4 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i2, i32 %_4.i.i.i3)
  %1 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i2, i32 %_4.i.i.i3)
  store i32 %1, ptr %v_a.i, align 4
  store i32 %value.i4, ptr %v_b.i1, align 4
  %v_a.i5 = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %v_b.i6 = getelementptr inbounds nuw i8, ptr %v.0, i64 36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %_3.i.i.i7 = load i32, ptr %v_b.i6, align 4, !alias.scope !1052, !noalias !1053, !noundef !3
  %_4.i.i.i8 = load i32, ptr %v_a.i5, align 4, !alias.scope !1053, !noalias !1052, !noundef !3
  %value.i9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i7, i32 %_4.i.i.i8)
  %2 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i7, i32 %_4.i.i.i8)
  store i32 %2, ptr %v_a.i5, align 4
  store i32 %value.i9, ptr %v_b.i6, align 4
  %v_a.i10 = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %v_b.i11 = getelementptr inbounds nuw i8, ptr %v.0, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %_3.i.i.i12 = load i32, ptr %v_b.i11, align 4, !alias.scope !1064, !noalias !1065, !noundef !3
  %_4.i.i.i13 = load i32, ptr %v_a.i10, align 4, !alias.scope !1065, !noalias !1064, !noundef !3
  %value.i14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  store i32 %3, ptr %v_a.i10, align 4
  store i32 %value.i14, ptr %v_b.i11, align 4
  %v_a.i15 = getelementptr inbounds nuw i8, ptr %v.0, i64 20
  %v_b.i16 = getelementptr inbounds nuw i8, ptr %v.0, i64 44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %_3.i.i.i17 = load i32, ptr %v_b.i16, align 4, !alias.scope !1076, !noalias !1077, !noundef !3
  %_4.i.i.i18 = load i32, ptr %v_a.i15, align 4, !alias.scope !1077, !noalias !1076, !noundef !3
  %value.i19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i17, i32 %_4.i.i.i18)
  %4 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i17, i32 %_4.i.i.i18)
  store i32 %4, ptr %v_a.i15, align 4
  store i32 %value.i19, ptr %v_b.i16, align 4
  %v_a.i20 = getelementptr inbounds nuw i8, ptr %v.0, i64 24
  %v_b.i21 = getelementptr inbounds nuw i8, ptr %v.0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %_3.i.i.i22 = load i32, ptr %v_b.i21, align 4, !alias.scope !1088, !noalias !1089, !noundef !3
  %_4.i.i.i23 = load i32, ptr %v_a.i20, align 4, !alias.scope !1089, !noalias !1088, !noundef !3
  %value.i24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i22, i32 %_4.i.i.i23)
  %5 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i22, i32 %_4.i.i.i23)
  store i32 %5, ptr %v_a.i20, align 4
  store i32 %value.i24, ptr %v_b.i21, align 4
  %value.i29 = tail call i32 @llvm.smax.i32(i32 %5, i32 %1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %1)
  store i32 %6, ptr %v_a.i, align 4
  store i32 %value.i29, ptr %v_a.i20, align 4
  %value.i34 = tail call i32 @llvm.smax.i32(i32 %3, i32 %2)
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2)
  store i32 %7, ptr %v_a.i5, align 4
  store i32 %value.i34, ptr %v_a.i10, align 4
  %v_a.i35 = getelementptr inbounds nuw i8, ptr %v.0, i64 16
  %_4.i.i.i38 = load i32, ptr %v_a.i35, align 4, !alias.scope !1090, !noalias !1095, !noundef !3
  %value.i39 = tail call i32 @llvm.smax.i32(i32 %value.i19, i32 %_4.i.i.i38)
  %8 = tail call i32 @llvm.smin.i32(i32 %value.i19, i32 %_4.i.i.i38)
  store i32 %8, ptr %v_a.i35, align 4
  store i32 %value.i39, ptr %v_b.i16, align 4
  %value.i44 = tail call i32 @llvm.smax.i32(i32 %value.i9, i32 %value.i14)
  %9 = tail call i32 @llvm.smin.i32(i32 %value.i9, i32 %value.i14)
  store i32 %9, ptr %v_b.i11, align 4
  store i32 %value.i44, ptr %v_b.i6, align 4
  %value.i49 = tail call i32 @llvm.smax.i32(i32 %value.i4, i32 %value.i24)
  %10 = tail call i32 @llvm.smin.i32(i32 %value.i4, i32 %value.i24)
  store i32 %10, ptr %v_b.i21, align 4
  store i32 %value.i49, ptr %v_b.i1, align 4
  %value.i54 = tail call i32 @llvm.smax.i32(i32 %8, i32 %0)
  %11 = tail call i32 @llvm.smin.i32(i32 %8, i32 %0)
  store i32 %11, ptr %v.0, align 4
  store i32 %value.i54, ptr %v_a.i35, align 4
  %value.i59 = tail call i32 @llvm.smax.i32(i32 %7, i32 %6)
  %12 = tail call i32 @llvm.smin.i32(i32 %7, i32 %6)
  store i32 %12, ptr %v_a.i, align 4
  store i32 %value.i59, ptr %v_a.i5, align 4
  %value.i64 = tail call i32 @llvm.smax.i32(i32 %value.i29, i32 %value.i34)
  %13 = tail call i32 @llvm.smin.i32(i32 %value.i29, i32 %value.i34)
  store i32 %13, ptr %v_a.i10, align 4
  store i32 %value.i64, ptr %v_a.i20, align 4
  %value.i69 = tail call i32 @llvm.smax.i32(i32 %10, i32 %9)
  %14 = tail call i32 @llvm.smin.i32(i32 %10, i32 %9)
  store i32 %14, ptr %v_b.i11, align 4
  store i32 %value.i69, ptr %v_b.i21, align 4
  %value.i74 = tail call i32 @llvm.smax.i32(i32 %value.i49, i32 %value.i44)
  %15 = tail call i32 @llvm.smin.i32(i32 %value.i49, i32 %value.i44)
  store i32 %15, ptr %v_b.i6, align 4
  store i32 %value.i74, ptr %v_b.i1, align 4
  %value.i79 = tail call i32 @llvm.smax.i32(i32 %value.i, i32 %value.i39)
  %16 = tail call i32 @llvm.smin.i32(i32 %value.i, i32 %value.i39)
  store i32 %16, ptr %v_b.i16, align 4
  store i32 %value.i79, ptr %v_b.i, align 4
  %value.i84 = tail call i32 @llvm.smax.i32(i32 %value.i64, i32 %value.i54)
  %17 = tail call i32 @llvm.smin.i32(i32 %value.i64, i32 %value.i54)
  store i32 %17, ptr %v_a.i35, align 4
  store i32 %value.i84, ptr %v_a.i20, align 4
  %value.i89 = tail call i32 @llvm.smax.i32(i32 %15, i32 %4)
  %18 = tail call i32 @llvm.smin.i32(i32 %15, i32 %4)
  store i32 %18, ptr %v_a.i15, align 4
  store i32 %value.i89, ptr %v_b.i6, align 4
  %value.i94 = tail call i32 @llvm.smax.i32(i32 %16, i32 %value.i69)
  %19 = tail call i32 @llvm.smin.i32(i32 %16, i32 %value.i69)
  store i32 %19, ptr %v_b.i21, align 4
  store i32 %value.i94, ptr %v_b.i16, align 4
  %value.i99 = tail call i32 @llvm.smax.i32(i32 %value.i79, i32 %value.i74)
  %20 = tail call i32 @llvm.smin.i32(i32 %value.i79, i32 %value.i74)
  store i32 %20, ptr %v_b.i1, align 4
  store i32 %value.i99, ptr %v_b.i, align 4
  %value.i104 = tail call i32 @llvm.smax.i32(i32 %18, i32 %11)
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %11)
  store i32 %21, ptr %v.0, align 4
  store i32 %value.i104, ptr %v_a.i15, align 4
  %value.i109 = tail call i32 @llvm.smax.i32(i32 %19, i32 %13)
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 %13)
  store i32 %22, ptr %v_a.i10, align 4
  store i32 %value.i109, ptr %v_b.i21, align 4
  %value.i114 = tail call i32 @llvm.smax.i32(i32 %14, i32 %17)
  %23 = tail call i32 @llvm.smin.i32(i32 %14, i32 %17)
  store i32 %23, ptr %v_a.i35, align 4
  store i32 %value.i114, ptr %v_b.i11, align 4
  %value.i119 = tail call i32 @llvm.smax.i32(i32 %value.i94, i32 %value.i84)
  %24 = tail call i32 @llvm.smin.i32(i32 %value.i94, i32 %value.i84)
  store i32 %24, ptr %v_a.i20, align 4
  store i32 %value.i119, ptr %v_b.i16, align 4
  %value.i124 = tail call i32 @llvm.smax.i32(i32 %20, i32 %value.i89)
  %25 = tail call i32 @llvm.smin.i32(i32 %20, i32 %value.i89)
  store i32 %25, ptr %v_b.i6, align 4
  store i32 %value.i124, ptr %v_b.i1, align 4
  %value.i129 = tail call i32 @llvm.smax.i32(i32 %12, i32 %21)
  %26 = tail call i32 @llvm.smin.i32(i32 %12, i32 %21)
  store i32 %26, ptr %v.0, align 4
  store i32 %value.i129, ptr %v_a.i, align 4
  %value.i134 = tail call i32 @llvm.smax.i32(i32 %value.i104, i32 %value.i59)
  %27 = tail call i32 @llvm.smin.i32(i32 %value.i104, i32 %value.i59)
  store i32 %27, ptr %v_a.i5, align 4
  store i32 %value.i134, ptr %v_a.i15, align 4
  %value.i139 = tail call i32 @llvm.smax.i32(i32 %25, i32 %24)
  %28 = tail call i32 @llvm.smin.i32(i32 %25, i32 %24)
  store i32 %28, ptr %v_a.i20, align 4
  store i32 %value.i139, ptr %v_b.i6, align 4
  %value.i144 = tail call i32 @llvm.smax.i32(i32 %value.i109, i32 %value.i114)
  %29 = tail call i32 @llvm.smin.i32(i32 %value.i109, i32 %value.i114)
  store i32 %29, ptr %v_b.i11, align 4
  store i32 %value.i144, ptr %v_b.i21, align 4
  %value.i149 = tail call i32 @llvm.smax.i32(i32 %value.i119, i32 %value.i124)
  %30 = tail call i32 @llvm.smin.i32(i32 %value.i119, i32 %value.i124)
  store i32 %30, ptr %v_b.i1, align 4
  store i32 %value.i149, ptr %v_b.i16, align 4
  %value.i154 = tail call i32 @llvm.smax.i32(i32 %22, i32 %value.i129)
  %31 = tail call i32 @llvm.smin.i32(i32 %22, i32 %value.i129)
  store i32 %31, ptr %v_a.i, align 4
  store i32 %value.i154, ptr %v_a.i10, align 4
  %value.i159 = tail call i32 @llvm.smax.i32(i32 %23, i32 %27)
  %32 = tail call i32 @llvm.smin.i32(i32 %23, i32 %27)
  store i32 %32, ptr %v_a.i5, align 4
  store i32 %value.i159, ptr %v_a.i35, align 4
  %value.i164 = tail call i32 @llvm.smax.i32(i32 %28, i32 %value.i134)
  %33 = tail call i32 @llvm.smin.i32(i32 %28, i32 %value.i134)
  store i32 %33, ptr %v_a.i15, align 4
  store i32 %value.i164, ptr %v_a.i20, align 4
  %value.i169 = tail call i32 @llvm.smax.i32(i32 %30, i32 %value.i139)
  %34 = tail call i32 @llvm.smin.i32(i32 %30, i32 %value.i139)
  store i32 %34, ptr %v_b.i6, align 4
  store i32 %value.i169, ptr %v_b.i1, align 4
  %value.i174 = tail call i32 @llvm.smax.i32(i32 %32, i32 %31)
  %35 = tail call i32 @llvm.smin.i32(i32 %32, i32 %31)
  store i32 %35, ptr %v_a.i, align 4
  store i32 %value.i174, ptr %v_a.i5, align 4
  %value.i179 = tail call i32 @llvm.smax.i32(i32 %value.i159, i32 %value.i154)
  %36 = tail call i32 @llvm.smin.i32(i32 %value.i159, i32 %value.i154)
  store i32 %36, ptr %v_a.i10, align 4
  store i32 %value.i179, ptr %v_a.i35, align 4
  %value.i184 = tail call i32 @llvm.smax.i32(i32 %29, i32 %33)
  %37 = tail call i32 @llvm.smin.i32(i32 %29, i32 %33)
  store i32 %37, ptr %v_a.i15, align 4
  store i32 %value.i184, ptr %v_b.i11, align 4
  %value.i189 = tail call i32 @llvm.smax.i32(i32 %value.i144, i32 %value.i164)
  %38 = tail call i32 @llvm.smin.i32(i32 %value.i144, i32 %value.i164)
  store i32 %38, ptr %v_a.i20, align 4
  store i32 %value.i189, ptr %v_b.i21, align 4
  %value.i194 = tail call i32 @llvm.smax.i32(i32 %36, i32 %value.i174)
  %39 = tail call i32 @llvm.smin.i32(i32 %36, i32 %value.i174)
  store i32 %39, ptr %v_a.i5, align 4
  store i32 %value.i194, ptr %v_a.i10, align 4
  %value.i199 = tail call i32 @llvm.smax.i32(i32 %37, i32 %value.i179)
  %40 = tail call i32 @llvm.smin.i32(i32 %37, i32 %value.i179)
  store i32 %40, ptr %v_a.i35, align 4
  store i32 %value.i199, ptr %v_a.i15, align 4
  %value.i204 = tail call i32 @llvm.smax.i32(i32 %value.i184, i32 %38)
  %41 = tail call i32 @llvm.smin.i32(i32 %value.i184, i32 %38)
  store i32 %41, ptr %v_a.i20, align 4
  store i32 %value.i204, ptr %v_b.i11, align 4
  %value.i209 = tail call i32 @llvm.smax.i32(i32 %34, i32 %value.i189)
  %42 = tail call i32 @llvm.smin.i32(i32 %34, i32 %value.i189)
  store i32 %42, ptr %v_b.i21, align 4
  store i32 %value.i209, ptr %v_b.i6, align 4
  %value.i214 = tail call i32 @llvm.smax.i32(i32 %40, i32 %value.i194)
  %43 = tail call i32 @llvm.smin.i32(i32 %40, i32 %value.i194)
  store i32 %43, ptr %v_a.i10, align 4
  store i32 %value.i214, ptr %v_a.i35, align 4
  %value.i219 = tail call i32 @llvm.smax.i32(i32 %41, i32 %value.i199)
  %44 = tail call i32 @llvm.smin.i32(i32 %41, i32 %value.i199)
  store i32 %44, ptr %v_a.i15, align 4
  store i32 %value.i219, ptr %v_a.i20, align 4
  ret void

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; core::slice::sort::shared::smallsort::small_sort_general
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h58135720a63b3b09E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 {
start:
  %stack_array = alloca [192 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %stack_array)
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he2b0b0c2192646b6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_array, i64 noundef 48, ptr noalias nonnull align 1 poison)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %stack_array)
  ret void
}

; core::slice::sort::shared::smallsort::small_sort_network
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort18small_sort_network17hbbbfaa93cc63fb31E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %stack_array = alloca [128 x i8], align 4
  %_4 = icmp samesign ult i64 %v.1, 2
  br i1 %_4, label %bb23, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp samesign ugt i64 %v.1, 32
  br i1 %_5, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack_array)
  %len_div_26 = lshr i64 %v.1, 1
  %no_merge = icmp samesign ult i64 %v.1, 18
  %v.1.len_div_26 = select i1 %no_merge, i64 %v.1, i64 %len_div_26
  %data = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_26
  %len = sub nuw nsw i64 %v.1, %len_div_26
  br label %bb8

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb8:                                              ; preds = %bb19, %bb4
  %region.sroa.8.0 = phi i64 [ %v.1.len_div_26, %bb4 ], [ %len, %bb19 ]
  %region.sroa.0.0 = phi ptr [ %v.0, %bb4 ], [ %data, %bb19 ]
  %_14 = icmp ugt i64 %region.sroa.8.0, 12
  br i1 %_14, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
  %_19 = icmp ugt i64 %region.sroa.8.0, 8
  br i1 %_19, label %bb12, label %bb16

bb9:                                              ; preds = %bb8
; call core::slice::sort::shared::smallsort::sort13_optimal
  tail call void @_ZN4core5slice4sort6shared9smallsort14sort13_optimal17h7058d0955e0ee911E(ptr noalias noundef nonnull align 4 %region.sroa.0.0, i64 noundef %region.sroa.8.0, ptr noalias nonnull align 1 poison)
  br label %bb16

bb12:                                             ; preds = %bb11
; call core::slice::sort::shared::smallsort::sort9_optimal
  tail call void @_ZN4core5slice4sort6shared9smallsort13sort9_optimal17h71f2d61fdd80e445E(ptr noalias noundef nonnull align 4 %region.sroa.0.0, i64 noundef %region.sroa.8.0, ptr noalias nonnull align 1 poison)
  br label %bb16

bb16:                                             ; preds = %bb11, %bb12, %bb9
  %presorted_len.sroa.0.0 = phi i64 [ 13, %bb9 ], [ 9, %bb12 ], [ 1, %bb11 ]
  %0 = add nsw i64 %presorted_len.sroa.0.0, -1
  %or.cond.not.i = icmp ult i64 %0, %region.sroa.8.0
  br i1 %or.cond.not.i, label %bb3.i, label %bb2.i

bb2.i:                                            ; preds = %bb16
  tail call void @llvm.trap()
  unreachable

bb3.i:                                            ; preds = %bb16
  %v_end.i = getelementptr inbounds nuw i32, ptr %region.sroa.0.0, i64 %region.sroa.8.0
  %_11.not1.i = icmp samesign eq i64 %presorted_len.sroa.0.0, %region.sroa.8.0
  br i1 %_11.not1.i, label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E.exit, label %bb5.preheader.i

bb5.preheader.i:                                  ; preds = %bb3.i
  %1 = getelementptr inbounds nuw i32, ptr %region.sroa.0.0, i64 %presorted_len.sroa.0.0
  br label %bb5.i

bb5.i:                                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i, %bb5.preheader.i
  %tail.sroa.0.02.i = phi ptr [ %_15.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i ], [ %1, %bb5.preheader.i ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %_3.i.i.i.i = load i32, ptr %tail.sroa.0.02.i, align 4, !alias.scope !1108, !noalias !1111, !noundef !3
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1112, !noalias !1113, !noundef !3
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i.i.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i

bb4.i.i:                                          ; preds = %bb5.i, %bb6.i.i
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb6.i.i ], [ %tail.sroa.0.02.i, %bb5.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %4, %bb6.i.i ], [ %2, %bb5.i ]
  %3 = load i32, ptr %sift.sroa.0.0.i.i, align 4, !alias.scope !1114
  store i32 %3, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1114
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %region.sroa.0.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i2.i.i = load i32, ptr %4, align 4, !alias.scope !1115, !noalias !1120, !noundef !3
  %_0.i.i3.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i2.i.i
  br i1 %_0.i.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb6.i.i, %bb4.i.i
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0.i.i, align 4, !alias.scope !1114, !noalias !1123
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i: ; preds = %bb10.i.i, %bb5.i
  %_15.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02.i, i64 4
  %_11.not.i = icmp eq ptr %_15.i, %v_end.i
  br i1 %_11.not.i, label %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E.exit, label %bb5.i

_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E.exit: ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit.i, %bb3.i
  br i1 %no_merge, label %bb23.sink.split, label %bb19

bb19:                                             ; preds = %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E.exit
  %_26.not = icmp eq ptr %region.sroa.0.0, %v.0
  br i1 %_26.not, label %bb8, label %bb20

bb20:                                             ; preds = %bb19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %count1.i = add nsw i64 %v.1, -1
  %5 = getelementptr inbounds nuw i32, ptr %stack_array, i64 %count1.i
  %6 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1.i
  %7 = getelementptr i32, ptr %v.0, i64 %len_div_26
  %8 = getelementptr i8, ptr %7, i64 -4
  br label %bb15.i

bb16.i:                                           ; preds = %bb15.i
  %9 = getelementptr i8, ptr %14, i64 4
  %10 = getelementptr i8, ptr %13, i64 4
  %_44.i = and i64 %v.1, 1
  %_22.i = icmp eq i64 %_44.i, 0
  br i1 %_22.i, label %bb9.i, label %bb5.i7

bb15.i:                                           ; preds = %bb15.i, %bb20
  %dst.sroa.0.029.i = phi ptr [ %_16.i.i, %bb15.i ], [ %stack_array, %bb20 ]
  %iter.sroa.0.028.i = phi i64 [ %_39.i, %bb15.i ], [ 0, %bb20 ]
  %left.sroa.0.027.i = phi ptr [ %_14.i.i, %bb15.i ], [ %v.0, %bb20 ]
  %right.sroa.0.026.i = phi ptr [ %_12.i.i, %bb15.i ], [ %7, %bb20 ]
  %left_rev.sroa.0.025.i = phi ptr [ %14, %bb15.i ], [ %8, %bb20 ]
  %right_rev.sroa.0.024.i = phi ptr [ %13, %bb15.i ], [ %6, %bb20 ]
  %dst_rev.sroa.0.023.i = phi ptr [ %15, %bb15.i ], [ %5, %bb20 ]
  %_39.i = add nuw nsw i64 %iter.sroa.0.028.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142), !noalias !1139
  %_3.i.i.i = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1144, !noalias !1145, !noundef !3
  %_4.i.i.i = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1146, !noalias !1147, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18.i = xor i1 %_0.i.i.i, true
  %11 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %11, ptr %dst.sroa.0.029.i, align 4, !noalias !1148
  %count.i.i = zext i1 %_0.i.i.i to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155), !noalias !1158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161), !noalias !1158
  %_3.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1163, !noalias !1164, !noundef !3
  %_4.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1165, !noalias !1166, !noundef !3
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %12 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %12, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1167
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %13 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %14 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %15 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_26
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i7:                                           ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %9
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %16 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1128
  store i32 %16, ptr %_16.i.i, align 4, !noalias !1128
  %count2.i = zext i1 %left_nonempty.i to i64
  %_26.i = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i
  %_30.i = xor i1 %left_nonempty.i, true
  %count3.i = zext i1 %_30.i to i64
  %_28.i = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count3.i
  br label %bb9.i

bb9.i:                                            ; preds = %bb5.i7, %bb16.i
  %right.sroa.0.1.i = phi ptr [ %_12.i.i, %bb16.i ], [ %_28.i, %bb5.i7 ]
  %left.sroa.0.1.i = phi ptr [ %_14.i.i, %bb16.i ], [ %_26.i, %bb5.i7 ]
  %_31.i = icmp ne ptr %left.sroa.0.1.i, %9
  %_32.i = icmp ne ptr %right.sroa.0.1.i, %10
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE.exit, !prof !548

bb13.i:                                           ; preds = %bb9.i
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26, !noalias !1128
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE.exit: ; preds = %bb9.i
  %17 = shl nuw nsw i64 %v.1, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %stack_array, i64 %17, i1 false)
  br label %bb23.sink.split

bb23.sink.split:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E.exit, %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE.exit
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack_array)
  br label %bb23

bb23:                                             ; preds = %bb23.sink.split, %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #5 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174), !noalias !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180), !noalias !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182), !noalias !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185), !noalias !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187), !noalias !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190), !noalias !1177
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1192, !noalias !1193, !noundef !3
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1194, !noalias !1195, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1196
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203), !noalias !1206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209), !noalias !1206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211), !noalias !1206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214), !noalias !1206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216), !noalias !1206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219), !noalias !1206
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1221, !noalias !1222, !noundef !3
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1223, !noalias !1224, !noundef !3
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1225
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !548

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232), !noalias !1235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238), !noalias !1235
  %_3.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1240, !noalias !1241, !noundef !3
  %_4.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1242, !noalias !1243, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %is_l.i18 = xor i1 %_0.i.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i, i32 %_4.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1244
  %count.i = zext i1 %_0.i.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251), !noalias !1254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257), !noalias !1254
  %_3.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1259, !noalias !1260, !noundef !3
  %_4.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1261, !noalias !1262, !noundef !3
  %_0.i.i21 = icmp slt i32 %_3.i.i19, %_4.i.i20
  %is_l.i = xor i1 %_0.i.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19, i32 %_4.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1263
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !548

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h328e090c5329e1daE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1285, !noalias !1286, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1286, !noalias !1285, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1287, !noalias !1296, !noundef !3
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1301
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %_3.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1316, !noalias !1317, !noundef !3
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !1317, !noalias !1316, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1318, !noalias !1323, !noundef !3
  %_0.i.i3.i = icmp slt i32 %_3.i.i.i, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1326
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3cb696bdb25ec5efE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb0cbdea04def2101E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb0cbdea04def2101E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1351, !noalias !1352, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1352, !noalias !1351, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1373, !noalias !1374, !noundef !3
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1374, !noalias !1373, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1395, !noalias !1396, !noundef !3
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1396, !noalias !1395, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1417, !noalias !1418, !noundef !3
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1418, !noalias !1417, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1439, !noalias !1440, !noundef !3
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1440, !noalias !1439, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1461, !noalias !1462, !noundef !3
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1462, !noalias !1461, !noundef !3
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1483, !noalias !1484, !noundef !3
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1484, !noalias !1483, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1505, !noalias !1506, !noundef !3
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1506, !noalias !1505, !noundef !3
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1527, !noalias !1528, !noundef !3
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1528, !noalias !1527, !noundef !3
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !3
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !3
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !3
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1549, !noalias !1550, !noundef !3
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1550, !noalias !1549, !noundef !3
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1551
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1551, !noundef !3
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1565
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1580, !noalias !1581, !noundef !3
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1582, !noalias !1583, !noundef !3
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1584
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591), !noalias !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597), !noalias !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599), !noalias !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602), !noalias !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604), !noalias !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607), !noalias !1594
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1609, !noalias !1610, !noundef !3
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1611, !noalias !1612, !noundef !3
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1613
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1554
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1554
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !548

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1615
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1620, !noalias !1629, !noundef !3
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1634, !noalias !1643, !noundef !3
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1648
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0f4f2610dc4a1274E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he2b0b0c2192646b6E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8f40b1ab8dfb694cE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias nonnull align 1 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8f40b1ab8dfb694cE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias nonnull align 1 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1663, !noalias !1664, !noundef !3
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1664, !noalias !1663, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1675, !noalias !1676, !noundef !3
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1676, !noalias !1675, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1687, !noalias !1688, !noundef !3
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1688, !noalias !1687, !noundef !3
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1699, !noalias !1700, !noundef !3
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1700, !noalias !1699, !noundef !3
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !3
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1711, !noalias !1712, !noundef !3
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1712, !noalias !1711, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %_3.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1723, !noalias !1724, !noundef !3
  %_4.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1724, !noalias !1723, !noundef !3
  %_0.i.i.i16 = icmp slt i32 %_3.i.i.i14, %_4.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %_3.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1735, !noalias !1736, !noundef !3
  %_4.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1736, !noalias !1735, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %_3.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1747, !noalias !1748, !noundef !3
  %_4.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1748, !noalias !1747, !noundef !3
  %_0.i.i12.i33 = icmp slt i32 %_3.i.i10.i31, %_4.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %_3.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1759, !noalias !1760, !noundef !3
  %_4.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1760, !noalias !1759, !noundef !3
  %_0.i.i15.i36 = icmp slt i32 %_3.i.i13.i34, %_4.i.i14.i35
  %10 = select i1 %_0.i.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !3
  %11 = select i1 %_0.i.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !3
  %12 = select i1 %_0.i.i12.i33, ptr %a.i23, ptr %11, !unpredictable !3
  %13 = select i1 %_0.i.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !3
  %14 = select i1 %_0.i.i15.i36, ptr %d.i30, ptr %13, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %_3.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1771, !noalias !1772, !noundef !3
  %_4.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1772, !noalias !1771, !noundef !3
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1773
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1773, !noundef !3
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784), !noalias !1787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790), !noalias !1787
  %_3.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1792, !noalias !1793, !noundef !3
  %_4.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1794, !noalias !1795, !noundef !3
  %_0.i.i.i51 = icmp slt i32 %_3.i.i.i49, %_4.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i49, i32 %_4.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1796
  %count.i.i = zext i1 %_0.i.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1803), !noalias !1806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809), !noalias !1806
  %_3.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1811, !noalias !1812, !noundef !3
  %_4.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1813, !noalias !1814, !noundef !3
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1815
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1776
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1776
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !548

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1817
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1822, !noalias !1827, !noundef !3
  %_0.i.i.i57 = icmp slt i32 %40, %_4.i.i.i56
  br i1 %_0.i.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1830, !noalias !1835, !noundef !3
  %_0.i.i3.i = icmp slt i32 %40, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1838
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3fcb6cda03f30c58E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hf227ec475d5644a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1843
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1846, !noalias !1843, !noundef !3
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1847, !noalias !1843, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit", !prof !1848

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1843
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #27
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1843, !nonnull !3, !noundef !3
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1843
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h53a9a12eba4932d5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h9745e972bd2323e3E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #8 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h68699b88c717b57eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1869, !noalias !1870, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1870, !noalias !1869, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1891, !noalias !1892, !noundef !3
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1892, !noalias !1891, !noundef !3
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1913, !noalias !1914, !noundef !3
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1914, !noalias !1913, !noundef !3
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6c676ebac3f4c3efE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1915, !noalias !1920, !noundef !3
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1922, !noalias !1923
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1915, !noalias !1920
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1922, !noalias !1923
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1915, !noalias !1920, !noundef !3
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1922, !noalias !1923
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1915, !noalias !1920
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1922, !noalias !1923
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1915, !noalias !1920, !noundef !3
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1922, !noalias !1923
  store i32 %14, ptr %gep27, align 4, !alias.scope !1915, !noalias !1920
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1922, !noalias !1923
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h737bbc61bdbabc67E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h53a9a12eba4932d5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h68699b88c717b57eE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !3
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !3
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1929
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1950, !noalias !1951, !noundef !3
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1954, !noalias !1955, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1924, !noalias !1956
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1977, !noalias !1978, !noundef !3
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1981, !noalias !1982, !noundef !3
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1924, !noalias !1983
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1929, !noalias !1984
  br label %_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit

_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h5eb8da92e2547b23E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf0f9edc17432b042E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !2009, !noalias !2010, !noundef !3
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2010, !noalias !2009, !noundef !3
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6bc68e1ff7ef254fE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #10 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2031, !noalias !2032, !noundef !3
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2032, !noalias !2031, !noundef !3
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
define void @_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2053, !noalias !2054, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2057, !noalias !2058, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2059
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2080, !noalias !2081, !noundef !3
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2084, !noalias !2085, !noundef !3
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2086
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2087
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h06ca78a5f7505fb3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #6 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2092

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2118, !noalias !2119, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2119, !noalias !2118, !noundef !3
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2120
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2148, !noalias !2149, !noundef !3
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2149, !noalias !2148, !noundef !3
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2150
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2178, !noalias !2179, !noundef !3
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2179, !noalias !2178, !noundef !3
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2180
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2208, !noalias !2209, !noundef !3
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2209, !noalias !2208, !noundef !3
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2210
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2238, !noalias !2239, !noundef !3
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2239, !noalias !2238, !noundef !3
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2240
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2243
  store i32 %13, ptr %dst.i68, align 4, !noalias !2243
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2246

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e3ce3d1499f1531E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #6 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2092

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2268, !noalias !2269, !noundef !3
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2269, !noalias !2268, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2270
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2293, !noalias !2294, !noundef !3
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2294, !noalias !2293, !noundef !3
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2295
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2318, !noalias !2319, !noundef !3
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2319, !noalias !2318, !noundef !3
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2320
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2343, !noalias !2344, !noundef !3
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2344, !noalias !2343, !noundef !3
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2345
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2368, !noalias !2369, !noundef !3
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2369, !noalias !2368, !noundef !3
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2370
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2373
  store i32 %13, ptr %dst.i68, align 4, !noalias !2373
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2376

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !3
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !3
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #7 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3cb696bdb25ec5efE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h82c3dc874e93e11dE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382), !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2388), !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2390), !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2393), !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2395), !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2398), !noalias !2385
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2400, !noalias !2403, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2405, !noalias !2406, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2407, !noalias !2416, !noundef !3
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !3
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h53a9a12eba4932d5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2421, !noalias !2430, !noundef !3
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e3ce3d1499f1531E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit", !prof !1848

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #26, !noalias !2435
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9594291d30e3bd2eE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h06ca78a5f7505fb3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1848

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #26
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::unstable::ipnsort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hb2c8f1a0ce6ba387E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #7 {
start:
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  %_3.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2449, !noalias !2450, !noundef !3
  %_4.i.i = load i32, ptr %v.0, align 4, !alias.scope !2450, !noalias !2449, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_10.i12.not = icmp eq i64 %v.1, 2
  br i1 %_0.i.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i12.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i12.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep23 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i10 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i10
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %_3.i.i2 = load i32, ptr %0, align 4, !alias.scope !2461, !noalias !2462, !noundef !3
  %_4.i.i3 = load i32, ptr %gep, align 4, !alias.scope !2462, !noalias !2461, !noundef !3
  %_0.i.i4 = icmp slt i32 %_3.i.i2, %_4.i.i3
  br i1 %_0.i.i4, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i10, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i13 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i13
  %gep24 = getelementptr i32, ptr %invariant.gep23, i64 %run_len.sroa.0.1.i13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %_3.i.i5 = load i32, ptr %2, align 4, !alias.scope !2473, !noalias !2474, !noundef !3
  %_4.i.i6 = load i32, ptr %gep24, align 4, !alias.scope !2474, !noalias !2473, !noundef !3
  %_0.i.i7 = icmp slt i32 %_3.i.i5, %_4.i.i6
  br i1 %_0.i.i7, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i13, 1
  %exitcond18.not = icmp eq i64 %3, %v.1
  br i1 %exitcond18.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %start
  %_0.sroa.3.0.i = phi i1 [ false, %start ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %start ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i13, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i10, %bb12.i ], [ %v.1, %bb15.i ]
  %_8 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_8)
  %_9 = icmp eq i64 %_0.sroa.0.0.i, %v.1
  br i1 %_9, label %bb2, label %bb9

bb2:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit
  br i1 %_0.sroa.3.0.i, label %bb3, label %bb6

bb9:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc0c650af6cae778dE.exit
  %self = or i64 %v.1, 1
  %4 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %log = shl nuw nsw i32 %5, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::unstable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h2592ed822cbeb905E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %limit, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb6

bb6.loopexit.unr-lcssa:                           ; preds = %bb5.i.i, %bb5.i.i.preheader
  %i.sroa.0.016.i.i.unr = phi i64 [ 0, %bb5.i.i.preheader ], [ %17, %bb5.i.i ]
  %6 = and i64 %v.1, 2
  %lcmp.mod.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod.not, label %bb6, label %bb5.i.i.epil

bb5.i.i.epil:                                     ; preds = %bb6.loopexit.unr-lcssa
  %7 = xor i64 %i.sroa.0.016.i.i.unr, -1
  %x.i.i.epil = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr i32, ptr %end.i, i64 %7
  %8 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2475, !noalias !2480, !noundef !3
  %9 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2482, !noalias !2483
  store i32 %9, ptr %x.i.i.epil, align 4, !alias.scope !2475, !noalias !2480
  store i32 %8, ptr %y.i.i.epil, align 4, !alias.scope !2482, !noalias !2483
  br label %bb6

bb6:                                              ; preds = %bb5.i.i.epil, %bb6.loopexit.unr-lcssa, %bb3, %bb2, %bb9
  ret void

bb3:                                              ; preds = %bb2
  %half_len2.i = lshr i64 %v.1, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  br i1 %_4.i, label %bb6, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb3
  %10 = icmp eq i64 %half_len2.i, 1
  br i1 %10, label %bb6.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 1152921504606846974
  %invariant.gep25 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %17, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %11 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %11
  %12 = load i32, ptr %x.i.i, align 4, !alias.scope !2475, !noalias !2480, !noundef !3
  %13 = load i32, ptr %y.i.i, align 4, !alias.scope !2482, !noalias !2483
  store i32 %13, ptr %x.i.i, align 4, !alias.scope !2475, !noalias !2480
  store i32 %12, ptr %y.i.i, align 4, !alias.scope !2482, !noalias !2483
  %14 = xor i64 %i.sroa.0.016.i.i, -2
  %gep26 = getelementptr inbounds i32, ptr %invariant.gep25, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %14
  %15 = load i32, ptr %gep26, align 4, !alias.scope !2475, !noalias !2480, !noundef !3
  %16 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2482, !noalias !2483
  store i32 %16, ptr %gep26, align 4, !alias.scope !2475, !noalias !2480
  store i32 %15, ptr %y.i.i.1, align 4, !alias.scope !2482, !noalias !2483
  %17 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb6.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::unstable::heapsort::heapsort
; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h865ec352a4fa74f7E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #11 personality ptr @rust_eh_personality {
start:
  %_75 = lshr i64 %v.1, 1
  %_6 = add nuw nsw i64 %_75, %v.1
  %_17.not13 = icmp eq i64 %_6, 0
  br i1 %_17.not13, label %bb7, label %bb6

bb7:                                              ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit, %start
  ret void

bb6:                                              ; preds = %start, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit
  %iter.sroa.2.014 = phi i64 [ %_20, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit ], [ %_6, %start ]
  %_20 = add nsw i64 %iter.sroa.2.014, -1
  %_12.not = icmp ult i64 %_20, %v.1
  br i1 %_12.not, label %bb11, label %bb2

bb2:                                              ; preds = %bb6
  %0 = sub nuw nsw i64 %_20, %v.1
  br label %bb4

bb11:                                             ; preds = %bb6
  %pb = getelementptr inbounds nuw i32, ptr %v.0, i64 %_20
  %tmp.sroa.0.0.copyload.i = load i32, ptr %v.0, align 4
  %1 = load i32, ptr %pb, align 4
  store i32 %1, ptr %v.0, align 4
  store i32 %tmp.sroa.0.0.copyload.i, ptr %pb, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb11
  %sift_idx.sroa.0.0 = phi i64 [ %0, %bb2 ], [ 0, %bb11 ]
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %_20)
  %_4.i = icmp ule i64 %sift_idx.sroa.0.0, %_0.sroa.0.0.i
  tail call void @llvm.assume(i1 %_4.i)
  %_9.i9 = shl nuw nsw i64 %sift_idx.sroa.0.0, 1
  %2 = or disjoint i64 %_9.i9, 1
  %_11.not.i10 = icmp samesign ult i64 %2, %_0.sroa.0.0.i
  br i1 %_11.not.i10, label %bb3.i, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit

bb3.i:                                            ; preds = %bb4, %bb9.i
  %3 = phi i64 [ %5, %bb9.i ], [ %2, %bb4 ]
  %_9.i12 = phi i64 [ %_9.i, %bb9.i ], [ %_9.i9, %bb4 ]
  %node.sroa.0.0.i11 = phi i64 [ %child.sroa.0.0.i, %bb9.i ], [ %sift_idx.sroa.0.0, %bb4 ]
  %_14.i = add nuw nsw i64 %_9.i12, 2
  %_13.i = icmp samesign ult i64 %_14.i, %_0.sroa.0.0.i
  br i1 %_13.i, label %bb4.i, label %bb7.i

bb4.i:                                            ; preds = %bb3.i
  %_20.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %3
  %_23.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_14.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %_3.i.i = load i32, ptr %_20.i, align 4, !alias.scope !2494, !noalias !2495, !noundef !3
  %_4.i.i = load i32, ptr %_23.i, align 4, !alias.scope !2495, !noalias !2494, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_16.i = zext i1 %_0.i.i to i64
  %4 = add nuw nsw i64 %3, %_16.i
  br label %bb7.i

bb7.i:                                            ; preds = %bb4.i, %bb3.i
  %child.sroa.0.0.i = phi i64 [ %4, %bb4.i ], [ %3, %bb3.i ]
  %_29.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %node.sroa.0.0.i11
  %_32.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %child.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %_3.i.i6 = load i32, ptr %_29.i, align 4, !alias.scope !2506, !noalias !2507, !noundef !3
  %_4.i.i7 = load i32, ptr %_32.i, align 4, !alias.scope !2507, !noalias !2506, !noundef !3
  %_0.i.i8 = icmp slt i32 %_3.i.i6, %_4.i.i7
  br i1 %_0.i.i8, label %bb9.i, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit

bb9.i:                                            ; preds = %bb7.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  store i32 %_4.i.i7, ptr %_29.i, align 4, !alias.scope !2508, !noalias !2511
  store i32 %_3.i.i6, ptr %_32.i, align 4, !alias.scope !2511, !noalias !2508
  %_9.i = shl nuw nsw i64 %child.sroa.0.0.i, 1
  %5 = or disjoint i64 %_9.i, 1
  %_11.not.i = icmp samesign ult i64 %5, %_0.sroa.0.0.i
  br i1 %_11.not.i, label %bb3.i, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit

_ZN4core5slice4sort8unstable8heapsort9sift_down17h9e28ee90b6700fc9E.exit: ; preds = %bb7.i, %bb9.i, %bb4
  %_17.not = icmp eq i64 %_20, 0
  br i1 %_17.not, label %bb7, label %bb6
}

; core::slice::sort::unstable::quicksort::partition_lomuto_branchless_cyclic
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %pivot, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #10 personality ptr @rust_eh_personality {
start:
  %gap_value = alloca [4 x i8], align 4
  %_6 = icmp eq i64 %v.1, 0
  br i1 %_6, label %bb18, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value)
  %value = load i32, ptr %v.0, align 4, !noundef !3
  store i32 %value, ptr %gap_value, align 4
  %0 = getelementptr i32, ptr %v.0, i64 %v.1
  %unroll_end = getelementptr i8, ptr %0, i64 -4
  %state.sroa.13.031 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  %_2132 = icmp ult ptr %state.sroa.13.031, %unroll_end
  br i1 %_2132, label %bb5.lr.ph, label %bb12.preheader

bb5.lr.ph:                                        ; preds = %bb2
  %_4.i.i.i5 = load i32, ptr %pivot, align 4, !alias.scope !2513, !noalias !2518, !noundef !3
  br label %bb5

bb12.preheader:                                   ; preds = %bb5, %bb2
  %state.sroa.0.0.lcssa = phi ptr [ %v.0, %bb2 ], [ %_17.i13, %bb5 ]
  %state.sroa.23.0.lcssa = phi i64 [ 0, %bb2 ], [ %7, %bb5 ]
  %state.sroa.13.0.lcssa = phi ptr [ %state.sroa.13.031, %bb2 ], [ %state.sroa.13.0, %bb5 ]
  %_4.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2524, !noalias !2529, !noundef !3
  br label %bb12

bb12:                                             ; preds = %bb12.preheader, %bb12
  %state.sroa.0.1 = phi ptr [ %_39.sroa.0.0, %bb12 ], [ %state.sroa.0.0.lcssa, %bb12.preheader ]
  %state.sroa.13.1 = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12 ], [ %state.sroa.13.0.lcssa, %bb12.preheader ]
  %state.sroa.23.1 = phi i64 [ %3, %bb12 ], [ %state.sroa.23.0.lcssa, %bb12.preheader ]
  %is_done = icmp eq ptr %state.sroa.13.1, %0
  %_39.sroa.0.0 = select i1 %is_done, ptr %gap_value, ptr %state.sroa.13.1
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  %_3.i.i.i = load i32, ptr %_39.sroa.0.0, align 4, !alias.scope !2539, !noalias !2540, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %left.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %state.sroa.23.1
  %1 = load i32, ptr %left.i, align 4, !noalias !2541
  store i32 %1, ptr %state.sroa.0.1, align 4, !noalias !2541
  %2 = load i32, ptr %_39.sroa.0.0, align 4, !noalias !2541
  store i32 %2, ptr %left.i, align 4, !noalias !2541
  %_16.i = zext i1 %_0.i.i.i to i64
  %3 = add i64 %state.sroa.23.1, %_16.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done, ptr %gap_value, ptr %state.sroa.13.1
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done, label %bb17, label %bb12

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value)
  br label %bb18

bb18:                                             ; preds = %start, %bb17
  %_0.sroa.0.0 = phi i64 [ %3, %bb17 ], [ 0, %start ]
  ret i64 %_0.sroa.0.0

bb5:                                              ; preds = %bb5.lr.ph, %bb5
  %state.sroa.13.035 = phi ptr [ %state.sroa.13.031, %bb5.lr.ph ], [ %state.sroa.13.0, %bb5 ]
  %state.sroa.23.034 = phi i64 [ 0, %bb5.lr.ph ], [ %7, %bb5 ]
  %state.sroa.0.033 = phi ptr [ %v.0, %bb5.lr.ph ], [ %_17.i13, %bb5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %_3.i.i.i4 = load i32, ptr %state.sroa.13.035, align 4, !alias.scope !2546, !noalias !2547, !noundef !3
  %_0.i.i.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  %left.i10 = getelementptr inbounds nuw i32, ptr %v.0, i64 %state.sroa.23.034
  %4 = load i32, ptr %left.i10, align 4, !noalias !2548
  store i32 %4, ptr %state.sroa.0.033, align 4, !noalias !2548
  store i32 %_3.i.i.i4, ptr %left.i10, align 4, !noalias !2548
  %_16.i12 = zext i1 %_0.i.i.i6 to i64
  %5 = add i64 %state.sroa.23.034, %_16.i12
  %_17.i13 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033, i64 8
  %_3.i.i.i16 = load i32, ptr %_17.i13, align 4, !alias.scope !2549, !noalias !2554, !noundef !3
  %_0.i.i.i18 = icmp slt i32 %_3.i.i.i16, %_4.i.i.i5
  %left.i22 = getelementptr inbounds nuw i32, ptr %v.0, i64 %5
  %6 = load i32, ptr %left.i22, align 4, !noalias !2560
  store i32 %6, ptr %state.sroa.13.035, align 4, !noalias !2560
  store i32 %_3.i.i.i16, ptr %left.i22, align 4, !noalias !2560
  %_16.i24 = zext i1 %_0.i.i.i18 to i64
  %7 = add i64 %5, %_16.i24
  %state.sroa.13.0 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033, i64 12
  %_21 = icmp ult ptr %state.sroa.13.0, %unroll_end
  br i1 %_21, label %bb5, label %bb12.preheader
}

; core::slice::sort::unstable::quicksort::partition_lomuto_branchless_cyclic
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %pivot, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #10 personality ptr @rust_eh_personality {
start:
  %gap_value = alloca [4 x i8], align 4
  %_6 = icmp eq i64 %v.1, 0
  br i1 %_6, label %bb18, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value)
  %value = load i32, ptr %v.0, align 4, !noundef !3
  store i32 %value, ptr %gap_value, align 4
  %0 = getelementptr i32, ptr %v.0, i64 %v.1
  %unroll_end = getelementptr i8, ptr %0, i64 -4
  %state.sroa.13.031 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  %_2132 = icmp ult ptr %state.sroa.13.031, %unroll_end
  br i1 %_2132, label %bb5.lr.ph, label %bb12.preheader

bb5.lr.ph:                                        ; preds = %bb2
  %_3.i.i.i.i4 = load i32, ptr %pivot, align 4, !alias.scope !2561, !noalias !2568, !noundef !3
  br label %bb5

bb12.preheader:                                   ; preds = %bb5, %bb2
  %state.sroa.0.0.lcssa = phi ptr [ %v.0, %bb2 ], [ %_17.i13, %bb5 ]
  %state.sroa.23.0.lcssa = phi i64 [ 0, %bb2 ], [ %7, %bb5 ]
  %state.sroa.13.0.lcssa = phi ptr [ %state.sroa.13.031, %bb2 ], [ %state.sroa.13.0, %bb5 ]
  %_3.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2575, !noalias !2582, !noundef !3
  br label %bb12

bb12:                                             ; preds = %bb12.preheader, %bb12
  %state.sroa.0.1 = phi ptr [ %_39.sroa.0.0, %bb12 ], [ %state.sroa.0.0.lcssa, %bb12.preheader ]
  %state.sroa.13.1 = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12 ], [ %state.sroa.13.0.lcssa, %bb12.preheader ]
  %state.sroa.23.1 = phi i64 [ %3, %bb12 ], [ %state.sroa.23.0.lcssa, %bb12.preheader ]
  %is_done = icmp eq ptr %state.sroa.13.1, %0
  %_39.sroa.0.0 = select i1 %is_done, ptr %gap_value, ptr %state.sroa.13.1
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %_4.i.i.i.i = load i32, ptr %_39.sroa.0.0, align 4, !alias.scope !2595, !noalias !2596, !noundef !3
  %_0.i.i.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %left.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %state.sroa.23.1
  %1 = load i32, ptr %left.i, align 4, !noalias !2597
  store i32 %1, ptr %state.sroa.0.1, align 4, !noalias !2597
  %2 = load i32, ptr %_39.sroa.0.0, align 4, !noalias !2597
  store i32 %2, ptr %left.i, align 4, !noalias !2597
  %_16.i = zext i1 %_0.i.i.i.i to i64
  %3 = add i64 %state.sroa.23.1, %_16.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done, ptr %gap_value, ptr %state.sroa.13.1
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done, label %bb17, label %bb12

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value)
  br label %bb18

bb18:                                             ; preds = %start, %bb17
  %_0.sroa.0.0 = phi i64 [ %3, %bb17 ], [ 0, %start ]
  ret i64 %_0.sroa.0.0

bb5:                                              ; preds = %bb5.lr.ph, %bb5
  %state.sroa.13.035 = phi ptr [ %state.sroa.13.031, %bb5.lr.ph ], [ %state.sroa.13.0, %bb5 ]
  %state.sroa.23.034 = phi i64 [ 0, %bb5.lr.ph ], [ %7, %bb5 ]
  %state.sroa.0.033 = phi ptr [ %v.0, %bb5.lr.ph ], [ %_17.i13, %bb5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %_4.i.i.i.i5 = load i32, ptr %state.sroa.13.035, align 4, !alias.scope !2604, !noalias !2605, !noundef !3
  %_0.i.i.i.i6 = icmp sge i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  %left.i10 = getelementptr inbounds nuw i32, ptr %v.0, i64 %state.sroa.23.034
  %4 = load i32, ptr %left.i10, align 4, !noalias !2606
  store i32 %4, ptr %state.sroa.0.033, align 4, !noalias !2606
  store i32 %_4.i.i.i.i5, ptr %left.i10, align 4, !noalias !2606
  %_16.i12 = zext i1 %_0.i.i.i.i6 to i64
  %5 = add i64 %state.sroa.23.034, %_16.i12
  %_17.i13 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033, i64 8
  %_4.i.i.i.i17 = load i32, ptr %_17.i13, align 4, !alias.scope !2607, !noalias !2614, !noundef !3
  %_0.i.i.i.i18 = icmp sge i32 %_3.i.i.i.i4, %_4.i.i.i.i17
  %left.i22 = getelementptr inbounds nuw i32, ptr %v.0, i64 %5
  %6 = load i32, ptr %left.i22, align 4, !noalias !2621
  store i32 %6, ptr %state.sroa.13.035, align 4, !noalias !2621
  store i32 %_4.i.i.i.i17, ptr %left.i22, align 4, !noalias !2621
  %_16.i24 = zext i1 %_0.i.i.i.i18 to i64
  %7 = add i64 %5, %_16.i24
  %state.sroa.13.0 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033, i64 12
  %_21 = icmp ult ptr %state.sroa.13.0, %unroll_end
  br i1 %_21, label %bb5, label %bb12.preheader
}

; core::slice::sort::unstable::quicksort::partition
; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i64 0, 2305843009213693951) i64 @_ZN4core5slice4sort8unstable9quicksort9partition17h0abfc0ef8ccdda0eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %pivot, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %gap_value.i = alloca [4 x i8], align 4
  %_5 = icmp eq i64 %v.1, 0
  br i1 %_5, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %_6.not = icmp ult i64 %pivot, %v.1
  br i1 %_6.not, label %bb4, label %bb3

bb4:                                              ; preds = %bb2
  %_10.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot
  %tmp.sroa.0.0.copyload.i.i = load i32, ptr %v.0, align 4, !alias.scope !2622
  %0 = load i32, ptr %_10.i, align 4, !alias.scope !2622
  store i32 %0, ptr %v.0, align 4, !alias.scope !2622
  store i32 %tmp.sroa.0.0.copyload.i.i, ptr %_10.i, align 4, !alias.scope !2622
  %1 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %_6.i = icmp eq i64 %v.1, 1
  br i1 %_6.i, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE.exit, label %bb2.i

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb2.i:                                            ; preds = %bb4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value.i), !noalias !2630
  %value.i = load i32, ptr %1, align 4, !alias.scope !2625, !noalias !2628, !noundef !3
  store i32 %value.i, ptr %gap_value.i, align 4, !noalias !2630
  %2 = getelementptr i32, ptr %v.0, i64 %v.1
  %unroll_end.i = getelementptr i8, ptr %2, i64 -4
  %state.sroa.13.031.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %_2132.i = icmp ult ptr %state.sroa.13.031.i, %unroll_end.i
  br i1 %_2132.i, label %bb5.lr.ph.i, label %bb12.preheader.i

bb5.lr.ph.i:                                      ; preds = %bb2.i
  %_4.i.i.i5.i = load i32, ptr %v.0, align 4, !alias.scope !2631, !noalias !2636, !noundef !3
  br label %bb5.i

bb12.preheader.i:                                 ; preds = %bb5.i, %bb2.i
  %state.sroa.0.0.lcssa.i = phi ptr [ %1, %bb2.i ], [ %_17.i13.i, %bb5.i ]
  %state.sroa.23.0.lcssa.i = phi i64 [ 0, %bb2.i ], [ %9, %bb5.i ]
  %state.sroa.13.0.lcssa.i = phi ptr [ %state.sroa.13.031.i, %bb2.i ], [ %state.sroa.13.0.i, %bb5.i ]
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2642, !noalias !2647, !noundef !3
  br label %bb12.i

bb12.i:                                           ; preds = %bb12.i, %bb12.preheader.i
  %state.sroa.0.1.i = phi ptr [ %_39.sroa.0.0.i, %bb12.i ], [ %state.sroa.0.0.lcssa.i, %bb12.preheader.i ]
  %state.sroa.13.1.i = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12.i ], [ %state.sroa.13.0.lcssa.i, %bb12.preheader.i ]
  %state.sroa.23.1.i = phi i64 [ %5, %bb12.i ], [ %state.sroa.23.0.lcssa.i, %bb12.preheader.i ]
  %is_done.i = icmp eq ptr %state.sroa.13.1.i, %2
  %_39.sroa.0.0.i = select i1 %is_done.i, ptr %gap_value.i, ptr %state.sroa.13.1.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %_3.i.i.i.i = load i32, ptr %_39.sroa.0.0.i, align 4, !alias.scope !2657, !noalias !2658, !noundef !3
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %left.i.i = getelementptr inbounds nuw i32, ptr %1, i64 %state.sroa.23.1.i
  %3 = load i32, ptr %left.i.i, align 4, !alias.scope !2625, !noalias !2659
  store i32 %3, ptr %state.sroa.0.1.i, align 4, !noalias !2659
  %4 = load i32, ptr %_39.sroa.0.0.i, align 4, !noalias !2659
  store i32 %4, ptr %left.i.i, align 4, !alias.scope !2625, !noalias !2659
  %_16.i.i = zext i1 %_0.i.i.i.i to i64
  %5 = add i64 %state.sroa.23.1.i, %_16.i.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done.i, ptr %gap_value.i, ptr %state.sroa.13.1.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done.i, label %bb17.i, label %bb12.i

bb17.i:                                           ; preds = %bb12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value.i), !noalias !2630
  br label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE.exit

bb5.i:                                            ; preds = %bb5.i, %bb5.lr.ph.i
  %state.sroa.13.035.i = phi ptr [ %state.sroa.13.031.i, %bb5.lr.ph.i ], [ %state.sroa.13.0.i, %bb5.i ]
  %state.sroa.23.034.i = phi i64 [ 0, %bb5.lr.ph.i ], [ %9, %bb5.i ]
  %state.sroa.0.033.i = phi ptr [ %1, %bb5.lr.ph.i ], [ %_17.i13.i, %bb5.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %_3.i.i.i4.i = load i32, ptr %state.sroa.13.035.i, align 4, !alias.scope !2664, !noalias !2665, !noundef !3
  %_0.i.i.i6.i = icmp slt i32 %_3.i.i.i4.i, %_4.i.i.i5.i
  %left.i10.i = getelementptr inbounds nuw i32, ptr %1, i64 %state.sroa.23.034.i
  %6 = load i32, ptr %left.i10.i, align 4, !alias.scope !2625, !noalias !2666
  store i32 %6, ptr %state.sroa.0.033.i, align 4, !alias.scope !2625, !noalias !2666
  store i32 %_3.i.i.i4.i, ptr %left.i10.i, align 4, !alias.scope !2625, !noalias !2666
  %_16.i12.i = zext i1 %_0.i.i.i6.i to i64
  %7 = add i64 %state.sroa.23.034.i, %_16.i12.i
  %_17.i13.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i, i64 8
  %_3.i.i.i16.i = load i32, ptr %_17.i13.i, align 4, !alias.scope !2667, !noalias !2672, !noundef !3
  %_0.i.i.i18.i = icmp slt i32 %_3.i.i.i16.i, %_4.i.i.i5.i
  %left.i22.i = getelementptr inbounds nuw i32, ptr %1, i64 %7
  %8 = load i32, ptr %left.i22.i, align 4, !alias.scope !2625, !noalias !2678
  store i32 %8, ptr %state.sroa.13.035.i, align 4, !alias.scope !2625, !noalias !2678
  store i32 %_3.i.i.i16.i, ptr %left.i22.i, align 4, !alias.scope !2625, !noalias !2678
  %_16.i24.i = zext i1 %_0.i.i.i18.i to i64
  %9 = add i64 %7, %_16.i24.i
  %state.sroa.13.0.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i, i64 12
  %_21.i = icmp ult ptr %state.sroa.13.0.i, %unroll_end.i
  br i1 %_21.i, label %bb5.i, label %bb12.preheader.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE.exit: ; preds = %bb4, %bb17.i
  %_0.sroa.0.0.i = phi i64 [ %5, %bb17.i ], [ 0, %bb4 ]
  %_16.not = icmp ult i64 %_0.sroa.0.0.i, %v.1
  br i1 %_16.not, label %bb10, label %bb9

bb10:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE.exit
  %_10.i5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  %tmp.sroa.0.0.copyload.i.i6 = load i32, ptr %v.0, align 4, !alias.scope !2679
  %10 = load i32, ptr %_10.i5, align 4, !alias.scope !2679
  store i32 %10, ptr %v.0, align 4, !alias.scope !2679
  store i32 %tmp.sroa.0.0.copyload.i.i6, ptr %_10.i5, align 4, !alias.scope !2679
  br label %bb12

bb9:                                              ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE.exit
  call void @llvm.trap()
  unreachable

bb12:                                             ; preds = %start, %bb10
  %num_lt.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i, %bb10 ], [ 0, %start ]
  ret i64 %num_lt.sroa.0.0
}

; core::slice::sort::unstable::quicksort::partition
; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i64 0, 2305843009213693951) i64 @_ZN4core5slice4sort8unstable9quicksort9partition17he624dae98141cf98E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %pivot, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %gap_value.i = alloca [4 x i8], align 4
  %_5 = icmp eq i64 %v.1, 0
  br i1 %_5, label %bb12, label %bb2

bb2:                                              ; preds = %start
  %_6.not = icmp ult i64 %pivot, %v.1
  br i1 %_6.not, label %bb4, label %bb3

bb4:                                              ; preds = %bb2
  %_10.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot
  %tmp.sroa.0.0.copyload.i.i = load i32, ptr %v.0, align 4, !alias.scope !2682
  %0 = load i32, ptr %_10.i, align 4, !alias.scope !2682
  store i32 %0, ptr %v.0, align 4, !alias.scope !2682
  store i32 %tmp.sroa.0.0.copyload.i.i, ptr %_10.i, align 4, !alias.scope !2682
  %1 = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  %_6.i = icmp eq i64 %v.1, 1
  br i1 %_6.i, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E.exit, label %bb2.i

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb2.i:                                            ; preds = %bb4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value.i), !noalias !2690
  %value.i = load i32, ptr %1, align 4, !alias.scope !2685, !noalias !2688, !noundef !3
  store i32 %value.i, ptr %gap_value.i, align 4, !noalias !2690
  %2 = getelementptr i32, ptr %v.0, i64 %v.1
  %unroll_end.i = getelementptr i8, ptr %2, i64 -4
  %state.sroa.13.031.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  %_2132.i = icmp ult ptr %state.sroa.13.031.i, %unroll_end.i
  br i1 %_2132.i, label %bb5.lr.ph.i, label %bb12.preheader.i

bb5.lr.ph.i:                                      ; preds = %bb2.i
  %_3.i.i.i.i4.i = load i32, ptr %v.0, align 4, !alias.scope !2691, !noalias !2698, !noundef !3
  br label %bb5.i

bb12.preheader.i:                                 ; preds = %bb5.i, %bb2.i
  %state.sroa.0.0.lcssa.i = phi ptr [ %1, %bb2.i ], [ %_17.i13.i, %bb5.i ]
  %state.sroa.23.0.lcssa.i = phi i64 [ 0, %bb2.i ], [ %9, %bb5.i ]
  %state.sroa.13.0.lcssa.i = phi ptr [ %state.sroa.13.031.i, %bb2.i ], [ %state.sroa.13.0.i, %bb5.i ]
  %_3.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2705, !noalias !2712, !noundef !3
  br label %bb12.i

bb12.i:                                           ; preds = %bb12.i, %bb12.preheader.i
  %state.sroa.0.1.i = phi ptr [ %_39.sroa.0.0.i, %bb12.i ], [ %state.sroa.0.0.lcssa.i, %bb12.preheader.i ]
  %state.sroa.13.1.i = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12.i ], [ %state.sroa.13.0.lcssa.i, %bb12.preheader.i ]
  %state.sroa.23.1.i = phi i64 [ %5, %bb12.i ], [ %state.sroa.23.0.lcssa.i, %bb12.preheader.i ]
  %is_done.i = icmp eq ptr %state.sroa.13.1.i, %2
  %_39.sroa.0.0.i = select i1 %is_done.i, ptr %gap_value.i, ptr %state.sroa.13.1.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  call void @llvm.experimental.noalias.scope.decl(metadata !2723)
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  %_4.i.i.i.i.i = load i32, ptr %_39.sroa.0.0.i, align 4, !alias.scope !2725, !noalias !2726, !noundef !3
  %_0.i.i.i.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %left.i.i = getelementptr inbounds nuw i32, ptr %1, i64 %state.sroa.23.1.i
  %3 = load i32, ptr %left.i.i, align 4, !alias.scope !2685, !noalias !2727
  store i32 %3, ptr %state.sroa.0.1.i, align 4, !noalias !2727
  %4 = load i32, ptr %_39.sroa.0.0.i, align 4, !noalias !2727
  store i32 %4, ptr %left.i.i, align 4, !alias.scope !2685, !noalias !2727
  %_16.i.i = zext i1 %_0.i.i.i.i.i to i64
  %5 = add i64 %state.sroa.23.1.i, %_16.i.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done.i, ptr %gap_value.i, ptr %state.sroa.13.1.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done.i, label %bb17.i, label %bb12.i

bb17.i:                                           ; preds = %bb12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value.i), !noalias !2690
  br label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E.exit

bb5.i:                                            ; preds = %bb5.i, %bb5.lr.ph.i
  %state.sroa.13.035.i = phi ptr [ %state.sroa.13.031.i, %bb5.lr.ph.i ], [ %state.sroa.13.0.i, %bb5.i ]
  %state.sroa.23.034.i = phi i64 [ 0, %bb5.lr.ph.i ], [ %9, %bb5.i ]
  %state.sroa.0.033.i = phi ptr [ %1, %bb5.lr.ph.i ], [ %_17.i13.i, %bb5.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  %_4.i.i.i.i5.i = load i32, ptr %state.sroa.13.035.i, align 4, !alias.scope !2734, !noalias !2735, !noundef !3
  %_0.i.i.i.i6.i = icmp sge i32 %_3.i.i.i.i4.i, %_4.i.i.i.i5.i
  %left.i10.i = getelementptr inbounds nuw i32, ptr %1, i64 %state.sroa.23.034.i
  %6 = load i32, ptr %left.i10.i, align 4, !alias.scope !2685, !noalias !2736
  store i32 %6, ptr %state.sroa.0.033.i, align 4, !alias.scope !2685, !noalias !2736
  store i32 %_4.i.i.i.i5.i, ptr %left.i10.i, align 4, !alias.scope !2685, !noalias !2736
  %_16.i12.i = zext i1 %_0.i.i.i.i6.i to i64
  %7 = add i64 %state.sroa.23.034.i, %_16.i12.i
  %_17.i13.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i, i64 8
  %_4.i.i.i.i17.i = load i32, ptr %_17.i13.i, align 4, !alias.scope !2737, !noalias !2744, !noundef !3
  %_0.i.i.i.i18.i = icmp sge i32 %_3.i.i.i.i4.i, %_4.i.i.i.i17.i
  %left.i22.i = getelementptr inbounds nuw i32, ptr %1, i64 %7
  %8 = load i32, ptr %left.i22.i, align 4, !alias.scope !2685, !noalias !2751
  store i32 %8, ptr %state.sroa.13.035.i, align 4, !alias.scope !2685, !noalias !2751
  store i32 %_4.i.i.i.i17.i, ptr %left.i22.i, align 4, !alias.scope !2685, !noalias !2751
  %_16.i24.i = zext i1 %_0.i.i.i.i18.i to i64
  %9 = add i64 %7, %_16.i24.i
  %state.sroa.13.0.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i, i64 12
  %_21.i = icmp ult ptr %state.sroa.13.0.i, %unroll_end.i
  br i1 %_21.i, label %bb5.i, label %bb12.preheader.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E.exit: ; preds = %bb4, %bb17.i
  %_0.sroa.0.0.i = phi i64 [ %5, %bb17.i ], [ 0, %bb4 ]
  %_16.not = icmp ult i64 %_0.sroa.0.0.i, %v.1
  br i1 %_16.not, label %bb10, label %bb9

bb10:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E.exit
  %_10.i5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  %tmp.sroa.0.0.copyload.i.i6 = load i32, ptr %v.0, align 4, !alias.scope !2752
  %10 = load i32, ptr %_10.i5, align 4, !alias.scope !2752
  store i32 %10, ptr %v.0, align 4, !alias.scope !2752
  store i32 %tmp.sroa.0.0.copyload.i.i6, ptr %_10.i5, align 4, !alias.scope !2752
  br label %bb12

bb9:                                              ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E.exit
  call void @llvm.trap()
  unreachable

bb12:                                             ; preds = %start, %bb10
  %num_lt.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i, %bb10 ], [ 0, %start ]
  ret i64 %num_lt.sroa.0.0
}

; core::slice::sort::unstable::quicksort::quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h2592ed822cbeb905E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %gap_value.i.i31 = alloca [4 x i8], align 4
  %gap_value.i.i = alloca [4 x i8], align 4
  %_588 = icmp samesign ult i64 %1, 33
  br i1 %_588, label %bb3, label %bb5

bb5:                                              ; preds = %start, %bb1.backedge
  %v.sroa.0.092 = phi ptr [ %v.sroa.0.0.be, %bb1.backedge ], [ %0, %start ]
  %v.sroa.15.091 = phi i64 [ %v.sroa.15.0.be, %bb1.backedge ], [ %1, %start ]
  %ancestor_pivot.sroa.0.090 = phi ptr [ %ancestor_pivot.sroa.0.0.be, %bb1.backedge ], [ %2, %start ]
  %limit.sroa.0.089 = phi i32 [ %4, %bb1.backedge ], [ %3, %start ]
  %_10 = icmp eq i32 %limit.sroa.0.089, 0
  br i1 %_10, label %bb6, label %bb7

bb3:                                              ; preds = %bb1.backedge, %start
  %v.sroa.15.0.lcssa = phi i64 [ %1, %start ], [ %v.sroa.15.0.be, %bb1.backedge ]
  %v.sroa.0.0.lcssa = phi ptr [ %0, %start ], [ %v.sroa.0.0.be, %bb1.backedge ]
; call core::slice::sort::shared::smallsort::small_sort_network
  call void @_ZN4core5slice4sort6shared9smallsort18small_sort_network17hbbbfaa93cc63fb31E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %v.sroa.15.0.lcssa, ptr noalias nonnull align 1 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.089, -1
  %len_div_84.i = lshr i64 %v.sroa.15.091, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.15.091, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h699636c8fd66cc26E(ptr noundef nonnull readonly align 4 %v.sroa.0.092, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 1 %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  call void @llvm.experimental.noalias.scope.decl(metadata !2760), !noalias !2763
  call void @llvm.experimental.noalias.scope.decl(metadata !2766), !noalias !2763
  %_3.i.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2768, !noalias !2771, !noundef !3
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2773, !noalias !2774, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2775, !noalias !2780, !noundef !3
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %5 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.092, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = ptrtoint ptr %v.sroa.0.092 to i64
  %8 = sub nuw i64 %6, %7
  %index.sroa.0.0.i = lshr exact i64 %8, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.15.091
  call void @llvm.assume(i1 %cond.i)
  %.not = icmp eq ptr %ancestor_pivot.sroa.0.090, null
  br i1 %.not, label %bb16, label %bb11

bb6:                                              ; preds = %bb5
; call core::slice::sort::unstable::heapsort::heapsort
  call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h865ec352a4fa74f7E(ptr noalias noundef nonnull align 4 %v.sroa.0.092, i64 noundef %v.sroa.15.091, ptr noalias nonnull align 1 poison) #29
  br label %bb22

bb16:                                             ; preds = %bb11, %_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %_10.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 %8
  %tmp.sroa.0.0.copyload.i.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2786
  %9 = load i32, ptr %_10.i.i, align 4, !alias.scope !2786
  store i32 %9, ptr %v.sroa.0.092, align 4, !alias.scope !2786
  store i32 %tmp.sroa.0.0.copyload.i.i.i, ptr %_10.i.i, align 4, !alias.scope !2786
  %10 = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value.i.i), !noalias !2794
  %value.i.i = load i32, ptr %10, align 4, !alias.scope !2795, !noalias !2792, !noundef !3
  store i32 %value.i.i, ptr %gap_value.i.i, align 4, !noalias !2794
  %11 = getelementptr i32, ptr %v.sroa.0.092, i64 %v.sroa.15.091
  %unroll_end.i.i = getelementptr i8, ptr %11, i64 -4
  %state.sroa.13.031.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 8
  %_2132.i.i = icmp ult ptr %state.sroa.13.031.i.i, %unroll_end.i.i
  br i1 %_2132.i.i, label %bb5.lr.ph.i.i, label %bb12.preheader.i.i

bb5.lr.ph.i.i:                                    ; preds = %bb16
  %_4.i.i.i5.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2796, !noalias !2801, !noundef !3
  br label %bb5.i.i

bb12.preheader.i.i:                               ; preds = %bb5.i.i, %bb16
  %state.sroa.0.0.lcssa.i.i = phi ptr [ %10, %bb16 ], [ %_17.i13.i.i, %bb5.i.i ]
  %state.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb16 ], [ %18, %bb5.i.i ]
  %state.sroa.13.0.lcssa.i.i = phi ptr [ %state.sroa.13.031.i.i, %bb16 ], [ %state.sroa.13.0.i.i, %bb5.i.i ]
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2807, !noalias !2812, !noundef !3
  br label %bb12.i.i

bb12.i.i:                                         ; preds = %bb12.i.i, %bb12.preheader.i.i
  %state.sroa.0.1.i.i = phi ptr [ %_39.sroa.0.0.i.i, %bb12.i.i ], [ %state.sroa.0.0.lcssa.i.i, %bb12.preheader.i.i ]
  %state.sroa.13.1.i.i = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12.i.i ], [ %state.sroa.13.0.lcssa.i.i, %bb12.preheader.i.i ]
  %state.sroa.23.1.i.i = phi i64 [ %14, %bb12.i.i ], [ %state.sroa.23.0.lcssa.i.i, %bb12.preheader.i.i ]
  %is_done.i.i = icmp eq ptr %state.sroa.13.1.i.i, %11
  %_39.sroa.0.0.i.i = select i1 %is_done.i.i, ptr %gap_value.i.i, ptr %state.sroa.13.1.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  %_3.i.i.i.i.i = load i32, ptr %_39.sroa.0.0.i.i, align 4, !alias.scope !2822, !noalias !2823, !noundef !3
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %left.i.i.i = getelementptr inbounds nuw i32, ptr %10, i64 %state.sroa.23.1.i.i
  %12 = load i32, ptr %left.i.i.i, align 4, !alias.scope !2795, !noalias !2824
  store i32 %12, ptr %state.sroa.0.1.i.i, align 4, !noalias !2824
  %13 = load i32, ptr %_39.sroa.0.0.i.i, align 4, !noalias !2824
  store i32 %13, ptr %left.i.i.i, align 4, !alias.scope !2795, !noalias !2824
  %_16.i.i.i = zext i1 %_0.i.i.i.i.i to i64
  %14 = add i64 %state.sroa.23.1.i.i, %_16.i.i.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done.i.i, ptr %gap_value.i.i, ptr %state.sroa.13.1.i.i
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done.i.i, label %bb17.i.i, label %bb12.i.i

bb17.i.i:                                         ; preds = %bb12.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value.i.i), !noalias !2794
  %_16.not.i = icmp ult i64 %14, %v.sroa.15.091
  br i1 %_16.not.i, label %bb10.i, label %bb9.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.lr.ph.i.i
  %state.sroa.13.035.i.i = phi ptr [ %state.sroa.13.031.i.i, %bb5.lr.ph.i.i ], [ %state.sroa.13.0.i.i, %bb5.i.i ]
  %state.sroa.23.034.i.i = phi i64 [ 0, %bb5.lr.ph.i.i ], [ %18, %bb5.i.i ]
  %state.sroa.0.033.i.i = phi ptr [ %10, %bb5.lr.ph.i.i ], [ %_17.i13.i.i, %bb5.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  %_3.i.i.i4.i.i = load i32, ptr %state.sroa.13.035.i.i, align 4, !alias.scope !2829, !noalias !2830, !noundef !3
  %_0.i.i.i6.i.i = icmp slt i32 %_3.i.i.i4.i.i, %_4.i.i.i5.i.i
  %left.i10.i.i = getelementptr inbounds nuw i32, ptr %10, i64 %state.sroa.23.034.i.i
  %15 = load i32, ptr %left.i10.i.i, align 4, !alias.scope !2795, !noalias !2831
  store i32 %15, ptr %state.sroa.0.033.i.i, align 4, !alias.scope !2795, !noalias !2831
  store i32 %_3.i.i.i4.i.i, ptr %left.i10.i.i, align 4, !alias.scope !2795, !noalias !2831
  %_16.i12.i.i = zext i1 %_0.i.i.i6.i.i to i64
  %16 = add i64 %state.sroa.23.034.i.i, %_16.i12.i.i
  %_17.i13.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i.i, i64 8
  %_3.i.i.i16.i.i = load i32, ptr %_17.i13.i.i, align 4, !alias.scope !2832, !noalias !2837, !noundef !3
  %_0.i.i.i18.i.i = icmp slt i32 %_3.i.i.i16.i.i, %_4.i.i.i5.i.i
  %left.i22.i.i = getelementptr inbounds nuw i32, ptr %10, i64 %16
  %17 = load i32, ptr %left.i22.i.i, align 4, !alias.scope !2795, !noalias !2843
  store i32 %17, ptr %state.sroa.13.035.i.i, align 4, !alias.scope !2795, !noalias !2843
  store i32 %_3.i.i.i16.i.i, ptr %left.i22.i.i, align 4, !alias.scope !2795, !noalias !2843
  %_16.i24.i.i = zext i1 %_0.i.i.i18.i.i to i64
  %18 = add i64 %16, %_16.i24.i.i
  %state.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i.i, i64 12
  %_21.i.i = icmp ult ptr %state.sroa.13.0.i.i, %unroll_end.i.i
  br i1 %_21.i.i, label %bb5.i.i, label %bb12.preheader.i.i

bb10.i:                                           ; preds = %bb17.i.i
  %_10.i5.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.092, i64 %14
  %tmp.sroa.0.0.copyload.i.i6.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2844
  %19 = load i32, ptr %_10.i5.i, align 4, !alias.scope !2844
  store i32 %19, ptr %v.sroa.0.092, align 4, !alias.scope !2844
  store i32 %tmp.sroa.0.0.copyload.i.i6.i, ptr %_10.i5.i, align 4, !alias.scope !2844
  %20 = getelementptr inbounds nuw i32, ptr %v.sroa.0.092, i64 %14
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = xor i64 %14, -1
  %23 = add i64 %v.sroa.15.091, %22
; call core::slice::sort::unstable::quicksort::quicksort
  call void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h2592ed822cbeb905E(ptr noalias noundef nonnull align 4 %v.sroa.0.092, i64 noundef %14, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %ancestor_pivot.sroa.0.090, i32 noundef %4, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb1.backedge

bb9.i:                                            ; preds = %bb17.i.i
  call void @llvm.trap()
  unreachable

bb11:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE.exit
  %_19 = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 %8
  call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %_3.i.i = load i32, ptr %ancestor_pivot.sroa.0.090, align 4, !alias.scope !2857, !noalias !2858, !noundef !3
  %_4.i.i = load i32, ptr %_19, align 4, !alias.scope !2858, !noalias !2857, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  br i1 %_0.i.i, label %bb16, label %bb14

bb14:                                             ; preds = %bb11
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %tmp.sroa.0.0.copyload.i.i.i38 = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2862
  store i32 %_4.i.i, ptr %v.sroa.0.092, align 4, !alias.scope !2862
  store i32 %tmp.sroa.0.0.copyload.i.i.i38, ptr %_19, align 4, !alias.scope !2862
  %24 = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gap_value.i.i31), !noalias !2870
  %value.i.i41 = load i32, ptr %24, align 4, !alias.scope !2871, !noalias !2868, !noundef !3
  store i32 %value.i.i41, ptr %gap_value.i.i31, align 4, !noalias !2870
  %25 = getelementptr i32, ptr %v.sroa.0.092, i64 %v.sroa.15.091
  %unroll_end.i.i42 = getelementptr i8, ptr %25, i64 -4
  %state.sroa.13.031.i.i43 = getelementptr inbounds nuw i8, ptr %v.sroa.0.092, i64 8
  %_2132.i.i44 = icmp ult ptr %state.sroa.13.031.i.i43, %unroll_end.i.i42
  br i1 %_2132.i.i44, label %bb5.lr.ph.i.i67, label %bb12.preheader.i.i45

bb5.lr.ph.i.i67:                                  ; preds = %bb14
  %_3.i.i.i.i4.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2872, !noalias !2879, !noundef !3
  br label %bb5.i.i68

bb12.preheader.i.i45:                             ; preds = %bb5.i.i68, %bb14
  %state.sroa.0.0.lcssa.i.i46 = phi ptr [ %24, %bb14 ], [ %_17.i13.i.i74, %bb5.i.i68 ]
  %state.sroa.23.0.lcssa.i.i47 = phi i64 [ 0, %bb14 ], [ %32, %bb5.i.i68 ]
  %state.sroa.13.0.lcssa.i.i48 = phi ptr [ %state.sroa.13.031.i.i43, %bb14 ], [ %state.sroa.13.0.i.i77, %bb5.i.i68 ]
  %_3.i.i.i.i.i.i = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2886, !noalias !2893, !noundef !3
  br label %bb12.i.i49

bb12.i.i49:                                       ; preds = %bb12.i.i49, %bb12.preheader.i.i45
  %state.sroa.0.1.i.i50 = phi ptr [ %_39.sroa.0.0.i.i54, %bb12.i.i49 ], [ %state.sroa.0.0.lcssa.i.i46, %bb12.preheader.i.i45 ]
  %state.sroa.13.1.i.i51 = phi ptr [ %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i57.sroa.sel.v.sroa.sel.v.sroa.sel, %bb12.i.i49 ], [ %state.sroa.13.0.lcssa.i.i48, %bb12.preheader.i.i45 ]
  %state.sroa.23.1.i.i52 = phi i64 [ %28, %bb12.i.i49 ], [ %state.sroa.23.0.lcssa.i.i47, %bb12.preheader.i.i45 ]
  %is_done.i.i53 = icmp eq ptr %state.sroa.13.1.i.i51, %25
  %_39.sroa.0.0.i.i54 = select i1 %is_done.i.i53, ptr %gap_value.i.i31, ptr %state.sroa.13.1.i.i51
  call void @llvm.experimental.noalias.scope.decl(metadata !2900)
  call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %_4.i.i.i.i.i.i = load i32, ptr %_39.sroa.0.0.i.i54, align 4, !alias.scope !2906, !noalias !2907, !noundef !3
  %_0.i.i.i.i.i.i = icmp sge i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %left.i.i.i55 = getelementptr inbounds nuw i32, ptr %24, i64 %state.sroa.23.1.i.i52
  %26 = load i32, ptr %left.i.i.i55, align 4, !alias.scope !2871, !noalias !2908
  store i32 %26, ptr %state.sroa.0.1.i.i50, align 4, !noalias !2908
  %27 = load i32, ptr %_39.sroa.0.0.i.i54, align 4, !noalias !2908
  store i32 %27, ptr %left.i.i.i55, align 4, !alias.scope !2871, !noalias !2908
  %_16.i.i.i56 = zext i1 %_0.i.i.i.i.i.i to i64
  %28 = add i64 %state.sroa.23.1.i.i52, %_16.i.i.i56
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i57.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %is_done.i.i53, ptr %gap_value.i.i31, ptr %state.sroa.13.1.i.i51
  %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i57.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %_39.sroa.0.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i57.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  br i1 %is_done.i.i53, label %bb17.i.i59, label %bb12.i.i49

bb17.i.i59:                                       ; preds = %bb12.i.i49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gap_value.i.i31), !noalias !2870
  %_16.not.i61 = icmp ult i64 %28, %v.sroa.15.091
  br i1 %_16.not.i61, label %bb10.i63, label %bb9.i62

bb5.i.i68:                                        ; preds = %bb5.i.i68, %bb5.lr.ph.i.i67
  %state.sroa.13.035.i.i69 = phi ptr [ %state.sroa.13.031.i.i43, %bb5.lr.ph.i.i67 ], [ %state.sroa.13.0.i.i77, %bb5.i.i68 ]
  %state.sroa.23.034.i.i70 = phi i64 [ 0, %bb5.lr.ph.i.i67 ], [ %32, %bb5.i.i68 ]
  %state.sroa.0.033.i.i71 = phi ptr [ %24, %bb5.lr.ph.i.i67 ], [ %_17.i13.i.i74, %bb5.i.i68 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  %_4.i.i.i.i5.i.i = load i32, ptr %state.sroa.13.035.i.i69, align 4, !alias.scope !2915, !noalias !2916, !noundef !3
  %_0.i.i.i.i6.i.i = icmp sge i32 %_3.i.i.i.i4.i.i, %_4.i.i.i.i5.i.i
  %left.i10.i.i72 = getelementptr inbounds nuw i32, ptr %24, i64 %state.sroa.23.034.i.i70
  %29 = load i32, ptr %left.i10.i.i72, align 4, !alias.scope !2871, !noalias !2917
  store i32 %29, ptr %state.sroa.0.033.i.i71, align 4, !alias.scope !2871, !noalias !2917
  store i32 %_4.i.i.i.i5.i.i, ptr %left.i10.i.i72, align 4, !alias.scope !2871, !noalias !2917
  %_16.i12.i.i73 = zext i1 %_0.i.i.i.i6.i.i to i64
  %30 = add i64 %state.sroa.23.034.i.i70, %_16.i12.i.i73
  %_17.i13.i.i74 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i.i71, i64 8
  %_4.i.i.i.i17.i.i = load i32, ptr %_17.i13.i.i74, align 4, !alias.scope !2918, !noalias !2925, !noundef !3
  %_0.i.i.i.i18.i.i = icmp sge i32 %_3.i.i.i.i4.i.i, %_4.i.i.i.i17.i.i
  %left.i22.i.i75 = getelementptr inbounds nuw i32, ptr %24, i64 %30
  %31 = load i32, ptr %left.i22.i.i75, align 4, !alias.scope !2871, !noalias !2932
  store i32 %31, ptr %state.sroa.13.035.i.i69, align 4, !alias.scope !2871, !noalias !2932
  store i32 %_4.i.i.i.i17.i.i, ptr %left.i22.i.i75, align 4, !alias.scope !2871, !noalias !2932
  %_16.i24.i.i76 = zext i1 %_0.i.i.i.i18.i.i to i64
  %32 = add i64 %30, %_16.i24.i.i76
  %state.sroa.13.0.i.i77 = getelementptr inbounds nuw i8, ptr %state.sroa.0.033.i.i71, i64 12
  %_21.i.i78 = icmp ult ptr %state.sroa.13.0.i.i77, %unroll_end.i.i42
  br i1 %_21.i.i78, label %bb5.i.i68, label %bb12.preheader.i.i45

bb10.i63:                                         ; preds = %bb17.i.i59
  %_10.i5.i64 = getelementptr inbounds nuw i32, ptr %v.sroa.0.092, i64 %28
  %tmp.sroa.0.0.copyload.i.i6.i65 = load i32, ptr %v.sroa.0.092, align 4, !alias.scope !2933
  %33 = load i32, ptr %_10.i5.i64, align 4, !alias.scope !2933
  store i32 %33, ptr %v.sroa.0.092, align 4, !alias.scope !2933
  store i32 %tmp.sroa.0.0.copyload.i.i6.i65, ptr %_10.i5.i64, align 4, !alias.scope !2933
  %index = add nuw nsw i64 %28, 1
  %new_len = sub nuw i64 %v.sroa.15.091, %index
  %_50 = getelementptr inbounds nuw i32, ptr %v.sroa.0.092, i64 %index
  br label %bb1.backedge

bb1.backedge:                                     ; preds = %bb10.i63, %bb10.i
  %ancestor_pivot.sroa.0.0.be = phi ptr [ %20, %bb10.i ], [ null, %bb10.i63 ]
  %v.sroa.15.0.be = phi i64 [ %23, %bb10.i ], [ %new_len, %bb10.i63 ]
  %v.sroa.0.0.be = phi ptr [ %21, %bb10.i ], [ %_50, %bb10.i63 ]
  %_5 = icmp ult i64 %v.sroa.15.0.be, 33
  br i1 %_5, label %bb3, label %bb5

bb9.i62:                                          ; preds = %bb17.i.i59
  call void @llvm.trap()
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #5 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1846, !noundef !3
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1847, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf3fed9ad8e524608E.exit", !prof !1848

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #27
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf3fed9ad8e524608E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h46c2371b7160b8d0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #13 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !3
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2936, !noundef !3
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c4763f521cb620fE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #8 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hed48aa6a83c669ddE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #5 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h162a6a7eadf70bf3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !3
  %_5 = load ptr, ptr %self, align 8, !noundef !3
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6cb9e514eff560cdE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #8 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb31a52b6e20036bE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #8 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #0 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !3
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #14 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2937, !noalias !2940, !noundef !3
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2940, !noalias !2937, !noundef !3
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %tail.sroa.0.02.i.ptr.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i, align 4, !alias.scope !2952, !noalias !2957, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2958, !noalias !2959, !noundef !3
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"

bb4.i.i.i:                                        ; preds = %start
  store i32 %_4.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i, align 4, !alias.scope !2960
  store i32 %_3.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2960, !noalias !2961
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit": ; preds = %start, %bb4.i.i.i
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, -1
  %_10 = icmp ult i64 %_8, 2
  br i1 %_10, label %bb2, label %panic

bb2:                                              ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"
  %_12 = add nsw i64 %_9, -2
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb3, label %panic1

panic:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_037c982f7113fad382747c29e3244c82) #26
  unreachable

bb3:                                              ; preds = %bb2
  %_15 = add nsw i64 %_9, -3
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb4, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_39aec2478f319ecb6e41d0d81fffd071) #26
  unreachable

bb4:                                              ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %1, align 4, !noundef !3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %2, align 4, !noundef !3
  %_6 = add i32 %_11, %_7
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %3, align 4, !noundef !3
  %_0 = add i32 %_6, %_14
  ret i32 %_0

panic2:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4385c5a3a89a390cbd2f10c6aa51708b) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #8 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #8 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #8 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2966
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2969
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E.exit", label %bb7.i.i, !prof !2973

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2973

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hf227ec475d5644a8E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h328e090c5329e1daE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2966
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #19

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #20

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #5

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #23

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { noinline noreturn }
attributes #27 = { noreturn }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN4core3ptr10swap_chunk17h38fdc7a8b701ca4cE: %x"}
!6 = distinct !{!6, !"_ZN4core3ptr10swap_chunk17h38fdc7a8b701ca4cE"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_ZN4core3ptr10swap_chunk17h38fdc7a8b701ca4cE: %y"}
!9 = !{!10}
!10 = distinct !{!10, !6, !"_ZN4core3ptr10swap_chunk17h38fdc7a8b701ca4cE: %x:It1"}
!11 = !{!12}
!12 = distinct !{!12, !6, !"_ZN4core3ptr10swap_chunk17h38fdc7a8b701ca4cE: %y:It1"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!15 = distinct !{!15, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!20 = distinct !{!20, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core5slice4sort6shared5pivot7median317h0bea463988e31fa6E: %c"}
!23 = distinct !{!23, !"_ZN4core5slice4sort6shared5pivot7median317h0bea463988e31fa6E"}
!24 = !{!25}
!25 = distinct !{!25, !20, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!26 = !{!19, !14}
!27 = !{!25, !17, !22}
!28 = !{!25, !17}
!29 = !{!19, !14, !22}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!32 = distinct !{!32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!33 = distinct !{!33, !34, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!34 = distinct !{!34, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!35 = !{!36, !37}
!36 = distinct !{!36, !32, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!37 = distinct !{!37, !34, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!40 = distinct !{!40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!45 = distinct !{!45, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core5slice4sort6shared5pivot7median317hfeaf4489280a47b9E: %c"}
!48 = distinct !{!48, !"_ZN4core5slice4sort6shared5pivot7median317hfeaf4489280a47b9E"}
!49 = !{!50}
!50 = distinct !{!50, !45, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!70 = distinct !{!70, !71, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!71 = distinct !{!71, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!72 = distinct !{!72, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!73 = distinct !{!73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!76 = distinct !{!76, !69, !"cmpfunc: %a"}
!77 = distinct !{!77, !71, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!78 = distinct !{!78, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!106 = distinct !{!106, !107, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!107 = distinct !{!107, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!108 = distinct !{!108, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!109 = distinct !{!109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!110 = !{!111, !112, !113, !114}
!111 = distinct !{!111, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!112 = distinct !{!112, !105, !"cmpfunc: %a"}
!113 = distinct !{!113, !107, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!114 = distinct !{!114, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!117 = distinct !{!117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!118 = distinct !{!118, !119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!119 = distinct !{!119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!122 = distinct !{!122, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
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
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!137 = !{!138, !139}
!138 = distinct !{!138, !134, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!139 = distinct !{!139, !136, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!142 = distinct !{!142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!143 = distinct !{!143, !144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!144 = distinct !{!144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!147 = distinct !{!147, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!152 = distinct !{!152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!155 = !{!151, !146}
!156 = !{!154, !149}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!159 = distinct !{!159, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!164 = distinct !{!164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!167 = !{!163, !158}
!168 = !{!166, !161}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!176 = distinct !{!176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!179 = !{!175, !170}
!180 = !{!178, !173}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!183 = distinct !{!183, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!188 = distinct !{!188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!191 = !{!187, !182}
!192 = !{!190, !185}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!195 = distinct !{!195, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!200 = distinct !{!200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!203 = !{!199, !194}
!204 = !{!202, !197}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!207 = distinct !{!207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!212 = distinct !{!212, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!234 = distinct !{!234, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!250 = distinct !{!250, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!251 = distinct !{!251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!256 = distinct !{!256, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!272 = distinct !{!272, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!273 = distinct !{!273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!278 = distinct !{!278, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!294 = distinct !{!294, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!295 = distinct !{!295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!300 = distinct !{!300, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!316 = distinct !{!316, !317, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!317 = distinct !{!317, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!322 = distinct !{!322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!325 = !{!321, !316}
!326 = !{!324, !319}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!329 = distinct !{!329, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!337 = !{!333, !328}
!338 = !{!336, !331}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!341 = distinct !{!341, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!346 = distinct !{!346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!349 = !{!345, !340}
!350 = !{!348, !343}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!353 = distinct !{!353, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!358 = distinct !{!358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!361 = !{!357, !352}
!362 = !{!360, !355}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!365 = distinct !{!365, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!370 = distinct !{!370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!373 = !{!369, !364}
!374 = !{!372, !367}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!377 = distinct !{!377, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!382 = distinct !{!382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!385 = !{!381, !376}
!386 = !{!384, !379}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!389 = distinct !{!389, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!394 = distinct !{!394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!397 = !{!393, !388}
!398 = !{!396, !391}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!401 = distinct !{!401, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!406 = distinct !{!406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!409 = !{!405, !400}
!410 = !{!408, !403}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!413 = distinct !{!413, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!421 = !{!417, !412}
!422 = !{!420, !415}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!425 = distinct !{!425, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!430 = distinct !{!430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!433 = !{!429, !424}
!434 = !{!432, !427}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE: %v.0"}
!437 = distinct !{!437, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!440 = distinct !{!440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!445 = distinct !{!445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %_0"}
!448 = distinct !{!448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E"}
!449 = !{!450}
!450 = distinct !{!450, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!451 = !{!444, !439, !436}
!452 = !{!450, !442, !447}
!453 = !{!450, !442, !436}
!454 = !{!444, !439, !447}
!455 = !{!447, !456, !436}
!456 = distinct !{!456, !448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %is_less"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!459 = distinct !{!459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!464 = distinct !{!464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %_0"}
!467 = distinct !{!467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E"}
!468 = !{!469}
!469 = distinct !{!469, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!470 = !{!463, !458, !436}
!471 = !{!469, !461, !466}
!472 = !{!469, !461, !436}
!473 = !{!463, !458, !466}
!474 = !{!466, !475, !436}
!475 = distinct !{!475, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %is_less"}
!476 = !{!477}
!477 = distinct !{!477, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It1"}
!478 = !{!479}
!479 = distinct !{!479, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It1"}
!480 = !{!481}
!481 = distinct !{!481, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!482 = !{!483}
!483 = distinct !{!483, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!484 = !{!481, !477, !436}
!485 = !{!483, !479, !447}
!486 = !{!483, !479, !436}
!487 = !{!481, !477, !447}
!488 = !{!489}
!489 = distinct !{!489, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It1"}
!490 = !{!491}
!491 = distinct !{!491, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It1"}
!492 = !{!493}
!493 = distinct !{!493, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!494 = !{!495}
!495 = distinct !{!495, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!496 = !{!493, !489, !436}
!497 = !{!495, !491, !466}
!498 = !{!495, !491, !436}
!499 = !{!493, !489, !466}
!500 = !{!501}
!501 = distinct !{!501, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It2"}
!502 = !{!503}
!503 = distinct !{!503, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It2"}
!504 = !{!505}
!505 = distinct !{!505, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!506 = !{!507}
!507 = distinct !{!507, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!508 = !{!505, !501, !436}
!509 = !{!507, !503, !447}
!510 = !{!507, !503, !436}
!511 = !{!505, !501, !447}
!512 = !{!513}
!513 = distinct !{!513, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It2"}
!514 = !{!515}
!515 = distinct !{!515, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It2"}
!516 = !{!517}
!517 = distinct !{!517, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!518 = !{!519}
!519 = distinct !{!519, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!520 = !{!517, !513, !436}
!521 = !{!519, !515, !466}
!522 = !{!519, !515, !436}
!523 = !{!517, !513, !466}
!524 = !{!525}
!525 = distinct !{!525, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It3"}
!526 = !{!527}
!527 = distinct !{!527, !440, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It3"}
!528 = !{!529}
!529 = distinct !{!529, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!530 = !{!531}
!531 = distinct !{!531, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!532 = !{!529, !525, !436}
!533 = !{!531, !527, !447}
!534 = !{!531, !527, !436}
!535 = !{!529, !525, !447}
!536 = !{!537}
!537 = distinct !{!537, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0:It3"}
!538 = !{!539}
!539 = distinct !{!539, !459, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1:It3"}
!540 = !{!541}
!541 = distinct !{!541, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!542 = !{!543}
!543 = distinct !{!543, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!544 = !{!541, !537, !436}
!545 = !{!543, !539, !466}
!546 = !{!543, !539, !436}
!547 = !{!541, !537, !466}
!548 = !{!"branch_weights", i32 4001, i32 4000000}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!551 = distinct !{!551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!556 = distinct !{!556, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"cmpfunc: %a"}
!561 = distinct !{!561, !"cmpfunc"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"cmpfunc: %b"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!566 = distinct !{!566, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!567 = !{!568}
!568 = distinct !{!568, !566, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!569 = !{!565, !560, !555, !550}
!570 = !{!568, !563, !558, !553}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!573 = distinct !{!573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!574 = !{!575}
!575 = distinct !{!575, !573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!578 = distinct !{!578, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!579 = !{!580}
!580 = distinct !{!580, !578, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!581 = !{!582}
!582 = distinct !{!582, !583, !"cmpfunc: %a"}
!583 = distinct !{!583, !"cmpfunc"}
!584 = !{!585}
!585 = distinct !{!585, !583, !"cmpfunc: %b"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!588 = distinct !{!588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!589 = !{!590}
!590 = distinct !{!590, !588, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!591 = !{!587, !582, !577, !572}
!592 = !{!590, !585, !580, !575}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!595 = distinct !{!595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!596 = !{!597}
!597 = distinct !{!597, !595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!600 = distinct !{!600, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"cmpfunc: %a"}
!605 = distinct !{!605, !"cmpfunc"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"cmpfunc: %b"}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!610 = distinct !{!610, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!611 = !{!612}
!612 = distinct !{!612, !610, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!613 = !{!609, !604, !599, !594}
!614 = !{!612, !607, !602, !597}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!617 = distinct !{!617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!622 = distinct !{!622, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"cmpfunc: %a"}
!627 = distinct !{!627, !"cmpfunc"}
!628 = !{!629}
!629 = distinct !{!629, !627, !"cmpfunc: %b"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!632 = distinct !{!632, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!633 = !{!634}
!634 = distinct !{!634, !632, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!635 = !{!631, !626, !621, !616}
!636 = !{!634, !629, !624, !619}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!639 = distinct !{!639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!640 = !{!641}
!641 = distinct !{!641, !639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!644 = distinct !{!644, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"cmpfunc: %a"}
!649 = distinct !{!649, !"cmpfunc"}
!650 = !{!651}
!651 = distinct !{!651, !649, !"cmpfunc: %b"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!654 = distinct !{!654, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!655 = !{!656}
!656 = distinct !{!656, !654, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!657 = !{!653, !648, !643, !638}
!658 = !{!656, !651, !646, !641}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!661 = distinct !{!661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!666 = distinct !{!666, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!669 = !{!670}
!670 = distinct !{!670, !671, !"cmpfunc: %a"}
!671 = distinct !{!671, !"cmpfunc"}
!672 = !{!673}
!673 = distinct !{!673, !671, !"cmpfunc: %b"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!676 = distinct !{!676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!677 = !{!678}
!678 = distinct !{!678, !676, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!679 = !{!675, !670, !665, !660}
!680 = !{!678, !673, !668, !663}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!683 = distinct !{!683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!688 = distinct !{!688, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!689 = !{!690}
!690 = distinct !{!690, !688, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!691 = !{!692}
!692 = distinct !{!692, !693, !"cmpfunc: %a"}
!693 = distinct !{!693, !"cmpfunc"}
!694 = !{!695}
!695 = distinct !{!695, !693, !"cmpfunc: %b"}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!698 = distinct !{!698, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!699 = !{!700}
!700 = distinct !{!700, !698, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!701 = !{!697, !692, !687, !682}
!702 = !{!700, !695, !690, !685}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!705 = distinct !{!705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!710 = distinct !{!710, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!713 = !{!714}
!714 = distinct !{!714, !715, !"cmpfunc: %a"}
!715 = distinct !{!715, !"cmpfunc"}
!716 = !{!717}
!717 = distinct !{!717, !715, !"cmpfunc: %b"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!720 = distinct !{!720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!721 = !{!722}
!722 = distinct !{!722, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!723 = !{!719, !714, !709, !704}
!724 = !{!722, !717, !712, !707}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!727 = distinct !{!727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!728 = !{!729}
!729 = distinct !{!729, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!732 = distinct !{!732, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!733 = !{!734}
!734 = distinct !{!734, !732, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"cmpfunc: %a"}
!737 = distinct !{!737, !"cmpfunc"}
!738 = !{!739}
!739 = distinct !{!739, !737, !"cmpfunc: %b"}
!740 = !{!741}
!741 = distinct !{!741, !742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!742 = distinct !{!742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!743 = !{!744}
!744 = distinct !{!744, !742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!745 = !{!741, !736, !731, !726}
!746 = !{!744, !739, !734, !729}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!749 = distinct !{!749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!750 = !{!751}
!751 = distinct !{!751, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!754 = distinct !{!754, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!757 = !{!758}
!758 = distinct !{!758, !759, !"cmpfunc: %a"}
!759 = distinct !{!759, !"cmpfunc"}
!760 = !{!761}
!761 = distinct !{!761, !759, !"cmpfunc: %b"}
!762 = !{!763}
!763 = distinct !{!763, !764, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!764 = distinct !{!764, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!765 = !{!766}
!766 = distinct !{!766, !764, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!767 = !{!763, !758, !753, !748}
!768 = !{!766, !761, !756, !751}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE: %v.0"}
!771 = distinct !{!771, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!774 = distinct !{!774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!779 = distinct !{!779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %_0"}
!782 = distinct !{!782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E"}
!783 = !{!784}
!784 = distinct !{!784, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"cmpfunc: %a"}
!787 = distinct !{!787, !"cmpfunc"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"cmpfunc: %b"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!792 = distinct !{!792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!795 = !{!791, !786, !778, !773, !770}
!796 = !{!794, !789, !784, !776, !781}
!797 = !{!794, !789, !784, !776, !770}
!798 = !{!791, !786, !778, !773, !781}
!799 = !{!781, !800, !770}
!800 = distinct !{!800, !782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %is_less"}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!803 = distinct !{!803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!808 = distinct !{!808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %_0"}
!811 = distinct !{!811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE"}
!812 = !{!813}
!813 = distinct !{!813, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!814 = !{!815}
!815 = distinct !{!815, !816, !"cmpfunc: %a"}
!816 = distinct !{!816, !"cmpfunc"}
!817 = !{!818}
!818 = distinct !{!818, !816, !"cmpfunc: %b"}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!821 = distinct !{!821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!822 = !{!823}
!823 = distinct !{!823, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!824 = !{!820, !815, !807, !802, !770}
!825 = !{!823, !818, !813, !805, !810}
!826 = !{!823, !818, !813, !805, !770}
!827 = !{!820, !815, !807, !802, !810}
!828 = !{!810, !829, !770}
!829 = distinct !{!829, !811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %is_less"}
!830 = !{!831}
!831 = distinct !{!831, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It1"}
!832 = !{!833}
!833 = distinct !{!833, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It1"}
!834 = !{!835}
!835 = distinct !{!835, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It1"}
!836 = !{!837}
!837 = distinct !{!837, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It1"}
!838 = !{!839}
!839 = distinct !{!839, !787, !"cmpfunc: %a:It1"}
!840 = !{!841}
!841 = distinct !{!841, !787, !"cmpfunc: %b:It1"}
!842 = !{!843}
!843 = distinct !{!843, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!844 = !{!845}
!845 = distinct !{!845, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!846 = !{!843, !839, !835, !831, !770}
!847 = !{!845, !841, !837, !833, !781}
!848 = !{!845, !841, !837, !833, !770}
!849 = !{!843, !839, !835, !831, !781}
!850 = !{!851}
!851 = distinct !{!851, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It1"}
!852 = !{!853}
!853 = distinct !{!853, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It1"}
!854 = !{!855}
!855 = distinct !{!855, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It1"}
!856 = !{!857}
!857 = distinct !{!857, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It1"}
!858 = !{!859}
!859 = distinct !{!859, !816, !"cmpfunc: %a:It1"}
!860 = !{!861}
!861 = distinct !{!861, !816, !"cmpfunc: %b:It1"}
!862 = !{!863}
!863 = distinct !{!863, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!864 = !{!865}
!865 = distinct !{!865, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!866 = !{!863, !859, !855, !851, !770}
!867 = !{!865, !861, !857, !853, !810}
!868 = !{!865, !861, !857, !853, !770}
!869 = !{!863, !859, !855, !851, !810}
!870 = !{!871}
!871 = distinct !{!871, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It2"}
!872 = !{!873}
!873 = distinct !{!873, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It2"}
!874 = !{!875}
!875 = distinct !{!875, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It2"}
!876 = !{!877}
!877 = distinct !{!877, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It2"}
!878 = !{!879}
!879 = distinct !{!879, !787, !"cmpfunc: %a:It2"}
!880 = !{!881}
!881 = distinct !{!881, !787, !"cmpfunc: %b:It2"}
!882 = !{!883}
!883 = distinct !{!883, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!884 = !{!885}
!885 = distinct !{!885, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!886 = !{!883, !879, !875, !871, !770}
!887 = !{!885, !881, !877, !873, !781}
!888 = !{!885, !881, !877, !873, !770}
!889 = !{!883, !879, !875, !871, !781}
!890 = !{!891}
!891 = distinct !{!891, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It2"}
!892 = !{!893}
!893 = distinct !{!893, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It2"}
!894 = !{!895}
!895 = distinct !{!895, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It2"}
!896 = !{!897}
!897 = distinct !{!897, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It2"}
!898 = !{!899}
!899 = distinct !{!899, !816, !"cmpfunc: %a:It2"}
!900 = !{!901}
!901 = distinct !{!901, !816, !"cmpfunc: %b:It2"}
!902 = !{!903}
!903 = distinct !{!903, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!904 = !{!905}
!905 = distinct !{!905, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!906 = !{!903, !899, !895, !891, !770}
!907 = !{!905, !901, !897, !893, !810}
!908 = !{!905, !901, !897, !893, !770}
!909 = !{!903, !899, !895, !891, !810}
!910 = !{!911}
!911 = distinct !{!911, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It3"}
!912 = !{!913}
!913 = distinct !{!913, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It3"}
!914 = !{!915}
!915 = distinct !{!915, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It3"}
!916 = !{!917}
!917 = distinct !{!917, !779, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It3"}
!918 = !{!919}
!919 = distinct !{!919, !787, !"cmpfunc: %a:It3"}
!920 = !{!921}
!921 = distinct !{!921, !787, !"cmpfunc: %b:It3"}
!922 = !{!923}
!923 = distinct !{!923, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!924 = !{!925}
!925 = distinct !{!925, !792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!926 = !{!923, !919, !915, !911, !770}
!927 = !{!925, !921, !917, !913, !781}
!928 = !{!925, !921, !917, !913, !770}
!929 = !{!923, !919, !915, !911, !781}
!930 = !{!931}
!931 = distinct !{!931, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a:It3"}
!932 = !{!933}
!933 = distinct !{!933, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b:It3"}
!934 = !{!935}
!935 = distinct !{!935, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0:It3"}
!936 = !{!937}
!937 = distinct !{!937, !808, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1:It3"}
!938 = !{!939}
!939 = distinct !{!939, !816, !"cmpfunc: %a:It3"}
!940 = !{!941}
!941 = distinct !{!941, !816, !"cmpfunc: %b:It3"}
!942 = !{!943}
!943 = distinct !{!943, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!944 = !{!945}
!945 = distinct !{!945, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!946 = !{!943, !939, !935, !931, !770}
!947 = !{!945, !941, !937, !933, !810}
!948 = !{!945, !941, !937, !933, !770}
!949 = !{!943, !939, !935, !931, !810}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!952 = distinct !{!952, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!957 = distinct !{!957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!960 = !{!956, !951}
!961 = !{!959, !954}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!964 = distinct !{!964, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!969 = distinct !{!969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!972 = !{!968, !963}
!973 = !{!971, !966}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!976 = distinct !{!976, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!981 = distinct !{!981, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!984 = !{!980, !975}
!985 = !{!983, !978}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!988 = distinct !{!988, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!989 = !{!990}
!990 = distinct !{!990, !988, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!991 = !{!992}
!992 = distinct !{!992, !993, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!993 = distinct !{!993, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!994 = !{!995}
!995 = distinct !{!995, !993, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!996 = !{!992, !987}
!997 = !{!995, !990}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1000 = distinct !{!1000, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1000, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1005 = distinct !{!1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1008 = !{!1004, !999}
!1009 = !{!1007, !1002}
!1010 = !{!1011, !1013}
!1011 = distinct !{!1011, !1012, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1012 = distinct !{!1012, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1013 = distinct !{!1013, !1014, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1014 = distinct !{!1014, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1015 = !{!1016, !1017}
!1016 = distinct !{!1016, !1012, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1017 = distinct !{!1017, !1014, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1020, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1020 = distinct !{!1020, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1020, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1025 = distinct !{!1025, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1025, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1028 = !{!1024, !1019}
!1029 = !{!1027, !1022}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1032 = distinct !{!1032, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1032, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1037 = distinct !{!1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1037, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1040 = !{!1036, !1031}
!1041 = !{!1039, !1034}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1044 = distinct !{!1044, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1044, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1049 = distinct !{!1049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1052 = !{!1048, !1043}
!1053 = !{!1051, !1046}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1056 = distinct !{!1056, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1056, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1061 = distinct !{!1061, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1061, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1064 = !{!1060, !1055}
!1065 = !{!1063, !1058}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1068 = distinct !{!1068, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1068, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1073 = distinct !{!1073, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1073, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1076 = !{!1072, !1067}
!1077 = !{!1075, !1070}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1080 = distinct !{!1080, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1085 = distinct !{!1085, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1085, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1088 = !{!1084, !1079}
!1089 = !{!1087, !1082}
!1090 = !{!1091, !1093}
!1091 = distinct !{!1091, !1092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1092 = distinct !{!1092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1093 = distinct !{!1093, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1094 = distinct !{!1094, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1095 = !{!1096, !1097}
!1096 = distinct !{!1096, !1092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1097 = distinct !{!1097, !1094, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1100 = distinct !{!1100, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1100, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1105 = distinct !{!1105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1108 = !{!1104, !1099, !1109}
!1109 = distinct !{!1109, !1110, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E: %v.0"}
!1110 = distinct !{!1110, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E"}
!1111 = !{!1107, !1102}
!1112 = !{!1107, !1102, !1109}
!1113 = !{!1104, !1099}
!1114 = !{!1109}
!1115 = !{!1116, !1118, !1109}
!1116 = distinct !{!1116, !1117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1117 = distinct !{!1117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1118 = distinct !{!1118, !1119, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1119 = distinct !{!1119, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1120 = !{!1121, !1122}
!1121 = distinct !{!1121, !1117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1122 = distinct !{!1122, !1119, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1123 = !{!1124, !1126}
!1124 = distinct !{!1124, !1125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1125 = distinct !{!1125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1126 = distinct !{!1126, !1127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1127 = distinct !{!1127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE: %v.0"}
!1130 = distinct !{!1130, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1133, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1133 = distinct !{!1133, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1133, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1138 = distinct !{!1138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %_0"}
!1141 = distinct !{!1141, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1138, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1144 = !{!1137, !1132, !1129}
!1145 = !{!1143, !1135, !1140}
!1146 = !{!1143, !1135, !1129}
!1147 = !{!1137, !1132, !1140}
!1148 = !{!1140, !1149, !1129}
!1149 = distinct !{!1149, !1141, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %is_less"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1152, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1152 = distinct !{!1152, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1152, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1157 = distinct !{!1157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %_0"}
!1160 = distinct !{!1160, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1163 = !{!1156, !1151, !1129}
!1164 = !{!1162, !1154, !1159}
!1165 = !{!1162, !1154, !1129}
!1166 = !{!1156, !1151, !1159}
!1167 = !{!1159, !1168, !1129}
!1168 = distinct !{!1168, !1160, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %is_less"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1171 = distinct !{!1171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1171, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1176 = distinct !{!1176, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %_0"}
!1179 = distinct !{!1179, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1176, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1184, !"cmpfunc: %a"}
!1184 = distinct !{!1184, !"cmpfunc"}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1184, !"cmpfunc: %b"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1189, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1189 = distinct !{!1189, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1189, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1192 = !{!1188, !1183, !1175, !1170}
!1193 = !{!1191, !1186, !1181, !1173, !1178}
!1194 = !{!1191, !1186, !1181, !1173}
!1195 = !{!1188, !1183, !1175, !1170, !1178}
!1196 = !{!1178, !1197}
!1197 = distinct !{!1197, !1179, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %is_less"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1200 = distinct !{!1200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1205, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1205 = distinct !{!1205, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %_0"}
!1208 = distinct !{!1208, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1205, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"cmpfunc: %a"}
!1213 = distinct !{!1213, !"cmpfunc"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"cmpfunc: %b"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1218 = distinct !{!1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1221 = !{!1217, !1212, !1204, !1199}
!1222 = !{!1220, !1215, !1210, !1202, !1207}
!1223 = !{!1220, !1215, !1210, !1202}
!1224 = !{!1217, !1212, !1204, !1199, !1207}
!1225 = !{!1207, !1226}
!1226 = distinct !{!1226, !1208, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %is_less"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1229 = distinct !{!1229, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1234 = distinct !{!1234, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %_0"}
!1237 = distinct !{!1237, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1234, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1240 = !{!1233, !1228}
!1241 = !{!1239, !1231, !1236}
!1242 = !{!1239, !1231}
!1243 = !{!1233, !1228, !1236}
!1244 = !{!1236, !1245}
!1245 = distinct !{!1245, !1237, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %is_less"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1248 = distinct !{!1248, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1248, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1253 = distinct !{!1253, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %_0"}
!1256 = distinct !{!1256, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1253, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1259 = !{!1252, !1247}
!1260 = !{!1258, !1250, !1255}
!1261 = !{!1258, !1250}
!1262 = !{!1252, !1247, !1255}
!1263 = !{!1255, !1264}
!1264 = distinct !{!1264, !1256, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %is_less"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1267 = distinct !{!1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1272 = distinct !{!1272, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"cmpfunc: %a"}
!1277 = distinct !{!1277, !"cmpfunc"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"cmpfunc: %b"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1282 = distinct !{!1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1285 = !{!1281, !1276, !1271, !1266}
!1286 = !{!1284, !1279, !1274, !1269}
!1287 = !{!1288, !1290, !1292, !1294}
!1288 = distinct !{!1288, !1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1289 = distinct !{!1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1290 = distinct !{!1290, !1291, !"cmpfunc: %b"}
!1291 = distinct !{!1291, !"cmpfunc"}
!1292 = distinct !{!1292, !1293, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1293 = distinct !{!1293, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1294 = distinct !{!1294, !1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1295 = distinct !{!1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1296 = !{!1297, !1298, !1299, !1300}
!1297 = distinct !{!1297, !1289, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1298 = distinct !{!1298, !1291, !"cmpfunc: %a"}
!1299 = distinct !{!1299, !1293, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1300 = distinct !{!1300, !1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1301 = !{!1302, !1304}
!1302 = distinct !{!1302, !1303, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1303 = distinct !{!1303, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1304 = distinct !{!1304, !1305, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1305 = distinct !{!1305, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1308 = distinct !{!1308, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1308, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1313 = distinct !{!1313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1316 = !{!1312, !1307}
!1317 = !{!1315, !1310}
!1318 = !{!1319, !1321}
!1319 = distinct !{!1319, !1320, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1320 = distinct !{!1320, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1321 = distinct !{!1321, !1322, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1322 = distinct !{!1322, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1323 = !{!1324, !1325}
!1324 = distinct !{!1324, !1320, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1325 = distinct !{!1325, !1322, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1326 = !{!1327, !1329}
!1327 = distinct !{!1327, !1328, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1328 = distinct !{!1328, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1329 = distinct !{!1329, !1330, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1330 = distinct !{!1330, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1333 = distinct !{!1333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1338 = distinct !{!1338, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1338, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"cmpfunc: %a"}
!1343 = distinct !{!1343, !"cmpfunc"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1343, !"cmpfunc: %b"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1348 = distinct !{!1348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1351 = !{!1347, !1342, !1337, !1332}
!1352 = !{!1350, !1345, !1340, !1335}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1355 = distinct !{!1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1360 = distinct !{!1360, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1365, !"cmpfunc: %a"}
!1365 = distinct !{!1365, !"cmpfunc"}
!1366 = !{!1367}
!1367 = distinct !{!1367, !1365, !"cmpfunc: %b"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1370 = distinct !{!1370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1373 = !{!1369, !1364, !1359, !1354}
!1374 = !{!1372, !1367, !1362, !1357}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1377 = distinct !{!1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1382 = distinct !{!1382, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1382, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"cmpfunc: %a"}
!1387 = distinct !{!1387, !"cmpfunc"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1387, !"cmpfunc: %b"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1392 = distinct !{!1392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1395 = !{!1391, !1386, !1381, !1376}
!1396 = !{!1394, !1389, !1384, !1379}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1399 = distinct !{!1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1404 = distinct !{!1404, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!1417 = !{!1413, !1408, !1403, !1398}
!1418 = !{!1416, !1411, !1406, !1401}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1421 = distinct !{!1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1426 = distinct !{!1426, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1426, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"cmpfunc: %a"}
!1431 = distinct !{!1431, !"cmpfunc"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1431, !"cmpfunc: %b"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1436 = distinct !{!1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1439 = !{!1435, !1430, !1425, !1420}
!1440 = !{!1438, !1433, !1428, !1423}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1443 = distinct !{!1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1448 = distinct !{!1448, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"cmpfunc: %a"}
!1453 = distinct !{!1453, !"cmpfunc"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"cmpfunc: %b"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1458 = distinct !{!1458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1461 = !{!1457, !1452, !1447, !1442}
!1462 = !{!1460, !1455, !1450, !1445}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1465 = distinct !{!1465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1470 = distinct !{!1470, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1475, !"cmpfunc: %a"}
!1475 = distinct !{!1475, !"cmpfunc"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1475, !"cmpfunc: %b"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1480 = distinct !{!1480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1480, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1483 = !{!1479, !1474, !1469, !1464}
!1484 = !{!1482, !1477, !1472, !1467}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1487 = distinct !{!1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1492, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1492 = distinct !{!1492, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1492, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1497, !"cmpfunc: %a"}
!1497 = distinct !{!1497, !"cmpfunc"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1497, !"cmpfunc: %b"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1502 = distinct !{!1502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1505 = !{!1501, !1496, !1491, !1486}
!1506 = !{!1504, !1499, !1494, !1489}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1509 = distinct !{!1509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1514 = distinct !{!1514, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1514, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"cmpfunc: %a"}
!1519 = distinct !{!1519, !"cmpfunc"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1519, !"cmpfunc: %b"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1524 = distinct !{!1524, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1527 = !{!1523, !1518, !1513, !1508}
!1528 = !{!1526, !1521, !1516, !1511}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1531 = distinct !{!1531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1536 = distinct !{!1536, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1536, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"cmpfunc: %a"}
!1541 = distinct !{!1541, !"cmpfunc"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1541, !"cmpfunc: %b"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1546 = distinct !{!1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1549 = !{!1545, !1540, !1535, !1530}
!1550 = !{!1548, !1543, !1538, !1533}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE: %self.0"}
!1553 = distinct !{!1553, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE: %v.0"}
!1556 = distinct !{!1556, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8b84c5139c1bcfdaE"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1559 = distinct !{!1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1564 = distinct !{!1564, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %_0"}
!1567 = distinct !{!1567, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1564, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"cmpfunc: %a"}
!1572 = distinct !{!1572, !"cmpfunc"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"cmpfunc: %b"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1577 = distinct !{!1577, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1577, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1580 = !{!1576, !1571, !1563, !1558, !1555}
!1581 = !{!1579, !1574, !1569, !1561, !1566}
!1582 = !{!1579, !1574, !1569, !1561, !1555}
!1583 = !{!1576, !1571, !1563, !1558, !1566}
!1584 = !{!1566, !1585, !1555}
!1585 = distinct !{!1585, !1567, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h100478f2b2ecb8f7E: %is_less"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1588 = distinct !{!1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1588, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1593, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1593 = distinct !{!1593, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1596, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %_0"}
!1596 = distinct !{!1596, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1593, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"cmpfunc: %a"}
!1601 = distinct !{!1601, !"cmpfunc"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1601, !"cmpfunc: %b"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1606 = distinct !{!1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1609 = !{!1605, !1600, !1592, !1587, !1555}
!1610 = !{!1608, !1603, !1598, !1590, !1595}
!1611 = !{!1608, !1603, !1598, !1590, !1555}
!1612 = !{!1605, !1600, !1592, !1587, !1595}
!1613 = !{!1595, !1614, !1555}
!1614 = distinct !{!1614, !1596, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1a33bfb5d36ae10dE: %is_less"}
!1615 = !{!1616, !1618}
!1616 = distinct !{!1616, !1617, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1617 = distinct !{!1617, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1618 = distinct !{!1618, !1619, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1619 = distinct !{!1619, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1620 = !{!1621, !1623, !1625, !1627}
!1621 = distinct !{!1621, !1622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1622 = distinct !{!1622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1623 = distinct !{!1623, !1624, !"cmpfunc: %b"}
!1624 = distinct !{!1624, !"cmpfunc"}
!1625 = distinct !{!1625, !1626, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1626 = distinct !{!1626, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1627 = distinct !{!1627, !1628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1628 = distinct !{!1628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = distinct !{!1630, !1622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1631 = distinct !{!1631, !1624, !"cmpfunc: %a"}
!1632 = distinct !{!1632, !1626, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1633 = distinct !{!1633, !1628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1634 = !{!1635, !1637, !1639, !1641}
!1635 = distinct !{!1635, !1636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1636 = distinct !{!1636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1637 = distinct !{!1637, !1638, !"cmpfunc: %b"}
!1638 = distinct !{!1638, !"cmpfunc"}
!1639 = distinct !{!1639, !1640, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1640 = distinct !{!1640, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1641 = distinct !{!1641, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1642 = distinct !{!1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = distinct !{!1644, !1636, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1645 = distinct !{!1645, !1638, !"cmpfunc: %a"}
!1646 = distinct !{!1646, !1640, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1647 = distinct !{!1647, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1648 = !{!1649, !1651}
!1649 = distinct !{!1649, !1650, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1650 = distinct !{!1650, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1651 = distinct !{!1651, !1652, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1652 = distinct !{!1652, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1655, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1655 = distinct !{!1655, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1656 = !{!1657}
!1657 = distinct !{!1657, !1655, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1660 = distinct !{!1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1663 = !{!1659, !1654}
!1664 = !{!1662, !1657}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1667 = distinct !{!1667, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1667, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1672 = distinct !{!1672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1675 = !{!1671, !1666}
!1676 = !{!1674, !1669}
!1677 = !{!1678}
!1678 = distinct !{!1678, !1679, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1679 = distinct !{!1679, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1679, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1684, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1684 = distinct !{!1684, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1684, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1687 = !{!1683, !1678}
!1688 = !{!1686, !1681}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1691 = distinct !{!1691, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1694 = !{!1695}
!1695 = distinct !{!1695, !1696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1696 = distinct !{!1696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1696, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1699 = !{!1695, !1690}
!1700 = !{!1698, !1693}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1703, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1703 = distinct !{!1703, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1703, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1708 = distinct !{!1708, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1708, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1711 = !{!1707, !1702}
!1712 = !{!1710, !1705}
!1713 = !{!1714}
!1714 = distinct !{!1714, !1715, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1715 = distinct !{!1715, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1715, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1720, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1720 = distinct !{!1720, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1720, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1723 = !{!1719, !1714}
!1724 = !{!1722, !1717}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1727, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1727 = distinct !{!1727, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1727, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1732 = distinct !{!1732, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1735 = !{!1731, !1726}
!1736 = !{!1734, !1729}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1739, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1739 = distinct !{!1739, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1739, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1744 = distinct !{!1744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1747 = !{!1743, !1738}
!1748 = !{!1746, !1741}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1751 = distinct !{!1751, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1751, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1756 = distinct !{!1756, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1756, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1759 = !{!1755, !1750}
!1760 = !{!1758, !1753}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1763, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1763 = distinct !{!1763, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1763, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1768 = distinct !{!1768, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1768, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1771 = !{!1767, !1762}
!1772 = !{!1770, !1765}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1775, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE: %self.0"}
!1775 = distinct !{!1775, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h2a8446a38be0047bE"}
!1776 = !{!1777}
!1777 = distinct !{!1777, !1778, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE: %v.0"}
!1778 = distinct !{!1778, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb23995b4109b867eE"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1781 = distinct !{!1781, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1781, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1786 = distinct !{!1786, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1789, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %_0"}
!1789 = distinct !{!1789, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1786, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1792 = !{!1785, !1780, !1777}
!1793 = !{!1791, !1783, !1788}
!1794 = !{!1791, !1783, !1777}
!1795 = !{!1785, !1780, !1788}
!1796 = !{!1788, !1797, !1777}
!1797 = distinct !{!1797, !1789, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h785a8b4ec5343c44E: %is_less"}
!1798 = !{!1799}
!1799 = distinct !{!1799, !1800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1800 = distinct !{!1800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1803 = !{!1804}
!1804 = distinct !{!1804, !1805, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1805 = distinct !{!1805, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %_0"}
!1808 = distinct !{!1808, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1805, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1811 = !{!1804, !1799, !1777}
!1812 = !{!1810, !1802, !1807}
!1813 = !{!1810, !1802, !1777}
!1814 = !{!1804, !1799, !1807}
!1815 = !{!1807, !1816, !1777}
!1816 = distinct !{!1816, !1808, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5b0885384205f789E: %is_less"}
!1817 = !{!1818, !1820}
!1818 = distinct !{!1818, !1819, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1819 = distinct !{!1819, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1820 = distinct !{!1820, !1821, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1821 = distinct !{!1821, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1822 = !{!1823, !1825}
!1823 = distinct !{!1823, !1824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1824 = distinct !{!1824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1825 = distinct !{!1825, !1826, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1826 = distinct !{!1826, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1827 = !{!1828, !1829}
!1828 = distinct !{!1828, !1824, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1829 = distinct !{!1829, !1826, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1830 = !{!1831, !1833}
!1831 = distinct !{!1831, !1832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1832 = distinct !{!1832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1833 = distinct !{!1833, !1834, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!1834 = distinct !{!1834, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!1835 = !{!1836, !1837}
!1836 = distinct !{!1836, !1832, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1837 = distinct !{!1837, !1834, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!1838 = !{!1839, !1841}
!1839 = distinct !{!1839, !1840, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!1840 = distinct !{!1840, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!1841 = distinct !{!1841, !1842, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!1842 = distinct !{!1842, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E: %_0"}
!1845 = distinct !{!1845, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hb7a66119aa886128E"}
!1846 = !{i64 0, i64 2}
!1847 = !{i64 0, i64 -9223372036854775807}
!1848 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1851 = distinct !{!1851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1854 = !{!1855}
!1855 = distinct !{!1855, !1856, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1856 = distinct !{!1856, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1856, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1861, !"cmpfunc: %a"}
!1861 = distinct !{!1861, !"cmpfunc"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1861, !"cmpfunc: %b"}
!1864 = !{!1865}
!1865 = distinct !{!1865, !1866, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1866 = distinct !{!1866, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1867 = !{!1868}
!1868 = distinct !{!1868, !1866, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1869 = !{!1865, !1860, !1855, !1850}
!1870 = !{!1868, !1863, !1858, !1853}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1873 = distinct !{!1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1878, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1878 = distinct !{!1878, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1878, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1883, !"cmpfunc: %a"}
!1883 = distinct !{!1883, !"cmpfunc"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1883, !"cmpfunc: %b"}
!1886 = !{!1887}
!1887 = distinct !{!1887, !1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1888 = distinct !{!1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1889 = !{!1890}
!1890 = distinct !{!1890, !1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1891 = !{!1887, !1882, !1877, !1872}
!1892 = !{!1890, !1885, !1880, !1875}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1895 = distinct !{!1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1896 = !{!1897}
!1897 = distinct !{!1897, !1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1900, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1900 = distinct !{!1900, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1900, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"cmpfunc: %a"}
!1905 = distinct !{!1905, !"cmpfunc"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1905, !"cmpfunc: %b"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1910 = distinct !{!1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1913 = !{!1909, !1904, !1899, !1894}
!1914 = !{!1912, !1907, !1902, !1897}
!1915 = !{!1916, !1918}
!1916 = distinct !{!1916, !1917, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE: %a.0"}
!1917 = distinct !{!1917, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE"}
!1918 = distinct !{!1918, !1919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82ada4bfba8ee1a0E: %self.0"}
!1919 = distinct !{!1919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82ada4bfba8ee1a0E"}
!1920 = !{!1921}
!1921 = distinct !{!1921, !1917, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE: %b.0"}
!1922 = !{!1921, !1918}
!1923 = !{!1916}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E: %v.0"}
!1926 = distinct !{!1926, !"_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1926, !"_ZN4core5slice4sort6stable5merge5merge17hd7b9dc7009eb4521E: %scratch.0"}
!1929 = !{!1925, !1928}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1932 = distinct !{!1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1935 = !{!1936}
!1936 = distinct !{!1936, !1937, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1937 = distinct !{!1937, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1938 = !{!1939}
!1939 = distinct !{!1939, !1937, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"cmpfunc: %a"}
!1942 = distinct !{!1942, !"cmpfunc"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1942, !"cmpfunc: %b"}
!1945 = !{!1946}
!1946 = distinct !{!1946, !1947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1947 = distinct !{!1947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1950 = !{!1946, !1941, !1936, !1931, !1928}
!1951 = !{!1949, !1944, !1939, !1934, !1952, !1925}
!1952 = distinct !{!1952, !1953, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf0f9edc17432b042E: %self"}
!1953 = distinct !{!1953, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf0f9edc17432b042E"}
!1954 = !{!1949, !1944, !1939, !1934, !1925}
!1955 = !{!1946, !1941, !1936, !1931, !1952, !1928}
!1956 = !{!1952, !1928}
!1957 = !{!1958}
!1958 = distinct !{!1958, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1959 = distinct !{!1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1960 = !{!1961}
!1961 = distinct !{!1961, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1962 = !{!1963}
!1963 = distinct !{!1963, !1964, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1964 = distinct !{!1964, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1964, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1967 = !{!1968}
!1968 = distinct !{!1968, !1969, !"cmpfunc: %a"}
!1969 = distinct !{!1969, !"cmpfunc"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1969, !"cmpfunc: %b"}
!1972 = !{!1973}
!1973 = distinct !{!1973, !1974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1974 = distinct !{!1974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1975 = !{!1976}
!1976 = distinct !{!1976, !1974, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1977 = !{!1973, !1968, !1963, !1958, !1925}
!1978 = !{!1976, !1971, !1966, !1961, !1979, !1928}
!1979 = distinct !{!1979, !1980, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6bc68e1ff7ef254fE: %self"}
!1980 = distinct !{!1980, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6bc68e1ff7ef254fE"}
!1981 = !{!1976, !1971, !1966, !1961, !1928}
!1982 = !{!1973, !1968, !1963, !1958, !1979, !1925}
!1983 = !{!1979, !1928}
!1984 = !{!1985, !1987}
!1985 = distinct !{!1985, !1986, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h162a6a7eadf70bf3E: %self"}
!1986 = distinct !{!1986, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h162a6a7eadf70bf3E"}
!1987 = distinct !{!1987, !1988, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h512f87c89e5ca909E: %_1"}
!1988 = distinct !{!1988, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h512f87c89e5ca909E"}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1991, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!1991 = distinct !{!1991, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!1992 = !{!1993}
!1993 = distinct !{!1993, !1991, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!1994 = !{!1995}
!1995 = distinct !{!1995, !1996, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!1996 = distinct !{!1996, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!1997 = !{!1998}
!1998 = distinct !{!1998, !1996, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!1999 = !{!2000}
!2000 = distinct !{!2000, !2001, !"cmpfunc: %a"}
!2001 = distinct !{!2001, !"cmpfunc"}
!2002 = !{!2003}
!2003 = distinct !{!2003, !2001, !"cmpfunc: %b"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2006, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2006 = distinct !{!2006, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2006, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2009 = !{!2005, !2000, !1995, !1990}
!2010 = !{!2008, !2003, !1998, !1993}
!2011 = !{!2012}
!2012 = distinct !{!2012, !2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2013 = distinct !{!2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2014 = !{!2015}
!2015 = distinct !{!2015, !2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2018, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2018 = distinct !{!2018, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2019 = !{!2020}
!2020 = distinct !{!2020, !2018, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2023, !"cmpfunc: %a"}
!2023 = distinct !{!2023, !"cmpfunc"}
!2024 = !{!2025}
!2025 = distinct !{!2025, !2023, !"cmpfunc: %b"}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2028 = distinct !{!2028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2029 = !{!2030}
!2030 = distinct !{!2030, !2028, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2031 = !{!2027, !2022, !2017, !2012}
!2032 = !{!2030, !2025, !2020, !2015}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2035 = distinct !{!2035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2035, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2040 = distinct !{!2040, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2040, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!2053 = !{!2049, !2044, !2039, !2034}
!2054 = !{!2052, !2047, !2042, !2037, !2055}
!2055 = distinct !{!2055, !2056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf0f9edc17432b042E: %self"}
!2056 = distinct !{!2056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf0f9edc17432b042E"}
!2057 = !{!2052, !2047, !2042, !2037}
!2058 = !{!2049, !2044, !2039, !2034, !2055}
!2059 = !{!2055}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2062 = distinct !{!2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2062, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2067 = distinct !{!2067, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"cmpfunc: %a"}
!2072 = distinct !{!2072, !"cmpfunc"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"cmpfunc: %b"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2077 = distinct !{!2077, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2080 = !{!2076, !2071, !2066, !2061}
!2081 = !{!2079, !2074, !2069, !2064, !2082}
!2082 = distinct !{!2082, !2083, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6bc68e1ff7ef254fE: %self"}
!2083 = distinct !{!2083, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6bc68e1ff7ef254fE"}
!2084 = !{!2079, !2074, !2069, !2064}
!2085 = !{!2076, !2071, !2066, !2061, !2082}
!2086 = !{!2082}
!2087 = !{!2088, !2090}
!2088 = distinct !{!2088, !2089, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h162a6a7eadf70bf3E: %self"}
!2089 = distinct !{!2089, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h162a6a7eadf70bf3E"}
!2090 = distinct !{!2090, !2091, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h512f87c89e5ca909E: %_1"}
!2091 = distinct !{!2091, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h512f87c89e5ca909E"}
!2092 = !{!"branch_weights", i32 4000000, i32 4001}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2095, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %a"}
!2095 = distinct !{!2095, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE"}
!2096 = !{!2097}
!2097 = distinct !{!2097, !2095, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %b"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2100 = distinct !{!2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2103 = !{!2104}
!2104 = distinct !{!2104, !2105, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2105 = distinct !{!2105, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2105, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2108 = !{!2109}
!2109 = distinct !{!2109, !2110, !"cmpfunc: %a"}
!2110 = distinct !{!2110, !"cmpfunc"}
!2111 = !{!2112}
!2112 = distinct !{!2112, !2110, !"cmpfunc: %b"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2115 = distinct !{!2115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2118 = !{!2114, !2109, !2104, !2099, !2097}
!2119 = !{!2117, !2112, !2107, !2102, !2094}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2122, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2122 = distinct !{!2122, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2125, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %a"}
!2125 = distinct !{!2125, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE"}
!2126 = !{!2127}
!2127 = distinct !{!2127, !2125, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %b"}
!2128 = !{!2129}
!2129 = distinct !{!2129, !2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2130 = distinct !{!2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2133 = !{!2134}
!2134 = distinct !{!2134, !2135, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2135 = distinct !{!2135, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2135, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"cmpfunc: %a"}
!2140 = distinct !{!2140, !"cmpfunc"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2140, !"cmpfunc: %b"}
!2143 = !{!2144}
!2144 = distinct !{!2144, !2145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2145 = distinct !{!2145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2146 = !{!2147}
!2147 = distinct !{!2147, !2145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2148 = !{!2144, !2139, !2134, !2129, !2127}
!2149 = !{!2147, !2142, !2137, !2132, !2124}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2152 = distinct !{!2152, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2155, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %a"}
!2155 = distinct !{!2155, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2155, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %b"}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2160 = distinct !{!2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2161 = !{!2162}
!2162 = distinct !{!2162, !2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2165 = distinct !{!2165, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2165, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2170, !"cmpfunc: %a"}
!2170 = distinct !{!2170, !"cmpfunc"}
!2171 = !{!2172}
!2172 = distinct !{!2172, !2170, !"cmpfunc: %b"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2175 = distinct !{!2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2176 = !{!2177}
!2177 = distinct !{!2177, !2175, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2178 = !{!2174, !2169, !2164, !2159, !2157}
!2179 = !{!2177, !2172, !2167, !2162, !2154}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2182 = distinct !{!2182, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %a"}
!2185 = distinct !{!2185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE"}
!2186 = !{!2187}
!2187 = distinct !{!2187, !2185, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %b"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2190 = distinct !{!2190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2191 = !{!2192}
!2192 = distinct !{!2192, !2190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2195, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2195 = distinct !{!2195, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2196 = !{!2197}
!2197 = distinct !{!2197, !2195, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2200, !"cmpfunc: %a"}
!2200 = distinct !{!2200, !"cmpfunc"}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2200, !"cmpfunc: %b"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2205 = distinct !{!2205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2208 = !{!2204, !2199, !2194, !2189, !2187}
!2209 = !{!2207, !2202, !2197, !2192, !2184}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2212 = distinct !{!2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %a"}
!2215 = distinct !{!2215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hf4e4005ea128fbfdE: %b"}
!2218 = !{!2219}
!2219 = distinct !{!2219, !2220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2220 = distinct !{!2220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2225 = distinct !{!2225, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2226 = !{!2227}
!2227 = distinct !{!2227, !2225, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2228 = !{!2229}
!2229 = distinct !{!2229, !2230, !"cmpfunc: %a"}
!2230 = distinct !{!2230, !"cmpfunc"}
!2231 = !{!2232}
!2232 = distinct !{!2232, !2230, !"cmpfunc: %b"}
!2233 = !{!2234}
!2234 = distinct !{!2234, !2235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2235 = distinct !{!2235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2238 = !{!2234, !2229, !2224, !2219, !2217}
!2239 = !{!2237, !2232, !2227, !2222, !2214}
!2240 = !{!2241}
!2241 = distinct !{!2241, !2242, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2242 = distinct !{!2242, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2243 = !{!2244}
!2244 = distinct !{!2244, !2245, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2245 = distinct !{!2245, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2246 = distinct !{!2246, !2247}
!2247 = !{!"llvm.loop.unroll.disable"}
!2248 = !{!2249}
!2249 = distinct !{!2249, !2250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2250 = distinct !{!2250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2251 = !{!2252}
!2252 = distinct !{!2252, !2250, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2255, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2255 = distinct !{!2255, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2255, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2258 = !{!2259}
!2259 = distinct !{!2259, !2260, !"cmpfunc: %a"}
!2260 = distinct !{!2260, !"cmpfunc"}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2260, !"cmpfunc: %b"}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2265 = distinct !{!2265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2265, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2268 = !{!2264, !2259, !2254, !2249}
!2269 = !{!2267, !2262, !2257, !2252}
!2270 = !{!2271}
!2271 = distinct !{!2271, !2272, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2272 = distinct !{!2272, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2273 = !{!2274}
!2274 = distinct !{!2274, !2275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2275 = distinct !{!2275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2278 = !{!2279}
!2279 = distinct !{!2279, !2280, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2280 = distinct !{!2280, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2281 = !{!2282}
!2282 = distinct !{!2282, !2280, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2283 = !{!2284}
!2284 = distinct !{!2284, !2285, !"cmpfunc: %a"}
!2285 = distinct !{!2285, !"cmpfunc"}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2285, !"cmpfunc: %b"}
!2288 = !{!2289}
!2289 = distinct !{!2289, !2290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2290 = distinct !{!2290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2293 = !{!2289, !2284, !2279, !2274}
!2294 = !{!2292, !2287, !2282, !2277}
!2295 = !{!2296}
!2296 = distinct !{!2296, !2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2297 = distinct !{!2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2298 = !{!2299}
!2299 = distinct !{!2299, !2300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2300 = distinct !{!2300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2301 = !{!2302}
!2302 = distinct !{!2302, !2300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2303 = !{!2304}
!2304 = distinct !{!2304, !2305, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2305 = distinct !{!2305, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2305, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2308 = !{!2309}
!2309 = distinct !{!2309, !2310, !"cmpfunc: %a"}
!2310 = distinct !{!2310, !"cmpfunc"}
!2311 = !{!2312}
!2312 = distinct !{!2312, !2310, !"cmpfunc: %b"}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2315 = distinct !{!2315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2318 = !{!2314, !2309, !2304, !2299}
!2319 = !{!2317, !2312, !2307, !2302}
!2320 = !{!2321}
!2321 = distinct !{!2321, !2322, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2322 = distinct !{!2322, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2323 = !{!2324}
!2324 = distinct !{!2324, !2325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2325 = distinct !{!2325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2330 = distinct !{!2330, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2330, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"cmpfunc: %a"}
!2335 = distinct !{!2335, !"cmpfunc"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2335, !"cmpfunc: %b"}
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2340 = distinct !{!2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2340, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2343 = !{!2339, !2334, !2329, !2324}
!2344 = !{!2342, !2337, !2332, !2327}
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2347 = distinct !{!2347, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2350 = distinct !{!2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2355 = distinct !{!2355, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2355, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
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
!2368 = !{!2364, !2359, !2354, !2349}
!2369 = !{!2367, !2362, !2357, !2352}
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2372 = distinct !{!2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E: %self"}
!2375 = distinct !{!2375, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hed512d4a6c3439a4E"}
!2376 = distinct !{!2376, !2247}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2379 = distinct !{!2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2380 = !{!2381}
!2381 = distinct !{!2381, !2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2384 = distinct !{!2384, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2385 = !{!2386}
!2386 = distinct !{!2386, !2387, !"_ZN4core5slice4sort6shared5pivot7median317hfeaf4489280a47b9E: %c"}
!2387 = distinct !{!2387, !"_ZN4core5slice4sort6shared5pivot7median317hfeaf4489280a47b9E"}
!2388 = !{!2389}
!2389 = distinct !{!2389, !2384, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2390 = !{!2391}
!2391 = distinct !{!2391, !2392, !"cmpfunc: %a"}
!2392 = distinct !{!2392, !"cmpfunc"}
!2393 = !{!2394}
!2394 = distinct !{!2394, !2392, !"cmpfunc: %b"}
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2397 = distinct !{!2397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2398 = !{!2399}
!2399 = distinct !{!2399, !2397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2400 = !{!2396, !2391, !2383, !2378, !2401}
!2401 = distinct !{!2401, !2402, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE: %v.0"}
!2402 = distinct !{!2402, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE"}
!2403 = !{!2399, !2394, !2389, !2381, !2386, !2404}
!2404 = distinct !{!2404, !2402, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcaba8409903ae8bcE: %is_less"}
!2405 = !{!2399, !2394, !2389, !2381, !2401}
!2406 = !{!2396, !2391, !2383, !2378, !2386, !2404}
!2407 = !{!2408, !2410, !2412, !2414, !2401}
!2408 = distinct !{!2408, !2409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2409 = distinct !{!2409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2410 = distinct !{!2410, !2411, !"cmpfunc: %b"}
!2411 = distinct !{!2411, !"cmpfunc"}
!2412 = distinct !{!2412, !2413, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2413 = distinct !{!2413, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2414 = distinct !{!2414, !2415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2415 = distinct !{!2415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2416 = !{!2417, !2418, !2419, !2420, !2404}
!2417 = distinct !{!2417, !2409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2418 = distinct !{!2418, !2411, !"cmpfunc: %a"}
!2419 = distinct !{!2419, !2413, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2420 = distinct !{!2420, !2415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2421 = !{!2422, !2424, !2426, !2428}
!2422 = distinct !{!2422, !2423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2423 = distinct !{!2423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2424 = distinct !{!2424, !2425, !"cmpfunc: %a"}
!2425 = distinct !{!2425, !"cmpfunc"}
!2426 = distinct !{!2426, !2427, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 0"}
!2427 = distinct !{!2427, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE"}
!2428 = distinct !{!2428, !2429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %a"}
!2429 = distinct !{!2429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE"}
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = distinct !{!2431, !2423, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2432 = distinct !{!2432, !2425, !"cmpfunc: %b"}
!2433 = distinct !{!2433, !2427, !"_ZN4core3ops8function5FnMut8call_mut17he9567101568c3fecE: argument 1"}
!2434 = distinct !{!2434, !2429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8bb05679d3bc3cdbE: %b"}
!2435 = !{!2436, !2438}
!2436 = distinct !{!2436, !2437, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E: %pair"}
!2437 = distinct !{!2437, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E"}
!2438 = distinct !{!2438, !2437, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h33449fec01f173c2E: %self.0"}
!2439 = !{!2440}
!2440 = distinct !{!2440, !2441, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2441 = distinct !{!2441, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2442 = !{!2443}
!2443 = distinct !{!2443, !2441, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2444 = !{!2445}
!2445 = distinct !{!2445, !2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2446 = distinct !{!2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2447 = !{!2448}
!2448 = distinct !{!2448, !2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2449 = !{!2445, !2440}
!2450 = !{!2448, !2443}
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2453 = distinct !{!2453, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2453, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2456 = !{!2457}
!2457 = distinct !{!2457, !2458, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2458 = distinct !{!2458, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2459 = !{!2460}
!2460 = distinct !{!2460, !2458, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2461 = !{!2457, !2452}
!2462 = !{!2460, !2455}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2465 = distinct !{!2465, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2470 = distinct !{!2470, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2473 = !{!2469, !2464}
!2474 = !{!2472, !2467}
!2475 = !{!2476, !2478}
!2476 = distinct !{!2476, !2477, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE: %a.0"}
!2477 = distinct !{!2477, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE"}
!2478 = distinct !{!2478, !2479, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82ada4bfba8ee1a0E: %self.0"}
!2479 = distinct !{!2479, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82ada4bfba8ee1a0E"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2477, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h6e3a09844146b34cE: %b.0"}
!2482 = !{!2481, !2478}
!2483 = !{!2476}
!2484 = !{!2485}
!2485 = distinct !{!2485, !2486, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2486 = distinct !{!2486, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2487 = !{!2488}
!2488 = distinct !{!2488, !2486, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2491 = distinct !{!2491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2491, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2494 = !{!2490, !2485}
!2495 = !{!2493, !2488}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2498 = distinct !{!2498, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2499 = !{!2500}
!2500 = distinct !{!2500, !2498, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2503 = distinct !{!2503, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2506 = !{!2502, !2497}
!2507 = !{!2505, !2500}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2510, !"_ZN4core3ptr10swap_chunk17h9a68715e737b2702E: %x"}
!2510 = distinct !{!2510, !"_ZN4core3ptr10swap_chunk17h9a68715e737b2702E"}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2510, !"_ZN4core3ptr10swap_chunk17h9a68715e737b2702E: %y"}
!2513 = !{!2514, !2516}
!2514 = distinct !{!2514, !2515, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2515 = distinct !{!2515, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2516 = distinct !{!2516, !2517, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2517 = distinct !{!2517, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2518 = !{!2519, !2520, !2521, !2523}
!2519 = distinct !{!2519, !2515, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2520 = distinct !{!2520, !2517, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2521 = distinct !{!2521, !2522, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2522 = distinct !{!2522, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2523 = distinct !{!2523, !2522, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2524 = !{!2525, !2527}
!2525 = distinct !{!2525, !2526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2526 = distinct !{!2526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2527 = distinct !{!2527, !2528, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2528 = distinct !{!2528, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2529 = !{!2530, !2531, !2532, !2534}
!2530 = distinct !{!2530, !2526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2531 = distinct !{!2531, !2528, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2532 = distinct !{!2532, !2533, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2533 = distinct !{!2533, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2534 = distinct !{!2534, !2533, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2535 = !{!2531}
!2536 = !{!2527}
!2537 = !{!2530}
!2538 = !{!2525}
!2539 = !{!2530, !2531}
!2540 = !{!2525, !2527, !2532, !2534}
!2541 = !{!2532, !2534}
!2542 = !{!2520}
!2543 = !{!2516}
!2544 = !{!2519}
!2545 = !{!2514}
!2546 = !{!2519, !2520}
!2547 = !{!2514, !2516, !2521, !2523}
!2548 = !{!2521, !2523}
!2549 = !{!2550, !2552}
!2550 = distinct !{!2550, !2551, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2551 = distinct !{!2551, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2552 = distinct !{!2552, !2553, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2553 = distinct !{!2553, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2554 = !{!2555, !2556, !2557, !2559}
!2555 = distinct !{!2555, !2551, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2556 = distinct !{!2556, !2553, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2557 = distinct !{!2557, !2558, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2558 = distinct !{!2558, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2559 = distinct !{!2559, !2558, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2560 = !{!2557, !2559}
!2561 = !{!2562, !2564, !2566}
!2562 = distinct !{!2562, !2563, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2563 = distinct !{!2563, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2564 = distinct !{!2564, !2565, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2565 = distinct !{!2565, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2566 = distinct !{!2566, !2567, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2567 = distinct !{!2567, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2568 = !{!2569, !2570, !2571, !2572, !2574}
!2569 = distinct !{!2569, !2563, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2570 = distinct !{!2570, !2565, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2571 = distinct !{!2571, !2567, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2572 = distinct !{!2572, !2573, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2573 = distinct !{!2573, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2574 = distinct !{!2574, !2573, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2575 = !{!2576, !2578, !2580}
!2576 = distinct !{!2576, !2577, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2577 = distinct !{!2577, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2578 = distinct !{!2578, !2579, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2579 = distinct !{!2579, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2580 = distinct !{!2580, !2581, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2581 = distinct !{!2581, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2582 = !{!2583, !2584, !2585, !2586, !2588}
!2583 = distinct !{!2583, !2577, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2584 = distinct !{!2584, !2579, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2585 = distinct !{!2585, !2581, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2586 = distinct !{!2586, !2587, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2587 = distinct !{!2587, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2588 = distinct !{!2588, !2587, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2589 = !{!2585}
!2590 = !{!2580}
!2591 = !{!2578}
!2592 = !{!2584}
!2593 = !{!2576}
!2594 = !{!2583}
!2595 = !{!2583, !2584, !2585}
!2596 = !{!2576, !2578, !2580, !2586, !2588}
!2597 = !{!2586, !2588}
!2598 = !{!2571}
!2599 = !{!2566}
!2600 = !{!2564}
!2601 = !{!2570}
!2602 = !{!2562}
!2603 = !{!2569}
!2604 = !{!2569, !2570, !2571}
!2605 = !{!2562, !2564, !2566, !2572, !2574}
!2606 = !{!2572, !2574}
!2607 = !{!2608, !2610, !2612}
!2608 = distinct !{!2608, !2609, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2609 = distinct !{!2609, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2610 = distinct !{!2610, !2611, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2611 = distinct !{!2611, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2612 = distinct !{!2612, !2613, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2613 = distinct !{!2613, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2614 = !{!2615, !2616, !2617, !2618, !2620}
!2615 = distinct !{!2615, !2609, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2616 = distinct !{!2616, !2611, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2617 = distinct !{!2617, !2613, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2618 = distinct !{!2618, !2619, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2619 = distinct !{!2619, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2620 = distinct !{!2620, !2619, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2621 = !{!2618, !2620}
!2622 = !{!2623}
!2623 = distinct !{!2623, !2624, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2624 = distinct !{!2624, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2625 = !{!2626}
!2626 = distinct !{!2626, !2627, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE: %v.0"}
!2627 = distinct !{!2627, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE"}
!2628 = !{!2629}
!2629 = distinct !{!2629, !2627, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE: %pivot"}
!2630 = !{!2626, !2629}
!2631 = !{!2632, !2634, !2629}
!2632 = distinct !{!2632, !2633, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2633 = distinct !{!2633, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2634 = distinct !{!2634, !2635, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2635 = distinct !{!2635, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2636 = !{!2637, !2638, !2639, !2641, !2626}
!2637 = distinct !{!2637, !2633, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2638 = distinct !{!2638, !2635, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2639 = distinct !{!2639, !2640, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2640 = distinct !{!2640, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2641 = distinct !{!2641, !2640, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2642 = !{!2643, !2645, !2629}
!2643 = distinct !{!2643, !2644, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2644 = distinct !{!2644, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2645 = distinct !{!2645, !2646, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2646 = distinct !{!2646, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2647 = !{!2648, !2649, !2650, !2652, !2626}
!2648 = distinct !{!2648, !2644, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2649 = distinct !{!2649, !2646, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2650 = distinct !{!2650, !2651, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2651 = distinct !{!2651, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2652 = distinct !{!2652, !2651, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2653 = !{!2649}
!2654 = !{!2645}
!2655 = !{!2648}
!2656 = !{!2643}
!2657 = !{!2648, !2649}
!2658 = !{!2643, !2645, !2650, !2652, !2629}
!2659 = !{!2650, !2652, !2629}
!2660 = !{!2638}
!2661 = !{!2634}
!2662 = !{!2637}
!2663 = !{!2632}
!2664 = !{!2637, !2638, !2626}
!2665 = !{!2632, !2634, !2639, !2641, !2629}
!2666 = !{!2639, !2641, !2629}
!2667 = !{!2668, !2670, !2626}
!2668 = distinct !{!2668, !2669, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2669 = distinct !{!2669, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2670 = distinct !{!2670, !2671, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2671 = distinct !{!2671, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2672 = !{!2673, !2674, !2675, !2677, !2629}
!2673 = distinct !{!2673, !2669, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2674 = distinct !{!2674, !2671, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2675 = distinct !{!2675, !2676, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2676 = distinct !{!2676, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2677 = distinct !{!2677, !2676, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2678 = !{!2675, !2677, !2629}
!2679 = !{!2680}
!2680 = distinct !{!2680, !2681, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2681 = distinct !{!2681, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2682 = !{!2683}
!2683 = distinct !{!2683, !2684, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2684 = distinct !{!2684, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2685 = !{!2686}
!2686 = distinct !{!2686, !2687, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E: %v.0"}
!2687 = distinct !{!2687, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E"}
!2688 = !{!2689}
!2689 = distinct !{!2689, !2687, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E: %pivot"}
!2690 = !{!2686, !2689}
!2691 = !{!2692, !2694, !2696, !2689}
!2692 = distinct !{!2692, !2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2693 = distinct !{!2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2694 = distinct !{!2694, !2695, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2695 = distinct !{!2695, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2696 = distinct !{!2696, !2697, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2697 = distinct !{!2697, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2698 = !{!2699, !2700, !2701, !2702, !2704, !2686}
!2699 = distinct !{!2699, !2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2700 = distinct !{!2700, !2695, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2701 = distinct !{!2701, !2697, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2702 = distinct !{!2702, !2703, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2703 = distinct !{!2703, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2704 = distinct !{!2704, !2703, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2705 = !{!2706, !2708, !2710, !2689}
!2706 = distinct !{!2706, !2707, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2707 = distinct !{!2707, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2708 = distinct !{!2708, !2709, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2709 = distinct !{!2709, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2710 = distinct !{!2710, !2711, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2711 = distinct !{!2711, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2712 = !{!2713, !2714, !2715, !2716, !2718, !2686}
!2713 = distinct !{!2713, !2707, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2714 = distinct !{!2714, !2709, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2715 = distinct !{!2715, !2711, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2716 = distinct !{!2716, !2717, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2717 = distinct !{!2717, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2718 = distinct !{!2718, !2717, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2719 = !{!2715}
!2720 = !{!2710}
!2721 = !{!2708}
!2722 = !{!2714}
!2723 = !{!2706}
!2724 = !{!2713}
!2725 = !{!2713, !2714, !2715}
!2726 = !{!2706, !2708, !2710, !2716, !2718, !2689}
!2727 = !{!2716, !2718, !2689}
!2728 = !{!2701}
!2729 = !{!2696}
!2730 = !{!2694}
!2731 = !{!2700}
!2732 = !{!2692}
!2733 = !{!2699}
!2734 = !{!2699, !2700, !2701, !2686}
!2735 = !{!2692, !2694, !2696, !2702, !2704, !2689}
!2736 = !{!2702, !2704, !2689}
!2737 = !{!2738, !2740, !2742, !2686}
!2738 = distinct !{!2738, !2739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2739 = distinct !{!2739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2740 = distinct !{!2740, !2741, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2741 = distinct !{!2741, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2742 = distinct !{!2742, !2743, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2743 = distinct !{!2743, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2744 = !{!2745, !2746, !2747, !2748, !2750, !2689}
!2745 = distinct !{!2745, !2739, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2746 = distinct !{!2746, !2741, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2747 = distinct !{!2747, !2743, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2748 = distinct !{!2748, !2749, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2749 = distinct !{!2749, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2750 = distinct !{!2750, !2749, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2751 = !{!2748, !2750, !2689}
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2754 = distinct !{!2754, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2755 = !{!2756}
!2756 = distinct !{!2756, !2757, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2757 = distinct !{!2757, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2758 = !{!2759}
!2759 = distinct !{!2759, !2757, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2760 = !{!2761}
!2761 = distinct !{!2761, !2762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2762 = distinct !{!2762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2765, !"_ZN4core5slice4sort6shared5pivot7median317h0bea463988e31fa6E: %c"}
!2765 = distinct !{!2765, !"_ZN4core5slice4sort6shared5pivot7median317h0bea463988e31fa6E"}
!2766 = !{!2767}
!2767 = distinct !{!2767, !2762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2768 = !{!2761, !2756, !2769}
!2769 = distinct !{!2769, !2770, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE: %v.0"}
!2770 = distinct !{!2770, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE"}
!2771 = !{!2767, !2759, !2764, !2772}
!2772 = distinct !{!2772, !2770, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h05586844c7821f3cE: %is_less"}
!2773 = !{!2767, !2759, !2769}
!2774 = !{!2761, !2756, !2764, !2772}
!2775 = !{!2776, !2778, !2769}
!2776 = distinct !{!2776, !2777, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2777 = distinct !{!2777, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2778 = distinct !{!2778, !2779, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2779 = distinct !{!2779, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2780 = !{!2781, !2782, !2772}
!2781 = distinct !{!2781, !2777, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2782 = distinct !{!2782, !2779, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2783 = !{!2784}
!2784 = distinct !{!2784, !2785, !"_ZN4core5slice4sort8unstable9quicksort9partition17h0abfc0ef8ccdda0eE: %v.0"}
!2785 = distinct !{!2785, !"_ZN4core5slice4sort8unstable9quicksort9partition17h0abfc0ef8ccdda0eE"}
!2786 = !{!2787, !2784}
!2787 = distinct !{!2787, !2788, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2788 = distinct !{!2788, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2789 = !{!2790}
!2790 = distinct !{!2790, !2791, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE: %v.0"}
!2791 = distinct !{!2791, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE"}
!2792 = !{!2793}
!2793 = distinct !{!2793, !2791, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h9eb67dfd57a15e4aE: %pivot"}
!2794 = !{!2790, !2793, !2784}
!2795 = !{!2790, !2784}
!2796 = !{!2797, !2799, !2793, !2784}
!2797 = distinct !{!2797, !2798, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2798 = distinct !{!2798, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2799 = distinct !{!2799, !2800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2800 = distinct !{!2800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2801 = !{!2802, !2803, !2804, !2806, !2790}
!2802 = distinct !{!2802, !2798, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2803 = distinct !{!2803, !2800, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2804 = distinct !{!2804, !2805, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2805 = distinct !{!2805, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2806 = distinct !{!2806, !2805, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2807 = !{!2808, !2810, !2793, !2784}
!2808 = distinct !{!2808, !2809, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2809 = distinct !{!2809, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2810 = distinct !{!2810, !2811, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2811 = distinct !{!2811, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2812 = !{!2813, !2814, !2815, !2817, !2790}
!2813 = distinct !{!2813, !2809, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2814 = distinct !{!2814, !2811, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2815 = distinct !{!2815, !2816, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2816 = distinct !{!2816, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2817 = distinct !{!2817, !2816, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2818 = !{!2814}
!2819 = !{!2810}
!2820 = !{!2813}
!2821 = !{!2808}
!2822 = !{!2813, !2814}
!2823 = !{!2808, !2810, !2815, !2817, !2793}
!2824 = !{!2815, !2817, !2793}
!2825 = !{!2803}
!2826 = !{!2799}
!2827 = !{!2802}
!2828 = !{!2797}
!2829 = !{!2802, !2803, !2790, !2784}
!2830 = !{!2797, !2799, !2804, !2806, !2793}
!2831 = !{!2804, !2806, !2793}
!2832 = !{!2833, !2835, !2790, !2784}
!2833 = distinct !{!2833, !2834, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2834 = distinct !{!2834, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2835 = distinct !{!2835, !2836, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2836 = distinct !{!2836, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2837 = !{!2838, !2839, !2840, !2842, !2793}
!2838 = distinct !{!2838, !2834, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2839 = distinct !{!2839, !2836, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2840 = distinct !{!2840, !2841, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %_1"}
!2841 = distinct !{!2841, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E"}
!2842 = distinct !{!2842, !2841, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hfe1e81677157b6e2E: %state"}
!2843 = !{!2840, !2842, !2793}
!2844 = !{!2845, !2784}
!2845 = distinct !{!2845, !2846, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2846 = distinct !{!2846, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2847 = !{!2848}
!2848 = distinct !{!2848, !2849, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2849 = distinct !{!2849, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2850 = !{!2851}
!2851 = distinct !{!2851, !2849, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2852 = !{!2853}
!2853 = distinct !{!2853, !2854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2854 = distinct !{!2854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2855 = !{!2856}
!2856 = distinct !{!2856, !2854, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2857 = !{!2853, !2848}
!2858 = !{!2856, !2851}
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"_ZN4core5slice4sort8unstable9quicksort9partition17he624dae98141cf98E: %v.0"}
!2861 = distinct !{!2861, !"_ZN4core5slice4sort8unstable9quicksort9partition17he624dae98141cf98E"}
!2862 = !{!2863, !2860}
!2863 = distinct !{!2863, !2864, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2864 = distinct !{!2864, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2865 = !{!2866}
!2866 = distinct !{!2866, !2867, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E: %v.0"}
!2867 = distinct !{!2867, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E"}
!2868 = !{!2869}
!2869 = distinct !{!2869, !2867, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17he04bf8ff26b61d13E: %pivot"}
!2870 = !{!2866, !2869, !2860}
!2871 = !{!2866, !2860}
!2872 = !{!2873, !2875, !2877, !2869, !2860}
!2873 = distinct !{!2873, !2874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2874 = distinct !{!2874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2875 = distinct !{!2875, !2876, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2876 = distinct !{!2876, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2877 = distinct !{!2877, !2878, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2878 = distinct !{!2878, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2879 = !{!2880, !2881, !2882, !2883, !2885, !2866}
!2880 = distinct !{!2880, !2874, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2881 = distinct !{!2881, !2876, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2882 = distinct !{!2882, !2878, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2883 = distinct !{!2883, !2884, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2884 = distinct !{!2884, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2885 = distinct !{!2885, !2884, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2886 = !{!2887, !2889, !2891, !2869, !2860}
!2887 = distinct !{!2887, !2888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2888 = distinct !{!2888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2889 = distinct !{!2889, !2890, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2890 = distinct !{!2890, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2891 = distinct !{!2891, !2892, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2892 = distinct !{!2892, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2893 = !{!2894, !2895, !2896, !2897, !2899, !2866}
!2894 = distinct !{!2894, !2888, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2895 = distinct !{!2895, !2890, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2896 = distinct !{!2896, !2892, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2897 = distinct !{!2897, !2898, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2898 = distinct !{!2898, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2899 = distinct !{!2899, !2898, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2900 = !{!2896}
!2901 = !{!2891}
!2902 = !{!2889}
!2903 = !{!2895}
!2904 = !{!2887}
!2905 = !{!2894}
!2906 = !{!2894, !2895, !2896}
!2907 = !{!2887, !2889, !2891, !2897, !2899, !2869}
!2908 = !{!2897, !2899, !2869}
!2909 = !{!2882}
!2910 = !{!2877}
!2911 = !{!2875}
!2912 = !{!2881}
!2913 = !{!2873}
!2914 = !{!2880}
!2915 = !{!2880, !2881, !2882, !2866, !2860}
!2916 = !{!2873, !2875, !2877, !2883, !2885, !2869}
!2917 = !{!2883, !2885, !2869}
!2918 = !{!2919, !2921, !2923, !2866, !2860}
!2919 = distinct !{!2919, !2920, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2920 = distinct !{!2920, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2921 = distinct !{!2921, !2922, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2922 = distinct !{!2922, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2923 = distinct !{!2923, !2924, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %a"}
!2924 = distinct !{!2924, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E"}
!2925 = !{!2926, !2927, !2928, !2929, !2931, !2869}
!2926 = distinct !{!2926, !2920, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2927 = distinct !{!2927, !2922, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2928 = distinct !{!2928, !2924, !"_ZN4core5slice4sort8unstable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h40f02fdedb872754E: %b"}
!2929 = distinct !{!2929, !2930, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %_1"}
!2930 = distinct !{!2930, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E"}
!2931 = distinct !{!2931, !2930, !"_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17hc50d715eecf58d22E: %state"}
!2932 = !{!2929, !2931, !2869}
!2933 = !{!2934, !2860}
!2934 = distinct !{!2934, !2935, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E: %self.0"}
!2935 = distinct !{!2935, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h7557f225e128f1d0E"}
!2936 = !{i64 0, i64 -9223372036854775808}
!2937 = !{!2938}
!2938 = distinct !{!2938, !2939, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2939 = distinct !{!2939, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2940 = !{!2941}
!2941 = distinct !{!2941, !2939, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2942 = !{!2943}
!2943 = distinct !{!2943, !2944, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 0"}
!2944 = distinct !{!2944, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE"}
!2945 = !{!2946}
!2946 = distinct !{!2946, !2944, !"_ZN4core3ops8function5FnMut8call_mut17h393faba03c89707aE: argument 1"}
!2947 = !{!2948}
!2948 = distinct !{!2948, !2949, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2949 = distinct !{!2949, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2950 = !{!2951}
!2951 = distinct !{!2951, !2949, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2952 = !{!2948, !2943, !2953, !2955}
!2953 = distinct !{!2953, !2954, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E: %v.0"}
!2954 = distinct !{!2954, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc52d7cd482a377f4E"}
!2955 = distinct !{!2955, !2956, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E: %self.0"}
!2956 = distinct !{!2956, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E"}
!2957 = !{!2951, !2946}
!2958 = !{!2951, !2946, !2953, !2955}
!2959 = !{!2948, !2943}
!2960 = !{!2953, !2955}
!2961 = !{!2962, !2964}
!2962 = distinct !{!2962, !2963, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E: %self"}
!2963 = distinct !{!2963, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3303b4b76dc97a96E"}
!2964 = distinct !{!2964, !2965, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E: %_1"}
!2965 = distinct !{!2965, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h065cb89ad35ffe80E"}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E: %self.0"}
!2968 = distinct !{!2968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7f154ace7e9b6d59E"}
!2969 = !{!2970, !2972, !2967}
!2970 = distinct !{!2970, !2971, !"_ZN5alloc5slice11stable_sort17h9f38b88b06748a05E: %v.0"}
!2971 = distinct !{!2971, !"_ZN5alloc5slice11stable_sort17h9f38b88b06748a05E"}
!2972 = distinct !{!2972, !2971, !"_ZN5alloc5slice11stable_sort17h9f38b88b06748a05E: argument 1"}
!2973 = !{!"branch_weights", !"expected", i32 2000, i32 1}
