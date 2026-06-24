; ModuleID = 'MAXIMIZE_SUM_ARRII_emit.e70a4ca3500ba4b2-cgu.0'
source_filename = "MAXIMIZE_SUM_ARRII_emit.e70a4ca3500ba4b2-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_1d9b1f1c46c6b4797930b5c75e1d7315 = private unnamed_addr constant [89 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMIZE_SUM_ARRII/MAXIMIZE_SUM_ARRII_emit.rs\00", align 1
@alloc_f8e0d76b07a353d1835879eef3f6aab5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1d9b1f1c46c6b4797930b5c75e1d7315, [16 x i8] c"X\00\00\00\00\00\00\00\1B\00\00\00\10\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h64cfab7cedd858cbE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02102488303c7cdfE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02102488303c7cdfE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02102488303c7cdfE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02102488303c7cdfE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !30, !noalias !31, !noundef !32
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !33, !noalias !34, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !35, !noalias !42, !noundef !32
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h13df214d585e120aE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h13df214d585e120aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h13df214d585e120aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h13df214d585e120aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57), !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62), !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64), !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !54
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !69, !noalias !70, !noundef !32
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !71, !noalias !72, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !73, !noalias !82, !noundef !32
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !107, !noalias !108, !noundef !32
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !108, !noalias !107, !noundef !32
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !109, !noalias !118, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !123
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %_3.i.i.i = load i32, ptr %tail, align 4, !alias.scope !143, !noalias !144, !noundef !32
  %_4.i.i.i = load i32, ptr %0, align 4, !alias.scope !144, !noalias !143, !noundef !32
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
  %_4.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !145, !noalias !152, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i, %_4.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !156
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbb85344258583e51E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !181, !noalias !182, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !182, !noalias !181, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !203, !noalias !204, !noundef !32
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !204, !noalias !203, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !225, !noalias !226, !noundef !32
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !226, !noalias !225, !noundef !32
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !247, !noalias !248, !noundef !32
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !248, !noalias !247, !noundef !32
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !32
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !32
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !32
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !269, !noalias !270, !noundef !32
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !270, !noalias !269, !noundef !32
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hf0920b4b73efc0d0E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %_3.i.i.i = load i32, ptr %_7, align 4, !alias.scope !286, !noalias !287, !noundef !32
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !287, !noalias !286, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %_3.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !303, !noalias !304, !noundef !32
  %_4.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !304, !noalias !303, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %_3.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !320, !noalias !321, !noundef !32
  %_4.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !321, !noalias !320, !noundef !32
  %_0.i12 = icmp slt i32 %_3.i.i.i10, %_4.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %_3.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !337, !noalias !338, !noundef !32
  %_4.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !338, !noalias !337, !noundef !32
  %_0.i15 = icmp slt i32 %_3.i.i.i13, %_4.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !32
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !32
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !32
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %_3.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !354, !noalias !355, !noundef !32
  %_4.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !355, !noalias !354, !noundef !32
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

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h74f5c834b7b7febcE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !376, !noalias !377, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !377, !noalias !376, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !398, !noalias !399, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !399, !noalias !398, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !420, !noalias !421, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !421, !noalias !420, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !442, !noalias !443, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !443, !noalias !442, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !464, !noalias !465, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !465, !noalias !464, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !486, !noalias !487, !noundef !32
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !487, !noalias !486, !noundef !32
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !508, !noalias !509, !noundef !32
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !509, !noalias !508, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !530, !noalias !531, !noundef !32
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !531, !noalias !530, !noundef !32
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !552, !noalias !553, !noundef !32
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !553, !noalias !552, !noundef !32
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !32
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !32
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !32
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !574, !noalias !575, !noundef !32
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !575, !noalias !574, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !587
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !602, !noalias !603, !noundef !32
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !604, !noalias !605, !noundef !32
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !606
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629), !noalias !616
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !631, !noalias !632, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !633, !noalias !634, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !635
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651), !noalias !587
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !653, !noalias !654, !noundef !32
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !655, !noalias !656, !noundef !32
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !606
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671), !noalias !616
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !673, !noalias !674, !noundef !32
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !675, !noalias !676, !noundef !32
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !635
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !587
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !693, !noalias !694, !noundef !32
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !695, !noalias !696, !noundef !32
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !606
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711), !noalias !616
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !713, !noalias !714, !noundef !32
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !715, !noalias !716, !noundef !32
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !635
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !587
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !733, !noalias !734, !noundef !32
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !735, !noalias !736, !noundef !32
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !606
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751), !noalias !616
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !753, !noalias !754, !noundef !32
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !755, !noalias !756, !noundef !32
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !635
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E.exit, !prof !757

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !576
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17he1420d174392c4e4E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !773, !noalias !774, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !774, !noalias !773, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !790, !noalias !791, !noundef !32
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !791, !noalias !790, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !807, !noalias !808, !noundef !32
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !808, !noalias !807, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !824, !noalias !825, !noundef !32
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !825, !noalias !824, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !841, !noalias !842, !noundef !32
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !842, !noalias !841, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !858, !noalias !859, !noundef !32
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !859, !noalias !858, !noundef !32
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !875, !noalias !876, !noundef !32
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !876, !noalias !875, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !892, !noalias !893, !noundef !32
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !893, !noalias !892, !noundef !32
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !909, !noalias !910, !noundef !32
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !910, !noalias !909, !noundef !32
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !32
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !32
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !32
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %_3.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !926, !noalias !927, !noundef !32
  %_4.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !927, !noalias !926, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947), !noalias !939
  %_3.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !949, !noalias !950, !noundef !32
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !951, !noalias !952, !noundef !32
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i36, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36, i32 %_4.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !953
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971), !noalias !963
  %_3.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !973, !noalias !974, !noundef !32
  %_4.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !975, !noalias !976, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !977
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989), !noalias !939
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !991, !noalias !992, !noundef !32
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !993, !noalias !994, !noundef !32
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !953
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !963
  %_3.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1007, !noalias !1008, !noundef !32
  %_4.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1009, !noalias !1010, !noundef !32
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !977
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021), !noalias !939
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1023, !noalias !1024, !noundef !32
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1025, !noalias !1026, !noundef !32
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !953
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037), !noalias !963
  %_3.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1039, !noalias !1040, !noundef !32
  %_4.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1041, !noalias !1042, !noundef !32
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !977
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053), !noalias !939
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1055, !noalias !1056, !noundef !32
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1057, !noalias !1058, !noundef !32
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !953
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067), !noalias !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !noalias !963
  %_3.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1071, !noalias !1072, !noundef !32
  %_4.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1073, !noalias !1074, !noundef !32
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !977
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E.exit, !prof !757

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !928
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080), !noalias !1083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086), !noalias !1083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088), !noalias !1083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093), !noalias !1083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096), !noalias !1083
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1098, !noalias !1099, !noundef !32
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1100, !noalias !1101, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125), !noalias !1112
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1127, !noalias !1128, !noundef !32
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1129, !noalias !1130, !noundef !32
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1131
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !757

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138), !noalias !1141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144), !noalias !1141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146), !noalias !1141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1141
  %_3.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1151, !noalias !1152, !noundef !32
  %_4.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1153, !noalias !1154, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
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
  %_3.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1175, !noalias !1176, !noundef !32
  %_4.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1177, !noalias !1178, !noundef !32
  %_0.i21 = icmp slt i32 %_3.i.i.i19, %_4.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19, i32 %_4.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1179
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !757

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1db39f480af0ebf0E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1201, !noalias !1202, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1202, !noalias !1201, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1203, !noalias !1212, !noundef !32
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1217
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9dc826d8f775779dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %_3.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1237, !noalias !1238, !noundef !32
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1238, !noalias !1237, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1239, !noalias !1246, !noundef !32
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1250
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6848d3a82ecd72f3E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h74f5c834b7b7febcE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h74f5c834b7b7febcE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1275, !noalias !1276, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1276, !noalias !1275, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1297, !noalias !1298, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1298, !noalias !1297, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1319, !noalias !1320, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1320, !noalias !1319, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1341, !noalias !1342, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1342, !noalias !1341, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1363, !noalias !1364, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1364, !noalias !1363, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1385, !noalias !1386, !noundef !32
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1386, !noalias !1385, !noundef !32
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1407, !noalias !1408, !noundef !32
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1408, !noalias !1407, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1429, !noalias !1430, !noundef !32
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1430, !noalias !1429, !noundef !32
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1451, !noalias !1452, !noundef !32
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1452, !noalias !1451, !noundef !32
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !32
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !32
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !32
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1473, !noalias !1474, !noundef !32
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1474, !noalias !1473, !noundef !32
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1475
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1475, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502), !noalias !1489
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1504, !noalias !1505, !noundef !32
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1506, !noalias !1507, !noundef !32
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1508
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515), !noalias !1518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521), !noalias !1518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523), !noalias !1518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526), !noalias !1518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528), !noalias !1518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1518
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1533, !noalias !1534, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1535, !noalias !1536, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1537
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1478
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1478
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !757

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1539
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1544, !noalias !1553, !noundef !32
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1558, !noalias !1567, !noundef !32
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1572
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h2cc261e9222365b7E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he64613379edea092E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17he1420d174392c4e4E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17he1420d174392c4e4E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1592, !noalias !1593, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1593, !noalias !1592, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1609, !noalias !1610, !noundef !32
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1610, !noalias !1609, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1626, !noalias !1627, !noundef !32
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1627, !noalias !1626, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1643, !noalias !1644, !noundef !32
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1644, !noalias !1643, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1660, !noalias !1661, !noundef !32
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1661, !noalias !1660, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %_3.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1677, !noalias !1678, !noundef !32
  %_4.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1678, !noalias !1677, !noundef !32
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i14, %_4.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %_3.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1694, !noalias !1695, !noundef !32
  %_4.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1695, !noalias !1694, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %_3.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1711, !noalias !1712, !noundef !32
  %_4.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1712, !noalias !1711, !noundef !32
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i10.i31, %_4.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %_3.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1728, !noalias !1729, !noundef !32
  %_4.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1729, !noalias !1728, !noundef !32
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i13.i34, %_4.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !32
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !32
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !32
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %_3.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1745, !noalias !1746, !noundef !32
  %_4.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1746, !noalias !1745, !noundef !32
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1747
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1747, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1750)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758), !noalias !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764), !noalias !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766), !noalias !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769), !noalias !1761
  %_3.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1771, !noalias !1772, !noundef !32
  %_4.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1773, !noalias !1774, !noundef !32
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i49, %_4.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i49, i32 %_4.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1775
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782), !noalias !1785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788), !noalias !1785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790), !noalias !1785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1785
  %_3.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1795, !noalias !1796, !noundef !32
  %_4.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1797, !noalias !1798, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i19.i, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i, i32 %_4.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1799
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1750
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1750
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !757

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1801
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1806, !noalias !1813, !noundef !32
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1817, !noalias !1824, !noundef !32
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1828
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hdbc5fd7951cc21feE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h4f2548443d6e6720E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1833
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1836, !noalias !1833, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1837, !noalias !1833, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit", !prof !1838

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1833
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1833, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1833
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h1cc1485b2252032aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17he978535776327911E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1839
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1836, !noalias !1839, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1837, !noalias !1839, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit", !prof !1838

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1839
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1839, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1839
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h75b4c69d0fd103b0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h310347a5d85017e6E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h179f1337821065e0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %_3.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1857, !noalias !1858, !noundef !32
  %_4.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1858, !noalias !1857, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %_3.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1874, !noalias !1875, !noundef !32
  %_4.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1875, !noalias !1874, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i1, %_4.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %_3.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1891, !noalias !1892, !noundef !32
  %_4.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1892, !noalias !1891, !noundef !32
  %_0.i6 = icmp slt i32 %_3.i.i.i4, %_4.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6d85d713209ef0edE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1893, !noalias !1898, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1900, !noalias !1901
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1893, !noalias !1898
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1900, !noalias !1901
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1893, !noalias !1898, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1900, !noalias !1901
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1893, !noalias !1898
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1900, !noalias !1901
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1893, !noalias !1898, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1900, !noalias !1901
  store i32 %14, ptr %gep27, align 4, !alias.scope !1893, !noalias !1898
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1900, !noalias !1901
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h8298ea5ab83683b4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1922, !noalias !1923, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1923, !noalias !1922, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1944, !noalias !1945, !noundef !32
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1945, !noalias !1944, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1966, !noalias !1967, !noundef !32
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1967, !noalias !1966, !noundef !32
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h42ea8c2c52b7c125E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1968, !noalias !1973, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1975, !noalias !1976
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1968, !noalias !1973
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1975, !noalias !1976
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1968, !noalias !1973, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1975, !noalias !1976
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1968, !noalias !1973
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1975, !noalias !1976
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1968, !noalias !1973, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1975, !noalias !1976
  store i32 %14, ptr %gep27, align 4, !alias.scope !1968, !noalias !1973
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1975, !noalias !1976
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h1129a99d441f4b23E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h3e8260ac04673cafE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h1cc1485b2252032aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h179f1337821065e0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !32
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1982
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  %_3.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1998, !noalias !1999, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2002, !noalias !2003, !noundef !32
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1977, !noalias !2004
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2020, !noalias !2021, !noundef !32
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2024, !noalias !2025, !noundef !32
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1977, !noalias !2026
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1982, !noalias !2027
  br label %_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit

