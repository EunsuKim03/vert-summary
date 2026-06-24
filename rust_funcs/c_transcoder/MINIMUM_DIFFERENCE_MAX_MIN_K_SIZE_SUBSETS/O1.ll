; ModuleID = 'MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS_emit.f276491db273c3db-cgu.0'
source_filename = "MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS_emit.f276491db273c3db-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_2e1323e2dd744646917cba8eb464acc6 = private unnamed_addr constant [135 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS_emit.rs\00", align 1
@alloc_4c5c8c83042d3aa69c48209f1baef5a0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_2e1323e2dd744646917cba8eb464acc6, [16 x i8] c"\86\00\00\00\00\00\00\00\18\00\00\00\1C\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hcaa359cc62e7febbE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5c034edca524b37fE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5c034edca524b37fE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5c034edca524b37fE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5c034edca524b37fE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9063d6202469d53aE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9063d6202469d53aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9063d6202469d53aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9063d6202469d53aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !62
  %_3.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !67, !noalias !68, !noundef !37
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !69, !noalias !70, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_4.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !71, !noalias !76, !noundef !37
  %_0.i.i7 = icmp slt i32 %_3.i.i, %_4.i.i6
  %7 = xor i1 %_0.i.i, %_0.i.i7
  %_0.i.i10 = icmp slt i32 %_4.i.i, %_4.i.i6
  %_12.i = xor i1 %_0.i.i, %_0.i.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !99, !noalias !100, !noundef !37
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !100, !noalias !99, !noundef !37
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !101, !noalias !110, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !115
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %_3.i.i = load i32, ptr %tail, align 4, !alias.scope !130, !noalias !131, !noundef !37
  %_4.i.i = load i32, ptr %0, align 4, !alias.scope !131, !noalias !130, !noundef !37
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
  %_4.i.i2 = load i32, ptr %2, align 4, !alias.scope !132, !noalias !137, !noundef !37
  %_0.i.i3 = icmp slt i32 %_3.i.i, %_4.i.i2
  br i1 %_0.i.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i, ptr %sift.sroa.0.0, align 4, !noalias !140
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h56c46f2a5a313938E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !165, !noalias !166, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !166, !noalias !165, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !187, !noalias !188, !noundef !37
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !188, !noalias !187, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !209, !noalias !210, !noundef !37
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !210, !noalias !209, !noundef !37
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !231, !noalias !232, !noundef !37
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !232, !noalias !231, !noundef !37
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !253, !noalias !254, !noundef !37
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !254, !noalias !253, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hb07a9177c5e5a1e4E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %_3.i.i = load i32, ptr %_7, align 4, !alias.scope !265, !noalias !266, !noundef !37
  %_4.i.i = load i32, ptr %v_base, align 4, !alias.scope !266, !noalias !265, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %_3.i.i7 = load i32, ptr %_12, align 4, !alias.scope !277, !noalias !278, !noundef !37
  %_4.i.i8 = load i32, ptr %_14, align 4, !alias.scope !278, !noalias !277, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %_3.i.i10 = load i32, ptr %c, align 4, !alias.scope !289, !noalias !290, !noundef !37
  %_4.i.i11 = load i32, ptr %a, align 4, !alias.scope !290, !noalias !289, !noundef !37
  %_0.i.i12 = icmp slt i32 %_3.i.i10, %_4.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %_3.i.i13 = load i32, ptr %d, align 4, !alias.scope !301, !noalias !302, !noundef !37
  %_4.i.i14 = load i32, ptr %b, align 4, !alias.scope !302, !noalias !301, !noundef !37
  %_0.i.i15 = icmp slt i32 %_3.i.i13, %_4.i.i14
  %0 = select i1 %_0.i.i12, ptr %c, ptr %a, !unpredictable !37
  %1 = select i1 %_0.i.i15, ptr %c, ptr %b, !unpredictable !37
  %2 = select i1 %_0.i.i12, ptr %a, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i.i12, ptr %b, ptr %c, !unpredictable !37
  %4 = select i1 %_0.i.i15, ptr %d, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %_3.i.i16 = load i32, ptr %4, align 4, !alias.scope !313, !noalias !314, !noundef !37
  %_4.i.i17 = load i32, ptr %2, align 4, !alias.scope !314, !noalias !313, !noundef !37
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h59561a1d9b2d23f5E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !325, !noalias !326, !noundef !37
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !326, !noalias !325, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !337, !noalias !338, !noundef !37
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !338, !noalias !337, !noundef !37
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
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !349, !noalias !350, !noundef !37
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !350, !noalias !349, !noundef !37
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !361, !noalias !362, !noundef !37
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !362, !noalias !361, !noundef !37
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !373, !noalias !374, !noundef !37
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !374, !noalias !373, !noundef !37
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
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !385, !noalias !386, !noundef !37
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !386, !noalias !385, !noundef !37
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !397, !noalias !398, !noundef !37
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !398, !noalias !397, !noundef !37
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
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !409, !noalias !410, !noundef !37
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !410, !noalias !409, !noundef !37
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !421, !noalias !422, !noundef !37
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !422, !noalias !421, !noundef !37
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %10 = select i1 %_0.i.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %_3.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !433, !noalias !434, !noundef !37
  %_4.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !434, !noalias !433, !noundef !37
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
  %_3.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !451, !noalias !452, !noundef !37
  %_4.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !453, !noalias !454, !noundef !37
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
  %_3.i.i19.i = load i32, ptr %21, align 4, !alias.scope !470, !noalias !471, !noundef !37
  %_4.i.i20.i = load i32, ptr %20, align 4, !alias.scope !472, !noalias !473, !noundef !37
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
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !484, !noalias !485, !noundef !37
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !486, !noalias !487, !noundef !37
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
  %_3.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !496, !noalias !497, !noundef !37
  %_4.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !498, !noalias !499, !noundef !37
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
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !508, !noalias !509, !noundef !37
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !510, !noalias !511, !noundef !37
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
  %_3.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !520, !noalias !521, !noundef !37
  %_4.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !522, !noalias !523, !noundef !37
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
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !532, !noalias !533, !noundef !37
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !534, !noalias !535, !noundef !37
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
  %_3.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !544, !noalias !545, !noundef !37
  %_4.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !546, !noalias !547, !noundef !37
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE.exit, !prof !548

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !435
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdd824c2fce72018bE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !569, !noalias !570, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !570, !noalias !569, !noundef !37
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
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !591, !noalias !592, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !592, !noalias !591, !noundef !37
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
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !613, !noalias !614, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !614, !noalias !613, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !635, !noalias !636, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !636, !noalias !635, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !657, !noalias !658, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !658, !noalias !657, !noundef !37
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
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !679, !noalias !680, !noundef !37
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !680, !noalias !679, !noundef !37
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
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !701, !noalias !702, !noundef !37
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !702, !noalias !701, !noundef !37
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
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !723, !noalias !724, !noundef !37
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !724, !noalias !723, !noundef !37
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !745, !noalias !746, !noundef !37
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !746, !noalias !745, !noundef !37
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !37
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !37
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !37
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !767, !noalias !768, !noundef !37
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !768, !noalias !767, !noundef !37
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
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !795, !noalias !796, !noundef !37
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !797, !noalias !798, !noundef !37
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
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !824, !noalias !825, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !826, !noalias !827, !noundef !37
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
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !846, !noalias !847, !noundef !37
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !848, !noalias !849, !noundef !37
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
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !866, !noalias !867, !noundef !37
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !868, !noalias !869, !noundef !37
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
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !886, !noalias !887, !noundef !37
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !888, !noalias !889, !noundef !37
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
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !906, !noalias !907, !noundef !37
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !908, !noalias !909, !noundef !37
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
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !926, !noalias !927, !noundef !37
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !928, !noalias !929, !noundef !37
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
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !946, !noalias !947, !noundef !37
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !948, !noalias !949, !noundef !37
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E.exit, !prof !548

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !769
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 {
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
  %_3.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !963, !noalias !964, !noundef !37
  %_4.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !965, !noalias !966, !noundef !37
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
  %_3.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !982, !noalias !983, !noundef !37
  %_4.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !984, !noalias !985, !noundef !37
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !548

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1011, !noalias !1012, !noundef !37
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1013, !noalias !1014, !noundef !37
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
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1040, !noalias !1041, !noundef !37
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1042, !noalias !1043, !noundef !37
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !548

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7d751f243c2d60e6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1066, !noalias !1067, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1067, !noalias !1066, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1068, !noalias !1077, !noundef !37
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1082
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he27b7bac6d2685edE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %_3.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1097, !noalias !1098, !noundef !37
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !1098, !noalias !1097, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1099, !noalias !1104, !noundef !37
  %_0.i.i3.i = icmp slt i32 %_3.i.i.i, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1107
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h18cd2811802b39f6E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h59561a1d9b2d23f5E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias nonnull align 1 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h59561a1d9b2d23f5E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias nonnull align 1 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1122, !noalias !1123, !noundef !37
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1123, !noalias !1122, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1134, !noalias !1135, !noundef !37
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1135, !noalias !1134, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1146, !noalias !1147, !noundef !37
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1147, !noalias !1146, !noundef !37
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1158, !noalias !1159, !noundef !37
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1159, !noalias !1158, !noundef !37
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = select i1 %_0.i.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1170, !noalias !1171, !noundef !37
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1171, !noalias !1170, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %_3.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1182, !noalias !1183, !noundef !37
  %_4.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1183, !noalias !1182, !noundef !37
  %_0.i.i.i16 = icmp slt i32 %_3.i.i.i14, %_4.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %_3.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1194, !noalias !1195, !noundef !37
  %_4.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1195, !noalias !1194, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %_3.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1206, !noalias !1207, !noundef !37
  %_4.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1207, !noalias !1206, !noundef !37
  %_0.i.i12.i33 = icmp slt i32 %_3.i.i10.i31, %_4.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %_3.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1218, !noalias !1219, !noundef !37
  %_4.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1219, !noalias !1218, !noundef !37
  %_0.i.i15.i36 = icmp slt i32 %_3.i.i13.i34, %_4.i.i14.i35
  %10 = select i1 %_0.i.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %_3.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1230, !noalias !1231, !noundef !37
  %_4.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1231, !noalias !1230, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1232
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1232, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243), !noalias !1246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249), !noalias !1246
  %_3.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1251, !noalias !1252, !noundef !37
  %_4.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1253, !noalias !1254, !noundef !37
  %_0.i.i.i51 = icmp slt i32 %_3.i.i.i49, %_4.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i49, i32 %_4.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1255
  %count.i.i = zext i1 %_0.i.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262), !noalias !1265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268), !noalias !1265
  %_3.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1270, !noalias !1271, !noundef !37
  %_4.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1272, !noalias !1273, !noundef !37
  %_0.i.i21.i = icmp slt i32 %_3.i.i19.i, %_4.i.i20.i
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i, i32 %_4.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1274
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1235
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1235
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
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1276
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1281, !noalias !1286, !noundef !37
  %_0.i.i.i57 = icmp slt i32 %40, %_4.i.i.i56
  br i1 %_0.i.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1289, !noalias !1294, !noundef !37
  %_0.i.i3.i = icmp slt i32 %40, %_4.i.i2.i
  br i1 %_0.i.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1297
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hfb1ffc38bf0ec9d7E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3097b3b96d69a860E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdd824c2fce72018bE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdd824c2fce72018bE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1322, !noalias !1323, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1323, !noalias !1322, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1344, !noalias !1345, !noundef !37
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1345, !noalias !1344, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1366, !noalias !1367, !noundef !37
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1367, !noalias !1366, !noundef !37
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1388, !noalias !1389, !noundef !37
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1389, !noalias !1388, !noundef !37
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !37
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !37
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !37
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !37
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1410, !noalias !1411, !noundef !37
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1411, !noalias !1410, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1432, !noalias !1433, !noundef !37
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1433, !noalias !1432, !noundef !37
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1454, !noalias !1455, !noundef !37
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1455, !noalias !1454, !noundef !37
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1476, !noalias !1477, !noundef !37
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1477, !noalias !1476, !noundef !37
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1498, !noalias !1499, !noundef !37
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1499, !noalias !1498, !noundef !37
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !37
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !37
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !37
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !37
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1520, !noalias !1521, !noundef !37
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1521, !noalias !1520, !noundef !37
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1522
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1522, !noundef !37
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533), !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539), !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541), !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544), !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546), !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549), !noalias !1536
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1551, !noalias !1552, !noundef !37
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1553, !noalias !1554, !noundef !37
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1555
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575), !noalias !1565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578), !noalias !1565
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1580, !noalias !1581, !noundef !37
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1582, !noalias !1583, !noundef !37
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1584
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1525
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1525
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
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1586
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1591, !noalias !1600, !noundef !37
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1605, !noalias !1614, !noundef !37
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1619
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf95bfc96a0130296E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h1c46fa0be2554b15E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1627, !noalias !1624, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !1624, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit", !prof !1629

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1624
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1624, !nonnull !37, !noundef !37
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hefb3d511103f761dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hc4d780fe91687b63E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1627, !noalias !1630, !noundef !37
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !1630, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit", !prof !1629

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1630
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1630, !nonnull !37, !noundef !37
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h90eb438bc79de407E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hf48cb81c28a6f743E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h14ff4f5f5a334dc8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %_3.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1643, !noalias !1644, !noundef !37
  %_4.i.i = load i32, ptr %v.0, align 4, !alias.scope !1644, !noalias !1643, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %_3.i.i1 = load i32, ptr %0, align 4, !alias.scope !1655, !noalias !1656, !noundef !37
  %_4.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1656, !noalias !1655, !noundef !37
  %_0.i.i3 = icmp slt i32 %_3.i.i1, %_4.i.i2
  br i1 %_0.i.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %_3.i.i4 = load i32, ptr %2, align 4, !alias.scope !1667, !noalias !1668, !noundef !37
  %_4.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1668, !noalias !1667, !noundef !37
  %_0.i.i6 = icmp slt i32 %_3.i.i4, %_4.i.i5
  br i1 %_0.i.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h638871b21e418fb8E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1669, !noalias !1674, !noundef !37
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1676, !noalias !1677
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1669, !noalias !1674
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1676, !noalias !1677
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1669, !noalias !1674, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1676, !noalias !1677
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1669, !noalias !1674
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1676, !noalias !1677
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1669, !noalias !1674, !noundef !37
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1676, !noalias !1677
  store i32 %14, ptr %gep27, align 4, !alias.scope !1669, !noalias !1674
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1676, !noalias !1677
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17hac9452a5e8329293E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1698, !noalias !1699, !noundef !37
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1699, !noalias !1698, !noundef !37
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1720, !noalias !1721, !noundef !37
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1721, !noalias !1720, !noundef !37
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1742, !noalias !1743, !noundef !37
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1743, !noalias !1742, !noundef !37
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h73206c36ababcad0E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1744, !noalias !1749, !noundef !37
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1744, !noalias !1749, !noundef !37
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1751, !noalias !1752
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1744, !noalias !1749
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1751, !noalias !1752
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1744, !noalias !1749, !noundef !37
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
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h4c00112ff274ca91E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h5dd3c01ae61d5dacE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h90eb438bc79de407E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17hac9452a5e8329293E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit, label %bb5.i37

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1779, !noalias !1780, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1783, !noalias !1784, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1753, !noalias !1785
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1806, !noalias !1807, !noundef !37
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1810, !noalias !1811, !noundef !37
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1753, !noalias !1812
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1758, !noalias !1813
  br label %_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit

