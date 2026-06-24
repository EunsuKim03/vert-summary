; ModuleID = 'HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_emit.9e7a85a3d307b916-cgu.0'
source_filename = "HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_emit.9e7a85a3d307b916-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1e8d33cde746cf96E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h50fdca670592b5c1E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h50fdca670592b5c1E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h50fdca670592b5c1E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h50fdca670592b5c1E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !74, !noalias !75, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !75, !noalias !74, !noundef !37
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !76, !noalias !85, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !90
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17haba9c55d1518836cE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !115, !noalias !116, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !116, !noalias !115, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !137, !noalias !138, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !138, !noalias !137, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !159, !noalias !160, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !160, !noalias !159, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !181, !noalias !182, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !182, !noalias !181, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !203, !noalias !204, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !204, !noalias !203, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h984a46a2035afa5aE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !225, !noalias !226, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !226, !noalias !225, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !247, !noalias !248, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !248, !noalias !247, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !269, !noalias !270, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !270, !noalias !269, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !291, !noalias !292, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !292, !noalias !291, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !313, !noalias !314, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !314, !noalias !313, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !335, !noalias !336, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !336, !noalias !335, !noundef !37
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !357, !noalias !358, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !358, !noalias !357, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !379, !noalias !380, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !380, !noalias !379, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !401, !noalias !402, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !402, !noalias !401, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !423, !noalias !424, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !424, !noalias !423, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !436
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !451, !noalias !452, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !453, !noalias !454, !noundef !37
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !455
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478), !noalias !465
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !480, !noalias !481, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !482, !noalias !483, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !484
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !436
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !502, !noalias !503, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !504, !noalias !505, !noundef !37
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !455
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !465
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !522, !noalias !523, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !524, !noalias !525, !noundef !37
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !484
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !436
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !542, !noalias !543, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !544, !noalias !545, !noundef !37
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !455
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !465
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !562, !noalias !563, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !564, !noalias !565, !noundef !37
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !484
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !436
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !582, !noalias !583, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !584, !noalias !585, !noundef !37
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !455
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598), !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !465
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !602, !noalias !603, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !604, !noalias !605, !noundef !37
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !484
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE.exit, !prof !606

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !425
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !noalias !615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !615
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !630, !noalias !631, !noundef !37
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !632, !noalias !633, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !634
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !644
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !659, !noalias !660, !noundef !37
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !661, !noalias !662, !noundef !37
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !663
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !606

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h2877a08dead886e4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !685, !noalias !686, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !686, !noalias !685, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !687, !noalias !696, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !701
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb0e43ac266e1b236E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h984a46a2035afa5aE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h984a46a2035afa5aE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !726, !noalias !727, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !727, !noalias !726, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !748, !noalias !749, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !749, !noalias !748, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !770, !noalias !771, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !771, !noalias !770, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !792, !noalias !793, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !793, !noalias !792, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !814, !noalias !815, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !815, !noalias !814, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !836, !noalias !837, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !837, !noalias !836, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !858, !noalias !859, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !859, !noalias !858, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !880, !noalias !881, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !881, !noalias !880, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !902, !noalias !903, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !903, !noalias !902, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !924, !noalias !925, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !925, !noalias !924, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !926
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !926, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953), !noalias !940
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !955, !noalias !956, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !957, !noalias !958, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !959
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !noalias !969
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !984, !noalias !985, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !986, !noalias !987, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !988
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !929
  store i32 %37, ptr %_16.i.i, align 4, !noalias !929
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !606

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !990
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !995, !noalias !1004, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1009, !noalias !1018, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1023
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hffd93a5e8c480665E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h1a568b5312245763E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1028
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1031, !noalias !1028, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1028, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit", !prof !1033

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1028
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1028, !nonnull !37, !noundef !37
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1028
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h675f4cef37ab2358E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hbf711deb6988c2a5E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h46e11184630802faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1054, !noalias !1055, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1055, !noalias !1054, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1076, !noalias !1077, !noundef !37
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1077, !noalias !1076, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1098, !noalias !1099, !noundef !37
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1099, !noalias !1098, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h562e732695e7576aE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1100, !noalias !1105, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1107, !noalias !1108
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1100, !noalias !1105
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1107, !noalias !1108
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1100, !noalias !1105, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1107, !noalias !1108
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1100, !noalias !1105
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1107, !noalias !1108
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1100, !noalias !1105, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1107, !noalias !1108
  store i32 %14, ptr %gep27, align 4, !alias.scope !1100, !noalias !1105
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1107, !noalias !1108
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h1c90dd9c7d3f8491E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h675f4cef37ab2358E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h46e11184630802faE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1114
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1135, !noalias !1136, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1139, !noalias !1140, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1109, !noalias !1141
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1162, !noalias !1163, !noundef !37
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1166, !noalias !1167, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1109, !noalias !1168
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1114, !noalias !1169
  br label %_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit

_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17ha6a3238c4fe90ecbE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h71a1cb8a64a2c647E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1194, !noalias !1195, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1195, !noalias !1194, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4f1c17dc8b5d553dE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1216, !noalias !1217, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1217, !noalias !1216, !noundef !37
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
define void @_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1238, !noalias !1239, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1242, !noalias !1243, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1244
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1265, !noalias !1266, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1269, !noalias !1270, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1271
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1272
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf91844621a49185dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1277

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1298, !noalias !1299, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1299, !noalias !1298, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1300
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1323, !noalias !1324, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1324, !noalias !1323, !noundef !37
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1325
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1348, !noalias !1349, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1349, !noalias !1348, !noundef !37
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1350
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1373, !noalias !1374, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1374, !noalias !1373, !noundef !37
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1375
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1398, !noalias !1399, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1399, !noalias !1398, !noundef !37
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1400
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1403
  store i32 %13, ptr %dst.i68, align 4, !noalias !1403
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1406

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hfe5cda5bdfbe005fE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1277

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1433, !noalias !1434, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1434, !noalias !1433, !noundef !37
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1435
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1463, !noalias !1464, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1464, !noalias !1463, !noundef !37
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1465
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1493, !noalias !1494, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1494, !noalias !1493, !noundef !37
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1495
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1523, !noalias !1524, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1524, !noalias !1523, !noundef !37
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1525
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1553, !noalias !1554, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1554, !noalias !1553, !noundef !37
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1555
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1558
  store i32 %13, ptr %dst.i68, align 4, !noalias !1558
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1561

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb0e43ac266e1b236E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h50fdca670592b5c1E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1567), !noalias !1570
  call void @llvm.experimental.noalias.scope.decl(metadata !1573), !noalias !1570
  call void @llvm.experimental.noalias.scope.decl(metadata !1575), !noalias !1570
  call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1570
  call void @llvm.experimental.noalias.scope.decl(metadata !1580), !noalias !1570
  call void @llvm.experimental.noalias.scope.decl(metadata !1583), !noalias !1570
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1585, !noalias !1588, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1590, !noalias !1591, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1592, !noalias !1601, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h675f4cef37ab2358E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1606, !noalias !1615, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf91844621a49185dE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit", !prof !1033

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !1620
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01bd8ee618bcf036E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hfe5cda5bdfbe005fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1033

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1031, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1032, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haabcc691b22dad38E.exit", !prof !1033

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haabcc691b22dad38E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hd3dc22c3691da2e2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1624, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a86121aa51573c0E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h98210cc6c0c87b7eE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd6cf1b160d5b3e2eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd1de82ece7480a83E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1625, !noalias !1628, !noundef !37
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1628, !noalias !1625, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #12 {
start:
  %_7 = sitofp i32 %N to float
  %_6 = fadd float %_7, 1.000000e+00
  %_42 = fcmp ult float %_6, 2.000000e+00
  br i1 %_42, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %start
  %result.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %0, %bb2 ]
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %result.sroa.0.0.lcssa)
  %_0 = add i32 %_8, -1
  ret i32 %_0