_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h295282c4c2e78660E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17h75b4c69d0fd103b0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h8298ea5ab83683b4E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !32
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2037
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2058, !noalias !2059, !noundef !32
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2062, !noalias !2063, !noundef !32
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2032, !noalias !2064
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2085, !noalias !2086, !noundef !32
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2089, !noalias !2090, !noundef !32
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2032, !noalias !2091
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2037, !noalias !2092
  br label %_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit

_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h0a1a44333a0b1d06E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7aae102232082dcbE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !2112, !noalias !2113, !noundef !32
  %_4.i.i.i = load i32, ptr %3, align 4, !alias.scope !2113, !noalias !2112, !noundef !32
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd96f6adff692fcccE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !2134, !noalias !2135, !noundef !32
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2135, !noalias !2134, !noundef !32
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e124a4e926a2926E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2156, !noalias !2157, !noundef !32
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2157, !noalias !2156, !noundef !32
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he2479a54bf23d358E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  %_3.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2173, !noalias !2174, !noundef !32
  %_4.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2174, !noalias !2173, !noundef !32
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

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %_3.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2190, !noalias !2191, !noundef !32
  %_4.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2194, !noalias !2195, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2196
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %_3.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2212, !noalias !2213, !noundef !32
  %_4.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2216, !noalias !2217, !noundef !32
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i12, %_4.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12, i32 %_4.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2218
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2219
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2244, !noalias !2245, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2248, !noalias !2249, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2250
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2271, !noalias !2272, !noundef !32
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2275, !noalias !2276, !noundef !32
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2277
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2278
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h7f427ef41a27bbb3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  %_3.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2304, !noalias !2305, !noundef !32
  %_4.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2305, !noalias !2304, !noundef !32
  %_0.i.i = icmp sge i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i, ptr %dst.i, align 4, !noalias !2306
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %_3.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2329, !noalias !2330, !noundef !32
  %_4.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2330, !noalias !2329, !noundef !32
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2331
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %_3.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2354, !noalias !2355, !noundef !32
  %_4.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2355, !noalias !2354, !noundef !32
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2356
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  %_3.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2379, !noalias !2380, !noundef !32
  %_4.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2380, !noalias !2379, !noundef !32
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2381
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %_3.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2404, !noalias !2405, !noundef !32
  %_4.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2405, !noalias !2404, !noundef !32
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2406
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2409
  store i32 %13, ptr %dst.i68, align 4, !noalias !2409
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2412

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha7a8b9225a6f935cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2434, !noalias !2435, !noundef !32
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2435, !noalias !2434, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2436
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2459, !noalias !2460, !noundef !32
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2460, !noalias !2459, !noundef !32
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2461
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2484, !noalias !2485, !noundef !32
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2485, !noalias !2484, !noundef !32
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2486
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2509, !noalias !2510, !noundef !32
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2510, !noalias !2509, !noundef !32
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2511
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2534, !noalias !2535, !noundef !32
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2535, !noalias !2534, !noundef !32
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2536
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2539
  store i32 %13, ptr %dst.i68, align 4, !noalias !2539
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2542

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf7db82e188bb3bdE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  %_3.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2558, !noalias !2559, !noundef !32
  %_4.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2559, !noalias !2558, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i, ptr %dst.i, align 4, !noalias !2560
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %_3.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2578, !noalias !2579, !noundef !32
  %_4.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2579, !noalias !2578, !noundef !32
  %_0.i27 = icmp slt i32 %_3.i.i.i25, %_4.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i25, ptr %dst.i31, align 4, !noalias !2580
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %_3.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2598, !noalias !2599, !noundef !32
  %_4.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2599, !noalias !2598, !noundef !32
  %_0.i37 = icmp slt i32 %_3.i.i.i35, %_4.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i35, ptr %dst.i41, align 4, !noalias !2600
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  %_3.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2618, !noalias !2619, !noundef !32
  %_4.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2619, !noalias !2618, !noundef !32
  %_0.i47 = icmp slt i32 %_3.i.i.i45, %_4.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i45, ptr %dst.i51, align 4, !noalias !2620
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  %_3.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2638, !noalias !2639, !noundef !32
  %_4.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2639, !noalias !2638, !noundef !32
  %_0.i57 = icmp slt i32 %_3.i.i.i55, %_4.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i55, ptr %dst.i61, align 4, !noalias !2640
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2643
  store i32 %13, ptr %dst.i68, align 4, !noalias !2643
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2646

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd2fb300e8bec6990E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2672, !noalias !2673, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2673, !noalias !2672, !noundef !32
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2674
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2702, !noalias !2703, !noundef !32
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2703, !noalias !2702, !noundef !32
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2704
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2732, !noalias !2733, !noundef !32
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2733, !noalias !2732, !noundef !32
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2734
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2762, !noalias !2763, !noundef !32
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2763, !noalias !2762, !noundef !32
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2764
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2792, !noalias !2793, !noundef !32
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2793, !noalias !2792, !noundef !32
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2794
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2797
  store i32 %13, ptr %dst.i68, align 4, !noalias !2797
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2800

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !32
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !32
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6848d3a82ecd72f3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h13df214d585e120aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  call void @llvm.experimental.noalias.scope.decl(metadata !2806), !noalias !2809
  call void @llvm.experimental.noalias.scope.decl(metadata !2812), !noalias !2809
  call void @llvm.experimental.noalias.scope.decl(metadata !2814), !noalias !2809
  call void @llvm.experimental.noalias.scope.decl(metadata !2817), !noalias !2809
  call void @llvm.experimental.noalias.scope.decl(metadata !2819), !noalias !2809
  call void @llvm.experimental.noalias.scope.decl(metadata !2822), !noalias !2809
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2824, !noalias !2827, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2829, !noalias !2830, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2831, !noalias !2840, !noundef !32
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !32
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h75b4c69d0fd103b0E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2845, !noalias !2854, !noundef !32
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17ha7a8b9225a6f935cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit", !prof !1838

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2859
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h17ce87d0f1c05c7bE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd2fb300e8bec6990E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1838

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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he64613379edea092E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02102488303c7cdfE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  call void @llvm.experimental.noalias.scope.decl(metadata !2868), !noalias !2871
  call void @llvm.experimental.noalias.scope.decl(metadata !2874), !noalias !2871
  call void @llvm.experimental.noalias.scope.decl(metadata !2876), !noalias !2871
  call void @llvm.experimental.noalias.scope.decl(metadata !2879), !noalias !2871
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2881, !noalias !2884, !noundef !32
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2886, !noalias !2887, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2888, !noalias !2895, !noundef !32
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !32
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h1cc1485b2252032aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE.exit
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2899, !noalias !2906, !noundef !32
  %_0.i.not = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf7db82e188bb3bdE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit", !prof !1838

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2910
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5382f7f52a2fe899E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h7f427ef41a27bbb3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1838

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #3 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1836, !noundef !32
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1837, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32618b682d784c9eE.exit", !prof !1838

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32618b682d784c9eE.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !32, !noundef !32
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h2f3a66a2686c96edE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2914, !noundef !32
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h887b4ccc541ee6b0E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca473e721dec8b6fE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %_5 = load ptr, ptr %self, align 8, !noundef !32
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h447460b659fb2a5dE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !32
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2915, !noalias !2918, !noundef !32
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2918, !noalias !2915, !noundef !32
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2923
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h4f2548443d6e6720E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9dc826d8f775779dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2920
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_6 = sext i32 %n to i64
  %_0.i.i.i6.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i6.not, label %bb7, label %bb6

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit", %bb8
  %spec.select10 = phi i64 [ %spec.select, %bb8 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit" ]
  %sum.sroa.0.09 = phi i32 [ %1, %bb8 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit" ]
  %iter.sroa.0.08 = phi i64 [ %spec.select10, %bb8 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit" ]
  %_15 = icmp ult i64 %iter.sroa.0.08, %arr.1
  br i1 %_15, label %bb8, label %panic

bb7:                                              ; preds = %bb8, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit"
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE.exit" ], [ %1, %bb8 ]
  ret i32 %sum.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.08
  %_13 = load i32, ptr %0, align 4, !noundef !32
  %_16 = trunc i64 %iter.sroa.0.08 to i32
  %_12 = mul i32 %_13, %_16
  %1 = add i32 %_12, %sum.sroa.0.09
  %_0.i.i.i = icmp ult i64 %spec.select10, %_6
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select10, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.08, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f8e0d76b07a353d1835879eef3f6aab5) #24
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2928
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2931
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E.exit", label %bb7.i.i, !prof !2927

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2927

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17he978535776327911E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1db39f480af0ebf0E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2928
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17hfaf675d908bda61eE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17hfaf675d908bda61eE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17hfaf675d908bda61eE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17hfaf675d908bda61eE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17hfaf675d908bda61eE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!19 = distinct !{!19, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h838ec985c519f89cE: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h838ec985c519f89cE"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!27 = distinct !{!27, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!30 = !{!26, !18, !13}
!31 = !{!29, !24, !16, !21}
!32 = !{}
!33 = !{!29, !24, !16}
!34 = !{!26, !18, !13, !21}
!35 = !{!36, !38, !40}
!36 = distinct !{!36, !37, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!37 = distinct !{!37, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!38 = distinct !{!38, !39, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!39 = distinct !{!39, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!40 = distinct !{!40, !41, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!41 = distinct !{!41, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!42 = !{!43, !44, !45}
!43 = distinct !{!43, !37, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!44 = distinct !{!44, !39, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!45 = distinct !{!45, !41, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!53 = distinct !{!53, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core5slice4sort6shared5pivot7median317h3d82277bff3fc627E: %c"}
!56 = distinct !{!56, !"_ZN4core5slice4sort6shared5pivot7median317h3d82277bff3fc627E"}
!57 = !{!58}
!58 = distinct !{!58, !53, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"cmpfunc: %a"}
!61 = distinct !{!61, !"cmpfunc"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"cmpfunc: %b"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!66 = distinct !{!66, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!69 = !{!65, !60, !52, !47}
!70 = !{!68, !63, !58, !50, !55}
!71 = !{!68, !63, !58, !50}
!72 = !{!65, !60, !52, !47, !55}
!73 = !{!74, !76, !78, !80}
!74 = distinct !{!74, !75, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!75 = distinct !{!75, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!76 = distinct !{!76, !77, !"cmpfunc: %b"}
!77 = distinct !{!77, !"cmpfunc"}
!78 = distinct !{!78, !79, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!79 = distinct !{!79, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!82 = !{!83, !84, !85, !86}
!83 = distinct !{!83, !75, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!84 = distinct !{!84, !77, !"cmpfunc: %a"}
!85 = distinct !{!85, !79, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!86 = distinct !{!86, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!94 = distinct !{!94, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"cmpfunc: %a"}
!99 = distinct !{!99, !"cmpfunc"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"cmpfunc: %b"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!104 = distinct !{!104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!107 = !{!103, !98, !93, !88}
!108 = !{!106, !101, !96, !91}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!111 = distinct !{!111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!112 = distinct !{!112, !113, !"cmpfunc: %b"}
!113 = distinct !{!113, !"cmpfunc"}
!114 = distinct !{!114, !115, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!115 = distinct !{!115, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!116 = distinct !{!116, !117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!117 = distinct !{!117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!118 = !{!119, !120, !121, !122}
!119 = distinct !{!119, !111, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!120 = distinct !{!120, !113, !"cmpfunc: %a"}
!121 = distinct !{!121, !115, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!122 = distinct !{!122, !117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!123 = !{!124, !126}
!124 = distinct !{!124, !125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!125 = distinct !{!125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!126 = distinct !{!126, !127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!127 = distinct !{!127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!130 = distinct !{!130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!135 = distinct !{!135, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!140 = distinct !{!140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!143 = !{!139, !134, !129}
!144 = !{!142, !137, !132}
!145 = !{!146, !148, !150}
!146 = distinct !{!146, !147, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!147 = distinct !{!147, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!148 = distinct !{!148, !149, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!149 = distinct !{!149, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!150 = distinct !{!150, !151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!151 = distinct !{!151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!152 = !{!153, !154, !155}
!153 = distinct !{!153, !147, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!154 = distinct !{!154, !149, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!155 = distinct !{!155, !151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!158 = distinct !{!158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!159 = distinct !{!159, !160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!160 = distinct !{!160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!163 = distinct !{!163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!168 = distinct !{!168, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!184 = distinct !{!184, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!185 = distinct !{!185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!190 = distinct !{!190, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!206 = distinct !{!206, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!207 = distinct !{!207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!212 = distinct !{!212, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!228 = distinct !{!228, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!229 = distinct !{!229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!234 = distinct !{!234, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!250 = distinct !{!250, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!251 = distinct !{!251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!256 = distinct !{!256, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!272 = distinct !{!272, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!273 = distinct !{!273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!278 = distinct !{!278, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!283 = distinct !{!283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!286 = !{!282, !277, !272}
!287 = !{!285, !280, !275}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!290 = distinct !{!290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!295 = distinct !{!295, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!300 = distinct !{!300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!303 = !{!299, !294, !289}
!304 = !{!302, !297, !292}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!307 = distinct !{!307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!312 = distinct !{!312, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!317 = distinct !{!317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!320 = !{!316, !311, !306}
!321 = !{!319, !314, !309}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!324 = distinct !{!324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!329 = distinct !{!329, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!337 = !{!333, !328, !323}
!338 = !{!336, !331, !326}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!341 = distinct !{!341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!346 = distinct !{!346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!351 = distinct !{!351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!354 = !{!350, !345, !340}
!355 = !{!353, !348, !343}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!358 = distinct !{!358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!363 = distinct !{!363, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!379 = distinct !{!379, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!380 = distinct !{!380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!385 = distinct !{!385, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!401 = distinct !{!401, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!402 = distinct !{!402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!407 = distinct !{!407, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!423 = distinct !{!423, !424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!424 = distinct !{!424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!429 = distinct !{!429, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!432 = !{!433}
!433 = distinct !{!433, !434, !"cmpfunc: %a"}
!434 = distinct !{!434, !"cmpfunc"}
!435 = !{!436}
!436 = distinct !{!436, !434, !"cmpfunc: %b"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!439 = distinct !{!439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!442 = !{!438, !433, !428, !423}
!443 = !{!441, !436, !431, !426}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!446 = distinct !{!446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!451 = distinct !{!451, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"cmpfunc: %a"}
!456 = distinct !{!456, !"cmpfunc"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"cmpfunc: %b"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!461 = distinct !{!461, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!464 = !{!460, !455, !450, !445}
!465 = !{!463, !458, !453, !448}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!468 = distinct !{!468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!473 = distinct !{!473, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!474 = !{!475}
!475 = distinct !{!475, !473, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!489 = distinct !{!489, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!490 = distinct !{!490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!495 = distinct !{!495, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!496 = !{!497}
!497 = distinct !{!497, !495, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!511 = distinct !{!511, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!512 = distinct !{!512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!513 = !{!514}
!514 = distinct !{!514, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!517 = distinct !{!517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!518 = !{!519}
!519 = distinct !{!519, !517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!533 = distinct !{!533, !534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!534 = distinct !{!534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!535 = !{!536}
!536 = distinct !{!536, !534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!539 = distinct !{!539, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!540 = !{!541}
!541 = distinct !{!541, !539, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!555 = distinct !{!555, !556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!556 = distinct !{!556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!561 = distinct !{!561, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!577 = distinct !{!577, !578, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E: %v.0"}
!578 = distinct !{!578, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E"}
!579 = !{!580}
!580 = distinct !{!580, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!581 = distinct !{!581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!582 = !{!583}
!583 = distinct !{!583, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!584 = !{!585}
!585 = distinct !{!585, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!586 = distinct !{!586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %_0"}
!589 = distinct !{!589, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E"}
!590 = !{!591}
!591 = distinct !{!591, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"cmpfunc: %a"}
!594 = distinct !{!594, !"cmpfunc"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"cmpfunc: %b"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!599 = distinct !{!599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!602 = !{!598, !593, !585, !580, !577}
!603 = !{!601, !596, !591, !583, !588}
!604 = !{!601, !596, !591, !583, !577}
!605 = !{!598, !593, !585, !580, !588}
!606 = !{!588, !607, !577}
!607 = distinct !{!607, !589, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %is_less"}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!610 = distinct !{!610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!611 = !{!612}
!612 = distinct !{!612, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!615 = distinct !{!615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %_0"}
!618 = distinct !{!618, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E"}
!619 = !{!620}
!620 = distinct !{!620, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"cmpfunc: %a"}
!623 = distinct !{!623, !"cmpfunc"}
!624 = !{!625}
!625 = distinct !{!625, !623, !"cmpfunc: %b"}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!628 = distinct !{!628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!631 = !{!627, !622, !614, !609, !577}
!632 = !{!630, !625, !620, !612, !617}
!633 = !{!630, !625, !620, !612, !577}
!634 = !{!627, !622, !614, !609, !617}
!635 = !{!617, !636, !577}
!636 = distinct !{!636, !618, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %is_less"}
!637 = !{!638}
!638 = distinct !{!638, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It1"}
!639 = !{!640}
!640 = distinct !{!640, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It1"}
!641 = !{!642}
!642 = distinct !{!642, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It1"}
!643 = !{!644}
!644 = distinct !{!644, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It1"}
!645 = !{!646}
!646 = distinct !{!646, !594, !"cmpfunc: %a:It1"}
!647 = !{!648}
!648 = distinct !{!648, !594, !"cmpfunc: %b:It1"}
!649 = !{!650}
!650 = distinct !{!650, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!651 = !{!652}
!652 = distinct !{!652, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!653 = !{!650, !646, !642, !638, !577}
!654 = !{!652, !648, !644, !640, !588}
!655 = !{!652, !648, !644, !640, !577}
!656 = !{!650, !646, !642, !638, !588}
!657 = !{!658}
!658 = distinct !{!658, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It1"}
!659 = !{!660}
!660 = distinct !{!660, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It1"}
!661 = !{!662}
!662 = distinct !{!662, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It1"}
!663 = !{!664}
!664 = distinct !{!664, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It1"}
!665 = !{!666}
!666 = distinct !{!666, !623, !"cmpfunc: %a:It1"}
!667 = !{!668}
!668 = distinct !{!668, !623, !"cmpfunc: %b:It1"}
!669 = !{!670}
!670 = distinct !{!670, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!671 = !{!672}
!672 = distinct !{!672, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!673 = !{!670, !666, !662, !658, !577}
!674 = !{!672, !668, !664, !660, !617}
!675 = !{!672, !668, !664, !660, !577}
!676 = !{!670, !666, !662, !658, !617}
!677 = !{!678}
!678 = distinct !{!678, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It2"}
!679 = !{!680}
!680 = distinct !{!680, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It2"}
!681 = !{!682}
!682 = distinct !{!682, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It2"}
!683 = !{!684}
!684 = distinct !{!684, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It2"}
!685 = !{!686}
!686 = distinct !{!686, !594, !"cmpfunc: %a:It2"}
!687 = !{!688}
!688 = distinct !{!688, !594, !"cmpfunc: %b:It2"}
!689 = !{!690}
!690 = distinct !{!690, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!691 = !{!692}
!692 = distinct !{!692, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!693 = !{!690, !686, !682, !678, !577}
!694 = !{!692, !688, !684, !680, !588}
!695 = !{!692, !688, !684, !680, !577}
!696 = !{!690, !686, !682, !678, !588}
!697 = !{!698}
!698 = distinct !{!698, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It2"}
!699 = !{!700}
!700 = distinct !{!700, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It2"}
!701 = !{!702}
!702 = distinct !{!702, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It2"}
!703 = !{!704}
!704 = distinct !{!704, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It2"}
!705 = !{!706}
!706 = distinct !{!706, !623, !"cmpfunc: %a:It2"}
!707 = !{!708}
!708 = distinct !{!708, !623, !"cmpfunc: %b:It2"}
!709 = !{!710}
!710 = distinct !{!710, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!711 = !{!712}
!712 = distinct !{!712, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!713 = !{!710, !706, !702, !698, !577}
!714 = !{!712, !708, !704, !700, !617}
!715 = !{!712, !708, !704, !700, !577}
!716 = !{!710, !706, !702, !698, !617}
!717 = !{!718}
!718 = distinct !{!718, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It3"}
!719 = !{!720}
!720 = distinct !{!720, !581, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It3"}
!721 = !{!722}
!722 = distinct !{!722, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It3"}
!723 = !{!724}
!724 = distinct !{!724, !586, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It3"}
!725 = !{!726}
!726 = distinct !{!726, !594, !"cmpfunc: %a:It3"}
!727 = !{!728}
!728 = distinct !{!728, !594, !"cmpfunc: %b:It3"}
!729 = !{!730}
!730 = distinct !{!730, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!731 = !{!732}
!732 = distinct !{!732, !599, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!733 = !{!730, !726, !722, !718, !577}
!734 = !{!732, !728, !724, !720, !588}
!735 = !{!732, !728, !724, !720, !577}
!736 = !{!730, !726, !722, !718, !588}
!737 = !{!738}
!738 = distinct !{!738, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a:It3"}
!739 = !{!740}
!740 = distinct !{!740, !610, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b:It3"}
!741 = !{!742}
!742 = distinct !{!742, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0:It3"}
!743 = !{!744}
!744 = distinct !{!744, !615, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1:It3"}
!745 = !{!746}
!746 = distinct !{!746, !623, !"cmpfunc: %a:It3"}
!747 = !{!748}
!748 = distinct !{!748, !623, !"cmpfunc: %b:It3"}
!749 = !{!750}
!750 = distinct !{!750, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!751 = !{!752}
!752 = distinct !{!752, !628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!753 = !{!750, !746, !742, !738, !577}
!754 = !{!752, !748, !744, !740, !617}
!755 = !{!752, !748, !744, !740, !577}
!756 = !{!750, !746, !742, !738, !617}
!757 = !{!"branch_weights", i32 4001, i32 4000000}
!758 = !{!759}
!759 = distinct !{!759, !760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!760 = distinct !{!760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!765 = distinct !{!765, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!766 = !{!767}
!767 = distinct !{!767, !765, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!768 = !{!769}
!769 = distinct !{!769, !770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!770 = distinct !{!770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!771 = !{!772}
!772 = distinct !{!772, !770, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!773 = !{!769, !764, !759}
!774 = !{!772, !767, !762}
!775 = !{!776}
!776 = distinct !{!776, !777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!777 = distinct !{!777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!778 = !{!779}
!779 = distinct !{!779, !777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!782 = distinct !{!782, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!787 = distinct !{!787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!790 = !{!786, !781, !776}
!791 = !{!789, !784, !779}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!794 = distinct !{!794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!795 = !{!796}
!796 = distinct !{!796, !794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!799 = distinct !{!799, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!800 = !{!801}
!801 = distinct !{!801, !799, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!804 = distinct !{!804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!807 = !{!803, !798, !793}
!808 = !{!806, !801, !796}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!811 = distinct !{!811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!812 = !{!813}
!813 = distinct !{!813, !811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!814 = !{!815}
!815 = distinct !{!815, !816, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!816 = distinct !{!816, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!817 = !{!818}
!818 = distinct !{!818, !816, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!821 = distinct !{!821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!822 = !{!823}
!823 = distinct !{!823, !821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!824 = !{!820, !815, !810}
!825 = !{!823, !818, !813}
!826 = !{!827}
!827 = distinct !{!827, !828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!828 = distinct !{!828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!831 = !{!832}
!832 = distinct !{!832, !833, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!833 = distinct !{!833, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!834 = !{!835}
!835 = distinct !{!835, !833, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!836 = !{!837}
!837 = distinct !{!837, !838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!838 = distinct !{!838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!839 = !{!840}
!840 = distinct !{!840, !838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!841 = !{!837, !832, !827}
!842 = !{!840, !835, !830}
!843 = !{!844}
!844 = distinct !{!844, !845, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!845 = distinct !{!845, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!846 = !{!847}
!847 = distinct !{!847, !845, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!848 = !{!849}
!849 = distinct !{!849, !850, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!850 = distinct !{!850, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!851 = !{!852}
!852 = distinct !{!852, !850, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!855 = distinct !{!855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!856 = !{!857}
!857 = distinct !{!857, !855, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!858 = !{!854, !849, !844}
!859 = !{!857, !852, !847}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!862 = distinct !{!862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!867 = distinct !{!867, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!872 = distinct !{!872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!875 = !{!871, !866, !861}
!876 = !{!874, !869, !864}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!884 = distinct !{!884, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!889 = distinct !{!889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!892 = !{!888, !883, !878}
!893 = !{!891, !886, !881}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!896 = distinct !{!896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!901 = distinct !{!901, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!906 = distinct !{!906, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!909 = !{!905, !900, !895}
!910 = !{!908, !903, !898}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!913 = distinct !{!913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!918 = distinct !{!918, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!923 = distinct !{!923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!926 = !{!922, !917, !912}
!927 = !{!925, !920, !915}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E: %v.0"}
!930 = distinct !{!930, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!933 = distinct !{!933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!938 = distinct !{!938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %_0"}
!941 = distinct !{!941, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E"}
!942 = !{!943}
!943 = distinct !{!943, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!944 = !{!945}
!945 = distinct !{!945, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!946 = distinct !{!946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!947 = !{!948}
!948 = distinct !{!948, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!949 = !{!945, !937, !932, !929}
!950 = !{!948, !943, !935, !940}
!951 = !{!948, !943, !935, !929}
!952 = !{!945, !937, !932, !940}
!953 = !{!940, !954, !929}
!954 = distinct !{!954, !941, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %is_less"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!957 = distinct !{!957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!962 = distinct !{!962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %_0"}
!965 = distinct !{!965, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E"}
!966 = !{!967}
!967 = distinct !{!967, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!968 = !{!969}
!969 = distinct !{!969, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!970 = distinct !{!970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!971 = !{!972}
!972 = distinct !{!972, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!973 = !{!969, !961, !956, !929}
!974 = !{!972, !967, !959, !964}
!975 = !{!972, !967, !959, !929}
!976 = !{!969, !961, !956, !964}
!977 = !{!964, !978, !929}
!978 = distinct !{!978, !965, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %is_less"}
!979 = !{!980}
!980 = distinct !{!980, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It1"}
!981 = !{!982}
!982 = distinct !{!982, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It1"}
!983 = !{!984}
!984 = distinct !{!984, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It1"}
!985 = !{!986}
!986 = distinct !{!986, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It1"}
!987 = !{!988}
!988 = distinct !{!988, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!989 = !{!990}
!990 = distinct !{!990, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!991 = !{!988, !984, !980, !929}
!992 = !{!990, !986, !982, !940}
!993 = !{!990, !986, !982, !929}
!994 = !{!988, !984, !980, !940}
!995 = !{!996}
!996 = distinct !{!996, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It1"}
!997 = !{!998}
!998 = distinct !{!998, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It1"}
!999 = !{!1000}
!1000 = distinct !{!1000, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It1"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It1"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1007 = !{!1004, !1000, !996, !929}
!1008 = !{!1006, !1002, !998, !964}
!1009 = !{!1006, !1002, !998, !929}
!1010 = !{!1004, !1000, !996, !964}
!1011 = !{!1012}
!1012 = distinct !{!1012, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It2"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It2"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It2"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It2"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1021 = !{!1022}
!1022 = distinct !{!1022, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1023 = !{!1020, !1016, !1012, !929}
!1024 = !{!1022, !1018, !1014, !940}
!1025 = !{!1022, !1018, !1014, !929}
!1026 = !{!1020, !1016, !1012, !940}
!1027 = !{!1028}
!1028 = distinct !{!1028, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It2"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It2"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It2"}
!1033 = !{!1034}
!1034 = distinct !{!1034, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It2"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1037 = !{!1038}
!1038 = distinct !{!1038, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1039 = !{!1036, !1032, !1028, !929}
!1040 = !{!1038, !1034, !1030, !964}
!1041 = !{!1038, !1034, !1030, !929}
!1042 = !{!1036, !1032, !1028, !964}
!1043 = !{!1044}
!1044 = distinct !{!1044, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It3"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It3"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It3"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !938, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It3"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !946, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1055 = !{!1052, !1048, !1044, !929}
!1056 = !{!1054, !1050, !1046, !940}
!1057 = !{!1054, !1050, !1046, !929}
!1058 = !{!1052, !1048, !1044, !940}
!1059 = !{!1060}
!1060 = distinct !{!1060, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a:It3"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !957, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b:It3"}
!1063 = !{!1064}
!1064 = distinct !{!1064, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a:It3"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !962, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b:It3"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !970, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1071 = !{!1068, !1064, !1060, !929}
!1072 = !{!1070, !1066, !1062, !964}
!1073 = !{!1070, !1066, !1062, !929}
!1074 = !{!1068, !1064, !1060, !964}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1077 = distinct !{!1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1082 = distinct !{!1082, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %_0"}
!1085 = distinct !{!1085, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1082, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!1098 = !{!1094, !1089, !1081, !1076}
!1099 = !{!1097, !1092, !1087, !1079, !1084}
!1100 = !{!1097, !1092, !1087, !1079}
!1101 = !{!1094, !1089, !1081, !1076, !1084}
!1102 = !{!1084, !1103}
!1103 = distinct !{!1103, !1085, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %is_less"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1106 = distinct !{!1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1111 = distinct !{!1111, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %_0"}
!1114 = distinct !{!1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1111, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"cmpfunc: %a"}
!1119 = distinct !{!1119, !"cmpfunc"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"cmpfunc: %b"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1124 = distinct !{!1124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1124, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1127 = !{!1123, !1118, !1110, !1105}
!1128 = !{!1126, !1121, !1116, !1108, !1113}
!1129 = !{!1126, !1121, !1116, !1108}
!1130 = !{!1123, !1118, !1110, !1105, !1113}
!1131 = !{!1113, !1132}
!1132 = distinct !{!1132, !1114, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %is_less"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1135 = distinct !{!1135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1140, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1140 = distinct !{!1140, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %_0"}
!1143 = distinct !{!1143, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1140, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1148 = distinct !{!1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1151 = !{!1147, !1139, !1134}
!1152 = !{!1150, !1145, !1137, !1142}
!1153 = !{!1150, !1145, !1137}
!1154 = !{!1147, !1139, !1134, !1142}
!1155 = !{!1142, !1156}
!1156 = distinct !{!1156, !1143, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %is_less"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1159 = distinct !{!1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1164 = distinct !{!1164, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %_0"}
!1167 = distinct !{!1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1164, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1172 = distinct !{!1172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1175 = !{!1171, !1163, !1158}
!1176 = !{!1174, !1169, !1161, !1166}
!1177 = !{!1174, !1169, !1161}
!1178 = !{!1171, !1163, !1158, !1166}
!1179 = !{!1166, !1180}
!1180 = distinct !{!1180, !1167, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %is_less"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1183 = distinct !{!1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1188 = distinct !{!1188, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"cmpfunc: %a"}
!1193 = distinct !{!1193, !"cmpfunc"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"cmpfunc: %b"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1198 = distinct !{!1198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1201 = !{!1197, !1192, !1187, !1182}
!1202 = !{!1200, !1195, !1190, !1185}
!1203 = !{!1204, !1206, !1208, !1210}
!1204 = distinct !{!1204, !1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1205 = distinct !{!1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1206 = distinct !{!1206, !1207, !"cmpfunc: %b"}
!1207 = distinct !{!1207, !"cmpfunc"}
!1208 = distinct !{!1208, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1209 = distinct !{!1209, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1210 = distinct !{!1210, !1211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1211 = distinct !{!1211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1212 = !{!1213, !1214, !1215, !1216}
!1213 = distinct !{!1213, !1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1214 = distinct !{!1214, !1207, !"cmpfunc: %a"}
!1215 = distinct !{!1215, !1209, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1216 = distinct !{!1216, !1211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1217 = !{!1218, !1220}
!1218 = distinct !{!1218, !1219, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1219 = distinct !{!1219, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1220 = distinct !{!1220, !1221, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1221 = distinct !{!1221, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1224 = distinct !{!1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1229 = distinct !{!1229, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1234 = distinct !{!1234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1237 = !{!1233, !1228, !1223}
!1238 = !{!1236, !1231, !1226}
!1239 = !{!1240, !1242, !1244}
!1240 = distinct !{!1240, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1241 = distinct !{!1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1242 = distinct !{!1242, !1243, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1243 = distinct !{!1243, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1244 = distinct !{!1244, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1245 = distinct !{!1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1246 = !{!1247, !1248, !1249}
!1247 = distinct !{!1247, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1248 = distinct !{!1248, !1243, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1249 = distinct !{!1249, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1250 = !{!1251, !1253}
!1251 = distinct !{!1251, !1252, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1252 = distinct !{!1252, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1253 = distinct !{!1253, !1254, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1254 = distinct !{!1254, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1257 = distinct !{!1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1262 = distinct !{!1262, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"cmpfunc: %a"}
!1267 = distinct !{!1267, !"cmpfunc"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"cmpfunc: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1272 = distinct !{!1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1275 = !{!1271, !1266, !1261, !1256}
!1276 = !{!1274, !1269, !1264, !1259}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1279 = distinct !{!1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1284 = distinct !{!1284, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"cmpfunc: %a"}
!1289 = distinct !{!1289, !"cmpfunc"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"cmpfunc: %b"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1294 = distinct !{!1294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1297 = !{!1293, !1288, !1283, !1278}
!1298 = !{!1296, !1291, !1286, !1281}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1301 = distinct !{!1301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1301, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1306 = distinct !{!1306, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"cmpfunc: %a"}
!1311 = distinct !{!1311, !"cmpfunc"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1311, !"cmpfunc: %b"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1316 = distinct !{!1316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1319 = !{!1315, !1310, !1305, !1300}
!1320 = !{!1318, !1313, !1308, !1303}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1323 = distinct !{!1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1328 = distinct !{!1328, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1328, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"cmpfunc: %a"}
!1333 = distinct !{!1333, !"cmpfunc"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"cmpfunc: %b"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1338 = distinct !{!1338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1338, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1341 = !{!1337, !1332, !1327, !1322}
!1342 = !{!1340, !1335, !1330, !1325}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1345 = distinct !{!1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1350 = distinct !{!1350, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"cmpfunc: %a"}
!1355 = distinct !{!1355, !"cmpfunc"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"cmpfunc: %b"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1360 = distinct !{!1360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1363 = !{!1359, !1354, !1349, !1344}
!1364 = !{!1362, !1357, !1352, !1347}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1367 = distinct !{!1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1372 = distinct !{!1372, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"cmpfunc: %a"}
!1377 = distinct !{!1377, !"cmpfunc"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"cmpfunc: %b"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1382 = distinct !{!1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1382, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1385 = !{!1381, !1376, !1371, !1366}
!1386 = !{!1384, !1379, !1374, !1369}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1394 = distinct !{!1394, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"cmpfunc: %a"}
!1399 = distinct !{!1399, !"cmpfunc"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"cmpfunc: %b"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1404 = distinct !{!1404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1407 = !{!1403, !1398, !1393, !1388}
!1408 = !{!1406, !1401, !1396, !1391}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1411 = distinct !{!1411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1411, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1416 = distinct !{!1416, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1416, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"cmpfunc: %a"}
!1421 = distinct !{!1421, !"cmpfunc"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"cmpfunc: %b"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1426 = distinct !{!1426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1426, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1429 = !{!1425, !1420, !1415, !1410}
!1430 = !{!1428, !1423, !1418, !1413}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1433 = distinct !{!1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1438 = distinct !{!1438, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"cmpfunc: %a"}
!1443 = distinct !{!1443, !"cmpfunc"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1443, !"cmpfunc: %b"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1448 = distinct !{!1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1451 = !{!1447, !1442, !1437, !1432}
!1452 = !{!1450, !1445, !1440, !1435}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1455 = distinct !{!1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"cmpfunc: %a"}
!1465 = distinct !{!1465, !"cmpfunc"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"cmpfunc: %b"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1470 = distinct !{!1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1473 = !{!1469, !1464, !1459, !1454}
!1474 = !{!1472, !1467, !1462, !1457}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E: %self.0"}
!1477 = distinct !{!1477, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1480, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E: %v.0"}
!1480 = distinct !{!1480, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h293272cae552b5e1E"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1483 = distinct !{!1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1488 = distinct !{!1488, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %_0"}
!1491 = distinct !{!1491, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1488, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"cmpfunc: %a"}
!1496 = distinct !{!1496, !"cmpfunc"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"cmpfunc: %b"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1501 = distinct !{!1501, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1501, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1504 = !{!1500, !1495, !1487, !1482, !1479}
!1505 = !{!1503, !1498, !1493, !1485, !1490}
!1506 = !{!1503, !1498, !1493, !1485, !1479}
!1507 = !{!1500, !1495, !1487, !1482, !1490}
!1508 = !{!1490, !1509, !1479}
!1509 = distinct !{!1509, !1491, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h38b73fd97c3deb74E: %is_less"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1512 = distinct !{!1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1517 = distinct !{!1517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %_0"}
!1520 = distinct !{!1520, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1525, !"cmpfunc: %a"}
!1525 = distinct !{!1525, !"cmpfunc"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1525, !"cmpfunc: %b"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1530 = distinct !{!1530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1533 = !{!1529, !1524, !1516, !1511, !1479}
!1534 = !{!1532, !1527, !1522, !1514, !1519}
!1535 = !{!1532, !1527, !1522, !1514, !1479}
!1536 = !{!1529, !1524, !1516, !1511, !1519}
!1537 = !{!1519, !1538, !1479}
!1538 = distinct !{!1538, !1520, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hbaf6d1e13c76d6e9E: %is_less"}
!1539 = !{!1540, !1542}
!1540 = distinct !{!1540, !1541, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1541 = distinct !{!1541, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1542 = distinct !{!1542, !1543, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1543 = distinct !{!1543, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1544 = !{!1545, !1547, !1549, !1551}
!1545 = distinct !{!1545, !1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1546 = distinct !{!1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1547 = distinct !{!1547, !1548, !"cmpfunc: %b"}
!1548 = distinct !{!1548, !"cmpfunc"}
!1549 = distinct !{!1549, !1550, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1550 = distinct !{!1550, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1551 = distinct !{!1551, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1552 = distinct !{!1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1553 = !{!1554, !1555, !1556, !1557}
!1554 = distinct !{!1554, !1546, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1555 = distinct !{!1555, !1548, !"cmpfunc: %a"}
!1556 = distinct !{!1556, !1550, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1557 = distinct !{!1557, !1552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1558 = !{!1559, !1561, !1563, !1565}
!1559 = distinct !{!1559, !1560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1560 = distinct !{!1560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1561 = distinct !{!1561, !1562, !"cmpfunc: %b"}
!1562 = distinct !{!1562, !"cmpfunc"}
!1563 = distinct !{!1563, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1564 = distinct !{!1564, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1565 = distinct !{!1565, !1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1566 = distinct !{!1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1567 = !{!1568, !1569, !1570, !1571}
!1568 = distinct !{!1568, !1560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1569 = distinct !{!1569, !1562, !"cmpfunc: %a"}
!1570 = distinct !{!1570, !1564, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1571 = distinct !{!1571, !1566, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1572 = !{!1573, !1575}
!1573 = distinct !{!1573, !1574, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1574 = distinct !{!1574, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1575 = distinct !{!1575, !1576, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1576 = distinct !{!1576, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1579 = distinct !{!1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1584 = distinct !{!1584, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1589 = distinct !{!1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1592 = !{!1588, !1583, !1578}
!1593 = !{!1591, !1586, !1581}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1596 = distinct !{!1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1596, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1601 = distinct !{!1601, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1601, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1606 = distinct !{!1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1606, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1609 = !{!1605, !1600, !1595}
!1610 = !{!1608, !1603, !1598}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1613 = distinct !{!1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1613, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1618 = distinct !{!1618, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1618, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1623, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1623 = distinct !{!1623, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1623, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1626 = !{!1622, !1617, !1612}
!1627 = !{!1625, !1620, !1615}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1630 = distinct !{!1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1630, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1633 = !{!1634}
!1634 = distinct !{!1634, !1635, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1635 = distinct !{!1635, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1635, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1638 = !{!1639}
!1639 = distinct !{!1639, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1640 = distinct !{!1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1640, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1643 = !{!1639, !1634, !1629}
!1644 = !{!1642, !1637, !1632}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1647 = distinct !{!1647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1652 = distinct !{!1652, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1657 = distinct !{!1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1660 = !{!1656, !1651, !1646}
!1661 = !{!1659, !1654, !1649}
!1662 = !{!1663}
!1663 = distinct !{!1663, !1664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1664 = distinct !{!1664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1669 = distinct !{!1669, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1669, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1674 = distinct !{!1674, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1674, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1677 = !{!1673, !1668, !1663}
!1678 = !{!1676, !1671, !1666}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1686, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1686 = distinct !{!1686, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1686, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1691 = distinct !{!1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1694 = !{!1690, !1685, !1680}
!1695 = !{!1693, !1688, !1683}
!1696 = !{!1697}
!1697 = distinct !{!1697, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1698 = distinct !{!1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1699 = !{!1700}
!1700 = distinct !{!1700, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1703, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1703 = distinct !{!1703, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1703, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1708 = distinct !{!1708, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1708, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1711 = !{!1707, !1702, !1697}
!1712 = !{!1710, !1705, !1700}
!1713 = !{!1714}
!1714 = distinct !{!1714, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1715 = distinct !{!1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1720, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1720 = distinct !{!1720, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1720, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1723 = !{!1724}
!1724 = distinct !{!1724, !1725, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1725 = distinct !{!1725, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1725, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1728 = !{!1724, !1719, !1714}
!1729 = !{!1727, !1722, !1717}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1732 = distinct !{!1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1737 = distinct !{!1737, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1737, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1742 = distinct !{!1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1742, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1745 = !{!1741, !1736, !1731}
!1746 = !{!1744, !1739, !1734}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1749, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E: %self.0"}
!1749 = distinct !{!1749, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bd0588426dec1d2E"}
!1750 = !{!1751}
!1751 = distinct !{!1751, !1752, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E: %v.0"}
!1752 = distinct !{!1752, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he859c69b6bdfd6d4E"}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1755 = distinct !{!1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1758 = !{!1759}
!1759 = distinct !{!1759, !1760, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1760 = distinct !{!1760, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1763, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %_0"}
!1763 = distinct !{!1763, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1760, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1768 = distinct !{!1768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1771 = !{!1767, !1759, !1754, !1751}
!1772 = !{!1770, !1765, !1757, !1762}
!1773 = !{!1770, !1765, !1757, !1751}
!1774 = !{!1767, !1759, !1754, !1762}
!1775 = !{!1762, !1776, !1751}
!1776 = distinct !{!1776, !1763, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h5be51e1969b53da9E: %is_less"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1779 = distinct !{!1779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1784, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1784 = distinct !{!1784, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %_0"}
!1787 = distinct !{!1787, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1784, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1790 = !{!1791}
!1791 = distinct !{!1791, !1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1792 = distinct !{!1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1792, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1795 = !{!1791, !1783, !1778, !1751}
!1796 = !{!1794, !1789, !1781, !1786}
!1797 = !{!1794, !1789, !1781, !1751}
!1798 = !{!1791, !1783, !1778, !1786}
!1799 = !{!1786, !1800, !1751}
!1800 = distinct !{!1800, !1787, !"_ZN4core5slice4sort6shared9smallsort10merge_down17haa0cf9b7e52d7ef7E: %is_less"}
!1801 = !{!1802, !1804}
!1802 = distinct !{!1802, !1803, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1803 = distinct !{!1803, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1804 = distinct !{!1804, !1805, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1805 = distinct !{!1805, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1806 = !{!1807, !1809, !1811}
!1807 = distinct !{!1807, !1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1808 = distinct !{!1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1809 = distinct !{!1809, !1810, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1810 = distinct !{!1810, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1811 = distinct !{!1811, !1812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1812 = distinct !{!1812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1813 = !{!1814, !1815, !1816}
!1814 = distinct !{!1814, !1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1815 = distinct !{!1815, !1810, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1816 = distinct !{!1816, !1812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1817 = !{!1818, !1820, !1822}
!1818 = distinct !{!1818, !1819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1819 = distinct !{!1819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1820 = distinct !{!1820, !1821, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1821 = distinct !{!1821, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1822 = distinct !{!1822, !1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1823 = distinct !{!1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1824 = !{!1825, !1826, !1827}
!1825 = distinct !{!1825, !1819, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1826 = distinct !{!1826, !1821, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1827 = distinct !{!1827, !1823, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1828 = !{!1829, !1831}
!1829 = distinct !{!1829, !1830, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE: %self"}
!1830 = distinct !{!1830, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60f18049bd2c0cddE"}
!1831 = distinct !{!1831, !1832, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E: %_1"}
!1832 = distinct !{!1832, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc65d77d728f403c4E"}
!1833 = !{!1834}
!1834 = distinct !{!1834, !1835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E: %_0"}
!1835 = distinct !{!1835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E"}
!1836 = !{i64 0, i64 2}
!1837 = !{i64 0, i64 -9223372036854775807}
!1838 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1841, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E: %_0"}
!1841 = distinct !{!1841, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7ce96d8c6bfdccd2E"}
!1842 = !{!1843}
!1843 = distinct !{!1843, !1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1844 = distinct !{!1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1845 = !{!1846}
!1846 = distinct !{!1846, !1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1849, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1849 = distinct !{!1849, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1849, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1854, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1854 = distinct !{!1854, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1854, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1857 = !{!1853, !1848, !1843}
!1858 = !{!1856, !1851, !1846}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1861 = distinct !{!1861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1861, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1864 = !{!1865}
!1865 = distinct !{!1865, !1866, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1866 = distinct !{!1866, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1867 = !{!1868}
!1868 = distinct !{!1868, !1866, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1871 = distinct !{!1871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1874 = !{!1870, !1865, !1860}
!1875 = !{!1873, !1868, !1863}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1878 = distinct !{!1878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1883, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1883 = distinct !{!1883, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1883, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1886 = !{!1887}
!1887 = distinct !{!1887, !1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1888 = distinct !{!1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1889 = !{!1890}
!1890 = distinct !{!1890, !1888, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1891 = !{!1887, !1882, !1877}
!1892 = !{!1890, !1885, !1880}
!1893 = !{!1894, !1896}
!1894 = distinct !{!1894, !1895, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE: %a.0"}
!1895 = distinct !{!1895, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE"}
!1896 = distinct !{!1896, !1897, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4a5156a8b6dcea83E: %self.0"}
!1897 = distinct !{!1897, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4a5156a8b6dcea83E"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1895, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE: %b.0"}
!1900 = !{!1899, !1896}
!1901 = !{!1894}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1904 = distinct !{!1904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1907 = !{!1908}
!1908 = distinct !{!1908, !1909, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1909 = distinct !{!1909, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1910 = !{!1911}
!1911 = distinct !{!1911, !1909, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1914, !"cmpfunc: %a"}
!1914 = distinct !{!1914, !"cmpfunc"}
!1915 = !{!1916}
!1916 = distinct !{!1916, !1914, !"cmpfunc: %b"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1919 = distinct !{!1919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1920 = !{!1921}
!1921 = distinct !{!1921, !1919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1922 = !{!1918, !1913, !1908, !1903}
!1923 = !{!1921, !1916, !1911, !1906}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1926 = distinct !{!1926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1931, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1931 = distinct !{!1931, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1931, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1936, !"cmpfunc: %a"}
!1936 = distinct !{!1936, !"cmpfunc"}
!1937 = !{!1938}
!1938 = distinct !{!1938, !1936, !"cmpfunc: %b"}
!1939 = !{!1940}
!1940 = distinct !{!1940, !1941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1941 = distinct !{!1941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1942 = !{!1943}
!1943 = distinct !{!1943, !1941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1944 = !{!1940, !1935, !1930, !1925}
!1945 = !{!1943, !1938, !1933, !1928}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!1948 = distinct !{!1948, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1948, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1953, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!1953 = distinct !{!1953, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!1954 = !{!1955}
!1955 = distinct !{!1955, !1953, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1958, !"cmpfunc: %a"}
!1958 = distinct !{!1958, !"cmpfunc"}
!1959 = !{!1960}
!1960 = distinct !{!1960, !1958, !"cmpfunc: %b"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1963, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1963 = distinct !{!1963, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1964 = !{!1965}
!1965 = distinct !{!1965, !1963, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1966 = !{!1962, !1957, !1952, !1947}
!1967 = !{!1965, !1960, !1955, !1950}
!1968 = !{!1969, !1971}
!1969 = distinct !{!1969, !1970, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE: %a.0"}
!1970 = distinct !{!1970, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE"}
!1971 = distinct !{!1971, !1972, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4a5156a8b6dcea83E: %self.0"}
!1972 = distinct !{!1972, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4a5156a8b6dcea83E"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1970, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9dce2df4977f95fE: %b.0"}
!1975 = !{!1974, !1971}
!1976 = !{!1969}
!1977 = !{!1978}
!1978 = distinct !{!1978, !1979, !"_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE: %v.0"}
!1979 = distinct !{!1979, !"_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE"}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1979, !"_ZN4core5slice4sort6stable5merge5merge17h493323385171e88bE: %scratch.0"}
!1982 = !{!1978, !1981}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!1985 = distinct !{!1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!1990 = distinct !{!1990, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1990, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1995 = distinct !{!1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1998 = !{!1994, !1989, !1984, !1981}
!1999 = !{!1997, !1992, !1987, !2000, !1978}
!2000 = distinct !{!2000, !2001, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7aae102232082dcbE: %self"}
!2001 = distinct !{!2001, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7aae102232082dcbE"}
!2002 = !{!1997, !1992, !1987, !1978}
!2003 = !{!1994, !1989, !1984, !2000, !1981}
!2004 = !{!2000, !1981}
!2005 = !{!2006}
!2006 = distinct !{!2006, !2007, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2007 = distinct !{!2007, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2008 = !{!2009}
!2009 = distinct !{!2009, !2007, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2012, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2012 = distinct !{!2012, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2012, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2017 = distinct !{!2017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2020 = !{!2016, !2011, !2006, !1978}
!2021 = !{!2019, !2014, !2009, !2022, !1981}
!2022 = distinct !{!2022, !2023, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he2479a54bf23d358E: %self"}
!2023 = distinct !{!2023, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he2479a54bf23d358E"}
!2024 = !{!2019, !2014, !2009, !1981}
!2025 = !{!2016, !2011, !2006, !2022, !1978}
!2026 = !{!2022, !1981}
!2027 = !{!2028, !2030}
!2028 = distinct !{!2028, !2029, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E: %self"}
!2029 = distinct !{!2029, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E"}
!2030 = distinct !{!2030, !2031, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E: %_1"}
!2031 = distinct !{!2031, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E"}
!2032 = !{!2033}
!2033 = distinct !{!2033, !2034, !"_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E: %v.0"}
!2034 = distinct !{!2034, !"_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E"}
!2035 = !{!2036}
!2036 = distinct !{!2036, !2034, !"_ZN4core5slice4sort6stable5merge5merge17h4c6f4140397e4768E: %scratch.0"}
!2037 = !{!2033, !2036}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2040 = distinct !{!2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2045 = distinct !{!2045, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"cmpfunc: %a"}
!2050 = distinct !{!2050, !"cmpfunc"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2050, !"cmpfunc: %b"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2055 = distinct !{!2055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2055, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2058 = !{!2054, !2049, !2044, !2039, !2036}
!2059 = !{!2057, !2052, !2047, !2042, !2060, !2033}
!2060 = distinct !{!2060, !2061, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd96f6adff692fcccE: %self"}
!2061 = distinct !{!2061, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd96f6adff692fcccE"}
!2062 = !{!2057, !2052, !2047, !2042, !2033}
!2063 = !{!2054, !2049, !2044, !2039, !2060, !2036}
!2064 = !{!2060, !2036}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2067 = distinct !{!2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2072 = distinct !{!2072, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"cmpfunc: %a"}
!2077 = distinct !{!2077, !"cmpfunc"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"cmpfunc: %b"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2082 = distinct !{!2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2085 = !{!2081, !2076, !2071, !2066, !2033}
!2086 = !{!2084, !2079, !2074, !2069, !2087, !2036}
!2087 = distinct !{!2087, !2088, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e124a4e926a2926E: %self"}
!2088 = distinct !{!2088, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e124a4e926a2926E"}
!2089 = !{!2084, !2079, !2074, !2069, !2036}
!2090 = !{!2081, !2076, !2071, !2066, !2087, !2033}
!2091 = !{!2087, !2036}
!2092 = !{!2093, !2095}
!2093 = distinct !{!2093, !2094, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E: %self"}
!2094 = distinct !{!2094, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E"}
!2095 = distinct !{!2095, !2096, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E: %_1"}
!2096 = distinct !{!2096, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E"}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2099, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2099 = distinct !{!2099, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2100 = !{!2101}
!2101 = distinct !{!2101, !2099, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2104 = distinct !{!2104, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2105 = !{!2106}
!2106 = distinct !{!2106, !2104, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2109 = distinct !{!2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2112 = !{!2108, !2103, !2098}
!2113 = !{!2111, !2106, !2101}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2116 = distinct !{!2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2117 = !{!2118}
!2118 = distinct !{!2118, !2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2121, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2121 = distinct !{!2121, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2122 = !{!2123}
!2123 = distinct !{!2123, !2121, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"cmpfunc: %a"}
!2126 = distinct !{!2126, !"cmpfunc"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2126, !"cmpfunc: %b"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2131 = distinct !{!2131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2131, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2134 = !{!2130, !2125, !2120, !2115}
!2135 = !{!2133, !2128, !2123, !2118}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2138 = distinct !{!2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2143, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2143 = distinct !{!2143, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2143, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2146 = !{!2147}
!2147 = distinct !{!2147, !2148, !"cmpfunc: %a"}
!2148 = distinct !{!2148, !"cmpfunc"}
!2149 = !{!2150}
!2150 = distinct !{!2150, !2148, !"cmpfunc: %b"}
!2151 = !{!2152}
!2152 = distinct !{!2152, !2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2153 = distinct !{!2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2154 = !{!2155}
!2155 = distinct !{!2155, !2153, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2156 = !{!2152, !2147, !2142, !2137}
!2157 = !{!2155, !2150, !2145, !2140}
!2158 = !{!2159}
!2159 = distinct !{!2159, !2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2160 = distinct !{!2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2161 = !{!2162}
!2162 = distinct !{!2162, !2160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2165 = distinct !{!2165, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2166 = !{!2167}
!2167 = distinct !{!2167, !2165, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2170, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2170 = distinct !{!2170, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2171 = !{!2172}
!2172 = distinct !{!2172, !2170, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2173 = !{!2169, !2164, !2159}
!2174 = !{!2172, !2167, !2162}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2177 = distinct !{!2177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2182 = distinct !{!2182, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2182, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2187 = distinct !{!2187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2187, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2190 = !{!2186, !2181, !2176}
!2191 = !{!2189, !2184, !2179, !2192}
!2192 = distinct !{!2192, !2193, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7aae102232082dcbE: %self"}
!2193 = distinct !{!2193, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7aae102232082dcbE"}
!2194 = !{!2189, !2184, !2179}
!2195 = !{!2186, !2181, !2176, !2192}
!2196 = !{!2192}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2199 = distinct !{!2199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2204, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2204 = distinct !{!2204, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2205 = !{!2206}
!2206 = distinct !{!2206, !2204, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2209 = distinct !{!2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2212 = !{!2208, !2203, !2198}
!2213 = !{!2211, !2206, !2201, !2214}
!2214 = distinct !{!2214, !2215, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he2479a54bf23d358E: %self"}
!2215 = distinct !{!2215, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he2479a54bf23d358E"}
!2216 = !{!2211, !2206, !2201}
!2217 = !{!2208, !2203, !2198, !2214}
!2218 = !{!2214}
!2219 = !{!2220, !2222}
!2220 = distinct !{!2220, !2221, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E: %self"}
!2221 = distinct !{!2221, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E"}
!2222 = distinct !{!2222, !2223, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E: %_1"}
!2223 = distinct !{!2223, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2226 = distinct !{!2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2231 = distinct !{!2231, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"cmpfunc: %a"}
!2236 = distinct !{!2236, !"cmpfunc"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"cmpfunc: %b"}
!2239 = !{!2240}
!2240 = distinct !{!2240, !2241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2241 = distinct !{!2241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2244 = !{!2240, !2235, !2230, !2225}
!2245 = !{!2243, !2238, !2233, !2228, !2246}
!2246 = distinct !{!2246, !2247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd96f6adff692fcccE: %self"}
!2247 = distinct !{!2247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd96f6adff692fcccE"}
!2248 = !{!2243, !2238, !2233, !2228}
!2249 = !{!2240, !2235, !2230, !2225, !2246}
!2250 = !{!2246}
!2251 = !{!2252}
!2252 = distinct !{!2252, !2253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2253 = distinct !{!2253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2254 = !{!2255}
!2255 = distinct !{!2255, !2253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2258 = distinct !{!2258, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2259 = !{!2260}
!2260 = distinct !{!2260, !2258, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2263, !"cmpfunc: %a"}
!2263 = distinct !{!2263, !"cmpfunc"}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2263, !"cmpfunc: %b"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2268 = distinct !{!2268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2271 = !{!2267, !2262, !2257, !2252}
!2272 = !{!2270, !2265, !2260, !2255, !2273}
!2273 = distinct !{!2273, !2274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e124a4e926a2926E: %self"}
!2274 = distinct !{!2274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9e124a4e926a2926E"}
!2275 = !{!2270, !2265, !2260, !2255}
!2276 = !{!2267, !2262, !2257, !2252, !2273}
!2277 = !{!2273}
!2278 = !{!2279, !2281}
!2279 = distinct !{!2279, !2280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E: %self"}
!2280 = distinct !{!2280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haff61b3da9171337E"}
!2281 = distinct !{!2281, !2282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E: %_1"}
!2282 = distinct !{!2282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h0811b38f97122302E"}
!2283 = !{!"branch_weights", i32 4000000, i32 4001}
!2284 = !{!2285}
!2285 = distinct !{!2285, !2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %a"}
!2286 = distinct !{!2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2286, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %b"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2291 = distinct !{!2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2296 = distinct !{!2296, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2296, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2301 = distinct !{!2301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2301, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2304 = !{!2300, !2295, !2290, !2288}
!2305 = !{!2303, !2298, !2293, !2285}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2308, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2308 = distinct !{!2308, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %a"}
!2311 = distinct !{!2311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE"}
!2312 = !{!2313}
!2313 = distinct !{!2313, !2311, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %b"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2316 = distinct !{!2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2317 = !{!2318}
!2318 = distinct !{!2318, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2321, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2321 = distinct !{!2321, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2322 = !{!2323}
!2323 = distinct !{!2323, !2321, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2324 = !{!2325}
!2325 = distinct !{!2325, !2326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2326 = distinct !{!2326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2327 = !{!2328}
!2328 = distinct !{!2328, !2326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2329 = !{!2325, !2320, !2315, !2313}
!2330 = !{!2328, !2323, !2318, !2310}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2333 = distinct !{!2333, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2334 = !{!2335}
!2335 = distinct !{!2335, !2336, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %a"}
!2336 = distinct !{!2336, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE"}
!2337 = !{!2338}
!2338 = distinct !{!2338, !2336, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %b"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2341 = distinct !{!2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2346 = distinct !{!2346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2347 = !{!2348}
!2348 = distinct !{!2348, !2346, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2349 = !{!2350}
!2350 = distinct !{!2350, !2351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2351 = distinct !{!2351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2352 = !{!2353}
!2353 = distinct !{!2353, !2351, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2354 = !{!2350, !2345, !2340, !2338}
!2355 = !{!2353, !2348, !2343, !2335}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2358, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2358 = distinct !{!2358, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2359 = !{!2360}
!2360 = distinct !{!2360, !2361, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %a"}
!2361 = distinct !{!2361, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE"}
!2362 = !{!2363}
!2363 = distinct !{!2363, !2361, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %b"}
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2366 = distinct !{!2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2367 = !{!2368}
!2368 = distinct !{!2368, !2366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2371 = distinct !{!2371, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2372 = !{!2373}
!2373 = distinct !{!2373, !2371, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2374 = !{!2375}
!2375 = distinct !{!2375, !2376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2376 = distinct !{!2376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2376, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2379 = !{!2375, !2370, !2365, !2363}
!2380 = !{!2378, !2373, !2368, !2360}
!2381 = !{!2382}
!2382 = distinct !{!2382, !2383, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2383 = distinct !{!2383, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2384 = !{!2385}
!2385 = distinct !{!2385, !2386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %a"}
!2386 = distinct !{!2386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE"}
!2387 = !{!2388}
!2388 = distinct !{!2388, !2386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5651e5beb2a360ebE: %b"}
!2389 = !{!2390}
!2390 = distinct !{!2390, !2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2391 = distinct !{!2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2396 = distinct !{!2396, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2397 = !{!2398}
!2398 = distinct !{!2398, !2396, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2399 = !{!2400}
!2400 = distinct !{!2400, !2401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2401 = distinct !{!2401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2402 = !{!2403}
!2403 = distinct !{!2403, !2401, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2404 = !{!2400, !2395, !2390, !2388}
!2405 = !{!2403, !2398, !2393, !2385}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2408 = distinct !{!2408, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2411 = distinct !{!2411, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2412 = distinct !{!2412, !2413}
!2413 = !{!"llvm.loop.unroll.disable"}
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2416 = distinct !{!2416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2417 = !{!2418}
!2418 = distinct !{!2418, !2416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2419 = !{!2420}
!2420 = distinct !{!2420, !2421, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2421 = distinct !{!2421, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2422 = !{!2423}
!2423 = distinct !{!2423, !2421, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2426, !"cmpfunc: %a"}
!2426 = distinct !{!2426, !"cmpfunc"}
!2427 = !{!2428}
!2428 = distinct !{!2428, !2426, !"cmpfunc: %b"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2431 = distinct !{!2431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2432 = !{!2433}
!2433 = distinct !{!2433, !2431, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2434 = !{!2430, !2425, !2420, !2415}
!2435 = !{!2433, !2428, !2423, !2418}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2438 = distinct !{!2438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2439 = !{!2440}
!2440 = distinct !{!2440, !2441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2441 = distinct !{!2441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2442 = !{!2443}
!2443 = distinct !{!2443, !2441, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2444 = !{!2445}
!2445 = distinct !{!2445, !2446, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2446 = distinct !{!2446, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2447 = !{!2448}
!2448 = distinct !{!2448, !2446, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2449 = !{!2450}
!2450 = distinct !{!2450, !2451, !"cmpfunc: %a"}
!2451 = distinct !{!2451, !"cmpfunc"}
!2452 = !{!2453}
!2453 = distinct !{!2453, !2451, !"cmpfunc: %b"}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2456 = distinct !{!2456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2459 = !{!2455, !2450, !2445, !2440}
!2460 = !{!2458, !2453, !2448, !2443}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2463, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2463 = distinct !{!2463, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2464 = !{!2465}
!2465 = distinct !{!2465, !2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2466 = distinct !{!2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2467 = !{!2468}
!2468 = distinct !{!2468, !2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2469 = !{!2470}
!2470 = distinct !{!2470, !2471, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2471 = distinct !{!2471, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2472 = !{!2473}
!2473 = distinct !{!2473, !2471, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2474 = !{!2475}
!2475 = distinct !{!2475, !2476, !"cmpfunc: %a"}
!2476 = distinct !{!2476, !"cmpfunc"}
!2477 = !{!2478}
!2478 = distinct !{!2478, !2476, !"cmpfunc: %b"}
!2479 = !{!2480}
!2480 = distinct !{!2480, !2481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2481 = distinct !{!2481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2482 = !{!2483}
!2483 = distinct !{!2483, !2481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2484 = !{!2480, !2475, !2470, !2465}
!2485 = !{!2483, !2478, !2473, !2468}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2488 = distinct !{!2488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2491 = distinct !{!2491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2494 = !{!2495}
!2495 = distinct !{!2495, !2496, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2496 = distinct !{!2496, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2496, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2499 = !{!2500}
!2500 = distinct !{!2500, !2501, !"cmpfunc: %a"}
!2501 = distinct !{!2501, !"cmpfunc"}
!2502 = !{!2503}
!2503 = distinct !{!2503, !2501, !"cmpfunc: %b"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2506 = distinct !{!2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2507 = !{!2508}
!2508 = distinct !{!2508, !2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2509 = !{!2505, !2500, !2495, !2490}
!2510 = !{!2508, !2503, !2498, !2493}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2513, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2513 = distinct !{!2513, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2516 = distinct !{!2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2517 = !{!2518}
!2518 = distinct !{!2518, !2516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2519 = !{!2520}
!2520 = distinct !{!2520, !2521, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2521 = distinct !{!2521, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2522 = !{!2523}
!2523 = distinct !{!2523, !2521, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
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
!2537 = distinct !{!2537, !2538, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2538 = distinct !{!2538, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2541 = distinct !{!2541, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2542 = distinct !{!2542, !2413}
!2543 = !{!2544}
!2544 = distinct !{!2544, !2545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2545 = distinct !{!2545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2546 = !{!2547}
!2547 = distinct !{!2547, !2545, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2548 = !{!2549}
!2549 = distinct !{!2549, !2550, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2550 = distinct !{!2550, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2551 = !{!2552}
!2552 = distinct !{!2552, !2550, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2555, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2555 = distinct !{!2555, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2556 = !{!2557}
!2557 = distinct !{!2557, !2555, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2558 = !{!2554, !2549, !2544}
!2559 = !{!2557, !2552, !2547}
!2560 = !{!2561}
!2561 = distinct !{!2561, !2562, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2562 = distinct !{!2562, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2565 = distinct !{!2565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2566 = !{!2567}
!2567 = distinct !{!2567, !2565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2570 = distinct !{!2570, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2570, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2575 = distinct !{!2575, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2576 = !{!2577}
!2577 = distinct !{!2577, !2575, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2578 = !{!2574, !2569, !2564}
!2579 = !{!2577, !2572, !2567}
!2580 = !{!2581}
!2581 = distinct !{!2581, !2582, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2582 = distinct !{!2582, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2583 = !{!2584}
!2584 = distinct !{!2584, !2585, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2585 = distinct !{!2585, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2586 = !{!2587}
!2587 = distinct !{!2587, !2585, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2588 = !{!2589}
!2589 = distinct !{!2589, !2590, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2590 = distinct !{!2590, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2591 = !{!2592}
!2592 = distinct !{!2592, !2590, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2595 = distinct !{!2595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2596 = !{!2597}
!2597 = distinct !{!2597, !2595, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2598 = !{!2594, !2589, !2584}
!2599 = !{!2597, !2592, !2587}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2602 = distinct !{!2602, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2605 = distinct !{!2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2606 = !{!2607}
!2607 = distinct !{!2607, !2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2610 = distinct !{!2610, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2611 = !{!2612}
!2612 = distinct !{!2612, !2610, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2615 = distinct !{!2615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2616 = !{!2617}
!2617 = distinct !{!2617, !2615, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2618 = !{!2614, !2609, !2604}
!2619 = !{!2617, !2612, !2607}
!2620 = !{!2621}
!2621 = distinct !{!2621, !2622, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2622 = distinct !{!2622, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2623 = !{!2624}
!2624 = distinct !{!2624, !2625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2625 = distinct !{!2625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2626 = !{!2627}
!2627 = distinct !{!2627, !2625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2630 = distinct !{!2630, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2631 = !{!2632}
!2632 = distinct !{!2632, !2630, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2633 = !{!2634}
!2634 = distinct !{!2634, !2635, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2635 = distinct !{!2635, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2636 = !{!2637}
!2637 = distinct !{!2637, !2635, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2638 = !{!2634, !2629, !2624}
!2639 = !{!2637, !2632, !2627}
!2640 = !{!2641}
!2641 = distinct !{!2641, !2642, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2642 = distinct !{!2642, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2643 = !{!2644}
!2644 = distinct !{!2644, !2645, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2645 = distinct !{!2645, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2646 = distinct !{!2646, !2413}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2649, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %a"}
!2649 = distinct !{!2649, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E"}
!2650 = !{!2651}
!2651 = distinct !{!2651, !2649, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %b"}
!2652 = !{!2653}
!2653 = distinct !{!2653, !2654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2654 = distinct !{!2654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2654, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2657 = !{!2658}
!2658 = distinct !{!2658, !2659, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2659 = distinct !{!2659, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2659, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2662 = !{!2663}
!2663 = distinct !{!2663, !2664, !"cmpfunc: %a"}
!2664 = distinct !{!2664, !"cmpfunc"}
!2665 = !{!2666}
!2666 = distinct !{!2666, !2664, !"cmpfunc: %b"}
!2667 = !{!2668}
!2668 = distinct !{!2668, !2669, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2669 = distinct !{!2669, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2670 = !{!2671}
!2671 = distinct !{!2671, !2669, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2672 = !{!2668, !2663, !2658, !2653, !2651}
!2673 = !{!2671, !2666, !2661, !2656, !2648}
!2674 = !{!2675}
!2675 = distinct !{!2675, !2676, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2676 = distinct !{!2676, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2677 = !{!2678}
!2678 = distinct !{!2678, !2679, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %a"}
!2679 = distinct !{!2679, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E"}
!2680 = !{!2681}
!2681 = distinct !{!2681, !2679, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %b"}
!2682 = !{!2683}
!2683 = distinct !{!2683, !2684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2684 = distinct !{!2684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2685 = !{!2686}
!2686 = distinct !{!2686, !2684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2687 = !{!2688}
!2688 = distinct !{!2688, !2689, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2689 = distinct !{!2689, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2690 = !{!2691}
!2691 = distinct !{!2691, !2689, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2692 = !{!2693}
!2693 = distinct !{!2693, !2694, !"cmpfunc: %a"}
!2694 = distinct !{!2694, !"cmpfunc"}
!2695 = !{!2696}
!2696 = distinct !{!2696, !2694, !"cmpfunc: %b"}
!2697 = !{!2698}
!2698 = distinct !{!2698, !2699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2699 = distinct !{!2699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2700 = !{!2701}
!2701 = distinct !{!2701, !2699, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2702 = !{!2698, !2693, !2688, !2683, !2681}
!2703 = !{!2701, !2696, !2691, !2686, !2678}
!2704 = !{!2705}
!2705 = distinct !{!2705, !2706, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2706 = distinct !{!2706, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2707 = !{!2708}
!2708 = distinct !{!2708, !2709, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %a"}
!2709 = distinct !{!2709, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E"}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2709, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %b"}
!2712 = !{!2713}
!2713 = distinct !{!2713, !2714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2714 = distinct !{!2714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2715 = !{!2716}
!2716 = distinct !{!2716, !2714, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2717 = !{!2718}
!2718 = distinct !{!2718, !2719, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2719 = distinct !{!2719, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2719, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2722 = !{!2723}
!2723 = distinct !{!2723, !2724, !"cmpfunc: %a"}
!2724 = distinct !{!2724, !"cmpfunc"}
!2725 = !{!2726}
!2726 = distinct !{!2726, !2724, !"cmpfunc: %b"}
!2727 = !{!2728}
!2728 = distinct !{!2728, !2729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2729 = distinct !{!2729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2730 = !{!2731}
!2731 = distinct !{!2731, !2729, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2732 = !{!2728, !2723, !2718, !2713, !2711}
!2733 = !{!2731, !2726, !2721, !2716, !2708}
!2734 = !{!2735}
!2735 = distinct !{!2735, !2736, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2736 = distinct !{!2736, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %a"}
!2739 = distinct !{!2739, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E"}
!2740 = !{!2741}
!2741 = distinct !{!2741, !2739, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %b"}
!2742 = !{!2743}
!2743 = distinct !{!2743, !2744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2744 = distinct !{!2744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2749 = distinct !{!2749, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2750 = !{!2751}
!2751 = distinct !{!2751, !2749, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"cmpfunc: %a"}
!2754 = distinct !{!2754, !"cmpfunc"}
!2755 = !{!2756}
!2756 = distinct !{!2756, !2754, !"cmpfunc: %b"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2759 = distinct !{!2759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2760 = !{!2761}
!2761 = distinct !{!2761, !2759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2762 = !{!2758, !2753, !2748, !2743, !2741}
!2763 = !{!2761, !2756, !2751, !2746, !2738}
!2764 = !{!2765}
!2765 = distinct !{!2765, !2766, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2766 = distinct !{!2766, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2767 = !{!2768}
!2768 = distinct !{!2768, !2769, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %a"}
!2769 = distinct !{!2769, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E"}
!2770 = !{!2771}
!2771 = distinct !{!2771, !2769, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h475c8284b5991115E: %b"}
!2772 = !{!2773}
!2773 = distinct !{!2773, !2774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2774 = distinct !{!2774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2775 = !{!2776}
!2776 = distinct !{!2776, !2774, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2777 = !{!2778}
!2778 = distinct !{!2778, !2779, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2779 = distinct !{!2779, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2780 = !{!2781}
!2781 = distinct !{!2781, !2779, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2782 = !{!2783}
!2783 = distinct !{!2783, !2784, !"cmpfunc: %a"}
!2784 = distinct !{!2784, !"cmpfunc"}
!2785 = !{!2786}
!2786 = distinct !{!2786, !2784, !"cmpfunc: %b"}
!2787 = !{!2788}
!2788 = distinct !{!2788, !2789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2789 = distinct !{!2789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2790 = !{!2791}
!2791 = distinct !{!2791, !2789, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2792 = !{!2788, !2783, !2778, !2773, !2771}
!2793 = !{!2791, !2786, !2781, !2776, !2768}
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2796 = distinct !{!2796, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2797 = !{!2798}
!2798 = distinct !{!2798, !2799, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E: %self"}
!2799 = distinct !{!2799, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9e3f562613dd3cc0E"}
!2800 = distinct !{!2800, !2413}
!2801 = !{!2802}
!2802 = distinct !{!2802, !2803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2803 = distinct !{!2803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2804 = !{!2805}
!2805 = distinct !{!2805, !2803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2806 = !{!2807}
!2807 = distinct !{!2807, !2808, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2808 = distinct !{!2808, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2809 = !{!2810}
!2810 = distinct !{!2810, !2811, !"_ZN4core5slice4sort6shared5pivot7median317h3d82277bff3fc627E: %c"}
!2811 = distinct !{!2811, !"_ZN4core5slice4sort6shared5pivot7median317h3d82277bff3fc627E"}
!2812 = !{!2813}
!2813 = distinct !{!2813, !2808, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2814 = !{!2815}
!2815 = distinct !{!2815, !2816, !"cmpfunc: %a"}
!2816 = distinct !{!2816, !"cmpfunc"}
!2817 = !{!2818}
!2818 = distinct !{!2818, !2816, !"cmpfunc: %b"}
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2821 = distinct !{!2821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2822 = !{!2823}
!2823 = distinct !{!2823, !2821, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2824 = !{!2820, !2815, !2807, !2802, !2825}
!2825 = distinct !{!2825, !2826, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E: %v.0"}
!2826 = distinct !{!2826, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E"}
!2827 = !{!2823, !2818, !2813, !2805, !2810, !2828}
!2828 = distinct !{!2828, !2826, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb02feb3a48e7cf27E: %is_less"}
!2829 = !{!2823, !2818, !2813, !2805, !2825}
!2830 = !{!2820, !2815, !2807, !2802, !2810, !2828}
!2831 = !{!2832, !2834, !2836, !2838, !2825}
!2832 = distinct !{!2832, !2833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2833 = distinct !{!2833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2834 = distinct !{!2834, !2835, !"cmpfunc: %b"}
!2835 = distinct !{!2835, !"cmpfunc"}
!2836 = distinct !{!2836, !2837, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2837 = distinct !{!2837, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2838 = distinct !{!2838, !2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2839 = distinct !{!2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2840 = !{!2841, !2842, !2843, !2844, !2828}
!2841 = distinct !{!2841, !2833, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2842 = distinct !{!2842, !2835, !"cmpfunc: %a"}
!2843 = distinct !{!2843, !2837, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2844 = distinct !{!2844, !2839, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2845 = !{!2846, !2848, !2850, !2852}
!2846 = distinct !{!2846, !2847, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2847 = distinct !{!2847, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2848 = distinct !{!2848, !2849, !"cmpfunc: %a"}
!2849 = distinct !{!2849, !"cmpfunc"}
!2850 = distinct !{!2850, !2851, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 0"}
!2851 = distinct !{!2851, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E"}
!2852 = distinct !{!2852, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %a"}
!2853 = distinct !{!2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E"}
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = distinct !{!2855, !2847, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2856 = distinct !{!2856, !2849, !"cmpfunc: %b"}
!2857 = distinct !{!2857, !2851, !"_ZN4core3ops8function5FnMut8call_mut17h146e007af9c3f537E: argument 1"}
!2858 = distinct !{!2858, !2853, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7bdbab8e41661cb1E: %b"}
!2859 = !{!2860, !2862}
!2860 = distinct !{!2860, !2861, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE: %pair"}
!2861 = distinct !{!2861, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE"}
!2862 = distinct !{!2862, !2861, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE: %self.0"}
!2863 = !{!2864}
!2864 = distinct !{!2864, !2865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2865 = distinct !{!2865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2866 = !{!2867}
!2867 = distinct !{!2867, !2865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2868 = !{!2869}
!2869 = distinct !{!2869, !2870, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2870 = distinct !{!2870, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2871 = !{!2872}
!2872 = distinct !{!2872, !2873, !"_ZN4core5slice4sort6shared5pivot7median317h838ec985c519f89cE: %c"}
!2873 = distinct !{!2873, !"_ZN4core5slice4sort6shared5pivot7median317h838ec985c519f89cE"}
!2874 = !{!2875}
!2875 = distinct !{!2875, !2870, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2876 = !{!2877}
!2877 = distinct !{!2877, !2878, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2878 = distinct !{!2878, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2879 = !{!2880}
!2880 = distinct !{!2880, !2878, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2881 = !{!2877, !2869, !2864, !2882}
!2882 = distinct !{!2882, !2883, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE: %v.0"}
!2883 = distinct !{!2883, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE"}
!2884 = !{!2880, !2875, !2867, !2872, !2885}
!2885 = distinct !{!2885, !2883, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17habe2e9d3882124fdE: %is_less"}
!2886 = !{!2880, !2875, !2867, !2882}
!2887 = !{!2877, !2869, !2864, !2872, !2885}
!2888 = !{!2889, !2891, !2893, !2882}
!2889 = distinct !{!2889, !2890, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2890 = distinct !{!2890, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2891 = distinct !{!2891, !2892, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2892 = distinct !{!2892, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2893 = distinct !{!2893, !2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2894 = distinct !{!2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2895 = !{!2896, !2897, !2898, !2885}
!2896 = distinct !{!2896, !2890, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2897 = distinct !{!2897, !2892, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2898 = distinct !{!2898, !2894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2899 = !{!2900, !2902, !2904}
!2900 = distinct !{!2900, !2901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2901 = distinct !{!2901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2902 = distinct !{!2902, !2903, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %a"}
!2903 = distinct !{!2903, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E"}
!2904 = distinct !{!2904, !2905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %a"}
!2905 = distinct !{!2905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E"}
!2906 = !{!2907, !2908, !2909}
!2907 = distinct !{!2907, !2901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2908 = distinct !{!2908, !2903, !"_ZN23MAXIMIZE_SUM_ARRII_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hc850d2c58992ad02E: %b"}
!2909 = distinct !{!2909, !2905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3cd304c155ca0d10E: %b"}
!2910 = !{!2911, !2913}
!2911 = distinct !{!2911, !2912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE: %pair"}
!2912 = distinct !{!2912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE"}
!2913 = distinct !{!2913, !2912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hcad43950017cf5fdE: %self.0"}
!2914 = !{i64 0, i64 -9223372036854775808}
!2915 = !{!2916}
!2916 = distinct !{!2916, !2917, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2917 = distinct !{!2917, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2918 = !{!2919}
!2919 = distinct !{!2919, !2917, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2920 = !{!2921}
!2921 = distinct !{!2921, !2922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE: %self.0"}
!2922 = distinct !{!2922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE"}
!2923 = !{!2924, !2926, !2921}
!2924 = distinct !{!2924, !2925, !"_ZN5alloc5slice11stable_sort17haa4eb5d0bf9dfbcfE: %v.0"}
!2925 = distinct !{!2925, !"_ZN5alloc5slice11stable_sort17haa4eb5d0bf9dfbcfE"}
!2926 = distinct !{!2926, !2925, !"_ZN5alloc5slice11stable_sort17haa4eb5d0bf9dfbcfE: argument 1"}
!2927 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E: %self.0"}
!2930 = distinct !{!2930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7dfc5dc669059222E"}
!2931 = !{!2932, !2934, !2929}
!2932 = distinct !{!2932, !2933, !"_ZN5alloc5slice11stable_sort17hfcc2dd420add6216E: %v.0"}
!2933 = distinct !{!2933, !"_ZN5alloc5slice11stable_sort17hfcc2dd420add6216E"}
!2934 = distinct !{!2934, !2933, !"_ZN5alloc5slice11stable_sort17hfcc2dd420add6216E: argument 1"}