_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h287c3514d6bb5f24E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17hefb3d511103f761dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h14ff4f5f5a334dc8E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !37
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1823
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %_3.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1834, !noalias !1835, !noundef !37
  %_4.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1838, !noalias !1839, !noundef !37
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1818, !noalias !1840
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1851, !noalias !1852, !noundef !37
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1855, !noalias !1856, !noundef !37
  %_0.i.i.i14.i = icmp slt i32 %_3.i.i.i12.i, %_4.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12.i, i32 %_4.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1818, !noalias !1857
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1823, !noalias !1858
  br label %_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit

_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17he82314bec7fc0159E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h353b2faa13769cb5E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1883, !noalias !1884, !noundef !37
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1884, !noalias !1883, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h83a8783524040f92E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #7 {
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
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !1895, !noalias !1896, !noundef !37
  %_4.i.i = load i32, ptr %3, align 4, !alias.scope !1896, !noalias !1895, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4232bd8ad7e653e4E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1917, !noalias !1918, !noundef !37
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1918, !noalias !1917, !noundef !37
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he43164887a9908bcE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %_3.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1929, !noalias !1930, !noundef !37
  %_4.i.i = load i32, ptr %_2059, align 4, !alias.scope !1930, !noalias !1929, !noundef !37
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
define void @_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef nonnull readnone align 1 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_3.i.i.i = load i32, ptr %3, align 4, !alias.scope !1941, !noalias !1942, !noundef !37
  %_4.i.i.i = load i32, ptr %2, align 4, !alias.scope !1945, !noalias !1946, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1947
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %_3.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1958, !noalias !1959, !noundef !37
  %_4.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1962, !noalias !1963, !noundef !37
  %_0.i.i.i14 = icmp slt i32 %_3.i.i.i12, %_4.i.i.i13
  %consume_left.i = xor i1 %_0.i.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12, i32 %_4.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1964
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1965
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1990, !noalias !1991, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1994, !noalias !1995, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1996
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2017, !noalias !2018, !noundef !37
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2021, !noalias !2022, !noundef !37
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2023
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2024
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h04e883b2d1751423E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  %_3.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2045, !noalias !2046, !noundef !37
  %_4.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2046, !noalias !2045, !noundef !37
  %_0.i.i.i = icmp sge i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i, ptr %dst.i, align 4, !noalias !2047
  %_8.i = zext i1 %_0.i.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  %_3.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2065, !noalias !2066, !noundef !37
  %_4.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2066, !noalias !2065, !noundef !37
  %_0.i.i.i27 = icmp sge i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i26, ptr %dst.i31, align 4, !noalias !2067
  %_8.i33 = zext i1 %_0.i.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %_3.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2085, !noalias !2086, !noundef !37
  %_4.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2086, !noalias !2085, !noundef !37
  %_0.i.i.i37 = icmp sge i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i36, ptr %dst.i41, align 4, !noalias !2087
  %_8.i43 = zext i1 %_0.i.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %_3.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2105, !noalias !2106, !noundef !37
  %_4.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2106, !noalias !2105, !noundef !37
  %_0.i.i.i47 = icmp sge i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i46, ptr %dst.i51, align 4, !noalias !2107
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  %_3.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2125, !noalias !2126, !noundef !37
  %_4.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2126, !noalias !2125, !noundef !37
  %_0.i.i.i57 = icmp sge i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i56, ptr %dst.i61, align 4, !noalias !2127
  %_8.i63 = zext i1 %_0.i.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2130
  store i32 %13, ptr %dst.i68, align 4, !noalias !2130
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2133

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c43713146589319E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias nonnull readnone align 1 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %_3.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2145, !noalias !2146, !noundef !37
  %_4.i.i = load i32, ptr %pivot, align 4, !alias.scope !2146, !noalias !2145, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i, ptr %dst.i, align 4, !noalias !2147
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  %_3.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2160, !noalias !2161, !noundef !37
  %_4.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2161, !noalias !2160, !noundef !37
  %_0.i.i27 = icmp slt i32 %_3.i.i25, %_4.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i25, ptr %dst.i31, align 4, !noalias !2162
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %_3.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2175, !noalias !2176, !noundef !37
  %_4.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2176, !noalias !2175, !noundef !37
  %_0.i.i37 = icmp slt i32 %_3.i.i35, %_4.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i35, ptr %dst.i41, align 4, !noalias !2177
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %_3.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2190, !noalias !2191, !noundef !37
  %_4.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2191, !noalias !2190, !noundef !37
  %_0.i.i47 = icmp slt i32 %_3.i.i45, %_4.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i45, ptr %dst.i51, align 4, !noalias !2192
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  %_3.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2205, !noalias !2206, !noundef !37
  %_4.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2206, !noalias !2205, !noundef !37
  %_0.i.i57 = icmp slt i32 %_3.i.i55, %_4.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i55, ptr %dst.i61, align 4, !noalias !2207
  %_8.i63 = zext i1 %_0.i.i57 to i64
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h79ffc8567d8513f9E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2234, !noalias !2235, !noundef !37
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2235, !noalias !2234, !noundef !37
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
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2259, !noalias !2260, !noundef !37
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2260, !noalias !2259, !noundef !37
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
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2284, !noalias !2285, !noundef !37
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2285, !noalias !2284, !noundef !37
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
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2309, !noalias !2310, !noundef !37
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2310, !noalias !2309, !noundef !37
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
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2334, !noalias !2335, !noundef !37
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2335, !noalias !2334, !noundef !37
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
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hdf8fb518df3defc1E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2368, !noalias !2369, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2369, !noalias !2368, !noundef !37
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
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2398, !noalias !2399, !noundef !37
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2399, !noalias !2398, !noundef !37
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
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2428, !noalias !2429, !noundef !37
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2429, !noalias !2428, !noundef !37
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
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2458, !noalias !2459, !noundef !37
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2459, !noalias !2458, !noundef !37
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
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2488, !noalias !2489, !noundef !37
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2489, !noalias !2488, !noundef !37
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
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3097b3b96d69a860E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h5c034edca524b37fE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2502), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2508), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2510), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2513), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2515), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2518), !noalias !2505
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2520, !noalias !2523, !noundef !37
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2525, !noalias !2526, !noundef !37
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2527, !noalias !2536, !noundef !37
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h90eb438bc79de407E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2541, !noalias !2550, !noundef !37
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h79ffc8567d8513f9E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit", !prof !1629

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2555
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1375d672016d8f0cE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hdf8fb518df3defc1E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h18cd2811802b39f6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 1 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9063d6202469d53aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 1 %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2564), !noalias !2567
  call void @llvm.experimental.noalias.scope.decl(metadata !2570), !noalias !2567
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2572, !noalias !2575, !noundef !37
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2577, !noalias !2578, !noundef !37
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2579, !noalias !2584, !noundef !37
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %5 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17hefb3d511103f761dE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E.exit
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2587, !noalias !2592, !noundef !37
  %_0.i.i.not = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c43713146589319E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias nonnull align 1 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit", !prof !1629

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2595
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4e584b3ff72b6d1bE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h04e883b2d1751423E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1627, !noundef !37
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1628, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2b4812c4ae1f5638E.exit", !prof !1629

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2b4812c4ae1f5638E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h5e20617671f8e382E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !37
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2599, !noundef !37
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbda3f7e610b7283aE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9c723865f46659baE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b317cb7d993290bE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2600, !noalias !2603, !noundef !37
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2603, !noalias !2600, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %N, i32 noundef %K) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1c46fa0be2554b15E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he27b7bac6d2685edE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2605
  %_8 = add i32 %N, 1
  %_7 = sub i32 %_8, %K
  %_0.i.i.i9 = icmp sgt i32 %_7, 0
  br i1 %_0.i.i.i9, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %_19 = sext i32 %K to i64
  %_17 = add nsw i64 %_19, -1
  %wide.trip.count = zext nneg i32 %_7 to i64
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb9
  %indvars.iv17 = phi i64 [ 0, %bb6.lr.ph ], [ %indvars.iv.next18, %bb9 ]
  %res.sroa.0.011 = phi i32 [ 2147483647, %bb6.lr.ph ], [ %_0.sroa.0.0.i, %bb9 ]
  %_16 = add nuw nsw i64 %_17, %indvars.iv17
  %_21 = icmp ult i64 %_16, %arr.1
  br i1 %_21, label %bb9, label %panic

