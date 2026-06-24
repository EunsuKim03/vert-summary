; ModuleID = 'LARGEST_SUBSEQUENCE_GCD_GREATER_1_emit.1c38fbed98a147ed-cgu.0'
source_filename = "LARGEST_SUBSEQUENCE_GCD_GREATER_1_emit.1c38fbed98a147ed-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_a6e59130e6b5e3200a7e573a31349697 = private unnamed_addr constant [121 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/LARGEST_SUBSEQUENCE_GCD_GREATER_1/LARGEST_SUBSEQUENCE_GCD_GREATER_1_emit.rs\00", align 1
@alloc_734579732689645a3c43814221cdc57c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a6e59130e6b5e3200a7e573a31349697, [16 x i8] c"x\00\00\00\00\00\00\00\1B\00\00\00\10\00\00\00" }>, align 8

; core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read) uwtable
define noundef range(i8 -1, 2) i8 @"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17hfd5b8e57bf1b0167E"(ptr noalias noundef nonnull readnone align 1 captures(none) %self, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %_3.i.i = load ptr, ptr %0, align 8, !alias.scope !13, !noalias !14, !nonnull !15, !align !16, !noundef !15
  %_4.i.i = load ptr, ptr %1, align 8, !alias.scope !14, !noalias !13, !nonnull !15, !align !16, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %_3.i.i.i = load i32, ptr %_3.i.i, align 4, !alias.scope !17, !noalias !22, !noundef !15
  %_4.i.i.i = load i32, ptr %_4.i.i, align 4, !alias.scope !20, !noalias !23, !noundef !15
  %_0.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i.i.i, i32 %_4.i.i.i)
  ret i8 %_0.i.i.i
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1c32e4ffb16e1d44E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !24, !noalias !27
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !27, !noalias !24
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !24, !noalias !27
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !27, !noalias !24
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !24, !noalias !27
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !27, !noalias !24
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !24, !noalias !27
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !27, !noalias !24
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !29, !noalias !31
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !31, !noalias !29
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !29, !noalias !31
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !31, !noalias !29
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0527fc90cdbc4260E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0527fc90cdbc4260E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0527fc90cdbc4260E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0527fc90cdbc4260E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38), !noalias !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44), !noalias !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46), !noalias !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54), !noalias !41
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !56, !noalias !57, !noundef !15
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !58, !noalias !59, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !60, !noalias !69, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !94, !noalias !95, !noundef !15
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !95, !noalias !94, !noundef !15
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !96, !noalias !105, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !110
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h447b558d9202c5b7E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !135, !noalias !136, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !136, !noalias !135, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !157, !noalias !158, !noundef !15
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !158, !noalias !157, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !179, !noalias !180, !noundef !15
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !180, !noalias !179, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !201, !noalias !202, !noundef !15
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !202, !noalias !201, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !223, !noalias !224, !noundef !15
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !224, !noalias !223, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h9085f079d2d94f9dE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !245, !noalias !246, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !246, !noalias !245, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !267, !noalias !268, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !268, !noalias !267, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !289, !noalias !290, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !290, !noalias !289, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !311, !noalias !312, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !312, !noalias !311, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !333, !noalias !334, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !334, !noalias !333, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !355, !noalias !356, !noundef !15
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !356, !noalias !355, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !377, !noalias !378, !noundef !15
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !378, !noalias !377, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !399, !noalias !400, !noundef !15
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !400, !noalias !399, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !421, !noalias !422, !noundef !15
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !422, !noalias !421, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !443, !noalias !444, !noundef !15
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !444, !noalias !443, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469), !noalias !456
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !471, !noalias !472, !noundef !15
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !473, !noalias !474, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !475
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498), !noalias !485
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !500, !noalias !501, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !502, !noalias !503, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !504
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !456
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !522, !noalias !523, !noundef !15
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !524, !noalias !525, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !475
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !485
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !542, !noalias !543, !noundef !15
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !544, !noalias !545, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !504
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !456
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !562, !noalias !563, !noundef !15
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !564, !noalias !565, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !475
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !485
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !582, !noalias !583, !noundef !15
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !584, !noalias !585, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !504
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598), !noalias !456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !456
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !602, !noalias !603, !noundef !15
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !604, !noalias !605, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !475
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !485
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !622, !noalias !623, !noundef !15
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !624, !noalias !625, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !504
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E.exit, !prof !626

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25, !noalias !445
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !635
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !650, !noalias !651, !noundef !15
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !652, !noalias !653, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !654
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667), !noalias !664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674), !noalias !664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677), !noalias !664
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !679, !noalias !680, !noundef !15
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !681, !noalias !682, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !683
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !626

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #25
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hfefd94990394b6c4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !705, !noalias !706, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !706, !noalias !705, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !707, !noalias !716, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !721
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha581281ecab78188E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h9085f079d2d94f9dE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h9085f079d2d94f9dE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !746, !noalias !747, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !747, !noalias !746, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !768, !noalias !769, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !769, !noalias !768, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !790, !noalias !791, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !791, !noalias !790, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !812, !noalias !813, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !813, !noalias !812, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !834, !noalias !835, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !835, !noalias !834, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !856, !noalias !857, !noundef !15
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !857, !noalias !856, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !878, !noalias !879, !noundef !15
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !879, !noalias !878, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !900, !noalias !901, !noundef !15
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !901, !noalias !900, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !922, !noalias !923, !noundef !15
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !923, !noalias !922, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !944, !noalias !945, !noundef !15
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !945, !noalias !944, !noundef !15
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !946
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !946, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !noalias !960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973), !noalias !960
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !975, !noalias !976, !noundef !15
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !977, !noalias !978, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !979
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986), !noalias !989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992), !noalias !989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994), !noalias !989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997), !noalias !989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999), !noalias !989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002), !noalias !989
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1004, !noalias !1005, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1006, !noalias !1007, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1008
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !949
  store i32 %37, ptr %_16.i.i, align 4, !noalias !949
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !626

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1010
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1015, !noalias !1024, !noundef !15
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1029, !noalias !1038, !noundef !15
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1043
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h89562a907e3eb54aE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17ha1bdb212df0c6fa6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1048
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1051, !noalias !1048, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1052, !noalias !1048, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit", !prof !1053

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1048
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1048, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1048
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h7af94aaaa5a3ad9bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hbae4af3af9f59ae8E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #7 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h770506aefa9d6abdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1074, !noalias !1075, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1075, !noalias !1074, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1096, !noalias !1097, !noundef !15
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1097, !noalias !1096, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1118, !noalias !1119, !noundef !15
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1119, !noalias !1118, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8f23cb63643cf0d8E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1120, !noalias !1125, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1127, !noalias !1128
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1120, !noalias !1125
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1127, !noalias !1128
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1120, !noalias !1125, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1127, !noalias !1128
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1120, !noalias !1125
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1127, !noalias !1128
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1120, !noalias !1125, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1127, !noalias !1128
  store i32 %14, ptr %gep27, align 4, !alias.scope !1120, !noalias !1125
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1127, !noalias !1128
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h0c3c38ab54dc5ff3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h7af94aaaa5a3ad9bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h770506aefa9d6abdE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #28
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1134
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1155, !noalias !1156, !noundef !15
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1159, !noalias !1160, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1129, !noalias !1161
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1182, !noalias !1183, !noundef !15
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1186, !noalias !1187, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1129, !noalias !1188
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1134, !noalias !1189
  br label %_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit

_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #28
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hfe81f2ed9eccf62cE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85d56ab3e6de77e9E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1214, !noalias !1215, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1215, !noalias !1214, !noundef !15
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3b8f349ebb5136a3E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1236, !noalias !1237, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1237, !noalias !1236, !noundef !15
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
define void @_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1258, !noalias !1259, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1262, !noalias !1263, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1264
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1285, !noalias !1286, !noundef !15
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1289, !noalias !1290, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1291
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1292
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1d3ad849e12f3727E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1297

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1323, !noalias !1324, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1324, !noalias !1323, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1325
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1353, !noalias !1354, !noundef !15
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1354, !noalias !1353, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1355
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1383, !noalias !1384, !noundef !15
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1384, !noalias !1383, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1385
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1413, !noalias !1414, !noundef !15
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1414, !noalias !1413, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1415
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1443, !noalias !1444, !noundef !15
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1444, !noalias !1443, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1445
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1448
  store i32 %13, ptr %dst.i68, align 4, !noalias !1448
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1451

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9213e1bd3d3b0f50E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1297

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1473, !noalias !1474, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1474, !noalias !1473, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1475
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1498, !noalias !1499, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1499, !noalias !1498, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1500
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1523, !noalias !1524, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1524, !noalias !1523, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1525
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1548, !noalias !1549, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1549, !noalias !1548, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1550
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1573, !noalias !1574, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1574, !noalias !1573, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1575
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1578
  store i32 %13, ptr %dst.i68, align 4, !noalias !1578
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1581

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #10 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha581281ecab78188E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0527fc90cdbc4260E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.experimental.noalias.scope.decl(metadata !1587), !noalias !1590
  call void @llvm.experimental.noalias.scope.decl(metadata !1593), !noalias !1590
  call void @llvm.experimental.noalias.scope.decl(metadata !1595), !noalias !1590
  call void @llvm.experimental.noalias.scope.decl(metadata !1598), !noalias !1590
  call void @llvm.experimental.noalias.scope.decl(metadata !1600), !noalias !1590
  call void @llvm.experimental.noalias.scope.decl(metadata !1603), !noalias !1590
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1605, !noalias !1608, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1610, !noalias !1611, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1612, !noalias !1621, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h7af94aaaa5a3ad9bE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1626, !noalias !1635, !noundef !15
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9213e1bd3d3b0f50E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit", !prof !1053

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #25, !noalias !1640
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hff6d3adf1927fb13E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h1d3ad849e12f3727E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1053

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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #4 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1051, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1052, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h40055c990da790f3E.exit", !prof !1053

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h40055c990da790f3E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h1e269e1ac4052873E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1644, !noundef !15
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha634a5feb6f7cb88E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #7 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94b4b1037d514f20E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #4 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d559891bc4074acE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3bb86761831c28aE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #7 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1645, !noalias !1648, !noundef !15
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1648, !noalias !1645, !noundef !15
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %_3.i.i.i.i.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !1665, !noalias !1666, !noundef !15
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_4.i.i.i.i.i.i.i.i.i.i = load i32, ptr %spec.select.i.i.i, align 4, !alias.scope !1676, !noalias !1677, !noundef !15
  %maxele = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i.i.i.i.i)
  %_0.i.i.i24 = icmp sgt i32 %n, 0
  %1 = zext i1 %_0.i.i.i24 to i32
  %_0.i.not.i.i36 = icmp slt i32 %maxele, 2
  br i1 %_0.i.not.i.i36, label %bb10, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %start
  %.not = icmp eq i32 %maxele, 2
  %iter.sroa.7.142 = zext i1 %.not to i8
  %_0.i3.i.i37.not = icmp eq i32 %maxele, 2
  %iter.sroa.0.141 = select i1 %_0.i3.i.i37.not, i32 2, i32 3
  br label %bb12.preheader

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb15
  %_0.sroa.3.0.i.i46 = phi i32 [ 2, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb15 ]
  %iter.sroa.7.145 = phi i8 [ %iter.sroa.7.142, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb15 ]
  %iter.sroa.0.144 = phi i32 [ %iter.sroa.0.141, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb15 ]
  %ans.sroa.0.043 = phi i32 [ 0, %bb12.preheader.lr.ph ], [ %x.y.i, %bb15 ]
  br i1 %_0.i.i.i24, label %bb14, label %bb15

bb10:                                             ; preds = %bb15, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %x.y.i, %bb15 ]
  ret i32 %ans.sroa.0.0.lcssa

bb14:                                             ; preds = %bb12.preheader, %bb16
  %spec.select1227 = phi i32 [ %spec.select12, %bb16 ], [ %1, %bb12.preheader ]
  %count.sroa.0.026 = phi i32 [ %spec.select, %bb16 ], [ 0, %bb12.preheader ]
  %iter1.sroa.0.025 = phi i32 [ %spec.select1227, %bb16 ], [ 0, %bb12.preheader ]
  %_27 = zext nneg i32 %iter1.sroa.0.025 to i64
  %_28 = icmp samesign ult i32 %iter1.sroa.0.025, 2
  br i1 %_28, label %bb16, label %panic

bb15:                                             ; preds = %bb16, %bb12.preheader
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb12.preheader ], [ %spec.select, %bb16 ]
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %ans.sroa.0.043, i32 %count.sroa.0.0.lcssa)
  %_10.i.i = trunc nuw i8 %iter.sroa.7.145 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.144, %maxele
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.144, %maxele
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select14 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.144, %spec.select14
  %2 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %2, i8 %iter.sroa.7.145, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.144
  br i1 %or.cond, label %bb10, label %bb12.preheader