bb2:                                              ; preds = %start, %bb2
  %base.sroa.0.04 = phi float [ %1, %bb2 ], [ 2.000000e+00, %start ]
  %result.sroa.0.03 = phi float [ %0, %bb2 ], [ 0.000000e+00, %start ]
  %0 = fadd float %result.sroa.0.03, 1.000000e+00
  %1 = fmul float %base.sroa.0.04, 2.000000e+00
  %_4 = fcmp ugt float %1, %_6
  br i1 %_4, label %bb3, label %bb2
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1630
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1633
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE.exit", label %bb7.i.i, !prof !1637

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1637

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1a568b5312245763E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h2877a08dead886e4E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1630
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #15

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
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h516ff04fc1511fb7E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h516ff04fc1511fb7E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h516ff04fc1511fb7E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h516ff04fc1511fb7E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h516ff04fc1511fb7E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h38d4e87a163d49f1E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h38d4e87a163d49f1E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!61 = distinct !{!61, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!74 = !{!70, !65, !60, !55}
!75 = !{!73, !68, !63, !58}
!76 = !{!77, !79, !81, !83}
!77 = distinct !{!77, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!78 = distinct !{!78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!79 = distinct !{!79, !80, !"cmpfunc: %b"}
!80 = distinct !{!80, !"cmpfunc"}
!81 = distinct !{!81, !82, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!82 = distinct !{!82, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!83 = distinct !{!83, !84, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!84 = distinct !{!84, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!87 = distinct !{!87, !80, !"cmpfunc: %a"}
!88 = distinct !{!88, !82, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!89 = distinct !{!89, !84, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!90 = !{!91, !93}
!91 = distinct !{!91, !92, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E: %self"}
!92 = distinct !{!92, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E"}
!93 = distinct !{!93, !94, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E: %_1"}
!94 = distinct !{!94, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!97 = distinct !{!97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!102 = distinct !{!102, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"cmpfunc: %a"}
!107 = distinct !{!107, !"cmpfunc"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"cmpfunc: %b"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!112 = distinct !{!112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!115 = !{!111, !106, !101, !96}
!116 = !{!114, !109, !104, !99}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!119 = distinct !{!119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!124 = distinct !{!124, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"cmpfunc: %a"}
!129 = distinct !{!129, !"cmpfunc"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"cmpfunc: %b"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!134 = distinct !{!134, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!137 = !{!133, !128, !123, !118}
!138 = !{!136, !131, !126, !121}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!141 = distinct !{!141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!146 = distinct !{!146, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"cmpfunc: %a"}
!151 = distinct !{!151, !"cmpfunc"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"cmpfunc: %b"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!156 = distinct !{!156, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!159 = !{!155, !150, !145, !140}
!160 = !{!158, !153, !148, !143}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!163 = distinct !{!163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!168 = distinct !{!168, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"cmpfunc: %a"}
!173 = distinct !{!173, !"cmpfunc"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"cmpfunc: %b"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!178 = distinct !{!178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!181 = !{!177, !172, !167, !162}
!182 = !{!180, !175, !170, !165}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!185 = distinct !{!185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!190 = distinct !{!190, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"cmpfunc: %a"}
!195 = distinct !{!195, !"cmpfunc"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"cmpfunc: %b"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!200 = distinct !{!200, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!203 = !{!199, !194, !189, !184}
!204 = !{!202, !197, !192, !187}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!207 = distinct !{!207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!212 = distinct !{!212, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!234 = distinct !{!234, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!250 = distinct !{!250, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!251 = distinct !{!251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!256 = distinct !{!256, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!272 = distinct !{!272, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!273 = distinct !{!273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!278 = distinct !{!278, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!294 = distinct !{!294, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!295 = distinct !{!295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!300 = distinct !{!300, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!316 = distinct !{!316, !317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!317 = distinct !{!317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!322 = distinct !{!322, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!338 = distinct !{!338, !339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!339 = distinct !{!339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!344 = distinct !{!344, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!360 = distinct !{!360, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!361 = distinct !{!361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!366 = distinct !{!366, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!382 = distinct !{!382, !383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!383 = distinct !{!383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!388 = distinct !{!388, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!404 = distinct !{!404, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!405 = distinct !{!405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!410 = distinct !{!410, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!426 = distinct !{!426, !427, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE: %v.0"}
!427 = distinct !{!427, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!430 = distinct !{!430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!435 = distinct !{!435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %_0"}
!438 = distinct !{!438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE"}
!439 = !{!440}
!440 = distinct !{!440, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"cmpfunc: %a"}
!443 = distinct !{!443, !"cmpfunc"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"cmpfunc: %b"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!448 = distinct !{!448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!451 = !{!447, !442, !434, !429, !426}
!452 = !{!450, !445, !440, !432, !437}
!453 = !{!450, !445, !440, !432, !426}
!454 = !{!447, !442, !434, !429, !437}
!455 = !{!437, !456, !426}
!456 = distinct !{!456, !438, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %is_less"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!459 = distinct !{!459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!464 = distinct !{!464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %_0"}
!467 = distinct !{!467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE"}
!468 = !{!469}
!469 = distinct !{!469, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"cmpfunc: %a"}
!472 = distinct !{!472, !"cmpfunc"}
!473 = !{!474}
!474 = distinct !{!474, !472, !"cmpfunc: %b"}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!477 = distinct !{!477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!480 = !{!476, !471, !463, !458, !426}
!481 = !{!479, !474, !469, !461, !466}
!482 = !{!479, !474, !469, !461, !426}
!483 = !{!476, !471, !463, !458, !466}
!484 = !{!466, !485, !426}
!485 = distinct !{!485, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %is_less"}
!486 = !{!487}
!487 = distinct !{!487, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It1"}
!488 = !{!489}
!489 = distinct !{!489, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It1"}
!490 = !{!491}
!491 = distinct !{!491, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It1"}
!492 = !{!493}
!493 = distinct !{!493, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It1"}
!494 = !{!495}
!495 = distinct !{!495, !443, !"cmpfunc: %a:It1"}
!496 = !{!497}
!497 = distinct !{!497, !443, !"cmpfunc: %b:It1"}
!498 = !{!499}
!499 = distinct !{!499, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!500 = !{!501}
!501 = distinct !{!501, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!502 = !{!499, !495, !491, !487, !426}
!503 = !{!501, !497, !493, !489, !437}
!504 = !{!501, !497, !493, !489, !426}
!505 = !{!499, !495, !491, !487, !437}
!506 = !{!507}
!507 = distinct !{!507, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It1"}
!508 = !{!509}
!509 = distinct !{!509, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It1"}
!510 = !{!511}
!511 = distinct !{!511, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It1"}
!512 = !{!513}
!513 = distinct !{!513, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It1"}
!514 = !{!515}
!515 = distinct !{!515, !472, !"cmpfunc: %a:It1"}
!516 = !{!517}
!517 = distinct !{!517, !472, !"cmpfunc: %b:It1"}
!518 = !{!519}
!519 = distinct !{!519, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!520 = !{!521}
!521 = distinct !{!521, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!522 = !{!519, !515, !511, !507, !426}
!523 = !{!521, !517, !513, !509, !466}
!524 = !{!521, !517, !513, !509, !426}
!525 = !{!519, !515, !511, !507, !466}
!526 = !{!527}
!527 = distinct !{!527, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It2"}
!528 = !{!529}
!529 = distinct !{!529, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It2"}
!530 = !{!531}
!531 = distinct !{!531, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It2"}
!532 = !{!533}
!533 = distinct !{!533, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It2"}
!534 = !{!535}
!535 = distinct !{!535, !443, !"cmpfunc: %a:It2"}
!536 = !{!537}
!537 = distinct !{!537, !443, !"cmpfunc: %b:It2"}
!538 = !{!539}
!539 = distinct !{!539, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!540 = !{!541}
!541 = distinct !{!541, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!542 = !{!539, !535, !531, !527, !426}
!543 = !{!541, !537, !533, !529, !437}
!544 = !{!541, !537, !533, !529, !426}
!545 = !{!539, !535, !531, !527, !437}
!546 = !{!547}
!547 = distinct !{!547, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It2"}
!548 = !{!549}
!549 = distinct !{!549, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It2"}
!550 = !{!551}
!551 = distinct !{!551, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It2"}
!552 = !{!553}
!553 = distinct !{!553, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It2"}
!554 = !{!555}
!555 = distinct !{!555, !472, !"cmpfunc: %a:It2"}
!556 = !{!557}
!557 = distinct !{!557, !472, !"cmpfunc: %b:It2"}
!558 = !{!559}
!559 = distinct !{!559, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!560 = !{!561}
!561 = distinct !{!561, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!562 = !{!559, !555, !551, !547, !426}
!563 = !{!561, !557, !553, !549, !466}
!564 = !{!561, !557, !553, !549, !426}
!565 = !{!559, !555, !551, !547, !466}
!566 = !{!567}
!567 = distinct !{!567, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It3"}
!568 = !{!569}
!569 = distinct !{!569, !430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It3"}
!570 = !{!571}
!571 = distinct !{!571, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It3"}
!572 = !{!573}
!573 = distinct !{!573, !435, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It3"}
!574 = !{!575}
!575 = distinct !{!575, !443, !"cmpfunc: %a:It3"}
!576 = !{!577}
!577 = distinct !{!577, !443, !"cmpfunc: %b:It3"}
!578 = !{!579}
!579 = distinct !{!579, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!580 = !{!581}
!581 = distinct !{!581, !448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!582 = !{!579, !575, !571, !567, !426}
!583 = !{!581, !577, !573, !569, !437}
!584 = !{!581, !577, !573, !569, !426}
!585 = !{!579, !575, !571, !567, !437}
!586 = !{!587}
!587 = distinct !{!587, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a:It3"}
!588 = !{!589}
!589 = distinct !{!589, !459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b:It3"}
!590 = !{!591}
!591 = distinct !{!591, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0:It3"}
!592 = !{!593}
!593 = distinct !{!593, !464, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1:It3"}
!594 = !{!595}
!595 = distinct !{!595, !472, !"cmpfunc: %a:It3"}
!596 = !{!597}
!597 = distinct !{!597, !472, !"cmpfunc: %b:It3"}
!598 = !{!599}
!599 = distinct !{!599, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!600 = !{!601}
!601 = distinct !{!601, !477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!602 = !{!599, !595, !591, !587, !426}
!603 = !{!601, !597, !593, !589, !466}
!604 = !{!601, !597, !593, !589, !426}
!605 = !{!599, !595, !591, !587, !466}
!606 = !{!"branch_weights", i32 4001, i32 4000000}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!609 = distinct !{!609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!610 = !{!611}
!611 = distinct !{!611, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!614 = distinct !{!614, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %_0"}
!617 = distinct !{!617, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE"}
!618 = !{!619}
!619 = distinct !{!619, !614, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"cmpfunc: %a"}
!622 = distinct !{!622, !"cmpfunc"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"cmpfunc: %b"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!627 = distinct !{!627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!628 = !{!629}
!629 = distinct !{!629, !627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!630 = !{!626, !621, !613, !608}
!631 = !{!629, !624, !619, !611, !616}
!632 = !{!629, !624, !619, !611}
!633 = !{!626, !621, !613, !608, !616}
!634 = !{!616, !635}
!635 = distinct !{!635, !617, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %is_less"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!638 = distinct !{!638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!643 = distinct !{!643, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %_0"}
!646 = distinct !{!646, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE"}
!647 = !{!648}
!648 = distinct !{!648, !643, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"cmpfunc: %a"}
!651 = distinct !{!651, !"cmpfunc"}
!652 = !{!653}
!653 = distinct !{!653, !651, !"cmpfunc: %b"}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!656 = distinct !{!656, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!659 = !{!655, !650, !642, !637}
!660 = !{!658, !653, !648, !640, !645}
!661 = !{!658, !653, !648, !640}
!662 = !{!655, !650, !642, !637, !645}
!663 = !{!645, !664}
!664 = distinct !{!664, !646, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %is_less"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!667 = distinct !{!667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!672 = distinct !{!672, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"cmpfunc: %a"}
!677 = distinct !{!677, !"cmpfunc"}
!678 = !{!679}
!679 = distinct !{!679, !677, !"cmpfunc: %b"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!682 = distinct !{!682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!685 = !{!681, !676, !671, !666}
!686 = !{!684, !679, !674, !669}
!687 = !{!688, !690, !692, !694}
!688 = distinct !{!688, !689, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!689 = distinct !{!689, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!690 = distinct !{!690, !691, !"cmpfunc: %b"}
!691 = distinct !{!691, !"cmpfunc"}
!692 = distinct !{!692, !693, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!693 = distinct !{!693, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!694 = distinct !{!694, !695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!695 = distinct !{!695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!696 = !{!697, !698, !699, !700}
!697 = distinct !{!697, !689, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!698 = distinct !{!698, !691, !"cmpfunc: %a"}
!699 = distinct !{!699, !693, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!700 = distinct !{!700, !695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!701 = !{!702, !704}
!702 = distinct !{!702, !703, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E: %self"}
!703 = distinct !{!703, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E"}
!704 = distinct !{!704, !705, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E: %_1"}
!705 = distinct !{!705, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!708 = distinct !{!708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!713 = distinct !{!713, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!716 = !{!717}
!717 = distinct !{!717, !718, !"cmpfunc: %a"}
!718 = distinct !{!718, !"cmpfunc"}
!719 = !{!720}
!720 = distinct !{!720, !718, !"cmpfunc: %b"}
!721 = !{!722}
!722 = distinct !{!722, !723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!723 = distinct !{!723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!724 = !{!725}
!725 = distinct !{!725, !723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!726 = !{!722, !717, !712, !707}
!727 = !{!725, !720, !715, !710}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!730 = distinct !{!730, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!731 = !{!732}
!732 = distinct !{!732, !730, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!733 = !{!734}
!734 = distinct !{!734, !735, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!735 = distinct !{!735, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!736 = !{!737}
!737 = distinct !{!737, !735, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"cmpfunc: %a"}
!740 = distinct !{!740, !"cmpfunc"}
!741 = !{!742}
!742 = distinct !{!742, !740, !"cmpfunc: %b"}
!743 = !{!744}
!744 = distinct !{!744, !745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!745 = distinct !{!745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!746 = !{!747}
!747 = distinct !{!747, !745, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!748 = !{!744, !739, !734, !729}
!749 = !{!747, !742, !737, !732}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!752 = distinct !{!752, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!753 = !{!754}
!754 = distinct !{!754, !752, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!757 = distinct !{!757, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"cmpfunc: %a"}
!762 = distinct !{!762, !"cmpfunc"}
!763 = !{!764}
!764 = distinct !{!764, !762, !"cmpfunc: %b"}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!767 = distinct !{!767, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!768 = !{!769}
!769 = distinct !{!769, !767, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!770 = !{!766, !761, !756, !751}
!771 = !{!769, !764, !759, !754}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!774 = distinct !{!774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!779 = distinct !{!779, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"cmpfunc: %a"}
!784 = distinct !{!784, !"cmpfunc"}
!785 = !{!786}
!786 = distinct !{!786, !784, !"cmpfunc: %b"}
!787 = !{!788}
!788 = distinct !{!788, !789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!789 = distinct !{!789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!790 = !{!791}
!791 = distinct !{!791, !789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!792 = !{!788, !783, !778, !773}
!793 = !{!791, !786, !781, !776}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!796 = distinct !{!796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!801 = distinct !{!801, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"cmpfunc: %a"}
!806 = distinct !{!806, !"cmpfunc"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"cmpfunc: %b"}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!811 = distinct !{!811, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!812 = !{!813}
!813 = distinct !{!813, !811, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!814 = !{!810, !805, !800, !795}
!815 = !{!813, !808, !803, !798}
!816 = !{!817}
!817 = distinct !{!817, !818, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!818 = distinct !{!818, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!819 = !{!820}
!820 = distinct !{!820, !818, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!823 = distinct !{!823, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!824 = !{!825}
!825 = distinct !{!825, !823, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!826 = !{!827}
!827 = distinct !{!827, !828, !"cmpfunc: %a"}
!828 = distinct !{!828, !"cmpfunc"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"cmpfunc: %b"}
!831 = !{!832}
!832 = distinct !{!832, !833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!833 = distinct !{!833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!834 = !{!835}
!835 = distinct !{!835, !833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!836 = !{!832, !827, !822, !817}
!837 = !{!835, !830, !825, !820}
!838 = !{!839}
!839 = distinct !{!839, !840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!840 = distinct !{!840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!841 = !{!842}
!842 = distinct !{!842, !840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!843 = !{!844}
!844 = distinct !{!844, !845, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!845 = distinct !{!845, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!846 = !{!847}
!847 = distinct !{!847, !845, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!848 = !{!849}
!849 = distinct !{!849, !850, !"cmpfunc: %a"}
!850 = distinct !{!850, !"cmpfunc"}
!851 = !{!852}
!852 = distinct !{!852, !850, !"cmpfunc: %b"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!855 = distinct !{!855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!856 = !{!857}
!857 = distinct !{!857, !855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!858 = !{!854, !849, !844, !839}
!859 = !{!857, !852, !847, !842}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!862 = distinct !{!862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!867 = distinct !{!867, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!870 = !{!871}
!871 = distinct !{!871, !872, !"cmpfunc: %a"}
!872 = distinct !{!872, !"cmpfunc"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"cmpfunc: %b"}
!875 = !{!876}
!876 = distinct !{!876, !877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!877 = distinct !{!877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!878 = !{!879}
!879 = distinct !{!879, !877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!880 = !{!876, !871, !866, !861}
!881 = !{!879, !874, !869, !864}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!884 = distinct !{!884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!889 = distinct !{!889, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!892 = !{!893}
!893 = distinct !{!893, !894, !"cmpfunc: %a"}
!894 = distinct !{!894, !"cmpfunc"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"cmpfunc: %b"}
!897 = !{!898}
!898 = distinct !{!898, !899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!899 = distinct !{!899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!900 = !{!901}
!901 = distinct !{!901, !899, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!902 = !{!898, !893, !888, !883}
!903 = !{!901, !896, !891, !886}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!906 = distinct !{!906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!911 = distinct !{!911, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!912 = !{!913}
!913 = distinct !{!913, !911, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!914 = !{!915}
!915 = distinct !{!915, !916, !"cmpfunc: %a"}
!916 = distinct !{!916, !"cmpfunc"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"cmpfunc: %b"}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!921 = distinct !{!921, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!922 = !{!923}
!923 = distinct !{!923, !921, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!924 = !{!920, !915, !910, !905}
!925 = !{!923, !918, !913, !908}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E: %self.0"}
!928 = distinct !{!928, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he156fdcf6f079432E"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE: %v.0"}
!931 = distinct !{!931, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1417e0d49cc71ccdE"}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!934 = distinct !{!934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!935 = !{!936}
!936 = distinct !{!936, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!939 = distinct !{!939, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %_0"}
!942 = distinct !{!942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE"}
!943 = !{!944}
!944 = distinct !{!944, !939, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!955 = !{!951, !946, !938, !933, !930}
!956 = !{!954, !949, !944, !936, !941}
!957 = !{!954, !949, !944, !936, !930}
!958 = !{!951, !946, !938, !933, !941}
!959 = !{!941, !960, !930}
!960 = distinct !{!960, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h94fec869becd42ccE: %is_less"}
!961 = !{!962}
!962 = distinct !{!962, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!963 = distinct !{!963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!964 = !{!965}
!965 = distinct !{!965, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!968 = distinct !{!968, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %_0"}
!971 = distinct !{!971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE"}
!972 = !{!973}
!973 = distinct !{!973, !968, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"cmpfunc: %a"}
!976 = distinct !{!976, !"cmpfunc"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"cmpfunc: %b"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!981 = distinct !{!981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!984 = !{!980, !975, !967, !962, !930}
!985 = !{!983, !978, !973, !965, !970}
!986 = !{!983, !978, !973, !965, !930}
!987 = !{!980, !975, !967, !962, !970}
!988 = !{!970, !989, !930}
!989 = distinct !{!989, !971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h636f51f1307ec85bE: %is_less"}
!990 = !{!991, !993}
!991 = distinct !{!991, !992, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E: %self"}
!992 = distinct !{!992, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E"}
!993 = distinct !{!993, !994, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E: %_1"}
!994 = distinct !{!994, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E"}
!995 = !{!996, !998, !1000, !1002}
!996 = distinct !{!996, !997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!997 = distinct !{!997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!998 = distinct !{!998, !999, !"cmpfunc: %b"}
!999 = distinct !{!999, !"cmpfunc"}
!1000 = distinct !{!1000, !1001, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1001 = distinct !{!1001, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1002 = distinct !{!1002, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1003 = distinct !{!1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1004 = !{!1005, !1006, !1007, !1008}
!1005 = distinct !{!1005, !997, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1006 = distinct !{!1006, !999, !"cmpfunc: %a"}
!1007 = distinct !{!1007, !1001, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1008 = distinct !{!1008, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1009 = !{!1010, !1012, !1014, !1016}
!1010 = distinct !{!1010, !1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1011 = distinct !{!1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1012 = distinct !{!1012, !1013, !"cmpfunc: %b"}
!1013 = distinct !{!1013, !"cmpfunc"}
!1014 = distinct !{!1014, !1015, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1015 = distinct !{!1015, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1016 = distinct !{!1016, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1017 = distinct !{!1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = distinct !{!1019, !1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1020 = distinct !{!1020, !1013, !"cmpfunc: %a"}
!1021 = distinct !{!1021, !1015, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1022 = distinct !{!1022, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1023 = !{!1024, !1026}
!1024 = distinct !{!1024, !1025, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E: %self"}
!1025 = distinct !{!1025, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he8abd9c6682c77e2E"}
!1026 = distinct !{!1026, !1027, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E: %_1"}
!1027 = distinct !{!1027, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h1b5eec391060eaf8E"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E: %_0"}
!1030 = distinct !{!1030, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h878680121d884594E"}
!1031 = !{i64 0, i64 2}
!1032 = !{i64 0, i64 -9223372036854775807}
!1033 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1036 = distinct !{!1036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1036, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1041 = distinct !{!1041, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1041, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"cmpfunc: %a"}
!1046 = distinct !{!1046, !"cmpfunc"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1046, !"cmpfunc: %b"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1051 = distinct !{!1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1054 = !{!1050, !1045, !1040, !1035}
!1055 = !{!1053, !1048, !1043, !1038}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1058 = distinct !{!1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1063 = distinct !{!1063, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"cmpfunc: %a"}
!1068 = distinct !{!1068, !"cmpfunc"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1068, !"cmpfunc: %b"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1073 = distinct !{!1073, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1073, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1076 = !{!1072, !1067, !1062, !1057}
!1077 = !{!1075, !1070, !1065, !1060}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1080 = distinct !{!1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1085 = distinct !{!1085, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1085, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"cmpfunc: %a"}
!1090 = distinct !{!1090, !"cmpfunc"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1090, !"cmpfunc: %b"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1095 = distinct !{!1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1095, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1098 = !{!1094, !1089, !1084, !1079}
!1099 = !{!1097, !1092, !1087, !1082}
!1100 = !{!1101, !1103}
!1101 = distinct !{!1101, !1102, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h4ae8d4b89d901a1cE: %a.0"}
!1102 = distinct !{!1102, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h4ae8d4b89d901a1cE"}
!1103 = distinct !{!1103, !1104, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ed955ffdbfda79eE: %self.0"}
!1104 = distinct !{!1104, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0ed955ffdbfda79eE"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1102, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h4ae8d4b89d901a1cE: %b.0"}
!1107 = !{!1106, !1103}
!1108 = !{!1101}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE: %v.0"}
!1111 = distinct !{!1111, !"_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1111, !"_ZN4core5slice4sort6stable5merge5merge17hd01b4acd3fa2e22cE: %scratch.0"}
!1114 = !{!1110, !1113}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1117 = distinct !{!1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1122 = distinct !{!1122, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1122, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"cmpfunc: %a"}
!1127 = distinct !{!1127, !"cmpfunc"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1127, !"cmpfunc: %b"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1132 = distinct !{!1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1135 = !{!1131, !1126, !1121, !1116, !1113}
!1136 = !{!1134, !1129, !1124, !1119, !1137, !1110}
!1137 = distinct !{!1137, !1138, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h71a1cb8a64a2c647E: %self"}
!1138 = distinct !{!1138, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h71a1cb8a64a2c647E"}
!1139 = !{!1134, !1129, !1124, !1119, !1110}
!1140 = !{!1131, !1126, !1121, !1116, !1137, !1113}
!1141 = !{!1137, !1113}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1144 = distinct !{!1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1149 = distinct !{!1149, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!1162 = !{!1158, !1153, !1148, !1143, !1110}
!1163 = !{!1161, !1156, !1151, !1146, !1164, !1113}
!1164 = distinct !{!1164, !1165, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4f1c17dc8b5d553dE: %self"}
!1165 = distinct !{!1165, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4f1c17dc8b5d553dE"}
!1166 = !{!1161, !1156, !1151, !1146, !1113}
!1167 = !{!1158, !1153, !1148, !1143, !1164, !1110}
!1168 = !{!1164, !1113}
!1169 = !{!1170, !1172}
!1170 = distinct !{!1170, !1171, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd6cf1b160d5b3e2eE: %self"}
!1171 = distinct !{!1171, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd6cf1b160d5b3e2eE"}
!1172 = distinct !{!1172, !1173, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h6f5f257d49f8fcbeE: %_1"}
!1173 = distinct !{!1173, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h6f5f257d49f8fcbeE"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1176 = distinct !{!1176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1181 = distinct !{!1181, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"cmpfunc: %a"}
!1186 = distinct !{!1186, !"cmpfunc"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"cmpfunc: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1191 = distinct !{!1191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1194 = !{!1190, !1185, !1180, !1175}
!1195 = !{!1193, !1188, !1183, !1178}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1198 = distinct !{!1198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1203 = distinct !{!1203, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"cmpfunc: %a"}
!1208 = distinct !{!1208, !"cmpfunc"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"cmpfunc: %b"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1213 = distinct !{!1213, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1216 = !{!1212, !1207, !1202, !1197}
!1217 = !{!1215, !1210, !1205, !1200}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1220 = distinct !{!1220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1225 = distinct !{!1225, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"cmpfunc: %a"}
!1230 = distinct !{!1230, !"cmpfunc"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"cmpfunc: %b"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1235 = distinct !{!1235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1238 = !{!1234, !1229, !1224, !1219}
!1239 = !{!1237, !1232, !1227, !1222, !1240}
!1240 = distinct !{!1240, !1241, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h71a1cb8a64a2c647E: %self"}
!1241 = distinct !{!1241, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h71a1cb8a64a2c647E"}
!1242 = !{!1237, !1232, !1227, !1222}
!1243 = !{!1234, !1229, !1224, !1219, !1240}
!1244 = !{!1240}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1247 = distinct !{!1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1252, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1252 = distinct !{!1252, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1252, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"cmpfunc: %a"}
!1257 = distinct !{!1257, !"cmpfunc"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1257, !"cmpfunc: %b"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1262 = distinct !{!1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1265 = !{!1261, !1256, !1251, !1246}
!1266 = !{!1264, !1259, !1254, !1249, !1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4f1c17dc8b5d553dE: %self"}
!1268 = distinct !{!1268, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4f1c17dc8b5d553dE"}
!1269 = !{!1264, !1259, !1254, !1249}
!1270 = !{!1261, !1256, !1251, !1246, !1267}
!1271 = !{!1267}
!1272 = !{!1273, !1275}
!1273 = distinct !{!1273, !1274, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd6cf1b160d5b3e2eE: %self"}
!1274 = distinct !{!1274, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd6cf1b160d5b3e2eE"}
!1275 = distinct !{!1275, !1276, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h6f5f257d49f8fcbeE: %_1"}
!1276 = distinct !{!1276, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h6f5f257d49f8fcbeE"}
!1277 = !{!"branch_weights", i32 4000000, i32 4001}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1280 = distinct !{!1280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1285, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1285 = distinct !{!1285, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1285, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"cmpfunc: %a"}
!1290 = distinct !{!1290, !"cmpfunc"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1290, !"cmpfunc: %b"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1295 = distinct !{!1295, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1295, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1298 = !{!1294, !1289, !1284, !1279}
!1299 = !{!1297, !1292, !1287, !1282}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1302 = distinct !{!1302, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1305 = distinct !{!1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1310 = distinct !{!1310, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1310, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"cmpfunc: %a"}
!1315 = distinct !{!1315, !"cmpfunc"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1315, !"cmpfunc: %b"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1320 = distinct !{!1320, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1320, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1323 = !{!1319, !1314, !1309, !1304}
!1324 = !{!1322, !1317, !1312, !1307}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1327 = distinct !{!1327, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1330 = distinct !{!1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1335 = distinct !{!1335, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1335, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"cmpfunc: %a"}
!1340 = distinct !{!1340, !"cmpfunc"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1340, !"cmpfunc: %b"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1345 = distinct !{!1345, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1348 = !{!1344, !1339, !1334, !1329}
!1349 = !{!1347, !1342, !1337, !1332}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1352 = distinct !{!1352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1355 = distinct !{!1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1360 = distinct !{!1360, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
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
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1380 = distinct !{!1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1385 = distinct !{!1385, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1385, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1390, !"cmpfunc: %a"}
!1390 = distinct !{!1390, !"cmpfunc"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1390, !"cmpfunc: %b"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1395 = distinct !{!1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1398 = !{!1394, !1389, !1384, !1379}
!1399 = !{!1397, !1392, !1387, !1382}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1402 = distinct !{!1402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1405 = distinct !{!1405, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1406 = distinct !{!1406, !1407}
!1407 = !{!"llvm.loop.unroll.disable"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %a"}
!1410 = distinct !{!1410, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1410, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %b"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1415 = distinct !{!1415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1416 = !{!1417}
!1417 = distinct !{!1417, !1415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1420, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1420 = distinct !{!1420, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1420, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1425, !"cmpfunc: %a"}
!1425 = distinct !{!1425, !"cmpfunc"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1425, !"cmpfunc: %b"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1430 = distinct !{!1430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1433 = !{!1429, !1424, !1419, !1414, !1412}
!1434 = !{!1432, !1427, !1422, !1417, !1409}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1437, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1437 = distinct !{!1437, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1440, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %a"}
!1440 = distinct !{!1440, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1440, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %b"}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1445 = distinct !{!1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1450 = distinct !{!1450, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1450, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"cmpfunc: %a"}
!1455 = distinct !{!1455, !"cmpfunc"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1455, !"cmpfunc: %b"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1460 = distinct !{!1460, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1463 = !{!1459, !1454, !1449, !1444, !1442}
!1464 = !{!1462, !1457, !1452, !1447, !1439}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1467 = distinct !{!1467, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %a"}
!1470 = distinct !{!1470, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %b"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1475 = distinct !{!1475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1480, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1480 = distinct !{!1480, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1480, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"cmpfunc: %a"}
!1485 = distinct !{!1485, !"cmpfunc"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1485, !"cmpfunc: %b"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1490 = distinct !{!1490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1493 = !{!1489, !1484, !1479, !1474, !1472}
!1494 = !{!1492, !1487, !1482, !1477, !1469}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1497 = distinct !{!1497, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %a"}
!1500 = distinct !{!1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1500, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %b"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1505 = distinct !{!1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1510 = distinct !{!1510, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1510, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1515, !"cmpfunc: %a"}
!1515 = distinct !{!1515, !"cmpfunc"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1515, !"cmpfunc: %b"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1520 = distinct !{!1520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1523 = !{!1519, !1514, !1509, !1504, !1502}
!1524 = !{!1522, !1517, !1512, !1507, !1499}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1527 = distinct !{!1527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %a"}
!1530 = distinct !{!1530, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8db0a22246a1c677E: %b"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1535 = distinct !{!1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1540, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1540 = distinct !{!1540, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1540, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"cmpfunc: %a"}
!1545 = distinct !{!1545, !"cmpfunc"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"cmpfunc: %b"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1550 = distinct !{!1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1553 = !{!1549, !1544, !1539, !1534, !1532}
!1554 = !{!1552, !1547, !1542, !1537, !1529}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1557, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1557 = distinct !{!1557, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1560, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E: %self"}
!1560 = distinct !{!1560, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5a9351656ab1c786E"}
!1561 = distinct !{!1561, !1407}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1564 = distinct !{!1564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1569 = distinct !{!1569, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN4core5slice4sort6shared5pivot7median317h38d4e87a163d49f1E: %c"}
!1572 = distinct !{!1572, !"_ZN4core5slice4sort6shared5pivot7median317h38d4e87a163d49f1E"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1569, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"cmpfunc: %a"}
!1577 = distinct !{!1577, !"cmpfunc"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1577, !"cmpfunc: %b"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1582 = distinct !{!1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1582, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1585 = !{!1581, !1576, !1568, !1563, !1586}
!1586 = distinct !{!1586, !1587, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E: %v.0"}
!1587 = distinct !{!1587, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E"}
!1588 = !{!1584, !1579, !1574, !1566, !1571, !1589}
!1589 = distinct !{!1589, !1587, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc65c3b02c86379d5E: %is_less"}
!1590 = !{!1584, !1579, !1574, !1566, !1586}
!1591 = !{!1581, !1576, !1568, !1563, !1571, !1589}
!1592 = !{!1593, !1595, !1597, !1599, !1586}
!1593 = distinct !{!1593, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1594 = distinct !{!1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1595 = distinct !{!1595, !1596, !"cmpfunc: %b"}
!1596 = distinct !{!1596, !"cmpfunc"}
!1597 = distinct !{!1597, !1598, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1598 = distinct !{!1598, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1599 = distinct !{!1599, !1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1600 = distinct !{!1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1601 = !{!1602, !1603, !1604, !1605, !1589}
!1602 = distinct !{!1602, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1603 = distinct !{!1603, !1596, !"cmpfunc: %a"}
!1604 = distinct !{!1604, !1598, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1605 = distinct !{!1605, !1600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1606 = !{!1607, !1609, !1611, !1613}
!1607 = distinct !{!1607, !1608, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1608 = distinct !{!1608, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1609 = distinct !{!1609, !1610, !"cmpfunc: %a"}
!1610 = distinct !{!1610, !"cmpfunc"}
!1611 = distinct !{!1611, !1612, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 0"}
!1612 = distinct !{!1612, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E"}
!1613 = distinct !{!1613, !1614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %a"}
!1614 = distinct !{!1614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E"}
!1615 = !{!1616, !1617, !1618, !1619}
!1616 = distinct !{!1616, !1608, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1617 = distinct !{!1617, !1610, !"cmpfunc: %b"}
!1618 = distinct !{!1618, !1612, !"_ZN4core3ops8function5FnMut8call_mut17heb00cc1d1c254891E: argument 1"}
!1619 = distinct !{!1619, !1614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h783bd31a851fa7d2E: %b"}
!1620 = !{!1621, !1623}
!1621 = distinct !{!1621, !1622, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE: %pair"}
!1622 = distinct !{!1622, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE"}
!1623 = distinct !{!1623, !1622, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbea19fe5e9acd41fE: %self.0"}
!1624 = !{i64 0, i64 -9223372036854775808}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1627 = distinct !{!1627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1627, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1632, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE: %self.0"}
!1632 = distinct !{!1632, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h595fa2e342c5396aE"}
!1633 = !{!1634, !1636, !1631}
!1634 = distinct !{!1634, !1635, !"_ZN5alloc5slice11stable_sort17hd8c3019264ffbce3E: %v.0"}
!1635 = distinct !{!1635, !"_ZN5alloc5slice11stable_sort17hd8c3019264ffbce3E"}
!1636 = distinct !{!1636, !1635, !"_ZN5alloc5slice11stable_sort17hd8c3019264ffbce3E: argument 1"}
!1637 = !{!"branch_weights", !"expected", i32 2000, i32 1}