bb7:                                              ; preds = %bb9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit"
  %res.sroa.0.0.lcssa = phi i32 [ 2147483647, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E.exit" ], [ %_0.sroa.0.0.i, %bb9 ]
  ret i32 %res.sroa.0.0.lcssa

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4c5c8c83042d3aa69c48209f1baef5a0) #24
  unreachable

bb9:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %0, align 4, !noundef !37
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv17
  %_22 = load i32, ptr %1, align 4, !noundef !37
  %cur_seq_diff = sub i32 %_15, %_22
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %cur_seq_diff, i32 %res.sroa.0.011)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %bb7, label %bb6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2609
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2612
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE.exit", label %bb7.i.i, !prof !2608

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2608

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc4d780fe91687b63E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7d751f243c2d60e6E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2609
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h4929c4d70e20fdb2E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h4929c4d70e20fdb2E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h4929c4d70e20fdb2E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h4929c4d70e20fdb2E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h4929c4d70e20fdb2E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h54c26cecfba5231eE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h54c26cecfba5231eE"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!49 = !{!50, !51, !52, !53}
!50 = distinct !{!50, !42, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!51 = distinct !{!51, !44, !"cmpfunc: %a"}
!52 = distinct !{!52, !46, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!53 = distinct !{!53, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!56 = distinct !{!56, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!61 = distinct !{!61, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317h2a0464ec5e3186d5E: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317h2a0464ec5e3186d5E"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!67 = !{!60, !55}
!68 = !{!66, !58, !63}
!69 = !{!66, !58}
!70 = !{!60, !55, !63}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!73 = distinct !{!73, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!74 = distinct !{!74, !75, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!75 = distinct !{!75, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!76 = !{!77, !78}
!77 = distinct !{!77, !73, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!78 = distinct !{!78, !75, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!106 = distinct !{!106, !107, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!107 = distinct !{!107, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!108 = distinct !{!108, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!109 = distinct !{!109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!110 = !{!111, !112, !113, !114}
!111 = distinct !{!111, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!112 = distinct !{!112, !105, !"cmpfunc: %a"}
!113 = distinct !{!113, !107, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!114 = distinct !{!114, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!117 = distinct !{!117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!118 = distinct !{!118, !119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!119 = distinct !{!119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!122 = distinct !{!122, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
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
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!137 = !{!138, !139}
!138 = distinct !{!138, !134, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!139 = distinct !{!139, !136, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!142 = distinct !{!142, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!143 = distinct !{!143, !144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!144 = distinct !{!144, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!147 = distinct !{!147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!152 = distinct !{!152, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"cmpfunc: %a"}
!157 = distinct !{!157, !"cmpfunc"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"cmpfunc: %b"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!162 = distinct !{!162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!165 = !{!161, !156, !151, !146}
!166 = !{!164, !159, !154, !149}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!169 = distinct !{!169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!174 = distinct !{!174, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"cmpfunc: %a"}
!179 = distinct !{!179, !"cmpfunc"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"cmpfunc: %b"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!184 = distinct !{!184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!187 = !{!183, !178, !173, !168}
!188 = !{!186, !181, !176, !171}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!191 = distinct !{!191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!196 = distinct !{!196, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"cmpfunc: %a"}
!201 = distinct !{!201, !"cmpfunc"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"cmpfunc: %b"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!206 = distinct !{!206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!209 = !{!205, !200, !195, !190}
!210 = !{!208, !203, !198, !193}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!213 = distinct !{!213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!218 = distinct !{!218, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"cmpfunc: %a"}
!223 = distinct !{!223, !"cmpfunc"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"cmpfunc: %b"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!228 = distinct !{!228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!231 = !{!227, !222, !217, !212}
!232 = !{!230, !225, !220, !215}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!235 = distinct !{!235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!240 = distinct !{!240, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"cmpfunc: %a"}
!245 = distinct !{!245, !"cmpfunc"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"cmpfunc: %b"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!250 = distinct !{!250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!253 = !{!249, !244, !239, !234}
!254 = !{!252, !247, !242, !237}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!257 = distinct !{!257, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!262 = distinct !{!262, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!265 = !{!261, !256}
!266 = !{!264, !259}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!269 = distinct !{!269, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!274 = distinct !{!274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!277 = !{!273, !268}
!278 = !{!276, !271}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!281 = distinct !{!281, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!286 = distinct !{!286, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!289 = !{!285, !280}
!290 = !{!288, !283}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!293 = distinct !{!293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!298 = distinct !{!298, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!301 = !{!297, !292}
!302 = !{!300, !295}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!305 = distinct !{!305, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!306 = !{!307}
!307 = distinct !{!307, !305, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!310 = distinct !{!310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!313 = !{!309, !304}
!314 = !{!312, !307}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!317 = distinct !{!317, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!322 = distinct !{!322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!325 = !{!321, !316}
!326 = !{!324, !319}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!329 = distinct !{!329, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!337 = !{!333, !328}
!338 = !{!336, !331}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!341 = distinct !{!341, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!346 = distinct !{!346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!349 = !{!345, !340}
!350 = !{!348, !343}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!353 = distinct !{!353, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!358 = distinct !{!358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!361 = !{!357, !352}
!362 = !{!360, !355}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!365 = distinct !{!365, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!370 = distinct !{!370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!373 = !{!369, !364}
!374 = !{!372, !367}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!377 = distinct !{!377, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!382 = distinct !{!382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!385 = !{!381, !376}
!386 = !{!384, !379}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!389 = distinct !{!389, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!394 = distinct !{!394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!397 = !{!393, !388}
!398 = !{!396, !391}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!401 = distinct !{!401, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!406 = distinct !{!406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!409 = !{!405, !400}
!410 = !{!408, !403}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!413 = distinct !{!413, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!421 = !{!417, !412}
!422 = !{!420, !415}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!425 = distinct !{!425, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!430 = distinct !{!430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!433 = !{!429, !424}
!434 = !{!432, !427}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE: %v.0"}
!437 = distinct !{!437, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!440 = distinct !{!440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!445 = distinct !{!445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %_0"}
!448 = distinct !{!448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE"}
!449 = !{!450}
!450 = distinct !{!450, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!451 = !{!444, !439, !436}
!452 = !{!450, !442, !447}
!453 = !{!450, !442, !436}
!454 = !{!444, !439, !447}
!455 = !{!447, !456, !436}
!456 = distinct !{!456, !448, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %is_less"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!459 = distinct !{!459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!464 = distinct !{!464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %_0"}
!467 = distinct !{!467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE"}
!468 = !{!469}
!469 = distinct !{!469, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!470 = !{!463, !458, !436}
!471 = !{!469, !461, !466}
!472 = !{!469, !461, !436}
!473 = !{!463, !458, !466}
!474 = !{!466, !475, !436}
!475 = distinct !{!475, !467, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %is_less"}
!476 = !{!477}
!477 = distinct !{!477, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It1"}
!478 = !{!479}
!479 = distinct !{!479, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It1"}
!480 = !{!481}
!481 = distinct !{!481, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!482 = !{!483}
!483 = distinct !{!483, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!484 = !{!481, !477, !436}
!485 = !{!483, !479, !447}
!486 = !{!483, !479, !436}
!487 = !{!481, !477, !447}
!488 = !{!489}
!489 = distinct !{!489, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It1"}
!490 = !{!491}
!491 = distinct !{!491, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It1"}
!492 = !{!493}
!493 = distinct !{!493, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!494 = !{!495}
!495 = distinct !{!495, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!496 = !{!493, !489, !436}
!497 = !{!495, !491, !466}
!498 = !{!495, !491, !436}
!499 = !{!493, !489, !466}
!500 = !{!501}
!501 = distinct !{!501, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It2"}
!502 = !{!503}
!503 = distinct !{!503, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It2"}
!504 = !{!505}
!505 = distinct !{!505, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!506 = !{!507}
!507 = distinct !{!507, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!508 = !{!505, !501, !436}
!509 = !{!507, !503, !447}
!510 = !{!507, !503, !436}
!511 = !{!505, !501, !447}
!512 = !{!513}
!513 = distinct !{!513, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It2"}
!514 = !{!515}
!515 = distinct !{!515, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It2"}
!516 = !{!517}
!517 = distinct !{!517, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!518 = !{!519}
!519 = distinct !{!519, !464, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!520 = !{!517, !513, !436}
!521 = !{!519, !515, !466}
!522 = !{!519, !515, !436}
!523 = !{!517, !513, !466}
!524 = !{!525}
!525 = distinct !{!525, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It3"}
!526 = !{!527}
!527 = distinct !{!527, !440, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It3"}
!528 = !{!529}
!529 = distinct !{!529, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!530 = !{!531}
!531 = distinct !{!531, !445, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!532 = !{!529, !525, !436}
!533 = !{!531, !527, !447}
!534 = !{!531, !527, !436}
!535 = !{!529, !525, !447}
!536 = !{!537}
!537 = distinct !{!537, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0:It3"}
!538 = !{!539}
!539 = distinct !{!539, !459, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1:It3"}
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
!550 = distinct !{!550, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!551 = distinct !{!551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!556 = distinct !{!556, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!572 = distinct !{!572, !573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!573 = distinct !{!573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!574 = !{!575}
!575 = distinct !{!575, !573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!578 = distinct !{!578, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!579 = !{!580}
!580 = distinct !{!580, !578, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!594 = distinct !{!594, !595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!595 = distinct !{!595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!596 = !{!597}
!597 = distinct !{!597, !595, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!600 = distinct !{!600, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!616 = distinct !{!616, !617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!617 = distinct !{!617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!622 = distinct !{!622, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!638 = distinct !{!638, !639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!639 = distinct !{!639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!640 = !{!641}
!641 = distinct !{!641, !639, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!644 = distinct !{!644, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!660 = distinct !{!660, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!661 = distinct !{!661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!666 = distinct !{!666, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!682 = distinct !{!682, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!683 = distinct !{!683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!688 = distinct !{!688, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!689 = !{!690}
!690 = distinct !{!690, !688, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!704 = distinct !{!704, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!705 = distinct !{!705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!710 = distinct !{!710, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!726 = distinct !{!726, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!727 = distinct !{!727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!728 = !{!729}
!729 = distinct !{!729, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!732 = distinct !{!732, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!733 = !{!734}
!734 = distinct !{!734, !732, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!748 = distinct !{!748, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!749 = distinct !{!749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!750 = !{!751}
!751 = distinct !{!751, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!754 = distinct !{!754, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!770 = distinct !{!770, !771, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E: %v.0"}
!771 = distinct !{!771, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!774 = distinct !{!774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!779 = distinct !{!779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %_0"}
!782 = distinct !{!782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE"}
!783 = !{!784}
!784 = distinct !{!784, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!800 = distinct !{!800, !782, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %is_less"}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!803 = distinct !{!803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!808 = distinct !{!808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %_0"}
!811 = distinct !{!811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE"}
!812 = !{!813}
!813 = distinct !{!813, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!829 = distinct !{!829, !811, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %is_less"}
!830 = !{!831}
!831 = distinct !{!831, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It1"}
!832 = !{!833}
!833 = distinct !{!833, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It1"}
!834 = !{!835}
!835 = distinct !{!835, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It1"}
!836 = !{!837}
!837 = distinct !{!837, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It1"}
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
!851 = distinct !{!851, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It1"}
!852 = !{!853}
!853 = distinct !{!853, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It1"}
!854 = !{!855}
!855 = distinct !{!855, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It1"}
!856 = !{!857}
!857 = distinct !{!857, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It1"}
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
!871 = distinct !{!871, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It2"}
!872 = !{!873}
!873 = distinct !{!873, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It2"}
!874 = !{!875}
!875 = distinct !{!875, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It2"}
!876 = !{!877}
!877 = distinct !{!877, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It2"}
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
!891 = distinct !{!891, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It2"}
!892 = !{!893}
!893 = distinct !{!893, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It2"}
!894 = !{!895}
!895 = distinct !{!895, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It2"}
!896 = !{!897}
!897 = distinct !{!897, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It2"}
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
!911 = distinct !{!911, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It3"}
!912 = !{!913}
!913 = distinct !{!913, !774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It3"}
!914 = !{!915}
!915 = distinct !{!915, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It3"}
!916 = !{!917}
!917 = distinct !{!917, !779, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It3"}
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
!931 = distinct !{!931, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a:It3"}
!932 = !{!933}
!933 = distinct !{!933, !803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b:It3"}
!934 = !{!935}
!935 = distinct !{!935, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0:It3"}
!936 = !{!937}
!937 = distinct !{!937, !808, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1:It3"}
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
!951 = distinct !{!951, !952, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!952 = distinct !{!952, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!957 = distinct !{!957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %_0"}
!960 = distinct !{!960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE"}
!961 = !{!962}
!962 = distinct !{!962, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!963 = !{!956, !951}
!964 = !{!962, !954, !959}
!965 = !{!962, !954}
!966 = !{!956, !951, !959}
!967 = !{!959, !968}
!968 = distinct !{!968, !960, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %is_less"}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!971 = distinct !{!971, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!972 = !{!973}
!973 = distinct !{!973, !971, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!976 = distinct !{!976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %_0"}
!979 = distinct !{!979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE"}
!980 = !{!981}
!981 = distinct !{!981, !976, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!982 = !{!975, !970}
!983 = !{!981, !973, !978}
!984 = !{!981, !973}
!985 = !{!975, !970, !978}
!986 = !{!978, !987}
!987 = distinct !{!987, !979, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %is_less"}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!990 = distinct !{!990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!991 = !{!992}
!992 = distinct !{!992, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!993 = !{!994}
!994 = distinct !{!994, !995, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!995 = distinct !{!995, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %_0"}
!998 = distinct !{!998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE"}
!999 = !{!1000}
!1000 = distinct !{!1000, !995, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1016 = distinct !{!1016, !998, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %is_less"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1019 = distinct !{!1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1024 = distinct !{!1024, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %_0"}
!1027 = distinct !{!1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1024, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1045 = distinct !{!1045, !1027, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %is_less"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1048 = distinct !{!1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1053, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1053 = distinct !{!1053, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1053, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"cmpfunc: %a"}
!1058 = distinct !{!1058, !"cmpfunc"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"cmpfunc: %b"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1063 = distinct !{!1063, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1066 = !{!1062, !1057, !1052, !1047}
!1067 = !{!1065, !1060, !1055, !1050}
!1068 = !{!1069, !1071, !1073, !1075}
!1069 = distinct !{!1069, !1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1070 = distinct !{!1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1071 = distinct !{!1071, !1072, !"cmpfunc: %b"}
!1072 = distinct !{!1072, !"cmpfunc"}
!1073 = distinct !{!1073, !1074, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1074 = distinct !{!1074, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1075 = distinct !{!1075, !1076, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1076 = distinct !{!1076, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = distinct !{!1078, !1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1079 = distinct !{!1079, !1072, !"cmpfunc: %a"}
!1080 = distinct !{!1080, !1074, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1081 = distinct !{!1081, !1076, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1082 = !{!1083, !1085}
!1083 = distinct !{!1083, !1084, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1084 = distinct !{!1084, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1085 = distinct !{!1085, !1086, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1086 = distinct !{!1086, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1089 = distinct !{!1089, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1089, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1094, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1094 = distinct !{!1094, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1094, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1097 = !{!1093, !1088}
!1098 = !{!1096, !1091}
!1099 = !{!1100, !1102}
!1100 = distinct !{!1100, !1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1101 = distinct !{!1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1102 = distinct !{!1102, !1103, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1103 = distinct !{!1103, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1104 = !{!1105, !1106}
!1105 = distinct !{!1105, !1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1106 = distinct !{!1106, !1103, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1107 = !{!1108, !1110}
!1108 = distinct !{!1108, !1109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1109 = distinct !{!1109, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1110 = distinct !{!1110, !1111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1111 = distinct !{!1111, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1114 = distinct !{!1114, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1114, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1119 = distinct !{!1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1122 = !{!1118, !1113}
!1123 = !{!1121, !1116}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1126 = distinct !{!1126, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1131, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1131 = distinct !{!1131, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1131, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1134 = !{!1130, !1125}
!1135 = !{!1133, !1128}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1138 = distinct !{!1138, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1138, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1143 = distinct !{!1143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1146 = !{!1142, !1137}
!1147 = !{!1145, !1140}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1150, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1150 = distinct !{!1150, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1150, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1155 = distinct !{!1155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1155, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1158 = !{!1154, !1149}
!1159 = !{!1157, !1152}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1162 = distinct !{!1162, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1162, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1167 = distinct !{!1167, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1167, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1170 = !{!1166, !1161}
!1171 = !{!1169, !1164}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1174, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1174 = distinct !{!1174, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1174, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1179 = distinct !{!1179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1182 = !{!1178, !1173}
!1183 = !{!1181, !1176}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1186 = distinct !{!1186, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1191 = distinct !{!1191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1194 = !{!1190, !1185}
!1195 = !{!1193, !1188}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1198 = distinct !{!1198, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1203 = distinct !{!1203, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1206 = !{!1202, !1197}
!1207 = !{!1205, !1200}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1210 = distinct !{!1210, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1215 = distinct !{!1215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1218 = !{!1214, !1209}
!1219 = !{!1217, !1212}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1222 = distinct !{!1222, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1222, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1227 = distinct !{!1227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1230 = !{!1226, !1221}
!1231 = !{!1229, !1224}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E: %self.0"}
!1234 = distinct !{!1234, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE: %v.0"}
!1237 = distinct !{!1237, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6cfca05a64edec5eE"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1240 = distinct !{!1240, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1245 = distinct !{!1245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %_0"}
!1248 = distinct !{!1248, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1251 = !{!1244, !1239, !1236}
!1252 = !{!1250, !1242, !1247}
!1253 = !{!1250, !1242, !1236}
!1254 = !{!1244, !1239, !1247}
!1255 = !{!1247, !1256, !1236}
!1256 = distinct !{!1256, !1248, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc05fd88d09f351cdE: %is_less"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1259 = distinct !{!1259, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1264 = distinct !{!1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %_0"}
!1267 = distinct !{!1267, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1264, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1270 = !{!1263, !1258, !1236}
!1271 = !{!1269, !1261, !1266}
!1272 = !{!1269, !1261, !1236}
!1273 = !{!1263, !1258, !1266}
!1274 = !{!1266, !1275, !1236}
!1275 = distinct !{!1275, !1267, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbc39ddf41224f42fE: %is_less"}
!1276 = !{!1277, !1279}
!1277 = distinct !{!1277, !1278, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1278 = distinct !{!1278, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1279 = distinct !{!1279, !1280, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1280 = distinct !{!1280, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1281 = !{!1282, !1284}
!1282 = distinct !{!1282, !1283, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1283 = distinct !{!1283, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1284 = distinct !{!1284, !1285, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1285 = distinct !{!1285, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1286 = !{!1287, !1288}
!1287 = distinct !{!1287, !1283, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1288 = distinct !{!1288, !1285, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1289 = !{!1290, !1292}
!1290 = distinct !{!1290, !1291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1291 = distinct !{!1291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1292 = distinct !{!1292, !1293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1293 = distinct !{!1293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1294 = !{!1295, !1296}
!1295 = distinct !{!1295, !1291, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1296 = distinct !{!1296, !1293, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1297 = !{!1298, !1300}
!1298 = distinct !{!1298, !1299, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1299 = distinct !{!1299, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1300 = distinct !{!1300, !1301, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1301 = distinct !{!1301, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1304 = distinct !{!1304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1304, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1309, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1309 = distinct !{!1309, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1309, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"cmpfunc: %a"}
!1314 = distinct !{!1314, !"cmpfunc"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"cmpfunc: %b"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1319 = distinct !{!1319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1322 = !{!1318, !1313, !1308, !1303}
!1323 = !{!1321, !1316, !1311, !1306}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1326 = distinct !{!1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1331 = distinct !{!1331, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"cmpfunc: %a"}
!1336 = distinct !{!1336, !"cmpfunc"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"cmpfunc: %b"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1341 = distinct !{!1341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1344 = !{!1340, !1335, !1330, !1325}
!1345 = !{!1343, !1338, !1333, !1328}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1348 = distinct !{!1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1353 = distinct !{!1353, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"cmpfunc: %a"}
!1358 = distinct !{!1358, !"cmpfunc"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1358, !"cmpfunc: %b"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1363 = distinct !{!1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1363, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1366 = !{!1362, !1357, !1352, !1347}
!1367 = !{!1365, !1360, !1355, !1350}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1370 = distinct !{!1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1375 = distinct !{!1375, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1388 = !{!1384, !1379, !1374, !1369}
!1389 = !{!1387, !1382, !1377, !1372}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1392 = distinct !{!1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1392, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1397, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1397 = distinct !{!1397, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1397, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"cmpfunc: %a"}
!1402 = distinct !{!1402, !"cmpfunc"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1402, !"cmpfunc: %b"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1407 = distinct !{!1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1410 = !{!1406, !1401, !1396, !1391}
!1411 = !{!1409, !1404, !1399, !1394}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1414 = distinct !{!1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1419 = distinct !{!1419, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1419, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"cmpfunc: %a"}
!1424 = distinct !{!1424, !"cmpfunc"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1424, !"cmpfunc: %b"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1429 = distinct !{!1429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1429, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1432 = !{!1428, !1423, !1418, !1413}
!1433 = !{!1431, !1426, !1421, !1416}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1436 = distinct !{!1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1441 = distinct !{!1441, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1441, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1454 = !{!1450, !1445, !1440, !1435}
!1455 = !{!1453, !1448, !1443, !1438}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1458 = distinct !{!1458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1463 = distinct !{!1463, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1463, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1468, !"cmpfunc: %a"}
!1468 = distinct !{!1468, !"cmpfunc"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1468, !"cmpfunc: %b"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1473, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1473 = distinct !{!1473, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1473, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1476 = !{!1472, !1467, !1462, !1457}
!1477 = !{!1475, !1470, !1465, !1460}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1480 = distinct !{!1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1485 = distinct !{!1485, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1485, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"cmpfunc: %a"}
!1490 = distinct !{!1490, !"cmpfunc"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1490, !"cmpfunc: %b"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1495, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1495 = distinct !{!1495, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1495, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1498 = !{!1494, !1489, !1484, !1479}
!1499 = !{!1497, !1492, !1487, !1482}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1502 = distinct !{!1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1507 = distinct !{!1507, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1507, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1512, !"cmpfunc: %a"}
!1512 = distinct !{!1512, !"cmpfunc"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1512, !"cmpfunc: %b"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1517 = distinct !{!1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1520 = !{!1516, !1511, !1506, !1501}
!1521 = !{!1519, !1514, !1509, !1504}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E: %self.0"}
!1524 = distinct !{!1524, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17he64d2fcc0f74dc86E"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E: %v.0"}
!1527 = distinct !{!1527, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6d1f859f6e2cb490E"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1530 = distinct !{!1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1535 = distinct !{!1535, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %_0"}
!1538 = distinct !{!1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1535, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1543, !"cmpfunc: %a"}
!1543 = distinct !{!1543, !"cmpfunc"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1543, !"cmpfunc: %b"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1548, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1548 = distinct !{!1548, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1548, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1551 = !{!1547, !1542, !1534, !1529, !1526}
!1552 = !{!1550, !1545, !1540, !1532, !1537}
!1553 = !{!1550, !1545, !1540, !1532, !1526}
!1554 = !{!1547, !1542, !1534, !1529, !1537}
!1555 = !{!1537, !1556, !1526}
!1556 = distinct !{!1556, !1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h491b9188ec57551dE: %is_less"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1559 = distinct !{!1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1564 = distinct !{!1564, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %_0"}
!1567 = distinct !{!1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1580 = !{!1576, !1571, !1563, !1558, !1526}
!1581 = !{!1579, !1574, !1569, !1561, !1566}
!1582 = !{!1579, !1574, !1569, !1561, !1526}
!1583 = !{!1576, !1571, !1563, !1558, !1566}
!1584 = !{!1566, !1585, !1526}
!1585 = distinct !{!1585, !1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hdbbc9d01f266962fE: %is_less"}
!1586 = !{!1587, !1589}
!1587 = distinct !{!1587, !1588, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1588 = distinct !{!1588, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1589 = distinct !{!1589, !1590, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1590 = distinct !{!1590, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1591 = !{!1592, !1594, !1596, !1598}
!1592 = distinct !{!1592, !1593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1593 = distinct !{!1593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1594 = distinct !{!1594, !1595, !"cmpfunc: %b"}
!1595 = distinct !{!1595, !"cmpfunc"}
!1596 = distinct !{!1596, !1597, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1597 = distinct !{!1597, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1598 = distinct !{!1598, !1599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1599 = distinct !{!1599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = distinct !{!1601, !1593, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1602 = distinct !{!1602, !1595, !"cmpfunc: %a"}
!1603 = distinct !{!1603, !1597, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1604 = distinct !{!1604, !1599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1605 = !{!1606, !1608, !1610, !1612}
!1606 = distinct !{!1606, !1607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1607 = distinct !{!1607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1608 = distinct !{!1608, !1609, !"cmpfunc: %b"}
!1609 = distinct !{!1609, !"cmpfunc"}
!1610 = distinct !{!1610, !1611, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1611 = distinct !{!1611, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1612 = distinct !{!1612, !1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1613 = distinct !{!1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = distinct !{!1615, !1607, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1616 = distinct !{!1616, !1609, !"cmpfunc: %a"}
!1617 = distinct !{!1617, !1611, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1618 = distinct !{!1618, !1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1619 = !{!1620, !1622}
!1620 = distinct !{!1620, !1621, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E: %self"}
!1621 = distinct !{!1621, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95853b342367d201E"}
!1622 = distinct !{!1622, !1623, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E: %_1"}
!1623 = distinct !{!1623, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h327518587ca82ac5E"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1626, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE: %_0"}
!1626 = distinct !{!1626, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE"}
!1627 = !{i64 0, i64 2}
!1628 = !{i64 0, i64 -9223372036854775807}
!1629 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1632, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE: %_0"}
!1632 = distinct !{!1632, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc22f2187ecfed4dbE"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1635 = distinct !{!1635, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1640 = distinct !{!1640, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1643 = !{!1639, !1634}
!1644 = !{!1642, !1637}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1647 = distinct !{!1647, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1652 = distinct !{!1652, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1655 = !{!1651, !1646}
!1656 = !{!1654, !1649}
!1657 = !{!1658}
!1658 = distinct !{!1658, !1659, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1659 = distinct !{!1659, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1659, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1662 = !{!1663}
!1663 = distinct !{!1663, !1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1664 = distinct !{!1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1664, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1667 = !{!1663, !1658}
!1668 = !{!1666, !1661}
!1669 = !{!1670, !1672}
!1670 = distinct !{!1670, !1671, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE: %a.0"}
!1671 = distinct !{!1671, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE"}
!1672 = distinct !{!1672, !1673, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8047c9915f902a07E: %self.0"}
!1673 = distinct !{!1673, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8047c9915f902a07E"}
!1674 = !{!1675}
!1675 = distinct !{!1675, !1671, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE: %b.0"}
!1676 = !{!1675, !1672}
!1677 = !{!1670}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1680 = distinct !{!1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1685 = distinct !{!1685, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1685, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1690, !"cmpfunc: %a"}
!1690 = distinct !{!1690, !"cmpfunc"}
!1691 = !{!1692}
!1692 = distinct !{!1692, !1690, !"cmpfunc: %b"}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1695 = distinct !{!1695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1696 = !{!1697}
!1697 = distinct !{!1697, !1695, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1698 = !{!1694, !1689, !1684, !1679}
!1699 = !{!1697, !1692, !1687, !1682}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1702, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1702 = distinct !{!1702, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1702, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1707 = distinct !{!1707, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1712, !"cmpfunc: %a"}
!1712 = distinct !{!1712, !"cmpfunc"}
!1713 = !{!1714}
!1714 = distinct !{!1714, !1712, !"cmpfunc: %b"}
!1715 = !{!1716}
!1716 = distinct !{!1716, !1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1717 = distinct !{!1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1720 = !{!1716, !1711, !1706, !1701}
!1721 = !{!1719, !1714, !1709, !1704}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1724, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1724 = distinct !{!1724, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1724, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1727 = !{!1728}
!1728 = distinct !{!1728, !1729, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1729 = distinct !{!1729, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1729, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1732 = !{!1733}
!1733 = distinct !{!1733, !1734, !"cmpfunc: %a"}
!1734 = distinct !{!1734, !"cmpfunc"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1734, !"cmpfunc: %b"}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1739 = distinct !{!1739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1742 = !{!1738, !1733, !1728, !1723}
!1743 = !{!1741, !1736, !1731, !1726}
!1744 = !{!1745, !1747}
!1745 = distinct !{!1745, !1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE: %a.0"}
!1746 = distinct !{!1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE"}
!1747 = distinct !{!1747, !1748, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8047c9915f902a07E: %self.0"}
!1748 = distinct !{!1748, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8047c9915f902a07E"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1746, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hdeab2eb85fec076bE: %b.0"}
!1751 = !{!1750, !1747}
!1752 = !{!1745}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE: %v.0"}
!1755 = distinct !{!1755, !"_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1755, !"_ZN4core5slice4sort6stable5merge5merge17hf8b40f74864da24fE: %scratch.0"}
!1758 = !{!1754, !1757}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1761 = distinct !{!1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1766, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1766 = distinct !{!1766, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1767 = !{!1768}
!1768 = distinct !{!1768, !1766, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1771, !"cmpfunc: %a"}
!1771 = distinct !{!1771, !"cmpfunc"}
!1772 = !{!1773}
!1773 = distinct !{!1773, !1771, !"cmpfunc: %b"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1776 = distinct !{!1776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1776, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1779 = !{!1775, !1770, !1765, !1760, !1757}
!1780 = !{!1778, !1773, !1768, !1763, !1781, !1754}
!1781 = distinct !{!1781, !1782, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h353b2faa13769cb5E: %self"}
!1782 = distinct !{!1782, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h353b2faa13769cb5E"}
!1783 = !{!1778, !1773, !1768, !1763, !1754}
!1784 = !{!1775, !1770, !1765, !1760, !1781, !1757}
!1785 = !{!1781, !1757}
!1786 = !{!1787}
!1787 = distinct !{!1787, !1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1788 = distinct !{!1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1789 = !{!1790}
!1790 = distinct !{!1790, !1788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1793, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1793 = distinct !{!1793, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1793, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"cmpfunc: %a"}
!1798 = distinct !{!1798, !"cmpfunc"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1798, !"cmpfunc: %b"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1803, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1803 = distinct !{!1803, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1803, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1806 = !{!1802, !1797, !1792, !1787, !1754}
!1807 = !{!1805, !1800, !1795, !1790, !1808, !1757}
!1808 = distinct !{!1808, !1809, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4232bd8ad7e653e4E: %self"}
!1809 = distinct !{!1809, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4232bd8ad7e653e4E"}
!1810 = !{!1805, !1800, !1795, !1790, !1757}
!1811 = !{!1802, !1797, !1792, !1787, !1808, !1754}
!1812 = !{!1808, !1757}
!1813 = !{!1814, !1816}
!1814 = distinct !{!1814, !1815, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E: %self"}
!1815 = distinct !{!1815, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E"}
!1816 = distinct !{!1816, !1817, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E: %_1"}
!1817 = distinct !{!1817, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E"}
!1818 = !{!1819}
!1819 = distinct !{!1819, !1820, !"_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E: %v.0"}
!1820 = distinct !{!1820, !"_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E"}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1820, !"_ZN4core5slice4sort6stable5merge5merge17h3b8f0e7cf76549d4E: %scratch.0"}
!1823 = !{!1819, !1822}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1826, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1826 = distinct !{!1826, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1827 = !{!1828}
!1828 = distinct !{!1828, !1826, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1829 = !{!1830}
!1830 = distinct !{!1830, !1831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1831 = distinct !{!1831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1832 = !{!1833}
!1833 = distinct !{!1833, !1831, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1834 = !{!1830, !1825, !1822}
!1835 = !{!1833, !1828, !1836, !1819}
!1836 = distinct !{!1836, !1837, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h83a8783524040f92E: %self"}
!1837 = distinct !{!1837, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h83a8783524040f92E"}
!1838 = !{!1833, !1828, !1819}
!1839 = !{!1830, !1825, !1836, !1822}
!1840 = !{!1836, !1822}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1843 = distinct !{!1843, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1843, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1848 = distinct !{!1848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1851 = !{!1847, !1842, !1819}
!1852 = !{!1850, !1845, !1853, !1822}
!1853 = distinct !{!1853, !1854, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he43164887a9908bcE: %self"}
!1854 = distinct !{!1854, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he43164887a9908bcE"}
!1855 = !{!1850, !1845, !1822}
!1856 = !{!1847, !1842, !1853, !1819}
!1857 = !{!1853, !1822}
!1858 = !{!1859, !1861}
!1859 = distinct !{!1859, !1860, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E: %self"}
!1860 = distinct !{!1860, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E"}
!1861 = distinct !{!1861, !1862, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E: %_1"}
!1862 = distinct !{!1862, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1865 = distinct !{!1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1870 = distinct !{!1870, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1886 = distinct !{!1886, !1887, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1887 = distinct !{!1887, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1888 = !{!1889}
!1889 = distinct !{!1889, !1887, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1890 = !{!1891}
!1891 = distinct !{!1891, !1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1892 = distinct !{!1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1892, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1895 = !{!1891, !1886}
!1896 = !{!1894, !1889}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1899 = distinct !{!1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1904 = distinct !{!1904, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1904, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!1920 = distinct !{!1920, !1921, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1921 = distinct !{!1921, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1921, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1926 = distinct !{!1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1926, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1929 = !{!1925, !1920}
!1930 = !{!1928, !1923}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1933, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1933 = distinct !{!1933, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1933, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1938 = distinct !{!1938, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1938, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1941 = !{!1937, !1932}
!1942 = !{!1940, !1935, !1943}
!1943 = distinct !{!1943, !1944, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h83a8783524040f92E: %self"}
!1944 = distinct !{!1944, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h83a8783524040f92E"}
!1945 = !{!1940, !1935}
!1946 = !{!1937, !1932, !1943}
!1947 = !{!1943}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1950, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!1950 = distinct !{!1950, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1950, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1955 = distinct !{!1955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1958 = !{!1954, !1949}
!1959 = !{!1957, !1952, !1960}
!1960 = distinct !{!1960, !1961, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he43164887a9908bcE: %self"}
!1961 = distinct !{!1961, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he43164887a9908bcE"}
!1962 = !{!1957, !1952}
!1963 = !{!1954, !1949, !1960}
!1964 = !{!1960}
!1965 = !{!1966, !1968}
!1966 = distinct !{!1966, !1967, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E: %self"}
!1967 = distinct !{!1967, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E"}
!1968 = distinct !{!1968, !1969, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E: %_1"}
!1969 = distinct !{!1969, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1972 = distinct !{!1972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!1975 = !{!1976}
!1976 = distinct !{!1976, !1977, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!1977 = distinct !{!1977, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1977, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1982, !"cmpfunc: %a"}
!1982 = distinct !{!1982, !"cmpfunc"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1982, !"cmpfunc: %b"}
!1985 = !{!1986}
!1986 = distinct !{!1986, !1987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1987 = distinct !{!1987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1987, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1990 = !{!1986, !1981, !1976, !1971}
!1991 = !{!1989, !1984, !1979, !1974, !1992}
!1992 = distinct !{!1992, !1993, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h353b2faa13769cb5E: %self"}
!1993 = distinct !{!1993, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h353b2faa13769cb5E"}
!1994 = !{!1989, !1984, !1979, !1974}
!1995 = !{!1986, !1981, !1976, !1971, !1992}
!1996 = !{!1992}
!1997 = !{!1998}
!1998 = distinct !{!1998, !1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!1999 = distinct !{!1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2000 = !{!2001}
!2001 = distinct !{!2001, !1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2002 = !{!2003}
!2003 = distinct !{!2003, !2004, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2004 = distinct !{!2004, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2005 = !{!2006}
!2006 = distinct !{!2006, !2004, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2009, !"cmpfunc: %a"}
!2009 = distinct !{!2009, !"cmpfunc"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2009, !"cmpfunc: %b"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2014 = distinct !{!2014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2014, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2017 = !{!2013, !2008, !2003, !1998}
!2018 = !{!2016, !2011, !2006, !2001, !2019}
!2019 = distinct !{!2019, !2020, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4232bd8ad7e653e4E: %self"}
!2020 = distinct !{!2020, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4232bd8ad7e653e4E"}
!2021 = !{!2016, !2011, !2006, !2001}
!2022 = !{!2013, !2008, !2003, !1998, !2019}
!2023 = !{!2019}
!2024 = !{!2025, !2027}
!2025 = distinct !{!2025, !2026, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E: %self"}
!2026 = distinct !{!2026, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe6dc2a3a44622f6E"}
!2027 = distinct !{!2027, !2028, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E: %_1"}
!2028 = distinct !{!2028, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h207609ce71a815e4E"}
!2029 = !{!"branch_weights", i32 4000000, i32 4001}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2032, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %a"}
!2032 = distinct !{!2032, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2032, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %b"}
!2035 = !{!2036}
!2036 = distinct !{!2036, !2037, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2037 = distinct !{!2037, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2037, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2042, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2042 = distinct !{!2042, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2042, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2045 = !{!2041, !2036, !2034}
!2046 = !{!2044, !2039, !2031}
!2047 = !{!2048}
!2048 = distinct !{!2048, !2049, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2049 = distinct !{!2049, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2050 = !{!2051}
!2051 = distinct !{!2051, !2052, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %a"}
!2052 = distinct !{!2052, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2052, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %b"}
!2055 = !{!2056}
!2056 = distinct !{!2056, !2057, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2057 = distinct !{!2057, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2057, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2062 = distinct !{!2062, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2062, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2065 = !{!2061, !2056, !2054}
!2066 = !{!2064, !2059, !2051}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2069, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2069 = distinct !{!2069, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %a"}
!2072 = distinct !{!2072, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %b"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2077 = distinct !{!2077, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2082 = distinct !{!2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2085 = !{!2081, !2076, !2074}
!2086 = !{!2084, !2079, !2071}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2089 = distinct !{!2089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2092, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %a"}
!2092 = distinct !{!2092, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E"}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2092, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %b"}
!2095 = !{!2096}
!2096 = distinct !{!2096, !2097, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2097 = distinct !{!2097, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2097, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2100 = !{!2101}
!2101 = distinct !{!2101, !2102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2102 = distinct !{!2102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2103 = !{!2104}
!2104 = distinct !{!2104, !2102, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2105 = !{!2101, !2096, !2094}
!2106 = !{!2104, !2099, !2091}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2109 = distinct !{!2109, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %a"}
!2112 = distinct !{!2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2112, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he3884aff9293df23E: %b"}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2117, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2117 = distinct !{!2117, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2118 = !{!2119}
!2119 = distinct !{!2119, !2117, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2122 = distinct !{!2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2122, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2125 = !{!2121, !2116, !2114}
!2126 = !{!2124, !2119, !2111}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2129, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2129 = distinct !{!2129, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2130 = !{!2131}
!2131 = distinct !{!2131, !2132, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2132 = distinct !{!2132, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2133 = distinct !{!2133, !2134}
!2134 = !{!"llvm.loop.unroll.disable"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2137, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2137 = distinct !{!2137, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2138 = !{!2139}
!2139 = distinct !{!2139, !2137, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2140 = !{!2141}
!2141 = distinct !{!2141, !2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2142 = distinct !{!2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2143 = !{!2144}
!2144 = distinct !{!2144, !2142, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2145 = !{!2141, !2136}
!2146 = !{!2144, !2139}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2149, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2149 = distinct !{!2149, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2152 = distinct !{!2152, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2152, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2157 = distinct !{!2157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2157, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2160 = !{!2156, !2151}
!2161 = !{!2159, !2154}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2164 = distinct !{!2164, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2167, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2167 = distinct !{!2167, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2167, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2172 = distinct !{!2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2172, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2175 = !{!2171, !2166}
!2176 = !{!2174, !2169}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2179 = distinct !{!2179, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2182 = distinct !{!2182, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2182, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2187 = distinct !{!2187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2190 = !{!2186, !2181}
!2191 = !{!2189, !2184}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2194 = distinct !{!2194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2197 = distinct !{!2197, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2197, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2202 = distinct !{!2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2202, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2205 = !{!2201, !2196}
!2206 = !{!2204, !2199}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2209 = distinct !{!2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2212 = distinct !{!2212, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2213 = distinct !{!2213, !2134}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2216 = distinct !{!2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2219 = !{!2220}
!2220 = distinct !{!2220, !2221, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2221 = distinct !{!2221, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2222 = !{!2223}
!2223 = distinct !{!2223, !2221, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2237 = distinct !{!2237, !2238, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2238 = distinct !{!2238, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2241 = distinct !{!2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2246 = distinct !{!2246, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2262 = distinct !{!2262, !2263, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2263 = distinct !{!2263, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2266 = distinct !{!2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2271 = distinct !{!2271, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2271, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2287 = distinct !{!2287, !2288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2288 = distinct !{!2288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2291 = distinct !{!2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2296 = distinct !{!2296, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2296, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2312 = distinct !{!2312, !2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2313 = distinct !{!2313, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2316 = distinct !{!2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2317 = !{!2318}
!2318 = distinct !{!2318, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2321, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2321 = distinct !{!2321, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2322 = !{!2323}
!2323 = distinct !{!2323, !2321, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2337 = distinct !{!2337, !2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2338 = distinct !{!2338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2341 = distinct !{!2341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2342 = distinct !{!2342, !2134}
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %a"}
!2345 = distinct !{!2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E"}
!2346 = !{!2347}
!2347 = distinct !{!2347, !2345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %b"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2350 = distinct !{!2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2355 = distinct !{!2355, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2355, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2371 = distinct !{!2371, !2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2372 = distinct !{!2372, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %a"}
!2375 = distinct !{!2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E"}
!2376 = !{!2377}
!2377 = distinct !{!2377, !2375, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %b"}
!2378 = !{!2379}
!2379 = distinct !{!2379, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2380 = distinct !{!2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2381 = !{!2382}
!2382 = distinct !{!2382, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2385 = distinct !{!2385, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2385, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2401 = distinct !{!2401, !2402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2402 = distinct !{!2402, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %a"}
!2405 = distinct !{!2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E"}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2405, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %b"}
!2408 = !{!2409}
!2409 = distinct !{!2409, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2410 = distinct !{!2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2411 = !{!2412}
!2412 = distinct !{!2412, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2415 = distinct !{!2415, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2415, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2431 = distinct !{!2431, !2432, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2432 = distinct !{!2432, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2433 = !{!2434}
!2434 = distinct !{!2434, !2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %a"}
!2435 = distinct !{!2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2435, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %b"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2440 = distinct !{!2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2445 = distinct !{!2445, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2446 = !{!2447}
!2447 = distinct !{!2447, !2445, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2461 = distinct !{!2461, !2462, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2462 = distinct !{!2462, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %a"}
!2465 = distinct !{!2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h71ac88ba72d31276E: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2470 = distinct !{!2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2475 = distinct !{!2475, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2475, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
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
!2491 = distinct !{!2491, !2492, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2492 = distinct !{!2492, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E: %self"}
!2495 = distinct !{!2495, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb5b60d12741a1841E"}
!2496 = distinct !{!2496, !2134}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2499 = distinct !{!2499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2500 = !{!2501}
!2501 = distinct !{!2501, !2499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2502 = !{!2503}
!2503 = distinct !{!2503, !2504, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2504 = distinct !{!2504, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"_ZN4core5slice4sort6shared5pivot7median317h54c26cecfba5231eE: %c"}
!2507 = distinct !{!2507, !"_ZN4core5slice4sort6shared5pivot7median317h54c26cecfba5231eE"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2504, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"cmpfunc: %a"}
!2512 = distinct !{!2512, !"cmpfunc"}
!2513 = !{!2514}
!2514 = distinct !{!2514, !2512, !"cmpfunc: %b"}
!2515 = !{!2516}
!2516 = distinct !{!2516, !2517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2517 = distinct !{!2517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2517, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2520 = !{!2516, !2511, !2503, !2498, !2521}
!2521 = distinct !{!2521, !2522, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E: %v.0"}
!2522 = distinct !{!2522, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E"}
!2523 = !{!2519, !2514, !2509, !2501, !2506, !2524}
!2524 = distinct !{!2524, !2522, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17he81d5ea407705f70E: %is_less"}
!2525 = !{!2519, !2514, !2509, !2501, !2521}
!2526 = !{!2516, !2511, !2503, !2498, !2506, !2524}
!2527 = !{!2528, !2530, !2532, !2534, !2521}
!2528 = distinct !{!2528, !2529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2529 = distinct !{!2529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2530 = distinct !{!2530, !2531, !"cmpfunc: %b"}
!2531 = distinct !{!2531, !"cmpfunc"}
!2532 = distinct !{!2532, !2533, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!2533 = distinct !{!2533, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2534 = distinct !{!2534, !2535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2535 = distinct !{!2535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2536 = !{!2537, !2538, !2539, !2540, !2524}
!2537 = distinct !{!2537, !2529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2538 = distinct !{!2538, !2531, !"cmpfunc: %a"}
!2539 = distinct !{!2539, !2533, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2540 = distinct !{!2540, !2535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2541 = !{!2542, !2544, !2546, !2548}
!2542 = distinct !{!2542, !2543, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2543 = distinct !{!2543, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2544 = distinct !{!2544, !2545, !"cmpfunc: %a"}
!2545 = distinct !{!2545, !"cmpfunc"}
!2546 = distinct !{!2546, !2547, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 0"}
!2547 = distinct !{!2547, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E"}
!2548 = distinct !{!2548, !2549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %a"}
!2549 = distinct !{!2549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E"}
!2550 = !{!2551, !2552, !2553, !2554}
!2551 = distinct !{!2551, !2543, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2552 = distinct !{!2552, !2545, !"cmpfunc: %b"}
!2553 = distinct !{!2553, !2547, !"_ZN4core3ops8function5FnMut8call_mut17h05445f7abff1d309E: argument 1"}
!2554 = distinct !{!2554, !2549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hc5e0adee5ca0d2c3E: %b"}
!2555 = !{!2556, !2558}
!2556 = distinct !{!2556, !2557, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E: %pair"}
!2557 = distinct !{!2557, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E"}
!2558 = distinct !{!2558, !2557, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E: %self.0"}
!2559 = !{!2560}
!2560 = distinct !{!2560, !2561, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2561 = distinct !{!2561, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2562 = !{!2563}
!2563 = distinct !{!2563, !2561, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2564 = !{!2565}
!2565 = distinct !{!2565, !2566, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2566 = distinct !{!2566, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2567 = !{!2568}
!2568 = distinct !{!2568, !2569, !"_ZN4core5slice4sort6shared5pivot7median317h2a0464ec5e3186d5E: %c"}
!2569 = distinct !{!2569, !"_ZN4core5slice4sort6shared5pivot7median317h2a0464ec5e3186d5E"}
!2570 = !{!2571}
!2571 = distinct !{!2571, !2566, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2572 = !{!2565, !2560, !2573}
!2573 = distinct !{!2573, !2574, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E: %v.0"}
!2574 = distinct !{!2574, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E"}
!2575 = !{!2571, !2563, !2568, !2576}
!2576 = distinct !{!2576, !2574, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h2e3d1ce68f9bea09E: %is_less"}
!2577 = !{!2571, !2563, !2573}
!2578 = !{!2565, !2560, !2568, !2576}
!2579 = !{!2580, !2582, !2573}
!2580 = distinct !{!2580, !2581, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2581 = distinct !{!2581, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2582 = distinct !{!2582, !2583, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2583 = distinct !{!2583, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2584 = !{!2585, !2586, !2576}
!2585 = distinct !{!2585, !2581, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2586 = distinct !{!2586, !2583, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2587 = !{!2588, !2590}
!2588 = distinct !{!2588, !2589, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2589 = distinct !{!2589, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2590 = distinct !{!2590, !2591, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 0"}
!2591 = distinct !{!2591, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E"}
!2592 = !{!2593, !2594}
!2593 = distinct !{!2593, !2589, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2594 = distinct !{!2594, !2591, !"_ZN4core3ops8function5FnMut8call_mut17h1afed3740dfb65d6E: argument 1"}
!2595 = !{!2596, !2598}
!2596 = distinct !{!2596, !2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E: %pair"}
!2597 = distinct !{!2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E"}
!2598 = distinct !{!2598, !2597, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1df40d695b87c907E: %self.0"}
!2599 = !{i64 0, i64 -9223372036854775808}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2602 = distinct !{!2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E: %self.0"}
!2607 = distinct !{!2607, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h0fb8be4c6a502ed9E"}
!2608 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2609 = !{!2610}
!2610 = distinct !{!2610, !2611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE: %self.0"}
!2611 = distinct !{!2611, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h64b4ebffc503d74dE"}
!2612 = !{!2613, !2615, !2610}
!2613 = distinct !{!2613, !2614, !"_ZN5alloc5slice11stable_sort17h2c92ca16588f1593E: %v.0"}
!2614 = distinct !{!2614, !"_ZN5alloc5slice11stable_sort17h2c92ca16588f1593E"}
!2615 = distinct !{!2615, !2614, !"_ZN5alloc5slice11stable_sort17h2c92ca16588f1593E: argument 1"}