bb16:                                             ; preds = %bb14
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_27
  %_26 = load i32, ptr %3, align 4, !noundef !15
  %_25 = srem i32 %_26, %_0.sroa.3.0.i.i46
  %_24 = icmp eq i32 %_25, 0
  %4 = zext i1 %_24 to i32
  %spec.select = add i32 %count.sroa.0.026, %4
  %_0.i.i.i = icmp slt i32 %spec.select1227, %n
  %5 = zext i1 %_0.i.i.i to i32
  %spec.select12 = add nuw nsw i32 %spec.select1227, %5
  br i1 %_0.i.i.i, label %bb14, label %bb15

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_734579732689645a3c43814221cdc57c) #25
  unreachable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1680
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1683
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E.exit", label %bb7.i.i, !prof !1687

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1687

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha1bdb212df0c6fa6E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hfefd94990394b6c4E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1680
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #18

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #19

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
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
!4 = distinct !{!4, !5, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E: argument 0"}
!5 = distinct !{!5, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E: argument 1"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE: %self"}
!10 = distinct !{!10, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE: %other"}
!13 = !{!9, !4}
!14 = !{!12, !7}
!15 = !{}
!16 = !{i64 4}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!19 = distinct !{!19, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!22 = !{!21, !9, !12, !4, !7}
!23 = !{!18, !9, !12, !4, !7}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4core3ptr10swap_chunk17ha98914bf4a1724f6E: %x"}
!26 = distinct !{!26, !"_ZN4core3ptr10swap_chunk17ha98914bf4a1724f6E"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"_ZN4core3ptr10swap_chunk17ha98914bf4a1724f6E: %y"}
!29 = !{!30}
!30 = distinct !{!30, !26, !"_ZN4core3ptr10swap_chunk17ha98914bf4a1724f6E: %x:It1"}
!31 = !{!32}
!32 = distinct !{!32, !26, !"_ZN4core3ptr10swap_chunk17ha98914bf4a1724f6E: %y:It1"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!35 = distinct !{!35, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!40 = distinct !{!40, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4core5slice4sort6shared5pivot7median317hdba52b0a75a526bcE: %c"}
!43 = distinct !{!43, !"_ZN4core5slice4sort6shared5pivot7median317hdba52b0a75a526bcE"}
!44 = !{!45}
!45 = distinct !{!45, !40, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"cmpfunc: %a"}
!48 = distinct !{!48, !"cmpfunc"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"cmpfunc: %b"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!53 = distinct !{!53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!56 = !{!52, !47, !39, !34}
!57 = !{!55, !50, !45, !37, !42}
!58 = !{!55, !50, !45, !37}
!59 = !{!52, !47, !39, !34, !42}
!60 = !{!61, !63, !65, !67}
!61 = distinct !{!61, !62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!62 = distinct !{!62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!63 = distinct !{!63, !64, !"cmpfunc: %b"}
!64 = distinct !{!64, !"cmpfunc"}
!65 = distinct !{!65, !66, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!66 = distinct !{!66, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!67 = distinct !{!67, !68, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!68 = distinct !{!68, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!69 = !{!70, !71, !72, !73}
!70 = distinct !{!70, !62, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!71 = distinct !{!71, !64, !"cmpfunc: %a"}
!72 = distinct !{!72, !66, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!73 = distinct !{!73, !68, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!76 = distinct !{!76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!81 = distinct !{!81, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!94 = !{!90, !85, !80, !75}
!95 = !{!93, !88, !83, !78}
!96 = !{!97, !99, !101, !103}
!97 = distinct !{!97, !98, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!98 = distinct !{!98, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!99 = distinct !{!99, !100, !"cmpfunc: %b"}
!100 = distinct !{!100, !"cmpfunc"}
!101 = distinct !{!101, !102, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!102 = distinct !{!102, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!103 = distinct !{!103, !104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!104 = distinct !{!104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!105 = !{!106, !107, !108, !109}
!106 = distinct !{!106, !98, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!107 = distinct !{!107, !100, !"cmpfunc: %a"}
!108 = distinct !{!108, !102, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!109 = distinct !{!109, !104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!110 = !{!111, !113}
!111 = distinct !{!111, !112, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE: %self"}
!112 = distinct !{!112, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE"}
!113 = distinct !{!113, !114, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E: %_1"}
!114 = distinct !{!114, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!117 = distinct !{!117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!122 = distinct !{!122, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"cmpfunc: %a"}
!127 = distinct !{!127, !"cmpfunc"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"cmpfunc: %b"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!132 = distinct !{!132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!135 = !{!131, !126, !121, !116}
!136 = !{!134, !129, !124, !119}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!139 = distinct !{!139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!144 = distinct !{!144, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"cmpfunc: %a"}
!149 = distinct !{!149, !"cmpfunc"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"cmpfunc: %b"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!154 = distinct !{!154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!157 = !{!153, !148, !143, !138}
!158 = !{!156, !151, !146, !141}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!161 = distinct !{!161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!166 = distinct !{!166, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"cmpfunc: %a"}
!171 = distinct !{!171, !"cmpfunc"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"cmpfunc: %b"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!176 = distinct !{!176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!179 = !{!175, !170, !165, !160}
!180 = !{!178, !173, !168, !163}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!183 = distinct !{!183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!188 = distinct !{!188, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"cmpfunc: %a"}
!193 = distinct !{!193, !"cmpfunc"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"cmpfunc: %b"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!198 = distinct !{!198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!201 = !{!197, !192, !187, !182}
!202 = !{!200, !195, !190, !185}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!205 = distinct !{!205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!210 = distinct !{!210, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"cmpfunc: %a"}
!215 = distinct !{!215, !"cmpfunc"}
!216 = !{!217}
!217 = distinct !{!217, !215, !"cmpfunc: %b"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!220 = distinct !{!220, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!223 = !{!219, !214, !209, !204}
!224 = !{!222, !217, !212, !207}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!227 = distinct !{!227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!232 = distinct !{!232, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!233 = !{!234}
!234 = distinct !{!234, !232, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"cmpfunc: %a"}
!237 = distinct !{!237, !"cmpfunc"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"cmpfunc: %b"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!242 = distinct !{!242, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!245 = !{!241, !236, !231, !226}
!246 = !{!244, !239, !234, !229}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!249 = distinct !{!249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!250 = !{!251}
!251 = distinct !{!251, !249, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!254 = distinct !{!254, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"cmpfunc: %a"}
!259 = distinct !{!259, !"cmpfunc"}
!260 = !{!261}
!261 = distinct !{!261, !259, !"cmpfunc: %b"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!264 = distinct !{!264, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!267 = !{!263, !258, !253, !248}
!268 = !{!266, !261, !256, !251}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!271 = distinct !{!271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!272 = !{!273}
!273 = distinct !{!273, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!276 = distinct !{!276, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"cmpfunc: %a"}
!281 = distinct !{!281, !"cmpfunc"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"cmpfunc: %b"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!286 = distinct !{!286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!289 = !{!285, !280, !275, !270}
!290 = !{!288, !283, !278, !273}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!293 = distinct !{!293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!298 = distinct !{!298, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"cmpfunc: %a"}
!303 = distinct !{!303, !"cmpfunc"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"cmpfunc: %b"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!308 = distinct !{!308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!311 = !{!307, !302, !297, !292}
!312 = !{!310, !305, !300, !295}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!315 = distinct !{!315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!316 = !{!317}
!317 = distinct !{!317, !315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!320 = distinct !{!320, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"cmpfunc: %a"}
!325 = distinct !{!325, !"cmpfunc"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"cmpfunc: %b"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!330 = distinct !{!330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!333 = !{!329, !324, !319, !314}
!334 = !{!332, !327, !322, !317}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!337 = distinct !{!337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!342 = distinct !{!342, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"cmpfunc: %a"}
!347 = distinct !{!347, !"cmpfunc"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"cmpfunc: %b"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!352 = distinct !{!352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!355 = !{!351, !346, !341, !336}
!356 = !{!354, !349, !344, !339}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!359 = distinct !{!359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!364 = distinct !{!364, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"cmpfunc: %a"}
!369 = distinct !{!369, !"cmpfunc"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"cmpfunc: %b"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!374 = distinct !{!374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!377 = !{!373, !368, !363, !358}
!378 = !{!376, !371, !366, !361}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"cmpfunc: %a"}
!391 = distinct !{!391, !"cmpfunc"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"cmpfunc: %b"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!396 = distinct !{!396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!399 = !{!395, !390, !385, !380}
!400 = !{!398, !393, !388, !383}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!403 = distinct !{!403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!408 = distinct !{!408, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"cmpfunc: %a"}
!413 = distinct !{!413, !"cmpfunc"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"cmpfunc: %b"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!421 = !{!417, !412, !407, !402}
!422 = !{!420, !415, !410, !405}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!425 = distinct !{!425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!430 = distinct !{!430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"cmpfunc: %a"}
!435 = distinct !{!435, !"cmpfunc"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"cmpfunc: %b"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!440 = distinct !{!440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!443 = !{!439, !434, !429, !424}
!444 = !{!442, !437, !432, !427}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E: %v.0"}
!447 = distinct !{!447, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!450 = distinct !{!450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!451 = !{!452}
!452 = distinct !{!452, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!455 = distinct !{!455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %_0"}
!458 = distinct !{!458, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E"}
!459 = !{!460}
!460 = distinct !{!460, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"cmpfunc: %a"}
!463 = distinct !{!463, !"cmpfunc"}
!464 = !{!465}
!465 = distinct !{!465, !463, !"cmpfunc: %b"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!468 = distinct !{!468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!471 = !{!467, !462, !454, !449, !446}
!472 = !{!470, !465, !460, !452, !457}
!473 = !{!470, !465, !460, !452, !446}
!474 = !{!467, !462, !454, !449, !457}
!475 = !{!457, !476, !446}
!476 = distinct !{!476, !458, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %is_less"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!479 = distinct !{!479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!482 = !{!483}
!483 = distinct !{!483, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!484 = distinct !{!484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %_0"}
!487 = distinct !{!487, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE"}
!488 = !{!489}
!489 = distinct !{!489, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"cmpfunc: %a"}
!492 = distinct !{!492, !"cmpfunc"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"cmpfunc: %b"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!497 = distinct !{!497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!500 = !{!496, !491, !483, !478, !446}
!501 = !{!499, !494, !489, !481, !486}
!502 = !{!499, !494, !489, !481, !446}
!503 = !{!496, !491, !483, !478, !486}
!504 = !{!486, !505, !446}
!505 = distinct !{!505, !487, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %is_less"}
!506 = !{!507}
!507 = distinct !{!507, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It1"}
!508 = !{!509}
!509 = distinct !{!509, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It1"}
!510 = !{!511}
!511 = distinct !{!511, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It1"}
!512 = !{!513}
!513 = distinct !{!513, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It1"}
!514 = !{!515}
!515 = distinct !{!515, !463, !"cmpfunc: %a:It1"}
!516 = !{!517}
!517 = distinct !{!517, !463, !"cmpfunc: %b:It1"}
!518 = !{!519}
!519 = distinct !{!519, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!520 = !{!521}
!521 = distinct !{!521, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!522 = !{!519, !515, !511, !507, !446}
!523 = !{!521, !517, !513, !509, !457}
!524 = !{!521, !517, !513, !509, !446}
!525 = !{!519, !515, !511, !507, !457}
!526 = !{!527}
!527 = distinct !{!527, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It1"}
!528 = !{!529}
!529 = distinct !{!529, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It1"}
!530 = !{!531}
!531 = distinct !{!531, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It1"}
!532 = !{!533}
!533 = distinct !{!533, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It1"}
!534 = !{!535}
!535 = distinct !{!535, !492, !"cmpfunc: %a:It1"}
!536 = !{!537}
!537 = distinct !{!537, !492, !"cmpfunc: %b:It1"}
!538 = !{!539}
!539 = distinct !{!539, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!540 = !{!541}
!541 = distinct !{!541, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!542 = !{!539, !535, !531, !527, !446}
!543 = !{!541, !537, !533, !529, !486}
!544 = !{!541, !537, !533, !529, !446}
!545 = !{!539, !535, !531, !527, !486}
!546 = !{!547}
!547 = distinct !{!547, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It2"}
!548 = !{!549}
!549 = distinct !{!549, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It2"}
!550 = !{!551}
!551 = distinct !{!551, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It2"}
!552 = !{!553}
!553 = distinct !{!553, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It2"}
!554 = !{!555}
!555 = distinct !{!555, !463, !"cmpfunc: %a:It2"}
!556 = !{!557}
!557 = distinct !{!557, !463, !"cmpfunc: %b:It2"}
!558 = !{!559}
!559 = distinct !{!559, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!560 = !{!561}
!561 = distinct !{!561, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!562 = !{!559, !555, !551, !547, !446}
!563 = !{!561, !557, !553, !549, !457}
!564 = !{!561, !557, !553, !549, !446}
!565 = !{!559, !555, !551, !547, !457}
!566 = !{!567}
!567 = distinct !{!567, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It2"}
!568 = !{!569}
!569 = distinct !{!569, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It2"}
!570 = !{!571}
!571 = distinct !{!571, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It2"}
!572 = !{!573}
!573 = distinct !{!573, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It2"}
!574 = !{!575}
!575 = distinct !{!575, !492, !"cmpfunc: %a:It2"}
!576 = !{!577}
!577 = distinct !{!577, !492, !"cmpfunc: %b:It2"}
!578 = !{!579}
!579 = distinct !{!579, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!580 = !{!581}
!581 = distinct !{!581, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!582 = !{!579, !575, !571, !567, !446}
!583 = !{!581, !577, !573, !569, !486}
!584 = !{!581, !577, !573, !569, !446}
!585 = !{!579, !575, !571, !567, !486}
!586 = !{!587}
!587 = distinct !{!587, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It3"}
!588 = !{!589}
!589 = distinct !{!589, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It3"}
!590 = !{!591}
!591 = distinct !{!591, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It3"}
!592 = !{!593}
!593 = distinct !{!593, !455, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It3"}
!594 = !{!595}
!595 = distinct !{!595, !463, !"cmpfunc: %a:It3"}
!596 = !{!597}
!597 = distinct !{!597, !463, !"cmpfunc: %b:It3"}
!598 = !{!599}
!599 = distinct !{!599, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!600 = !{!601}
!601 = distinct !{!601, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!602 = !{!599, !595, !591, !587, !446}
!603 = !{!601, !597, !593, !589, !457}
!604 = !{!601, !597, !593, !589, !446}
!605 = !{!599, !595, !591, !587, !457}
!606 = !{!607}
!607 = distinct !{!607, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a:It3"}
!608 = !{!609}
!609 = distinct !{!609, !479, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b:It3"}
!610 = !{!611}
!611 = distinct !{!611, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0:It3"}
!612 = !{!613}
!613 = distinct !{!613, !484, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1:It3"}
!614 = !{!615}
!615 = distinct !{!615, !492, !"cmpfunc: %a:It3"}
!616 = !{!617}
!617 = distinct !{!617, !492, !"cmpfunc: %b:It3"}
!618 = !{!619}
!619 = distinct !{!619, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!620 = !{!621}
!621 = distinct !{!621, !497, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!622 = !{!619, !615, !611, !607, !446}
!623 = !{!621, !617, !613, !609, !486}
!624 = !{!621, !617, !613, !609, !446}
!625 = !{!619, !615, !611, !607, !486}
!626 = !{!"branch_weights", i32 4001, i32 4000000}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!629 = distinct !{!629, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!630 = !{!631}
!631 = distinct !{!631, !629, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!632 = !{!633}
!633 = distinct !{!633, !634, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!634 = distinct !{!634, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %_0"}
!637 = distinct !{!637, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E"}
!638 = !{!639}
!639 = distinct !{!639, !634, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"cmpfunc: %a"}
!642 = distinct !{!642, !"cmpfunc"}
!643 = !{!644}
!644 = distinct !{!644, !642, !"cmpfunc: %b"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!647 = distinct !{!647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!650 = !{!646, !641, !633, !628}
!651 = !{!649, !644, !639, !631, !636}
!652 = !{!649, !644, !639, !631}
!653 = !{!646, !641, !633, !628, !636}
!654 = !{!636, !655}
!655 = distinct !{!655, !637, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %is_less"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!658 = distinct !{!658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!659 = !{!660}
!660 = distinct !{!660, !658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!661 = !{!662}
!662 = distinct !{!662, !663, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!663 = distinct !{!663, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %_0"}
!666 = distinct !{!666, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE"}
!667 = !{!668}
!668 = distinct !{!668, !663, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!679 = !{!675, !670, !662, !657}
!680 = !{!678, !673, !668, !660, !665}
!681 = !{!678, !673, !668, !660}
!682 = !{!675, !670, !662, !657, !665}
!683 = !{!665, !684}
!684 = distinct !{!684, !666, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %is_less"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!687 = distinct !{!687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!688 = !{!689}
!689 = distinct !{!689, !687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!692 = distinct !{!692, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!693 = !{!694}
!694 = distinct !{!694, !692, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!695 = !{!696}
!696 = distinct !{!696, !697, !"cmpfunc: %a"}
!697 = distinct !{!697, !"cmpfunc"}
!698 = !{!699}
!699 = distinct !{!699, !697, !"cmpfunc: %b"}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!702 = distinct !{!702, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!703 = !{!704}
!704 = distinct !{!704, !702, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!705 = !{!701, !696, !691, !686}
!706 = !{!704, !699, !694, !689}
!707 = !{!708, !710, !712, !714}
!708 = distinct !{!708, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!709 = distinct !{!709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!710 = distinct !{!710, !711, !"cmpfunc: %b"}
!711 = distinct !{!711, !"cmpfunc"}
!712 = distinct !{!712, !713, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!713 = distinct !{!713, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!714 = distinct !{!714, !715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!715 = distinct !{!715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!716 = !{!717, !718, !719, !720}
!717 = distinct !{!717, !709, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!718 = distinct !{!718, !711, !"cmpfunc: %a"}
!719 = distinct !{!719, !713, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!720 = distinct !{!720, !715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!721 = !{!722, !724}
!722 = distinct !{!722, !723, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE: %self"}
!723 = distinct !{!723, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE"}
!724 = distinct !{!724, !725, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E: %_1"}
!725 = distinct !{!725, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!728 = distinct !{!728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!729 = !{!730}
!730 = distinct !{!730, !728, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!733 = distinct !{!733, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!734 = !{!735}
!735 = distinct !{!735, !733, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"cmpfunc: %a"}
!738 = distinct !{!738, !"cmpfunc"}
!739 = !{!740}
!740 = distinct !{!740, !738, !"cmpfunc: %b"}
!741 = !{!742}
!742 = distinct !{!742, !743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!743 = distinct !{!743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!744 = !{!745}
!745 = distinct !{!745, !743, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!746 = !{!742, !737, !732, !727}
!747 = !{!745, !740, !735, !730}
!748 = !{!749}
!749 = distinct !{!749, !750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!750 = distinct !{!750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!751 = !{!752}
!752 = distinct !{!752, !750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!755 = distinct !{!755, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!756 = !{!757}
!757 = distinct !{!757, !755, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"cmpfunc: %a"}
!760 = distinct !{!760, !"cmpfunc"}
!761 = !{!762}
!762 = distinct !{!762, !760, !"cmpfunc: %b"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!765 = distinct !{!765, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!766 = !{!767}
!767 = distinct !{!767, !765, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!768 = !{!764, !759, !754, !749}
!769 = !{!767, !762, !757, !752}
!770 = !{!771}
!771 = distinct !{!771, !772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!772 = distinct !{!772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!773 = !{!774}
!774 = distinct !{!774, !772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!775 = !{!776}
!776 = distinct !{!776, !777, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!777 = distinct !{!777, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!778 = !{!779}
!779 = distinct !{!779, !777, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"cmpfunc: %a"}
!782 = distinct !{!782, !"cmpfunc"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"cmpfunc: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!787 = distinct !{!787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!790 = !{!786, !781, !776, !771}
!791 = !{!789, !784, !779, !774}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!794 = distinct !{!794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!795 = !{!796}
!796 = distinct !{!796, !794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!799 = distinct !{!799, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!800 = !{!801}
!801 = distinct !{!801, !799, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!802 = !{!803}
!803 = distinct !{!803, !804, !"cmpfunc: %a"}
!804 = distinct !{!804, !"cmpfunc"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"cmpfunc: %b"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!809 = distinct !{!809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!812 = !{!808, !803, !798, !793}
!813 = !{!811, !806, !801, !796}
!814 = !{!815}
!815 = distinct !{!815, !816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!816 = distinct !{!816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!817 = !{!818}
!818 = distinct !{!818, !816, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!821 = distinct !{!821, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!822 = !{!823}
!823 = distinct !{!823, !821, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!824 = !{!825}
!825 = distinct !{!825, !826, !"cmpfunc: %a"}
!826 = distinct !{!826, !"cmpfunc"}
!827 = !{!828}
!828 = distinct !{!828, !826, !"cmpfunc: %b"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!831 = distinct !{!831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!834 = !{!830, !825, !820, !815}
!835 = !{!833, !828, !823, !818}
!836 = !{!837}
!837 = distinct !{!837, !838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!838 = distinct !{!838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!839 = !{!840}
!840 = distinct !{!840, !838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!841 = !{!842}
!842 = distinct !{!842, !843, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!843 = distinct !{!843, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!844 = !{!845}
!845 = distinct !{!845, !843, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!846 = !{!847}
!847 = distinct !{!847, !848, !"cmpfunc: %a"}
!848 = distinct !{!848, !"cmpfunc"}
!849 = !{!850}
!850 = distinct !{!850, !848, !"cmpfunc: %b"}
!851 = !{!852}
!852 = distinct !{!852, !853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!853 = distinct !{!853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!854 = !{!855}
!855 = distinct !{!855, !853, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!856 = !{!852, !847, !842, !837}
!857 = !{!855, !850, !845, !840}
!858 = !{!859}
!859 = distinct !{!859, !860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!860 = distinct !{!860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!861 = !{!862}
!862 = distinct !{!862, !860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!865 = distinct !{!865, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!866 = !{!867}
!867 = distinct !{!867, !865, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"cmpfunc: %a"}
!870 = distinct !{!870, !"cmpfunc"}
!871 = !{!872}
!872 = distinct !{!872, !870, !"cmpfunc: %b"}
!873 = !{!874}
!874 = distinct !{!874, !875, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!875 = distinct !{!875, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!876 = !{!877}
!877 = distinct !{!877, !875, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!878 = !{!874, !869, !864, !859}
!879 = !{!877, !872, !867, !862}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!882 = distinct !{!882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!883 = !{!884}
!884 = distinct !{!884, !882, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!887 = distinct !{!887, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!888 = !{!889}
!889 = distinct !{!889, !887, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!890 = !{!891}
!891 = distinct !{!891, !892, !"cmpfunc: %a"}
!892 = distinct !{!892, !"cmpfunc"}
!893 = !{!894}
!894 = distinct !{!894, !892, !"cmpfunc: %b"}
!895 = !{!896}
!896 = distinct !{!896, !897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!897 = distinct !{!897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!898 = !{!899}
!899 = distinct !{!899, !897, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!900 = !{!896, !891, !886, !881}
!901 = !{!899, !894, !889, !884}
!902 = !{!903}
!903 = distinct !{!903, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!904 = distinct !{!904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!905 = !{!906}
!906 = distinct !{!906, !904, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!909 = distinct !{!909, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!910 = !{!911}
!911 = distinct !{!911, !909, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!912 = !{!913}
!913 = distinct !{!913, !914, !"cmpfunc: %a"}
!914 = distinct !{!914, !"cmpfunc"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"cmpfunc: %b"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!919 = distinct !{!919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!920 = !{!921}
!921 = distinct !{!921, !919, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!922 = !{!918, !913, !908, !903}
!923 = !{!921, !916, !911, !906}
!924 = !{!925}
!925 = distinct !{!925, !926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!926 = distinct !{!926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!927 = !{!928}
!928 = distinct !{!928, !926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!931 = distinct !{!931, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!932 = !{!933}
!933 = distinct !{!933, !931, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!934 = !{!935}
!935 = distinct !{!935, !936, !"cmpfunc: %a"}
!936 = distinct !{!936, !"cmpfunc"}
!937 = !{!938}
!938 = distinct !{!938, !936, !"cmpfunc: %b"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!941 = distinct !{!941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!942 = !{!943}
!943 = distinct !{!943, !941, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!944 = !{!940, !935, !930, !925}
!945 = !{!943, !938, !933, !928}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE: %self.0"}
!948 = distinct !{!948, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hcb1eade05b3206dcE"}
!949 = !{!950}
!950 = distinct !{!950, !951, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E: %v.0"}
!951 = distinct !{!951, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h60bb5f2595556367E"}
!952 = !{!953}
!953 = distinct !{!953, !954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!954 = distinct !{!954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!955 = !{!956}
!956 = distinct !{!956, !954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!959 = distinct !{!959, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %_0"}
!962 = distinct !{!962, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E"}
!963 = !{!964}
!964 = distinct !{!964, !959, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!965 = !{!966}
!966 = distinct !{!966, !967, !"cmpfunc: %a"}
!967 = distinct !{!967, !"cmpfunc"}
!968 = !{!969}
!969 = distinct !{!969, !967, !"cmpfunc: %b"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!972 = distinct !{!972, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!975 = !{!971, !966, !958, !953, !950}
!976 = !{!974, !969, !964, !956, !961}
!977 = !{!974, !969, !964, !956, !950}
!978 = !{!971, !966, !958, !953, !961}
!979 = !{!961, !980, !950}
!980 = distinct !{!980, !962, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8429f9ae14710676E: %is_less"}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!983 = distinct !{!983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!984 = !{!985}
!985 = distinct !{!985, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!988 = distinct !{!988, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!989 = !{!990}
!990 = distinct !{!990, !991, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %_0"}
!991 = distinct !{!991, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE"}
!992 = !{!993}
!993 = distinct !{!993, !988, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!994 = !{!995}
!995 = distinct !{!995, !996, !"cmpfunc: %a"}
!996 = distinct !{!996, !"cmpfunc"}
!997 = !{!998}
!998 = distinct !{!998, !996, !"cmpfunc: %b"}
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1001 = distinct !{!1001, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1001, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1004 = !{!1000, !995, !987, !982, !950}
!1005 = !{!1003, !998, !993, !985, !990}
!1006 = !{!1003, !998, !993, !985, !950}
!1007 = !{!1000, !995, !987, !982, !990}
!1008 = !{!990, !1009, !950}
!1009 = distinct !{!1009, !991, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hddf5e3e2abc29eedE: %is_less"}
!1010 = !{!1011, !1013}
!1011 = distinct !{!1011, !1012, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE: %self"}
!1012 = distinct !{!1012, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE"}
!1013 = distinct !{!1013, !1014, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E: %_1"}
!1014 = distinct !{!1014, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E"}
!1015 = !{!1016, !1018, !1020, !1022}
!1016 = distinct !{!1016, !1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1017 = distinct !{!1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1018 = distinct !{!1018, !1019, !"cmpfunc: %b"}
!1019 = distinct !{!1019, !"cmpfunc"}
!1020 = distinct !{!1020, !1021, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1021 = distinct !{!1021, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1022 = distinct !{!1022, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1023 = distinct !{!1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1024 = !{!1025, !1026, !1027, !1028}
!1025 = distinct !{!1025, !1017, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1026 = distinct !{!1026, !1019, !"cmpfunc: %a"}
!1027 = distinct !{!1027, !1021, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1028 = distinct !{!1028, !1023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1029 = !{!1030, !1032, !1034, !1036}
!1030 = distinct !{!1030, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1031 = distinct !{!1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1032 = distinct !{!1032, !1033, !"cmpfunc: %b"}
!1033 = distinct !{!1033, !"cmpfunc"}
!1034 = distinct !{!1034, !1035, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1035 = distinct !{!1035, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1036 = distinct !{!1036, !1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1037 = distinct !{!1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1038 = !{!1039, !1040, !1041, !1042}
!1039 = distinct !{!1039, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1040 = distinct !{!1040, !1033, !"cmpfunc: %a"}
!1041 = distinct !{!1041, !1035, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1042 = distinct !{!1042, !1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1043 = !{!1044, !1046}
!1044 = distinct !{!1044, !1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE: %self"}
!1045 = distinct !{!1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hac5c9e3db127885eE"}
!1046 = distinct !{!1046, !1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E: %_1"}
!1047 = distinct !{!1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h110ea27a257f8824E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E: %_0"}
!1050 = distinct !{!1050, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0dff78446a874356E"}
!1051 = !{i64 0, i64 2}
!1052 = !{i64 0, i64 -9223372036854775807}
!1053 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1056 = distinct !{!1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1061 = distinct !{!1061, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1061, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"cmpfunc: %a"}
!1066 = distinct !{!1066, !"cmpfunc"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1066, !"cmpfunc: %b"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1071 = distinct !{!1071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1071, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1074 = !{!1070, !1065, !1060, !1055}
!1075 = !{!1073, !1068, !1063, !1058}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1078 = distinct !{!1078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1083 = distinct !{!1083, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"cmpfunc: %a"}
!1088 = distinct !{!1088, !"cmpfunc"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"cmpfunc: %b"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1093 = distinct !{!1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1096 = !{!1092, !1087, !1082, !1077}
!1097 = !{!1095, !1090, !1085, !1080}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1100 = distinct !{!1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1105 = distinct !{!1105, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1105, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1110, !"cmpfunc: %a"}
!1110 = distinct !{!1110, !"cmpfunc"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1110, !"cmpfunc: %b"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1115 = distinct !{!1115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1115, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1118 = !{!1114, !1109, !1104, !1099}
!1119 = !{!1117, !1112, !1107, !1102}
!1120 = !{!1121, !1123}
!1121 = distinct !{!1121, !1122, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hfa5936fa6c016dddE: %a.0"}
!1122 = distinct !{!1122, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hfa5936fa6c016dddE"}
!1123 = distinct !{!1123, !1124, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9bace1b36a57b2f6E: %self.0"}
!1124 = distinct !{!1124, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9bace1b36a57b2f6E"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1122, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hfa5936fa6c016dddE: %b.0"}
!1127 = !{!1126, !1123}
!1128 = !{!1121}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1131, !"_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E: %v.0"}
!1131 = distinct !{!1131, !"_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1131, !"_ZN4core5slice4sort6stable5merge5merge17h583f16f607ed7730E: %scratch.0"}
!1134 = !{!1130, !1133}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1137 = distinct !{!1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1142 = distinct !{!1142, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1147, !"cmpfunc: %a"}
!1147 = distinct !{!1147, !"cmpfunc"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1147, !"cmpfunc: %b"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1152 = distinct !{!1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1152, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1155 = !{!1151, !1146, !1141, !1136, !1133}
!1156 = !{!1154, !1149, !1144, !1139, !1157, !1130}
!1157 = distinct !{!1157, !1158, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85d56ab3e6de77e9E: %self"}
!1158 = distinct !{!1158, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85d56ab3e6de77e9E"}
!1159 = !{!1154, !1149, !1144, !1139, !1130}
!1160 = !{!1151, !1146, !1141, !1136, !1157, !1133}
!1161 = !{!1157, !1133}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1164 = distinct !{!1164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1169 = distinct !{!1169, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1169, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1174, !"cmpfunc: %a"}
!1174 = distinct !{!1174, !"cmpfunc"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1174, !"cmpfunc: %b"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1179 = distinct !{!1179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1182 = !{!1178, !1173, !1168, !1163, !1130}
!1183 = !{!1181, !1176, !1171, !1166, !1184, !1133}
!1184 = distinct !{!1184, !1185, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3b8f349ebb5136a3E: %self"}
!1185 = distinct !{!1185, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3b8f349ebb5136a3E"}
!1186 = !{!1181, !1176, !1171, !1166, !1133}
!1187 = !{!1178, !1173, !1168, !1163, !1184, !1130}
!1188 = !{!1184, !1133}
!1189 = !{!1190, !1192}
!1190 = distinct !{!1190, !1191, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d559891bc4074acE: %self"}
!1191 = distinct !{!1191, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d559891bc4074acE"}
!1192 = distinct !{!1192, !1193, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7dfe9ab5c2ae4084E: %_1"}
!1193 = distinct !{!1193, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7dfe9ab5c2ae4084E"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1196 = distinct !{!1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1201 = distinct !{!1201, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"cmpfunc: %a"}
!1206 = distinct !{!1206, !"cmpfunc"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"cmpfunc: %b"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1211 = distinct !{!1211, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1214 = !{!1210, !1205, !1200, !1195}
!1215 = !{!1213, !1208, !1203, !1198}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1218 = distinct !{!1218, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1223 = distinct !{!1223, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"cmpfunc: %a"}
!1228 = distinct !{!1228, !"cmpfunc"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"cmpfunc: %b"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1233 = distinct !{!1233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1233, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1236 = !{!1232, !1227, !1222, !1217}
!1237 = !{!1235, !1230, !1225, !1220}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1240 = distinct !{!1240, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1245 = distinct !{!1245, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1245, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"cmpfunc: %a"}
!1250 = distinct !{!1250, !"cmpfunc"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"cmpfunc: %b"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1255 = distinct !{!1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1258 = !{!1254, !1249, !1244, !1239}
!1259 = !{!1257, !1252, !1247, !1242, !1260}
!1260 = distinct !{!1260, !1261, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85d56ab3e6de77e9E: %self"}
!1261 = distinct !{!1261, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85d56ab3e6de77e9E"}
!1262 = !{!1257, !1252, !1247, !1242}
!1263 = !{!1254, !1249, !1244, !1239, !1260}
!1264 = !{!1260}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1267 = distinct !{!1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1272 = distinct !{!1272, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!1286 = !{!1284, !1279, !1274, !1269, !1287}
!1287 = distinct !{!1287, !1288, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3b8f349ebb5136a3E: %self"}
!1288 = distinct !{!1288, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3b8f349ebb5136a3E"}
!1289 = !{!1284, !1279, !1274, !1269}
!1290 = !{!1281, !1276, !1271, !1266, !1287}
!1291 = !{!1287}
!1292 = !{!1293, !1295}
!1293 = distinct !{!1293, !1294, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d559891bc4074acE: %self"}
!1294 = distinct !{!1294, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d559891bc4074acE"}
!1295 = distinct !{!1295, !1296, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7dfe9ab5c2ae4084E: %_1"}
!1296 = distinct !{!1296, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h7dfe9ab5c2ae4084E"}
!1297 = !{!"branch_weights", i32 4000000, i32 4001}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %a"}
!1300 = distinct !{!1300, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1305 = distinct !{!1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1310 = distinct !{!1310, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1310, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!1323 = !{!1319, !1314, !1309, !1304, !1302}
!1324 = !{!1322, !1317, !1312, !1307, !1299}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1327 = distinct !{!1327, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %a"}
!1330 = distinct !{!1330, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1330, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %b"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1335 = distinct !{!1335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1335, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1340 = distinct !{!1340, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1340, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"cmpfunc: %a"}
!1345 = distinct !{!1345, !"cmpfunc"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"cmpfunc: %b"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1350 = distinct !{!1350, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1353 = !{!1349, !1344, !1339, !1334, !1332}
!1354 = !{!1352, !1347, !1342, !1337, !1329}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1357 = distinct !{!1357, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %a"}
!1360 = distinct !{!1360, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %b"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1365 = distinct !{!1365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1366 = !{!1367}
!1367 = distinct !{!1367, !1365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1370 = distinct !{!1370, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"cmpfunc: %a"}
!1375 = distinct !{!1375, !"cmpfunc"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1375, !"cmpfunc: %b"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1380 = distinct !{!1380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1383 = !{!1379, !1374, !1369, !1364, !1362}
!1384 = !{!1382, !1377, !1372, !1367, !1359}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1387 = distinct !{!1387, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1390, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %a"}
!1390 = distinct !{!1390, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1390, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %b"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1395 = distinct !{!1395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1400 = distinct !{!1400, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1400, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405, !"cmpfunc: %a"}
!1405 = distinct !{!1405, !"cmpfunc"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1405, !"cmpfunc: %b"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1410 = distinct !{!1410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1413 = !{!1409, !1404, !1399, !1394, !1392}
!1414 = !{!1412, !1407, !1402, !1397, !1389}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1417 = distinct !{!1417, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1420, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %a"}
!1420 = distinct !{!1420, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1420, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h48e1e8faf58c7a9dE: %b"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1425 = distinct !{!1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1430 = distinct !{!1430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"cmpfunc: %a"}
!1435 = distinct !{!1435, !"cmpfunc"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1435, !"cmpfunc: %b"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1440 = distinct !{!1440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1443 = !{!1439, !1434, !1429, !1424, !1422}
!1444 = !{!1442, !1437, !1432, !1427, !1419}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1447 = distinct !{!1447, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1450 = distinct !{!1450, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1451 = distinct !{!1451, !1452}
!1452 = !{!"llvm.loop.unroll.disable"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1455 = distinct !{!1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!1476 = distinct !{!1476, !1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1477 = distinct !{!1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1480 = distinct !{!1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1481 = !{!1482}
!1482 = distinct !{!1482, !1480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1485 = distinct !{!1485, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1485, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!1501 = distinct !{!1501, !1502, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1502 = distinct !{!1502, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1505 = distinct !{!1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1510 = distinct !{!1510, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1510, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
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
!1523 = !{!1519, !1514, !1509, !1504}
!1524 = !{!1522, !1517, !1512, !1507}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1527 = distinct !{!1527, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1530 = distinct !{!1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1535 = distinct !{!1535, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1540, !"cmpfunc: %a"}
!1540 = distinct !{!1540, !"cmpfunc"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1540, !"cmpfunc: %b"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1545 = distinct !{!1545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1548 = !{!1544, !1539, !1534, !1529}
!1549 = !{!1547, !1542, !1537, !1532}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1552, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1552 = distinct !{!1552, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1553 = !{!1554}
!1554 = distinct !{!1554, !1555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1555 = distinct !{!1555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1555, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1560, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1560 = distinct !{!1560, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1560, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1565, !"cmpfunc: %a"}
!1565 = distinct !{!1565, !"cmpfunc"}
!1566 = !{!1567}
!1567 = distinct !{!1567, !1565, !"cmpfunc: %b"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1570 = distinct !{!1570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1570, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1573 = !{!1569, !1564, !1559, !1554}
!1574 = !{!1572, !1567, !1562, !1557}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1577 = distinct !{!1577, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1580, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE: %self"}
!1580 = distinct !{!1580, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2f55b88ab9adf8fE"}
!1581 = distinct !{!1581, !1452}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1584 = distinct !{!1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1589 = distinct !{!1589, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1592, !"_ZN4core5slice4sort6shared5pivot7median317hdba52b0a75a526bcE: %c"}
!1592 = distinct !{!1592, !"_ZN4core5slice4sort6shared5pivot7median317hdba52b0a75a526bcE"}
!1593 = !{!1594}
!1594 = distinct !{!1594, !1589, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1597, !"cmpfunc: %a"}
!1597 = distinct !{!1597, !"cmpfunc"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1597, !"cmpfunc: %b"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1602 = distinct !{!1602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1603 = !{!1604}
!1604 = distinct !{!1604, !1602, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1605 = !{!1601, !1596, !1588, !1583, !1606}
!1606 = distinct !{!1606, !1607, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E: %v.0"}
!1607 = distinct !{!1607, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E"}
!1608 = !{!1604, !1599, !1594, !1586, !1591, !1609}
!1609 = distinct !{!1609, !1607, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h439c5b9a86df3205E: %is_less"}
!1610 = !{!1604, !1599, !1594, !1586, !1606}
!1611 = !{!1601, !1596, !1588, !1583, !1591, !1609}
!1612 = !{!1613, !1615, !1617, !1619, !1606}
!1613 = distinct !{!1613, !1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1614 = distinct !{!1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1615 = distinct !{!1615, !1616, !"cmpfunc: %b"}
!1616 = distinct !{!1616, !"cmpfunc"}
!1617 = distinct !{!1617, !1618, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1618 = distinct !{!1618, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1619 = distinct !{!1619, !1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1620 = distinct !{!1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1621 = !{!1622, !1623, !1624, !1625, !1609}
!1622 = distinct !{!1622, !1614, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1623 = distinct !{!1623, !1616, !"cmpfunc: %a"}
!1624 = distinct !{!1624, !1618, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1625 = distinct !{!1625, !1620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1626 = !{!1627, !1629, !1631, !1633}
!1627 = distinct !{!1627, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1628 = distinct !{!1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1629 = distinct !{!1629, !1630, !"cmpfunc: %a"}
!1630 = distinct !{!1630, !"cmpfunc"}
!1631 = distinct !{!1631, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 0"}
!1632 = distinct !{!1632, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E"}
!1633 = distinct !{!1633, !1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %a"}
!1634 = distinct !{!1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E"}
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = distinct !{!1636, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1637 = distinct !{!1637, !1630, !"cmpfunc: %b"}
!1638 = distinct !{!1638, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h3d1f2b93ce06e311E: argument 1"}
!1639 = distinct !{!1639, !1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hdd26290938253dd0E: %b"}
!1640 = !{!1641, !1643}
!1641 = distinct !{!1641, !1642, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE: %pair"}
!1642 = distinct !{!1642, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE"}
!1643 = distinct !{!1643, !1642, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h686f037d6ee09dcdE: %self.0"}
!1644 = !{i64 0, i64 -9223372036854775808}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1647 = distinct !{!1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1647, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h9ce1b191d74047e6E: %x"}
!1652 = distinct !{!1652, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h9ce1b191d74047e6E"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h9ce1b191d74047e6E: %y"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN4core3cmp6max_by17hdd01ef7027185cc2E: argument 0"}
!1657 = distinct !{!1657, !"_ZN4core3cmp6max_by17hdd01ef7027185cc2E"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN4core3cmp6max_by17hdd01ef7027185cc2E: argument 1"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1662 = distinct !{!1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1663 = !{!1664}
!1664 = distinct !{!1664, !1662, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1665 = !{!1661, !1656, !1651}
!1666 = !{!1664, !1667, !1669, !1670, !1672, !1673, !1675, !1659, !1654}
!1667 = distinct !{!1667, !1668, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE: %self"}
!1668 = distinct !{!1668, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE"}
!1669 = distinct !{!1669, !1668, !"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h185b31d8a416c92dE: %other"}
!1670 = distinct !{!1670, !1671, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E: argument 0"}
!1671 = distinct !{!1671, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E"}
!1672 = distinct !{!1672, !1671, !"_ZN4core3ops8function5FnMut8call_mut17ha9a816d87fb0ce36E: argument 1"}
!1673 = distinct !{!1673, !1674, !"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17hfd5b8e57bf1b0167E: argument 0"}
!1674 = distinct !{!1674, !"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17hfd5b8e57bf1b0167E"}
!1675 = distinct !{!1675, !1674, !"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17hfd5b8e57bf1b0167E: argument 1"}
!1676 = !{!1664, !1659, !1654}
!1677 = !{!1661, !1667, !1669, !1670, !1672, !1673, !1675, !1656, !1651, !1678}
!1678 = distinct !{!1678, !1679, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3396a75e170f6dbfE: %init"}
!1679 = distinct !{!1679, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3396a75e170f6dbfE"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E: %self.0"}
!1682 = distinct !{!1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h31320da0d54a3760E"}
!1683 = !{!1684, !1686, !1681}
!1684 = distinct !{!1684, !1685, !"_ZN5alloc5slice11stable_sort17h646ecdfad9fd28e5E: %v.0"}
!1685 = distinct !{!1685, !"_ZN5alloc5slice11stable_sort17h646ecdfad9fd28e5E"}
!1686 = distinct !{!1686, !1685, !"_ZN5alloc5slice11stable_sort17h646ecdfad9fd28e5E: argument 1"}
!1687 = !{!"branch_weights", !"expected", i32 2000, i32 1}
