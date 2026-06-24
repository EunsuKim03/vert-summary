; ModuleID = 'CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_emit.29f071b91bc57cc9-cgu.0'
source_filename = "CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_emit.29f071b91bc57cc9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>" = type { %"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", i8, [7 x i8] }
%"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>" = type { %"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" = type { [2 x i64] }

@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E" = external thread_local local_unnamed_addr global %"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>"
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_d0776666182ad032bd1011cf266e2f3a = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@anon.af93e97423fececea64614ca03819712.0 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @alloc_d0776666182ad032bd1011cf266e2f3a, [24 x i8] zeroinitializer }>, align 8

; core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %_1) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_6.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !18, !noundef !19
  %_4.i.i.i.i.i = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i, label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit", label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %start
  %_10.i.i.i.i.i = shl i64 %_6.i.i.i.i.i, 2
  %_32.0.i.i.i.i.i.i = add i64 %_10.i.i.i.i.i, 19
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit", label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %_1, align 8, !alias.scope !18, !nonnull !19, !noundef !19
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !18
  br label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit"

"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit": ; preds = %start, %bb1.i.i.i.i.i, %bb1.i2.i.i.i.i.i
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
start:
  %_6 = icmp samesign ugt i64 %n, 7
  br i1 %_6, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw nsw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25), !noalias !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31), !noalias !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33), !noalias !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36), !noalias !28
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !38, !noalias !39, !noundef !19
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !40, !noalias !41, !noundef !19
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !42, !noalias !49, !noundef !19
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !68, !noalias !69, !noundef !19
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !69, !noalias !68, !noundef !19
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !85, !noalias !86, !noundef !19
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !86, !noalias !85, !noundef !19
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !102, !noalias !103, !noundef !19
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !103, !noalias !102, !noundef !19
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !119, !noalias !120, !noundef !19
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !120, !noalias !119, !noundef !19
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !19
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !19
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !19
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !136, !noalias !137, !noundef !19
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !137, !noalias !136, !noundef !19
  %_0.i18.i = icmp slt i32 %_3.i.i.i16.i, %_4.i.i.i17.i
  store i32 %0, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %5 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %5, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %6 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %6, ptr %dst6.i, align 4
  %7 = getelementptr i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %8 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %8, ptr %7, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !153, !noalias !154, !noundef !19
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !154, !noalias !153, !noundef !19
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !170, !noalias !171, !noundef !19
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !171, !noalias !170, !noundef !19
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !187, !noalias !188, !noundef !19
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !188, !noalias !187, !noundef !19
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !204, !noalias !205, !noundef !19
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !205, !noalias !204, !noundef !19
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !19
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !19
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !19
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !221, !noalias !222, !noundef !19
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !222, !noalias !221, !noundef !19
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i16.i25, %_4.i.i.i17.i26
  store i32 %9, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %13, align 4
  %.val19.i30 = load i32, ptr %11, align 4
  %14 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %14, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %11, align 4
  %.val21.i33 = load i32, ptr %13, align 4
  %15 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %15, ptr %dst6.i31, align 4
  %16 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %17 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %17, ptr %16, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !226, !noalias !233, !noundef !19
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !239
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !241, !noalias !248, !noundef !19
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !254
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267), !noalias !262
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !269, !noalias !270, !noundef !19
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !271, !noalias !272, !noundef !19
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !239
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !279
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !286, !noalias !287, !noundef !19
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !288, !noalias !289, !noundef !19
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !254
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300), !noalias !262
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !302, !noalias !303, !noundef !19
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !304, !noalias !305, !noundef !19
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !239
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316), !noalias !279
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !318, !noalias !319, !noundef !19
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !320, !noalias !321, !noundef !19
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !254
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332), !noalias !262
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !334, !noalias !335, !noundef !19
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !336, !noalias !337, !noundef !19
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !239
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348), !noalias !279
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !350, !noalias !351, !noundef !19
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !352, !noalias !353, !noundef !19
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !254
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E.exit, !prof !354

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20, !noalias !223
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h48d93dd9494788eaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  %_15 = icmp ugt i64 %_0.sroa.0.0.i6, 1024
  br i1 %_15, label %bb4, label %bb8

bb4:                                              ; preds = %start
  %_21.0.i.i.i.i = shl i64 %_0.sroa.0.0.i7, 2
  %_21.1.i.i.i.i = icmp ugt i64 %v1, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !355

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !356
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !356
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !361
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !370
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %_13.not.i97 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i103 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %36, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %35, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit ], [ 1, %bb6 ]
  %_3782 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3782, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384), !noalias !387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390), !noalias !387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392), !noalias !387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395), !noalias !387
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !397, !noalias !398, !noundef !19
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !399, !noalias !400, !noundef !19
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !401, !noalias !408, !noundef !19
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !412, !noalias !419, !noundef !19
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428), !noalias !426
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit.i.thread100 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_82, i64 %_0.sroa.0.0.i.i98106110
  %min.iters.check = icmp samesign ult i64 %half_len2.i111, 8
  br i1 %min.iters.check, label %bb6.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb5.preheader.i.i
  %n.vec = and i64 %half_len2.i111, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = xor i64 %index, -1
  %7 = getelementptr inbounds nuw i32, ptr %_82, i64 %index
  %8 = getelementptr i32, ptr %end.i, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !430, !noalias !433
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !430, !noalias !433
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !434, !noalias !435
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !434, !noalias !435
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !430, !noalias !433
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !430, !noalias !433
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !434, !noalias !435
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !434, !noalias !435
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %half_len2.i111, %n.vec
  br i1 %cmp.n, label %bb5.i38, label %bb6.i.i.preheader

bb6.i.i.preheader:                                ; preds = %bb5.preheader.i.i, %middle.block
  %i.sroa.0.016.i.i.ph = phi i64 [ 0, %bb5.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i.preheader, %bb6.i.i
  %i.sroa.0.016.i.i = phi i64 [ %16, %bb6.i.i ], [ %i.sroa.0.016.i.i.ph, %bb6.i.i.preheader ]
  %13 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %13
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !430, !noalias !433, !noundef !19
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !434, !noalias !435
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !430, !noalias !433
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !434, !noalias !435
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !439

_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
  %_0.sroa.0.0.i40 = phi i64 [ %_26.i, %bb5.i38 ], [ %_34.i, %bb16.i43 ], [ %_36.i, %bb11.i42 ]
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %_0.sroa.0.0.i40, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %y = add i64 %_35, %factor
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %17 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %18 = trunc nuw nsw i64 %17 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !19
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !19
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.183, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.183, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %19 = or i64 %left10, %prev_run.sroa.0.183
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %21
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !445
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !461, !noalias !462, !noundef !19
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !465, !noalias !466, !noundef !19
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !440, !noalias !467
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %25, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i49 = getelementptr inbounds nuw i32, ptr %26, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %_98, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i45 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !483, !noalias !484, !noundef !19
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !487, !noalias !488, !noundef !19
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !440, !noalias !489
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %30 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %31 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %32 = sub nuw i64 %30, %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !445, !noalias !490
  br label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit

_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %35 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %36 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i53 = or i64 %v.1, 1
  %37 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i53, i1 true)
  %38 = trunc nuw nsw i64 %37 to i32
  %log.i54 = shl nuw nsw i32 %38, 1
  %limit.i55 = xor i32 %log.i54, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_8130136 = icmp samesign ult i64 %1, 33
  br i1 %_8130136, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph140 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph139 = phi i64 [ %_63.i63, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph138 = phi i32 [ %48, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph137 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = ptrtoint ptr %v.sroa.0.0.ph140 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph137, null
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %_5.i = icmp samesign ult i64 %v.sroa.16.0.lcssa, 2
  br i1 %_5.i, label %bb22, label %bb2.i

bb2.i:                                            ; preds = %bb3
  %_8.i = add nuw nsw i64 %v.sroa.16.0.lcssa, 16
  %_6.i = icmp samesign ult i64 %scratch.1, %_8.i
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2.i
  %len_div_211.i = lshr i64 %v.sroa.16.0.lcssa, 1
  %_14.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 15
  br i1 %_14.i, label %bb6.i, label %bb9.i

bb3.i:                                            ; preds = %bb2.i
  call void @llvm.trap()
  unreachable

bb9.i:                                            ; preds = %bb4.i
  %_22.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 7
  br i1 %_22.i, label %bb10.i, label %bb46.i

bb6.i:                                            ; preds = %bb4.i
  %_16.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.sroa.16.0.lcssa
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !515, !noalias !516, !noundef !19
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !518, !noalias !519, !noundef !19
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !535, !noalias !536, !noundef !19
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !537, !noalias !538, !noundef !19
  %_0.i9.i.i = icmp slt i32 %_3.i.i.i7.i.i, %_4.i.i.i8.i.i
  %count.i.i = zext i1 %_0.i.i.i to i64
  %a.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count.i.i
  %_19.i.i = xor i1 %_0.i.i.i, true
  %count2.i.i = zext i1 %_19.i.i to i64
  %b.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count2.i.i
  %count3.i.i = select i1 %_0.i9.i.i, i64 3, i64 2
  %c.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count3.i.i
  %count4.i.i = select i1 %_0.i9.i.i, i64 2, i64 3
  %d.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !554, !noalias !555, !noundef !19
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !556, !noalias !557, !noundef !19
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !573, !noalias !574, !noundef !19
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !575, !noalias !576, !noundef !19
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !19
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !19
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !19
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !19
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !592, !noalias !593, !noundef !19
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !594, !noalias !595, !noundef !19
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !498, !noalias !596
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !498, !noalias !596
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !498, !noalias !596
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !498, !noalias !596
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !612, !noalias !613, !noundef !19
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !614, !noalias !615, !noundef !19
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !631, !noalias !632, !noundef !19
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !633, !noalias !634, !noundef !19
  %_0.i9.i21.i = icmp slt i32 %_3.i.i.i7.i19.i, %_4.i.i.i8.i20.i
  %count.i22.i = zext i1 %_0.i.i16.i to i64
  %a.i23.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count.i22.i
  %_19.i24.i = xor i1 %_0.i.i16.i, true
  %count2.i25.i = zext i1 %_19.i24.i to i64
  %b.i26.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count2.i25.i
  %count3.i27.i = select i1 %_0.i9.i21.i, i64 3, i64 2
  %c.i28.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count3.i27.i
  %count4.i29.i = select i1 %_0.i9.i21.i, i64 2, i64 3
  %d.i30.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count4.i29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !650, !noalias !651, !noundef !19
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !652, !noalias !653, !noundef !19
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !669, !noalias !670, !noundef !19
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !671, !noalias !672, !noundef !19
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !19
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !19
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !19
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !19
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !688, !noalias !689, !noundef !19
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !690, !noalias !691, !noundef !19
  store i32 %14, ptr %_28.i, align 4, !alias.scope !498, !noalias !596
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !498, !noalias !596
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !498, !noalias !596
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !498, !noalias !596
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !495, !noalias !692
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !498, !noalias !596
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !495, !noalias !692
  store i32 %25, ptr %24, align 4, !alias.scope !498, !noalias !596
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !495, !noalias !692
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !498, !noalias !596
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !693, !noalias !700, !noundef !19
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !498, !noalias !596
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !704, !noalias !711, !noundef !19
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !498, !noalias !715
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %31 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count1.i.i
  %32 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i.i
  %33 = getelementptr i8, ptr %dst6.1.i, i64 -4
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.163.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %bb15.i.i
  %34 = getelementptr i8, ptr %39, i64 4
  %35 = getelementptr i8, ptr %38, i64 4
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %bb15.i.i, %bb16.loopexit.1.i
  %dst.sroa.0.029.i.i = phi ptr [ %_16.i.i.i, %bb15.i.i ], [ %v.sroa.0.0.ph.lcssa129, %bb16.loopexit.1.i ]
  %iter.sroa.0.028.i.i = phi i64 [ %_39.i.i, %bb15.i.i ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.027.i.i = phi ptr [ %_14.i.i.i, %bb15.i.i ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.026.i.i = phi ptr [ %_12.i.i.i, %bb15.i.i ], [ %dst6.1.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.025.i.i = phi ptr [ %39, %bb15.i.i ], [ %33, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.024.i.i = phi ptr [ %38, %bb15.i.i ], [ %32, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.023.i.i = phi ptr [ %40, %bb15.i.i ], [ %31, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.028.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.experimental.noalias.scope.decl(metadata !728), !noalias !731
  call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !731
  call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !731
  call void @llvm.experimental.noalias.scope.decl(metadata !739), !noalias !731
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !741, !noalias !742, !noundef !19
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !743, !noalias !744, !noundef !19
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !495, !noalias !745
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !760), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !755
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !765, !noalias !766, !noundef !19
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !767, !noalias !768, !noundef !19
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !495, !noalias !769
  %count.neg.i.i.i = sext i1 %is_l.i.i.i to i64
  %38 = getelementptr i32, ptr %right_rev.sroa.0.024.i.i, i64 %count.neg.i.i.i
  %count3.neg.i.i.i = sext i1 %_0.i21.i.i to i64
  %39 = getelementptr i32, ptr %left_rev.sroa.0.025.i.i, i64 %count3.neg.i.i.i
  %40 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %34
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !771, !noalias !596
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !495, !noalias !772
  %count2.i51.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw i32, ptr %_14.i.i.i, i64 %count2.i51.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i52.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw i32, ptr %_12.i.i.i, i64 %count3.i52.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %34
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %35
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !354

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20
          to label %.noexc.i unwind label %cleanup2.i, !noalias !773

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !774, !noalias !775
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !495, !noalias !692
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !498, !noalias !596
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !693, !noalias !700, !noundef !19
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !498, !noalias !596
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !704, !noalias !711, !noundef !19
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !498, !noalias !715
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i: ; preds = %bb10.i.i, %bb24.i
  %_80.i = icmp ult i64 %iter1.sroa.0.165.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.165.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %48 = add i32 %limit.sroa.0.0131, -1
  %len_div_84.i = lshr i64 %v.sroa.16.0132, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0132, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !785), !noalias !788
  call void @llvm.experimental.noalias.scope.decl(metadata !791), !noalias !788
  call void @llvm.experimental.noalias.scope.decl(metadata !793), !noalias !788
  call void @llvm.experimental.noalias.scope.decl(metadata !796), !noalias !788
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !798, !noalias !801, !noundef !19
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !803, !noalias !804, !noundef !19
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !805, !noalias !812, !noundef !19
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %bb3.i23, %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %_0.sroa.0.0.i.i, %bb3.i23 ], [ %self.i, %bb5.i ]
  %50 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %51 = sub nuw i64 %50, %4
  %index.sroa.0.0.i = lshr exact i64 %51, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0132
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph140, i64 %51
  %value = load i32, ptr %src, align 4, !noundef !19
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !816, !noalias !823, !noundef !19
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !354

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr i32, ptr %scratch.0, i64 %v.sroa.16.0132
  br label %bb3.i26

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i26:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.27.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.27.2.lcssa.i, %bb23.i ]
  %state.sroa.9.0.i = phi ptr [ %v.sroa.0.0.ph140, %bb33.i ], [ %_9.i70.i, %bb23.i ]
  %state.sroa.43.0.i = phi ptr [ %_86.i, %bb33.i ], [ %63, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0132, %bb23.i ]
  %52 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i, i64 3)
  %unroll_end.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %52
  %_1984.i = icmp ult ptr %state.sroa.9.0.i, %unroll_end.i
  br i1 %_1984.i, label %bb6.i28.preheader, label %bb16.i

bb6.i28.preheader:                                ; preds = %bb3.i26
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !832, !noalias !839, !noundef !19
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !849, !noalias !850, !noundef !19
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !830, !noalias !851
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !854, !noalias !861, !noundef !19
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !830, !noalias !865
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !868, !noalias !875, !noundef !19
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !830, !noalias !879
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !882, !noalias !889, !noundef !19
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !830, !noalias !893
  %_8.i53.i = zext i1 %_0.i47.i to i64
  %60 = add i64 %58, %_8.i53.i
  %_9.i54.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 16
  %_19.i32 = icmp ult ptr %_9.i54.i, %unroll_end.i
  br i1 %_19.i32, label %bb6.i28, label %bb16.i

bb16.i:                                           ; preds = %bb6.i28, %bb3.i26
  %state.sroa.27.1.lcssa.i = phi i64 [ %state.sroa.27.0.i, %bb3.i26 ], [ %60, %bb6.i28 ]
  %state.sroa.9.1.lcssa.i = phi ptr [ %state.sroa.9.0.i, %bb3.i26 ], [ %_9.i54.i, %bb6.i28 ]
  %state.sroa.43.1.lcssa.i = phi ptr [ %state.sroa.43.0.i, %bb3.i26 ], [ %59, %bb6.i28 ]
  %loop_end.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %pivot_pos.sroa.0.0.i
  %_4790.i = icmp ult ptr %state.sroa.9.1.lcssa.i, %loop_end.i
  br i1 %_4790.i, label %bb18.i.preheader, label %bb21.i

bb18.i.preheader:                                 ; preds = %bb16.i
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !896, !noalias !903, !noundef !19
  br label %bb18.i

bb21.i:                                           ; preds = %bb18.i, %bb16.i
  %state.sroa.27.2.lcssa.i = phi i64 [ %state.sroa.27.1.lcssa.i, %bb16.i ], [ %62, %bb18.i ]
  %state.sroa.9.2.lcssa.i = phi ptr [ %state.sroa.9.1.lcssa.i, %bb16.i ], [ %_9.i64.i, %bb18.i ]
  %state.sroa.43.2.lcssa.i = phi ptr [ %state.sroa.43.1.lcssa.i, %bb16.i ], [ %61, %bb18.i ]
  %_55.i27 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0132
  br i1 %_55.i27, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb18.i.preheader, %bb18.i
  %state.sroa.43.293.i = phi ptr [ %61, %bb18.i ], [ %state.sroa.43.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.9.292.i = phi ptr [ %_9.i64.i, %bb18.i ], [ %state.sroa.9.1.lcssa.i, %bb18.i.preheader ]
  %state.sroa.27.291.i = phi i64 [ %62, %bb18.i ], [ %state.sroa.27.1.lcssa.i, %bb18.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !913, !noalias !914, !noundef !19
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !830, !noalias !915
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !827, !noalias !918
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !830, !noalias !921
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !922
  %_63.i = sub i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i
  %_9797.not.i = icmp eq i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i
  br i1 %_9797.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %66 = getelementptr i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
  %min.iters.check265 = icmp ult i64 %_63.i, 8
  br i1 %min.iters.check265, label %bb42.i.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %bb42.lr.ph.i
  %n.vec268 = and i64 %_63.i, -8
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph266
  %index270 = phi i64 [ 0, %vector.ph266 ], [ %index.next275, %vector.body269 ]
  %67 = getelementptr i32, ptr %66, i64 %index270
  %68 = xor i64 %index270, -1
  %69 = getelementptr i32, ptr %_86.i, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -12
  %71 = getelementptr i8, ptr %69, i64 -28
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !830, !noalias !827
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !830, !noalias !827
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !827, !noalias !830
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !827, !noalias !830
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !923

middle.block276:                                  ; preds = %vector.body269
  %cmp.n277 = icmp eq i64 %_63.i, %n.vec268
  br i1 %cmp.n277, label %bb16, label %bb42.i.preheader

bb42.i.preheader:                                 ; preds = %bb42.lr.ph.i, %middle.block276
  %iter.sroa.0.098.i.ph = phi i64 [ 0, %bb42.lr.ph.i ], [ %n.vec268, %middle.block276 ]
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i.preheader, %bb42.i
  %iter.sroa.0.098.i = phi i64 [ %74, %bb42.i ], [ %iter.sroa.0.098.i.ph, %bb42.i.preheader ]
  %74 = add nuw i64 %iter.sroa.0.098.i, 1
  %75 = getelementptr i32, ptr %66, i64 %iter.sroa.0.098.i
  %76 = xor i64 %iter.sroa.0.098.i, -1
  %77 = getelementptr i32, ptr %_86.i, i64 %76
  %78 = load i32, ptr %77, align 4, !alias.scope !830, !noalias !827
  store i32 %78, ptr %75, align 4, !alias.scope !827, !noalias !830
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !924

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit", !prof !925

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #20, !noalias !926
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !354

bb33.i38:                                         ; preds = %bb17
  %_86.i40 = getelementptr i32, ptr %scratch.0, i64 %v.sroa.16.0132
  br label %bb3.i41

bb31.i37:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i41:                                          ; preds = %bb23.i59, %bb33.i38
  %state.sroa.27.0.i42 = phi i64 [ 0, %bb33.i38 ], [ %94, %bb23.i59 ]
  %state.sroa.9.0.i43 = phi ptr [ %v.sroa.0.0.ph140, %bb33.i38 ], [ %_9.i70.i61, %bb23.i59 ]
  %state.sroa.43.0.i44 = phi ptr [ %_86.i40, %bb33.i38 ], [ %92, %bb23.i59 ]
  %pivot_pos.sroa.0.0.i45 = phi i64 [ %index.sroa.0.0.i, %bb33.i38 ], [ %v.sroa.16.0132, %bb23.i59 ]
  %81 = call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0.i45, i64 3)
  %unroll_end.i46 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %81
  %_1984.i47 = icmp ult ptr %state.sroa.9.0.i43, %unroll_end.i46
  br i1 %_1984.i47, label %bb6.i78.preheader, label %bb16.i48

bb6.i78.preheader:                                ; preds = %bb3.i41
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !935, !noalias !944, !noundef !19
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !957, !noalias !958, !noundef !19
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !933, !noalias !959
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !962, !noalias !971, !noundef !19
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !933, !noalias !976
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !979, !noalias !988, !noundef !19
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !933, !noalias !993
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !996, !noalias !1005, !noundef !19
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !933, !noalias !1010
  %_8.i53.i99 = zext i1 %_0.i.i47.i to i64
  %89 = add i64 %87, %_8.i53.i99
  %_9.i54.i100 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 16
  %_19.i101 = icmp ult ptr %_9.i54.i100, %unroll_end.i46
  br i1 %_19.i101, label %bb6.i78, label %bb16.i48

bb16.i48:                                         ; preds = %bb6.i78, %bb3.i41
  %state.sroa.27.1.lcssa.i49 = phi i64 [ %state.sroa.27.0.i42, %bb3.i41 ], [ %89, %bb6.i78 ]
  %state.sroa.9.1.lcssa.i50 = phi ptr [ %state.sroa.9.0.i43, %bb3.i41 ], [ %_9.i54.i100, %bb6.i78 ]
  %state.sroa.43.1.lcssa.i51 = phi ptr [ %state.sroa.43.0.i44, %bb3.i41 ], [ %88, %bb6.i78 ]
  %loop_end.i52 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %pivot_pos.sroa.0.0.i45
  %_4790.i53 = icmp ult ptr %state.sroa.9.1.lcssa.i50, %loop_end.i52
  br i1 %_4790.i53, label %bb18.i69.preheader, label %bb21.i54

bb18.i69.preheader:                               ; preds = %bb16.i48
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1013, !noalias !1022, !noundef !19
  br label %bb18.i69

bb21.i54:                                         ; preds = %bb18.i69, %bb16.i48
  %state.sroa.27.2.lcssa.i55 = phi i64 [ %state.sroa.27.1.lcssa.i49, %bb16.i48 ], [ %91, %bb18.i69 ]
  %state.sroa.9.2.lcssa.i56 = phi ptr [ %state.sroa.9.1.lcssa.i50, %bb16.i48 ], [ %_9.i64.i76, %bb18.i69 ]
  %state.sroa.43.2.lcssa.i57 = phi ptr [ %state.sroa.43.1.lcssa.i51, %bb16.i48 ], [ %90, %bb18.i69 ]
  %_55.i58 = icmp eq i64 %pivot_pos.sroa.0.0.i45, %v.sroa.16.0132
  br i1 %_55.i58, label %bb22.i62, label %bb23.i59

bb18.i69:                                         ; preds = %bb18.i69.preheader, %bb18.i69
  %state.sroa.43.293.i70 = phi ptr [ %90, %bb18.i69 ], [ %state.sroa.43.1.lcssa.i51, %bb18.i69.preheader ]
  %state.sroa.9.292.i71 = phi ptr [ %_9.i64.i76, %bb18.i69 ], [ %state.sroa.9.1.lcssa.i50, %bb18.i69.preheader ]
  %state.sroa.27.291.i72 = phi i64 [ %91, %bb18.i69 ], [ %state.sroa.27.1.lcssa.i49, %bb18.i69.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1035, !noalias !1036, !noundef !19
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !933, !noalias !1037
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !930, !noalias !1040
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !933, !noalias !1043
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1044
  %_63.i63 = sub i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i55
  %_9797.not.i64 = icmp eq i64 %v.sroa.16.0132, %state.sroa.27.2.lcssa.i55
  br i1 %_9797.not.i64, label %bb3.thread, label %bb42.lr.ph.i65

bb42.lr.ph.i65:                                   ; preds = %bb22.i62
  %96 = getelementptr i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  %min.iters.check = icmp ult i64 %_63.i63, 8
  br i1 %min.iters.check, label %bb42.i66.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb42.lr.ph.i65
  %n.vec = and i64 %_63.i63, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %97 = getelementptr i32, ptr %96, i64 %index
  %98 = xor i64 %index, -1
  %99 = getelementptr i32, ptr %_86.i40, i64 %98
  %100 = getelementptr i8, ptr %99, i64 -12
  %101 = getelementptr i8, ptr %99, i64 -28
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !933, !noalias !930
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !933, !noalias !930
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !930, !noalias !933
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !930, !noalias !933
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !933, !noalias !930
  store i32 %108, ptr %105, align 4, !alias.scope !930, !noalias !933
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E.exit, label %bb42.i66, !llvm.loop !1046

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !925

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #20
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; hashbrown::raw::RawTable<T,A>::reserve_rehash
; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %fallibility) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1.i = load i64, ptr %1, align 8, !alias.scope !1047, !noalias !1050, !noundef !19
  %_21.0.i = add i64 %self1.i, %additional
  %_21.1.i = icmp ult i64 %_21.0.i, %self1.i
  br i1 %_21.1.i, label %bb9.i, label %bb11.i, !prof !925

bb11.i:                                           ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %3 = load i64, ptr %2, align 8, !alias.scope !1047, !noalias !1050, !noundef !19
  %_24.i = icmp ult i64 %3, 8
  %_26.i = add i64 %3, 1
  %_255.i = lshr i64 %_26.i, 3
  %4 = mul nuw i64 %_255.i, 7
  %full_capacity.sroa.0.0.i = select i1 %_24.i, i64 %3, i64 %4
  %_146.i = lshr i64 %full_capacity.sroa.0.0.i, 1
  %_13.not.i = icmp ugt i64 %_21.0.i, %_146.i
  br i1 %_13.not.i, label %bb4.i, label %bb2.i

bb9.i:                                            ; preds = %start
; call hashbrown::raw::Fallibility::capacity_overflow
  %5 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1052
  %_11.0.i = extractvalue { i64, i64 } %5, 0
  %_11.1.i = extractvalue { i64, i64 } %5, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

bb4.i:                                            ; preds = %bb11.i
  %_19.i = add nuw i64 %full_capacity.sroa.0.0.i, 1
  %_0.sroa.0.0.i3 = tail call noundef i64 @llvm.umax.i64(i64 %_19.i, i64 %_21.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %_6.i.i = icmp ult i64 %_0.sroa.0.0.i3, 15
  br i1 %_6.i.i, label %bb10.thread.i, label %bb16.i.i6

bb16.i.i6:                                        ; preds = %bb4.i
  %_33.1.i.i = icmp ugt i64 %_0.sroa.0.0.i3, 2305843009213693951
  br i1 %_33.1.i.i, label %bb9.i9, label %bb10.i, !prof !925

bb10.thread.i:                                    ; preds = %bb4.i
  %_15.i.i = icmp samesign ult i64 %_0.sroa.0.0.i3, 4
  %6 = and i64 %_0.sroa.0.0.i3, 8
  %..i.i = add nuw nsw i64 %6, 8
  %buckets.sroa.0.0.i.i = select i1 %_15.i.i, i64 4, i64 %..i.i
  br label %bb11.i.i.i

bb10.i:                                           ; preds = %bb16.i.i6
  %_33.0.i.i = shl nuw i64 %_0.sroa.0.0.i3, 3
  %adjusted_cap.i.i = udiv i64 %_33.0.i.i, 7
  %p.i.i = add nsw i64 %adjusted_cap.i.i, -1
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %p.i.i, i1 true)
  %8 = lshr i64 -1, %7
  %9 = add nuw nsw i64 %8, 1
  %_32.1.i.i.i = icmp samesign ugt i64 %8, 4611686018427387899
  br i1 %_32.1.i.i.i, label %bb3.i.i8, label %bb11.i.i.i, !prof !1056

bb11.i.i.i:                                       ; preds = %bb10.i, %bb10.thread.i
  %_0.sroa.4.0.i.ph23.i = phi i64 [ %buckets.sroa.0.0.i.i, %bb10.thread.i ], [ %9, %bb10.i ]
  %_25.0.i.i.i = shl nuw i64 %_0.sroa.4.0.i.ph23.i, 2
  %_32.0.i.i.i = add nuw i64 %_25.0.i.i.i, 15
  %ctrl_offset.i.i.i = and i64 %_32.0.i.i.i, -16
  %rhs5.i.i.i = add nuw nsw i64 %_0.sroa.4.0.i.ph23.i, 16
  %_37.0.i.i.i = add i64 %ctrl_offset.i.i.i, %rhs5.i.i.i
  %_37.1.i.i.i = icmp ult i64 %_37.0.i.i.i, %ctrl_offset.i.i.i
  %_19.i.i.i = icmp ugt i64 %_37.0.i.i.i, 9223372036854775792
  %or.cond.i.i = or i1 %_37.1.i.i.i, %_19.i.i.i
  br i1 %or.cond.i.i, label %bb3.i.i8, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", !prof !355

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb11.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1057
; call __rustc::__rust_alloc
  %10 = tail call noundef align 16 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_37.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !1057
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb15.i.i7, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit

bb3.i.i8:                                         ; preds = %bb11.i.i.i, %bb10.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %12 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1057
  br label %bb14.i.i

bb15.i.i7:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
; call hashbrown::raw::Fallibility::alloc_err
  %13 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext %fallibility, i64 noundef 16, i64 noundef %_37.0.i.i.i), !noalias !1057
  br label %bb14.i.i

bb9.i9:                                           ; preds = %bb16.i.i6
; call hashbrown::raw::Fallibility::capacity_overflow
  %14 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1062
  br label %bb14.i.i

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_26.i.i = add nsw i64 %_0.sroa.4.0.i.ph23.i, -1
  %_35.i.i = icmp samesign ult i64 %_26.i.i, 8
  %_367.i.i = lshr i64 %_0.sroa.4.0.i.ph23.i, 3
  %15 = mul nuw nsw i64 %_367.i.i, 7
  %bucket_mask.sroa.0.0.i.i = select i1 %_35.i.i, i64 %_26.i.i, i64 %15
  %ptr.i.i = getelementptr inbounds nuw i8, ptr %10, i64 %ctrl_offset.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %ptr.i.i, i8 -1, i64 %rhs5.i.i.i, i1 false), !noalias !1062
  %16 = ptrtoint ptr %ptr.i.i to i64
  %invariant.gep = getelementptr i8, ptr %ptr.i.i, i64 16
  %_69.not.i.i59 = icmp eq i64 %self1.i, 0
  br i1 %_69.not.i.i59, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit.bb4.i.i_crit_edge, label %bb1.i.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit.bb4.i.i_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit
  %_3.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %self, align 8, !alias.scope !1063, !noalias !1066
  %_3.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %_3.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %bb4.i.i

bb1.i.preheader.lr.ph:                            ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit
  %_58.i.i = load ptr, ptr %self, align 8, !alias.scope !1068, !noalias !1069, !nonnull !19, !noundef !19
  %17 = load <16 x i8>, ptr %_58.i.i, align 16, !noalias !1071
  %18 = icmp slt <16 x i8> %17, zeroinitializer
  %19 = bitcast <16 x i1> %18 to i16
  %_67.i.i = xor i16 %19, -1
  %invariant.gep64 = getelementptr i8, ptr %_58.i.i, i64 -4
  %key0.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !1074, !noalias !1079, !noundef !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i = load i64, ptr %20, align 8, !alias.scope !1074, !noalias !1079, !noundef !19
  %21 = xor i64 %key0.i.i.i.i, 8317987319222330741
  %22 = xor i64 %key1.i.i.i.i, 7237128888997146477
  %23 = xor i64 %key0.i.i.i.i, 7816392313619706465
  %_2.i.i.i.i.i.i = add i64 %22, %21
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 13)
  %25 = xor i64 %24, %_2.i.i.i.i.i.i
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i, i64 32)
  %invariant.op66 = add i64 %23, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 17)
  %invariant.op94 = xor i64 %key1.i.i.i.i, 8387220255154660723
  br label %bb1.i.preheader

bb14.i.i:                                         ; preds = %bb3.i.i8, %bb15.i.i7, %bb9.i9
  %.pn = phi { i64, i64 } [ %14, %bb9.i9 ], [ %13, %bb15.i.i7 ], [ %12, %bb3.i.i8 ]
  %self1.sroa.7.0.i.i.ph = extractvalue { i64, i64 } %.pn, 0
  %self1.sroa.9.0.i.i.ph = extractvalue { i64, i64 } %.pn, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

bb1.i.preheader:                                  ; preds = %bb1.i.preheader.lr.ph, %bb22.i.i
  %iter.i.i.sroa.0.063 = phi ptr [ %_58.i.i, %bb1.i.preheader.lr.ph ], [ %iter.i.i.sroa.0.2.lcssa, %bb22.i.i ]
  %iter.i.i.sroa.5.062 = phi i64 [ 0, %bb1.i.preheader.lr.ph ], [ %iter.i.i.sroa.5.2.lcssa, %bb22.i.i ]
  %iter.i.i.sroa.9.061 = phi i64 [ %self1.i, %bb1.i.preheader.lr.ph ], [ %34, %bb22.i.i ]
  %iter.i.i.sroa.13.060 = phi i16 [ %_67.i.i, %bb1.i.preheader.lr.ph ], [ %_31.i, %bb22.i.i ]
  %.not.i54 = icmp eq i16 %iter.i.i.sroa.13.060, 0
  br i1 %.not.i54, label %_42.i.noexc, label %bb18.i.i

_42.i.noexc:                                      ; preds = %bb1.i.preheader, %_42.i.noexc
  %iter.i.i.sroa.0.256 = phi ptr [ %ptr.i, %_42.i.noexc ], [ %iter.i.i.sroa.0.063, %bb1.i.preheader ]
  %iter.i.i.sroa.5.255 = phi i64 [ %31, %_42.i.noexc ], [ %iter.i.i.sroa.5.062, %bb1.i.preheader ]
  %ptr.i = getelementptr inbounds nuw i8, ptr %iter.i.i.sroa.0.256, i64 16
  %28 = load <16 x i8>, ptr %ptr.i, align 16, !noalias !1088
  %29 = icmp slt <16 x i8> %28, zeroinitializer
  %30 = bitcast <16 x i1> %29 to i16
  %31 = add i64 %iter.i.i.sroa.5.255, 16
  %.not.i = icmp eq i16 %30, -1
  br i1 %.not.i, label %_42.i.noexc, label %bb18.i.i.loopexit

bb18.i.i.loopexit:                                ; preds = %_42.i.noexc
  %_43.i = xor i16 %30, -1
  br label %bb18.i.i

bb18.i.i:                                         ; preds = %bb18.i.i.loopexit, %bb1.i.preheader
  %iter.i.i.sroa.13.2.lcssa = phi i16 [ %iter.i.i.sroa.13.060, %bb1.i.preheader ], [ %_43.i, %bb18.i.i.loopexit ]
  %iter.i.i.sroa.5.2.lcssa = phi i64 [ %iter.i.i.sroa.5.062, %bb1.i.preheader ], [ %31, %bb18.i.i.loopexit ]
  %iter.i.i.sroa.0.2.lcssa = phi ptr [ %iter.i.i.sroa.0.063, %bb1.i.preheader ], [ %ptr.i, %bb18.i.i.loopexit ]
  %32 = add i16 %iter.i.i.sroa.13.2.lcssa, -1
  %33 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.i.i.sroa.13.2.lcssa, i1 true)
  %_22.i = zext nneg i16 %33 to i64
  %_31.i = and i16 %32, %iter.i.i.sroa.13.2.lcssa
  %_5.i = add i64 %iter.i.i.sroa.5.2.lcssa, %_22.i
  %34 = add i64 %iter.i.i.sroa.9.061, -1
  %_18.i = sub nsw i64 0, %_5.i
  %gep65 = getelementptr i32, ptr %invariant.gep64, i64 %_18.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %_4.i.i.i.i.i = load i32, ptr %gep65, align 4, !range !1094, !alias.scope !1095, !noalias !1098, !noundef !19
  %.pre.i.i.i.i.i.i = zext nneg i32 %_4.i.i.i.i.i to i64
  %b.i.i.i.i.i = or disjoint i64 %.pre.i.i.i.i.i.i, 288230376151711744
  %.reass78.reass = xor i64 %b.i.i.i.i.i, %invariant.op94
  %_5.i.i.i3.i.i.i = add i64 %.reass78.reass, %23
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass78.reass, i64 %.reass78.reass, i64 16)
  %36 = xor i64 %35, %_5.i.i.i3.i.i.i
  %_16.i.i.i.i.i.i.reass = add i64 %.reass78.reass, %invariant.op66
  %_19.i.i.i.i.i.i = add i64 %36, %26
  %37 = xor i64 %_16.i.i.i.i.i.i.reass, %27
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 21)
  %39 = xor i64 %38, %_19.i.i.i.i.i.i
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.reass, i64 32)
  %41 = xor i64 %_19.i.i.i.i.i.i, %b.i.i.i.i.i
  %42 = xor i64 %40, 255
  %_2.i3.i.i.i.i.i = add i64 %41, %37
  %_5.i6.i.i.i.i.i = add i64 %39, %42
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 13)
  %44 = xor i64 %_2.i3.i.i.i.i.i, %43
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 16)
  %46 = xor i64 %45, %_5.i6.i.i.i.i.i
  %47 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i = add i64 %44, %_5.i6.i.i.i.i.i
  %_19.i8.i.i.i.i.i = add i64 %46, %47
  %48 = tail call noundef i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 17)
  %49 = xor i64 %_16.i7.i.i.i.i.i, %48
  %50 = tail call noundef i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 21)
  %51 = xor i64 %50, %_19.i8.i.i.i.i.i
  %52 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i = add i64 %49, %_19.i8.i.i.i.i.i
  %_33.i.i.i.i.i.i = add i64 %51, %52
  %53 = tail call noundef i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 13)
  %54 = xor i64 %53, %_30.i.i.i.i.i.i
  %55 = tail call noundef i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 16)
  %56 = xor i64 %55, %_33.i.i.i.i.i.i
  %57 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i = add i64 %54, %_33.i.i.i.i.i.i
  %_47.i.i.i.i.i.i = add i64 %56, %57
  %58 = tail call noundef i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 17)
  %59 = xor i64 %58, %_44.i.i.i.i.i.i
  %60 = tail call noundef i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 21)
  %61 = xor i64 %60, %_47.i.i.i.i.i.i
  %62 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i = add i64 %59, %_47.i.i.i.i.i.i
  %_61.i.i.i.i.i.i = add i64 %61, %62
  %63 = tail call noundef i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 13)
  %64 = xor i64 %63, %_58.i.i.i.i.i.i
  %65 = tail call noundef i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 16)
  %66 = xor i64 %65, %_61.i.i.i.i.i.i
  %_72.i.i.i.i.i.i = add i64 %64, %_61.i.i.i.i.i.i
  %67 = tail call noundef i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 17)
  %68 = tail call noundef i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 21)
  %69 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i, i64 32)
  %70 = xor i64 %68, %67
  %71 = xor i64 %70, %69
  %_0.i.i.i.i.i = xor i64 %71, %_72.i.i.i.i.i.i
  %probe_seq.sroa.0.010.i = and i64 %_0.i.i.i.i.i, %_26.i.i
  %_1811.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %probe_seq.sroa.0.010.i
  %dst.sroa.0.0.copyload.i912.i = load <16 x i8>, ptr %_1811.i, align 1, !noalias !1103
  %72 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i912.i, zeroinitializer
  %73 = bitcast <16 x i1> %72 to i16
  %.not.i13.i = icmp eq i16 %73, 0
  br i1 %.not.i13.i, label %bb6.i, label %bb9.i15, !prof !1108

bb4.i.i:                                          ; preds = %bb22.i.i, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit.bb4.i.i_crit_edge
  %_3.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %_3.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit.bb4.i.i_crit_edge ], [ %_58.i.i, %bb22.i.i ]
  %74 = sub i64 %bucket_mask.sroa.0.0.i.i, %self1.i
  store i64 %16, ptr %self, align 8, !alias.scope !1063, !noalias !1066
  store i64 %_26.i.i, ptr %2, align 8, !alias.scope !1109, !noalias !1111
  %_11.i.i.2.i.i = getelementptr inbounds nuw i8, ptr %self, i64 16
  store i64 %74, ptr %_11.i.i.2.i.i, align 8, !alias.scope !1113, !noalias !1115
  %_3.i.i.i = icmp eq i64 %3, 0
  br i1 %_3.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb4.i.i
  %_10.i.i.i = shl i64 %3, 2
  %75 = add i64 %_10.i.i.i, 4
  %_32.0.i.i.i.i = add i64 %_10.i.i.i, 19
  %_32.1.i.i.i.i = icmp uge i64 %_32.0.i.i.i.i, %75
  tail call void @llvm.assume(i1 %_32.1.i.i.i.i)
  %ctrl_offset.i.i.i.i = and i64 %_32.0.i.i.i.i, -16
  %rhs5.i.i.i.i = add i64 %3, 17
  %_37.0.i.i.i.i = add i64 %rhs5.i.i.i.i, %ctrl_offset.i.i.i.i
  %_37.1.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i, %ctrl_offset.i.i.i.i
  %_19.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i)
  %_4.not.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit, label %bb1.i1.i.i.i

bb1.i1.i.i.i:                                     ; preds = %bb1.i.i.i
  %_18.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i
  %ptr.i.i.i = getelementptr inbounds i8, ptr %_3.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %_18.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i, i64 noundef %_37.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !1117
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

bb6.i:                                            ; preds = %bb18.i.i, %bb6.i
  %probe_seq.sroa.0.014.i = phi i64 [ %probe_seq.sroa.0.0.i, %bb6.i ], [ %probe_seq.sroa.0.010.i, %bb18.i.i ]
  %76 = phi i64 [ %77, %bb6.i ], [ 0, %bb18.i.i ]
  %77 = add i64 %76, 16
  %78 = add i64 %77, %probe_seq.sroa.0.014.i
  %probe_seq.sroa.0.0.i = and i64 %78, %_26.i.i
  %_18.i17 = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %probe_seq.sroa.0.0.i
  %dst.sroa.0.0.copyload.i9.i = load <16 x i8>, ptr %_18.i17, align 1, !noalias !1103
  %79 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i9.i, zeroinitializer
  %80 = bitcast <16 x i1> %79 to i16
  %.not.i.i = icmp eq i16 %80, 0
  br i1 %.not.i.i, label %bb6.i, label %bb9.i15, !prof !1125

bb9.i15:                                          ; preds = %bb6.i, %bb18.i.i
  %probe_seq.sroa.0.0.lcssa.i = phi i64 [ %probe_seq.sroa.0.010.i, %bb18.i.i ], [ %probe_seq.sroa.0.0.i, %bb6.i ]
  %.lcssa.i = phi i16 [ %73, %bb18.i.i ], [ %80, %bb6.i ]
  %81 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %_17.i.i = zext nneg i16 %81 to i64
  %_8.i.i = add nuw nsw i64 %probe_seq.sroa.0.0.lcssa.i, %_17.i.i
  %_7.i.i = and i64 %_8.i.i, %_26.i.i
  %_8.i4.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %_7.i.i
  %_12.i.i = load i8, ptr %_8.i4.i, align 1, !noalias !1126, !noundef !19
  %b.i.i = icmp sgt i8 %_12.i.i, -1
  br i1 %b.i.i, label %bb2.i.i16, label %bb22.i.i, !prof !925

bb2.i.i16:                                        ; preds = %bb9.i15
  %82 = load <16 x i8>, ptr %ptr.i.i, align 16, !noalias !1129
  %83 = icmp slt <16 x i8> %82, zeroinitializer
  %84 = bitcast <16 x i1> %83 to i16
  %85 = icmp ne i16 %84, 0
  tail call void @llvm.assume(i1 %85)
  %86 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %84, i1 true)
  %_25.i.i = zext nneg i16 %86 to i64
  br label %bb22.i.i

bb22.i.i:                                         ; preds = %bb2.i.i16, %bb9.i15
  %index.sroa.0.0.i.i = phi i64 [ %_25.i.i, %bb2.i.i16 ], [ %_7.i.i, %bb9.i15 ]
  %_75.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %index.sroa.0.0.i.i
  %_79.i.i = lshr i64 %_0.i.i.i.i.i, 57
  %_80.i.i = trunc nuw nsw i64 %_79.i.i to i8
  %_84.i.i = add nsw i64 %index.sroa.0.0.i.i, -16
  %_83.i.i = and i64 %_84.i.i, %_26.i.i
  store i8 %_80.i.i, ptr %_75.i.i, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %_83.i.i
  store i8 %_80.i.i, ptr %gep, align 1
  %_96.i.i = shl i64 %_5.i, 2
  %_98.i.i = sub nuw nsw i64 -4, %_96.i.i
  %_23.i.i = getelementptr inbounds i8, ptr %_58.i.i, i64 %_98.i.i
  %_102.i.i = shl nuw i64 %index.sroa.0.0.i.i, 2
  %_104.i.i = sub nuw nsw i64 -4, %_102.i.i
  %dst.i.i = getelementptr inbounds i8, ptr %ptr.i.i, i64 %_104.i.i
  %87 = load i32, ptr %_23.i.i, align 1
  store i32 %87, ptr %dst.i.i, align 4
  %_69.not.i.i = icmp eq i64 %34, 0
  br i1 %_69.not.i.i, label %bb4.i.i, label %bb1.i.preheader

bb2.i:                                            ; preds = %bb11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135), !noalias !1050
  %_27.not6.i.i = icmp eq i64 %_26.i, 0
  %_52.i.pre.pre.i = load ptr, ptr %self, align 8, !alias.scope !1138, !noalias !1050
  br i1 %_27.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit, label %bb6.lr.ph.i.i

bb6.lr.ph.i.i:                                    ; preds = %bb2.i
  %d9.i.i.i.i = lshr i64 %_26.i, 4
  %r2.i.i.i.i = and i64 %_26.i, 15
  %_19.not.i.i.i.i = icmp ne i64 %r2.i.i.i.i, 0
  %88 = zext i1 %_19.not.i.i.i.i to i64
  %yield_count.sroa.0.0.i.i.i.i = add nuw nsw i64 %d9.i.i.i.i, %88
  %xtraiter = and i64 %yield_count.sroa.0.0.i.i.i.i, 1
  %89 = icmp eq i64 %yield_count.sroa.0.0.i.i.i.i, 1
  br i1 %89, label %bb7.i.i.unr-lcssa, label %bb6.lr.ph.i.i.new

bb6.lr.ph.i.i.new:                                ; preds = %bb6.lr.ph.i.i
  %unroll_iter = and i64 %yield_count.sroa.0.0.i.i.i.i, 2305843009213693950
  %invariant.gep91 = getelementptr i8, ptr %_52.i.pre.pre.i, i64 16
  br label %bb6.i.i

bb7.i.i.unr-lcssa:                                ; preds = %bb6.i.i, %bb6.lr.ph.i.i
  %iter.sroa.0.08.i.i.unr = phi i64 [ 0, %bb6.lr.ph.i.i ], [ %_29.i.i.1, %bb6.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7.i.i, label %bb6.i.i.epil

bb6.i.i.epil:                                     ; preds = %bb7.i.i.unr-lcssa
  %_34.i.i.epil = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.08.i.i.unr
  %90 = load <16 x i8>, ptr %_34.i.i.epil, align 16, !noalias !1139
  %_410.lobit.i.i.i.epil = ashr <16 x i8> %90, splat (i8 7)
  %91 = bitcast <16 x i8> %_410.lobit.i.i.i.epil to <2 x i64>
  %92 = or <2 x i64> %91, splat (i64 -9187201950435737472)
  store <2 x i64> %92, ptr %_34.i.i.epil, align 16, !noalias !1142
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb7.i.i.unr-lcssa, %bb6.i.i.epil
  %._4.i.i = tail call i64 @llvm.umax.i64(i64 %_26.i, i64 16)
  %_4.i..i = tail call i64 @llvm.umin.i64(i64 %_26.i, i64 16)
  %_53.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %._4.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i, ptr nonnull align 1 %_52.i.pre.pre.i, i64 %_4.i..i, i1 false), !noalias !1145
  %invariant.gep28.i = getelementptr i8, ptr %_52.i.pre.pre.i, i64 -4
  %invariant.gep.i = getelementptr i8, ptr %_52.i.pre.pre.i, i64 16
  %key0.i.i.i.i.i = load i64, ptr %0, align 8
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i.i = load i64, ptr %93, align 8
  %94 = xor i64 %key0.i.i.i.i.i, 8317987319222330741
  %95 = xor i64 %key1.i.i.i.i.i, 7237128888997146477
  %96 = xor i64 %key0.i.i.i.i.i, 7816392313619706465
  %_2.i.i.i.i.i.i.i = add i64 %95, %94
  %97 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 13)
  %98 = xor i64 %97, %_2.i.i.i.i.i.i.i
  %99 = tail call i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i.i, i64 32)
  %invariant.op = add i64 %96, %98
  %100 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 17)
  %invariant.op93 = xor i64 %key1.i.i.i.i.i, 8387220255154660723
  br label %bb4.i18

bb6.i.i:                                          ; preds = %bb6.i.i, %bb6.lr.ph.i.i.new
  %iter.sroa.0.08.i.i = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %_29.i.i.1, %bb6.i.i ]
  %niter = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %niter.next.1, %bb6.i.i ]
  %_34.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.08.i.i
  %101 = load <16 x i8>, ptr %_34.i.i, align 16, !noalias !1139
  %_410.lobit.i.i.i = ashr <16 x i8> %101, splat (i8 7)
  %102 = bitcast <16 x i8> %_410.lobit.i.i.i to <2 x i64>
  %103 = or <2 x i64> %102, splat (i64 -9187201950435737472)
  store <2 x i64> %103, ptr %_34.i.i, align 16, !noalias !1142
  %_29.i.i.1 = add i64 %iter.sroa.0.08.i.i, 32
  %gep92 = getelementptr i8, ptr %invariant.gep91, i64 %iter.sroa.0.08.i.i
  %104 = load <16 x i8>, ptr %gep92, align 16, !noalias !1139
  %_410.lobit.i.i.i.1 = ashr <16 x i8> %104, splat (i8 7)
  %105 = bitcast <16 x i8> %_410.lobit.i.i.i.1 to <2 x i64>
  %106 = or <2 x i64> %105, splat (i64 -9187201950435737472)
  store <2 x i64> %106, ptr %gep92, align 16, !noalias !1142
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.i.i.unr-lcssa, label %bb6.i.i

bb4.i18:                                          ; preds = %bb14.i, %bb7.i.i
  %iter.sroa.0.127.i = phi i64 [ 1, %bb7.i.i ], [ %iter.sroa.0.1.i, %bb14.i ]
  %iter.sroa.0.026.i = phi i64 [ 0, %bb7.i.i ], [ %iter.sroa.0.127.i, %bb14.i ]
  %_69.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.026.i
  %_73.i = load i8, ptr %_69.i, align 1, !noalias !1146, !noundef !19
  %_72.not.i = icmp eq i8 %_73.i, -128
  br i1 %_72.not.i, label %bb7.i, label %bb14.i

bb7.i:                                            ; preds = %bb4.i18
  %_76.i = shl i64 %iter.sroa.0.026.i, 2
  %_78.i = sub nuw nsw i64 -4, %_76.i
  %i_p.i = getelementptr inbounds i8, ptr %_52.i.pre.pre.i, i64 %_78.i
  %_18.i.i = sub nsw i64 0, %iter.sroa.0.026.i
  %gep29.i = getelementptr i32, ptr %invariant.gep28.i, i64 %_18.i.i
  br label %bb9.i19

bb9.i19:                                          ; preds = %bb12.i23, %bb7.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep29.i, align 4, !range !1094, !alias.scope !1147, !noalias !1154, !noundef !19
  %.pre.i.i.i.i.i.i.i = zext nneg i32 %_4.i.i.i.i.i.i to i64
  %b.i.i.i.i.i.i = or disjoint i64 %.pre.i.i.i.i.i.i.i, 288230376151711744
  %.reass.reass = xor i64 %b.i.i.i.i.i.i, %invariant.op93
  %_5.i.i.i3.i.i.i.i = add i64 %.reass.reass, %96
  %107 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass.reass, i64 %.reass.reass, i64 16)
  %108 = xor i64 %107, %_5.i.i.i3.i.i.i.i
  %_16.i.i.i.i.i.i.i.reass = add i64 %.reass.reass, %invariant.op
  %_19.i.i.i.i.i.i.i = add i64 %108, %99
  %109 = xor i64 %_16.i.i.i.i.i.i.i.reass, %100
  %110 = tail call noundef i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 21)
  %111 = xor i64 %110, %_19.i.i.i.i.i.i.i
  %112 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.i.reass, i64 32)
  %113 = xor i64 %_19.i.i.i.i.i.i.i, %b.i.i.i.i.i.i
  %114 = xor i64 %112, 255
  %_2.i3.i.i.i.i.i.i = add i64 %113, %109
  %_5.i6.i.i.i.i.i.i = add i64 %111, %114
  %115 = tail call noundef i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 13)
  %116 = xor i64 %_2.i3.i.i.i.i.i.i, %115
  %117 = tail call noundef i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 16)
  %118 = xor i64 %117, %_5.i6.i.i.i.i.i.i
  %119 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i.i = add i64 %116, %_5.i6.i.i.i.i.i.i
  %_19.i8.i.i.i.i.i.i = add i64 %118, %119
  %120 = tail call noundef i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 17)
  %121 = xor i64 %_16.i7.i.i.i.i.i.i, %120
  %122 = tail call noundef i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 21)
  %123 = xor i64 %122, %_19.i8.i.i.i.i.i.i
  %124 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i.i = add i64 %121, %_19.i8.i.i.i.i.i.i
  %_33.i.i.i.i.i.i.i = add i64 %123, %124
  %125 = tail call noundef i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 13)
  %126 = xor i64 %125, %_30.i.i.i.i.i.i.i
  %127 = tail call noundef i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 16)
  %128 = xor i64 %127, %_33.i.i.i.i.i.i.i
  %129 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i.i = add i64 %126, %_33.i.i.i.i.i.i.i
  %_47.i.i.i.i.i.i.i = add i64 %128, %129
  %130 = tail call noundef i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 17)
  %131 = xor i64 %130, %_44.i.i.i.i.i.i.i
  %132 = tail call noundef i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 21)
  %133 = xor i64 %132, %_47.i.i.i.i.i.i.i
  %134 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i.i = add i64 %131, %_47.i.i.i.i.i.i.i
  %_61.i.i.i.i.i.i.i = add i64 %133, %134
  %135 = tail call noundef i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 13)
  %136 = xor i64 %135, %_58.i.i.i.i.i.i.i
  %137 = tail call noundef i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 16)
  %138 = xor i64 %137, %_61.i.i.i.i.i.i.i
  %_72.i.i.i.i.i.i.i = add i64 %136, %_61.i.i.i.i.i.i.i
  %139 = tail call noundef i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 17)
  %140 = tail call noundef i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 21)
  %141 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i.i, i64 32)
  %142 = xor i64 %140, %139
  %143 = xor i64 %142, %141
  %_0.i.i.i.i.i.i = xor i64 %143, %_72.i.i.i.i.i.i.i
  %probe_seq.sroa.0.010.i.i = and i64 %_0.i.i.i.i.i.i, %3
  %_1811.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %probe_seq.sroa.0.010.i.i
  %dst.sroa.0.0.copyload.i912.i.i = load <16 x i8>, ptr %_1811.i.i, align 1, !noalias !1164
  %144 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i912.i.i, zeroinitializer
  %145 = bitcast <16 x i1> %144 to i16
  %.not.i13.i.i = icmp eq i16 %145, 0
  br i1 %.not.i13.i.i, label %bb6.i19.i, label %bb9.i.i21, !prof !1108

bb6.i19.i:                                        ; preds = %bb9.i19, %bb6.i19.i
  %probe_seq.sroa.0.014.i.i = phi i64 [ %probe_seq.sroa.0.0.i.i, %bb6.i19.i ], [ %probe_seq.sroa.0.010.i.i, %bb9.i19 ]
  %146 = phi i64 [ %147, %bb6.i19.i ], [ 0, %bb9.i19 ]
  %147 = add i64 %146, 16
  %148 = add i64 %147, %probe_seq.sroa.0.014.i.i
  %probe_seq.sroa.0.0.i.i = and i64 %148, %3
  %_18.i20.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i9.i.i = load <16 x i8>, ptr %_18.i20.i, align 1, !noalias !1164
  %149 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i9.i.i, zeroinitializer
  %150 = bitcast <16 x i1> %149 to i16
  %.not.i.i.i = icmp eq i16 %150, 0
  br i1 %.not.i.i.i, label %bb6.i19.i, label %bb9.i.i21, !prof !1125

bb9.i.i21:                                        ; preds = %bb6.i19.i, %bb9.i19
  %probe_seq.sroa.0.0.lcssa.i.i = phi i64 [ %probe_seq.sroa.0.010.i.i, %bb9.i19 ], [ %probe_seq.sroa.0.0.i.i, %bb6.i19.i ]
  %.lcssa.i.i = phi i16 [ %145, %bb9.i19 ], [ %150, %bb6.i19.i ]
  %151 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %_17.i.i.i = zext nneg i16 %151 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.lcssa.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %3
  %_8.i4.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %_7.i.i.i
  %_12.i.i.i = load i8, ptr %_8.i4.i.i, align 1, !noalias !1169, !noundef !19
  %b.i.i.i = icmp sgt i8 %_12.i.i.i, -1
  br i1 %b.i.i.i, label %bb2.i.i.i, label %bb10.i22, !prof !925

bb2.i.i.i:                                        ; preds = %bb9.i.i21
  %152 = load <16 x i8>, ptr %_52.i.pre.pre.i, align 16, !noalias !1172
  %153 = icmp slt <16 x i8> %152, zeroinitializer
  %154 = bitcast <16 x i1> %153 to i16
  %155 = icmp ne i16 %154, 0
  tail call void @llvm.assume(i1 %155), !noalias !1050
  %156 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %154, i1 true)
  %_25.i.i.i = zext nneg i16 %156 to i64
  br label %bb10.i22

bb10.i22:                                         ; preds = %bb2.i.i.i, %bb9.i.i21
  %index.sroa.0.0.i.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i ], [ %_7.i.i.i, %bb9.i.i21 ]
  %_86.i = sub i64 %iter.sroa.0.026.i, %probe_seq.sroa.0.010.i.i
  %_88.i = sub i64 %index.sroa.0.0.i.i.i, %probe_seq.sroa.0.010.i.i
  %_8518.i = xor i64 %_88.i, %_86.i
  %b.unshifted.i = and i64 %_8518.i, %3
  %b.i = icmp ult i64 %b.unshifted.i, 16
  br i1 %b.i, label %bb20.i, label %bb21.i, !prof !1175

bb21.i:                                           ; preds = %bb10.i22
  %_108.i = shl i64 %index.sroa.0.0.i.i.i, 2
  %_110.i = sub nuw nsw i64 -4, %_108.i
  %new_i_p.i = getelementptr inbounds i8, ptr %_52.i.pre.pre.i, i64 %_110.i
  %_113.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %index.sroa.0.0.i.i.i
  %prev_ctrl.i = load i8, ptr %_113.i, align 1, !noalias !1146, !noundef !19
  %_117.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_118.i = trunc nuw nsw i64 %_117.i to i8
  %_122.i = add i64 %index.sroa.0.0.i.i.i, -16
  %_121.i = and i64 %_122.i, %3
  store i8 %_118.i, ptr %_113.i, align 1, !noalias !1146
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %_121.i
  store i8 %_118.i, ptr %gep.i, align 1, !noalias !1146
  %_33.i = icmp eq i8 %prev_ctrl.i, -1
  br i1 %_33.i, label %bb11.i24, label %bb12.i23

bb20.i:                                           ; preds = %bb10.i22
  %_91.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_92.i = trunc nuw nsw i64 %_91.i to i8
  %_96.i = add i64 %iter.sroa.0.026.i, -16
  %_95.i = and i64 %_96.i, %3
  store i8 %_92.i, ptr %_69.i, align 1, !noalias !1146
  %gep33.i = getelementptr i8, ptr %invariant.gep.i, i64 %_95.i
  store i8 %_92.i, ptr %gep33.i, align 1, !noalias !1146
  br label %bb14.i

bb12.i23:                                         ; preds = %bb21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176), !noalias !1050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179), !noalias !1050
  %_3.sroa.0.0.copyload.i.i6.i.i.i = load i32, ptr %i_p.i, align 1, !alias.scope !1176, !noalias !1181
  %_4.sroa.0.0.copyload.i.i7.i.i.i = load i32, ptr %new_i_p.i, align 1, !alias.scope !1179, !noalias !1182
  store i32 %_4.sroa.0.0.copyload.i.i7.i.i.i, ptr %i_p.i, align 1, !alias.scope !1176, !noalias !1181
  store i32 %_3.sroa.0.0.copyload.i.i6.i.i.i, ptr %new_i_p.i, align 1, !alias.scope !1179, !noalias !1182
  br label %bb9.i19

bb11.i24:                                         ; preds = %bb21.i
  %_135.i = add i64 %iter.sroa.0.026.i, -16
  %_134.i = and i64 %_135.i, %3
  store i8 -1, ptr %_69.i, align 1, !noalias !1146
  %gep31.i = getelementptr i8, ptr %invariant.gep.i, i64 %_134.i
  store i8 -1, ptr %gep31.i, align 1, !noalias !1146
  %157 = load i32, ptr %i_p.i, align 1, !noalias !1146
  store i32 %157, ptr %new_i_p.i, align 1, !noalias !1146
  br label %bb14.i

bb14.i:                                           ; preds = %bb11.i24, %bb20.i, %bb4.i18
  %_62.i = icmp ult i64 %iter.sroa.0.127.i, %_26.i
  %_66.i = zext i1 %_62.i to i64
  %iter.sroa.0.1.i = add nuw i64 %iter.sroa.0.127.i, %_66.i
  br i1 %_62.i, label %bb4.i18, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit: ; preds = %bb14.i, %bb2.i
  %158 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %159 = sub i64 %full_capacity.sroa.0.0.i, %self1.i
  store i64 %159, ptr %158, align 8, !alias.scope !1132, !noalias !1050
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit: ; preds = %bb1.i1.i.i.i, %bb1.i.i.i, %bb4.i.i, %bb14.i.i, %bb9.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit
  %_0.sroa.4.0.i = phi i64 [ %_11.1.i, %bb9.i ], [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self1.sroa.9.0.i.i.ph, %bb14.i.i ], [ undef, %bb4.i.i ], [ undef, %bb1.i.i.i ], [ undef, %bb1.i1.i.i.i ]
  %_0.sroa.0.0.i = phi i64 [ %_11.0.i, %bb9.i ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self1.sroa.7.0.i.i.ph, %bb14.i.i ], [ -9223372036854775807, %bb4.i.i ], [ -9223372036854775807, %bb1.i.i.i ], [ -9223372036854775807, %bb1.i1.i.i.i ]
  %160 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0.i, 0
  %161 = insertvalue { i64, i64 } %160, i64 %_0.sroa.4.0.i, 1
  ret { i64, i64 } %161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #5 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !19
  %_4 = load i32, ptr %b, align 4, !noundef !19
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %set = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %set)
  %_3.i.i.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i.i.i, align 8, !range !1183, !noalias !1184, !noundef !19
  %_4.i.i.i.i.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i.i.i.i.i, label %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i", !prof !1175

start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i: ; preds = %start
  %_9.i.pre.i.i.i.i = load i64, ptr %_3.i.i.i.i.i.i, align 8, !noalias !1195
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 8
  %_10.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1195
  br label %bb21

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i": ; preds = %start
; invoke std::sys::random::linux::hashmap_random_keys
  %1 = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i"
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 8
  store i64 %3, ptr %4, align 8, !noalias !1196
  store i8 1, ptr %_12.i.i.i.i.i.i.i, align 8, !noalias !1196
  br label %bb21

bb19:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %15, %cleanup1 ], [ %6, %cleanup ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1214, !alias.scope !1215, !noalias !1218, !noundef !19
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb20, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb19
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1215, !noalias !1218, !nonnull !19, !noundef !19
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1220
  br label %bb20

cleanup:                                          ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i"
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb21:                                             ; preds = %.noexc, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i
  %hash_builder.1.pre-phi.i = phi i64 [ %_10.i.pre.i.i.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i ], [ %3, %.noexc ]
  %_9.i.i.i.i.i = phi i64 [ %_9.i.pre.i.i.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i ], [ %2, %.noexc ]
  %_4.i.i.i.i.i = add i64 %_9.i.i.i.i.i, 1
  store i64 %_4.i.i.i.i.i, ptr %_3.i.i.i.i.i.i, align 8, !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %set, ptr noundef nonnull align 8 dereferenceable(32) @anon.af93e97423fececea64614ca03819712.0, i64 32, i1 false)
  %_20.sroa.4.0.set.sroa_idx = getelementptr inbounds nuw i8, ptr %set, i64 32
  store i64 %_9.i.i.i.i.i, ptr %_20.sroa.4.0.set.sroa_idx, align 8
  %_20.sroa.5.0.set.sroa_idx = getelementptr inbounds nuw i8, ptr %set, i64 40
  store i64 %hash_builder.1.pre-phi.i, ptr %_20.sroa.5.0.set.sroa_idx, align 8
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_25 = load ptr, ptr %7, align 8, !nonnull !19, !noundef !19
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_24 = load i64, ptr %8, align 8, !noundef !19
  %_32 = getelementptr inbounds nuw i8, ptr %_25, i64 %_24
  %_7.i.i54 = icmp samesign eq i64 %_24, 0
  br i1 %_7.i.i54, label %bb16, label %bb14.i.lr.ph

bb14.i.lr.ph:                                     ; preds = %bb21
  %9 = getelementptr inbounds nuw i8, ptr %set, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %set, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %set, i64 16
  br label %bb14.i

bb14.i:                                           ; preds = %bb14.i.lr.ph, %bb5
  %_38.i.i.i69 = phi ptr [ @alloc_d0776666182ad032bd1011cf266e2f3a, %bb14.i.lr.ph ], [ %_38.i.i.i70, %bb5 ]
  %_35.i.i.i66 = phi i64 [ 0, %bb14.i.lr.ph ], [ %_35.i.i.i67, %bb5 ]
  %_29.i.i.i.i.i = phi ptr [ @alloc_d0776666182ad032bd1011cf266e2f3a, %bb14.i.lr.ph ], [ %_29.i.i.i.i.i65, %bb5 ]
  %_26.i.i.i.i.i = phi i64 [ 0, %bb14.i.lr.ph ], [ %_26.i.i.i.i.i63, %bb5 ]
  %iter.sroa.0.055 = phi ptr [ %_25, %bb14.i.lr.ph ], [ %iter.sroa.0.1.ph, %bb5 ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 1
  %x.i = load i8, ptr %iter.sroa.0.055, align 1, !noalias !1221, !noundef !19
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_32
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1221, !noundef !19
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %12 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb24

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb24

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_32
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1221, !noundef !19
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %13 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb24

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_32
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1221, !noundef !19
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %14 = or disjoint i32 %_27.i, %_25.i
  br label %bb24

cleanup1:                                         ; preds = %bb8.i.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef align 8 dereferenceable(48) %set) #23
  br label %bb19

bb24:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %12, %bb4.i ], [ %13, %bb6.i ], [ %14, %bb8.i ], [ %_7.i, %bb3.i ]
  %16 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %_11.i = load i64, ptr %9, align 8, !alias.scope !1224, !noalias !1227, !noundef !19
  %_3.i = icmp eq i64 %_11.i, 0
  %key0.i.i.i14.pre = load i64, ptr %_20.sroa.4.0.set.sroa_idx, align 8, !alias.scope !1229, !noalias !1236
  %key1.i.i.i15.pre = load i64, ptr %_20.sroa.5.0.set.sroa_idx, align 8, !alias.scope !1229, !noalias !1236
  %.pre = xor i64 %key0.i.i.i14.pre, 8317987319222330741
  %.pre75 = xor i64 %key1.i.i.i15.pre, 7237128888997146477
  %.pre77 = xor i64 %key0.i.i.i14.pre, 7816392313619706465
  %.pre79 = zext nneg i32 %_0.sroa.4.0.i.ph to i64
  %.pre80 = or disjoint i64 %.pre79, 288230376151711744
  %.pre81 = xor i64 %key1.i.i.i15.pre, %.pre79
  %.pre83 = xor i64 %.pre81, 8098989879002948979
  %.pre85 = add i64 %.pre75, %.pre
  %.pre86 = add i64 %.pre83, %.pre77
  %.pre87 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre75, i64 %.pre75, i64 13)
  %.pre89 = xor i64 %.pre87, %.pre85
  %.pre91 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre83, i64 %.pre83, i64 16)
  %.pre93 = xor i64 %.pre91, %.pre86
  %.pre95 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre85, i64 %.pre85, i64 32)
  %.pre97 = add i64 %.pre89, %.pre86
  %.pre98 = add i64 %.pre93, %.pre95
  %.pre99 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre89, i64 %.pre89, i64 17)
  %.pre101 = xor i64 %.pre97, %.pre99
  %.pre103 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre93, i64 %.pre93, i64 21)
  %.pre105 = xor i64 %.pre103, %.pre98
  %.pre107 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre97, i64 %.pre97, i64 32)
  %.pre109 = xor i64 %.pre98, %.pre80
  %.pre111 = xor i64 %.pre107, 255
  %.pre113 = add i64 %.pre109, %.pre101
  %.pre114 = add i64 %.pre111, %.pre105
  %.pre115 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre101, i64 %.pre101, i64 13)
  %.pre117 = xor i64 %.pre113, %.pre115
  %.pre119 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre105, i64 %.pre105, i64 16)
  %.pre121 = xor i64 %.pre114, %.pre119
  %.pre123 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre113, i64 %.pre113, i64 32)
  %.pre125 = add i64 %.pre117, %.pre114
  %.pre126 = add i64 %.pre121, %.pre123
  %.pre127 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre117, i64 %.pre117, i64 17)
  %.pre129 = xor i64 %.pre125, %.pre127
  %.pre131 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre121, i64 %.pre121, i64 21)
  %.pre133 = xor i64 %.pre131, %.pre126
  %.pre135 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre125, i64 %.pre125, i64 32)
  %.pre137 = add i64 %.pre129, %.pre126
  %.pre138 = add i64 %.pre133, %.pre135
  %.pre139 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre129, i64 %.pre129, i64 13)
  %.pre141 = xor i64 %.pre139, %.pre137
  %.pre143 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre133, i64 %.pre133, i64 16)
  %.pre145 = xor i64 %.pre143, %.pre138
  %.pre147 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre137, i64 %.pre137, i64 32)
  %.pre149 = add i64 %.pre141, %.pre138
  %.pre150 = add i64 %.pre145, %.pre147
  %.pre151 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre141, i64 %.pre141, i64 17)
  %.pre153 = xor i64 %.pre151, %.pre149
  %.pre155 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre145, i64 %.pre145, i64 21)
  %.pre157 = xor i64 %.pre155, %.pre150
  %.pre159 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre149, i64 %.pre149, i64 32)
  %.pre161 = add i64 %.pre153, %.pre150
  %.pre162 = add i64 %.pre157, %.pre159
  %.pre163 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre153, i64 %.pre153, i64 13)
  %.pre165 = xor i64 %.pre163, %.pre161
  %.pre167 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre157, i64 %.pre157, i64 16)
  %.pre169 = xor i64 %.pre167, %.pre162
  %.pre171 = add i64 %.pre165, %.pre162
  %.pre172 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre165, i64 %.pre165, i64 17)
  %.pre174 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre169, i64 %.pre169, i64 21)
  %.pre176 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre171, i64 %.pre171, i64 32)
  %.pre178 = xor i64 %.pre172, %.pre174
  %.pre180 = xor i64 %.pre178, %.pre176
  %.pre182 = xor i64 %.pre180, %.pre171
  br i1 %_3.i, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb24
  %_21.i.i.i = lshr i64 %.pre182, 57
  %tag_hash.i.i.i = trunc nuw nsw i64 %_21.i.i.i to i8
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_29.i.i.i.i.i, i64 -4
  br label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb20.i.i.i, %bb2.i
  %probe_seq.sroa.9.0.i.i.i = phi i64 [ 0, %bb2.i ], [ %23, %bb20.i.i.i ]
  %hash.pn.i.i = phi i64 [ %.pre182, %bb2.i ], [ %24, %bb20.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i = and i64 %hash.pn.i.i, %_26.i.i.i.i.i
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i = load <16 x i8>, ptr %_27.i.i.i, align 1, !noalias !1239
  %17 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, %.sroa.0.15.vec.insert.i.i.i
  %18 = bitcast <16 x i1> %17 to i16
  %.not.i.not23.i.i = icmp eq i16 %18, 0
  br i1 %.not.i.not23.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb1.i.i.i, %bb17.i.i.i
  %iter.sroa.0.0.i24.i.i = phi i16 [ %_51.i.i.i, %bb17.i.i.i ], [ %18, %bb1.i.i.i ]
  %19 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i, i1 true)
  %_42.i.i.i = zext nneg i16 %19 to i64
  %_13.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i, %_42.i.i.i
  %index5.i.i.i = and i64 %_13.i.i.i, %_26.i.i.i.i.i
  %_18.i.i.i = sub nsw i64 0, %index5.i.i.i
  %gep.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !range !1094, !alias.scope !1247, !noalias !1254, !noundef !19
  %_0.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb3, label %bb17.i.i.i, !prof !1175

bb11.i.i.i:                                       ; preds = %bb17.i.i.i, %bb1.i.i.i
  %20 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, splat (i8 -1)
  %21 = bitcast <16 x i1> %20 to i16
  %b8.not.i.i.i = icmp eq i16 %21, 0
  br i1 %b8.not.i.i.i, label %bb20.i.i.i, label %bb4, !prof !925

bb17.i.i.i:                                       ; preds = %bb10.i.i.i
  %22 = add i16 %iter.sroa.0.0.i24.i.i, -1
  %_51.i.i.i = and i16 %22, %iter.sroa.0.0.i24.i.i
  %.not.i.not.i.i = icmp eq i16 %_51.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb20.i.i.i:                                       ; preds = %bb11.i.i.i
  %23 = add i64 %probe_seq.sroa.9.0.i.i.i, 16
  %24 = add i64 %probe_seq.sroa.0.0.i.i.i, %23
  br label %bb1.i.i.i

bb23:                                             ; preds = %bb5
  %_47.pre = load i64, ptr %9, align 8
  %_6.i.i.i.i.i.i.pre = load i64, ptr %10, align 8, !alias.scope !1260
  %_42 = icmp sgt i64 %_24, -1
  tail call void @llvm.assume(i1 %_42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %_4.i.i.i.i.i.i7 = icmp eq i64 %_6.i.i.i.i.i.i.pre, 0
  br i1 %_4.i.i.i.i.i.i7, label %bb16, label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb23
  %_10.i.i.i.i.i.i = shl i64 %_6.i.i.i.i.i.i.pre, 2
  %_32.0.i.i.i.i.i.i.i = add i64 %_10.i.i.i.i.i.i, 19
  %ctrl_offset.i.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i.i.pre, 17
  %_37.0.i.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_19.i.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i.i, label %bb16, label %bb1.i2.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i:                               ; preds = %bb1.i.i.i.i.i.i
  %self1.i.i.i.i.i.i = load ptr, ptr %set, align 8, !alias.scope !1260, !nonnull !19, !noundef !19
  %_18.i.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i.i
  %ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i.i, i64 %_18.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !1260
  br label %bb16

bb16:                                             ; preds = %bb21, %bb1.i2.i.i.i.i.i.i, %bb1.i.i.i.i.i.i, %bb23
  %_47187 = phi i64 [ %_47.pre, %bb1.i2.i.i.i.i.i.i ], [ %_47.pre, %bb1.i.i.i.i.i.i ], [ %_47.pre, %bb23 ], [ 0, %bb21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %set)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %self1.i.i.i.i1.i.i8 = load i64, ptr %str, align 8, !range !1214, !alias.scope !1294, !noalias !1297, !noundef !19
  %_6.i.i.i.i2.i.i9 = icmp eq i64 %self1.i.i.i.i1.i.i8, 0
  br i1 %_6.i.i.i.i2.i.i9, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12", label %bb2.i.i.i3.i.i10

bb2.i.i.i3.i.i10:                                 ; preds = %bb16
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_25, i64 noundef %self1.i.i.i.i1.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1299
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12": ; preds = %bb16, %bb2.i.i.i3.i.i10
  %_12 = and i64 %_24, 1
  %_11 = icmp eq i64 %_12, 0
  %_14 = icmp eq i64 %_47187, 0
  %or.cond = select i1 %_11, i1 %_14, i1 false
  %_15 = icmp ne i64 %_12, 0
  %_18 = icmp eq i64 %_47187, 1
  %or.cond2 = select i1 %_15, i1 %_18, i1 false
  %narrow = select i1 %or.cond, i1 true, i1 %or.cond2
  %_0.sroa.0.0 = zext i1 %narrow to i32
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb11.i.i.i, %bb24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %_5.i.i.i = load i64, ptr %11, align 8, !alias.scope !1304, !noalias !1307, !noundef !19
  %b.i.i.i = icmp eq i64 %_5.i.i.i, 0
  br i1 %b.i.i.i, label %bb8.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i", !prof !925

bb8.i.i.i:                                        ; preds = %bb4
; invoke hashbrown::raw::RawTable<T,A>::reserve_rehash
  %25 = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %_20.sroa.4.0.set.sroa_idx, i1 noundef zeroext true)
          to label %.noexc42 unwind label %cleanup1

.noexc42:                                         ; preds = %bb8.i.i.i
  %_8.0.i.i.i = extractvalue { i64, i64 } %25, 0
  %26 = icmp eq i64 %_8.0.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %26)
  %_35.i.i.i.pre = load i64, ptr %10, align 8, !alias.scope !1311, !noalias !1314
  %_38.i.i.i.pre = load ptr, ptr %set, align 8, !alias.scope !1311, !noalias !1314
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i": ; preds = %.noexc42, %bb4
  %_38.i.i.i = phi ptr [ %_38.i.i.i.pre, %.noexc42 ], [ %_38.i.i.i69, %bb4 ]
  %_35.i.i.i = phi i64 [ %_35.i.i.i.pre, %.noexc42 ], [ %_35.i.i.i66, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %_30.i.i.i = lshr i64 %.pre182, 57
  %tag_hash.i.i.i34 = trunc nuw nsw i64 %_30.i.i.i to i8
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i34, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i.i = getelementptr i8, ptr %_38.i.i.i, i64 -4
  br label %bb1.i.i.i35

bb1.i.i.i35:                                      ; preds = %bb9.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i"
  %hash.pn.i.i.i = phi i64 [ %.pre182, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %38, %bb9.i.i.i ]
  %insert_index.sroa.4.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %insert_index.sroa.4.137.i.i.i, %bb9.i.i.i ]
  %insert_index.sroa.0.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %insert_index.sroa.0.139.i.i.i, %bb9.i.i.i ]
  %27 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %37, %bb9.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i36 = and i64 %hash.pn.i.i.i, %_35.i.i.i
  %_36.i.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i36
  %dst.sroa.0.0.copyload.i44.i.i.i = load <16 x i8>, ptr %_36.i.i.i, align 1, !noalias !1316
  %28 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %29 = bitcast <16 x i1> %28 to i16
  %.not46.i.i.i = icmp eq i16 %29, 0
  br i1 %.not46.i.i.i, label %bb16.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb1.i.i.i35, %bb19.i.i.i
  %iter.sroa.0.047.i.i.i = phi i16 [ %_60.i.i.i, %bb19.i.i.i ], [ %29, %bb1.i.i.i35 ]
  %30 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.047.i.i.i, i1 true)
  %_51.i.i.i37 = zext nneg i16 %30 to i64
  %_14.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i36, %_51.i.i.i37
  %index6.i.i.i = and i64 %_14.i.i.i, %_35.i.i.i
  %_18.i.i.i.i = sub nsw i64 0, %index6.i.i.i
  %gep.i.i.i = getelementptr i32, ptr %invariant.gep.i.i.i, i64 %_18.i.i.i.i
  %_4.i.i.i.i.i.i.i38 = load i32, ptr %gep.i.i.i, align 4, !range !1094, !alias.scope !1319, !noalias !1326, !noundef !19
  %_0.i.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i.i38
  br i1 %_0.i.i.i.i.i.i.i, label %bb5, label %bb19.i.i.i, !prof !1175

bb16.i.i.i:                                       ; preds = %bb19.i.i.i, %bb1.i.i.i35
  %_64.not.i.i.i = icmp eq i64 %insert_index.sroa.0.0.i.i.i, 1
  br i1 %_64.not.i.i.i, label %bb7.i.i.i, label %bb21.i.i.i, !prof !925

bb19.i.i.i:                                       ; preds = %bb15.i.i.i
  %31 = add i16 %iter.sroa.0.047.i.i.i, -1
  %_60.i.i.i = and i16 %31, %iter.sroa.0.047.i.i.i
  %.not.i.i.i = icmp eq i16 %_60.i.i.i, 0
  br i1 %.not.i.i.i, label %bb16.i.i.i, label %bb15.i.i.i

bb21.i.i.i:                                       ; preds = %bb16.i.i.i
  %32 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, zeroinitializer
  %33 = bitcast <16 x i1> %32 to i16
  %.not.i.i.i.i = icmp eq i16 %33, 0
  br i1 %.not.i.i.i.i, label %bb9.i.i.i, label %bb6.thread41.i.i.i, !prof !925

bb6.thread41.i.i.i:                               ; preds = %bb21.i.i.i
  %34 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %33, i1 true)
  %_17.i.i.i.i = zext nneg i16 %34 to i64
  %_8.i.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i36, %_17.i.i.i.i
  %_7.i.i.i.i = and i64 %_8.i.i.i.i, %_35.i.i.i
  br label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb6.thread41.i.i.i, %bb16.i.i.i
  %insert_index.sroa.4.138.i.i.i = phi i64 [ %_7.i.i.i.i, %bb6.thread41.i.i.i ], [ %insert_index.sroa.4.0.i.i.i, %bb16.i.i.i ]
  %35 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, splat (i8 -1)
  %36 = bitcast <16 x i1> %35 to i16
  %b11.not.i.i.i = icmp eq i16 %36, 0
  br i1 %b11.not.i.i.i, label %bb9.i.i.i, label %bb27.i.i.i, !prof !925

bb9.i.i.i:                                        ; preds = %bb7.i.i.i, %bb21.i.i.i
  %insert_index.sroa.0.139.i.i.i = phi i64 [ 1, %bb7.i.i.i ], [ 0, %bb21.i.i.i ]
  %insert_index.sroa.4.137.i.i.i = phi i64 [ %insert_index.sroa.4.138.i.i.i, %bb7.i.i.i ], [ undef, %bb21.i.i.i ]
  %37 = add i64 %27, 16
  %38 = add i64 %37, %probe_seq.sroa.0.0.i.i.i36
  br label %bb1.i.i.i35

bb27.i.i.i:                                       ; preds = %bb7.i.i.i
  %_8.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %insert_index.sroa.4.138.i.i.i
  %_12.i20.i.i.i = load i8, ptr %_8.i19.i.i.i, align 1, !noalias !1332, !noundef !19
  %b.i.i.i2.i = icmp sgt i8 %_12.i20.i.i.i, -1
  br i1 %b.i.i.i2.i, label %bb2.i.i.i.i, label %bb2.i39, !prof !925

bb2.i.i.i.i:                                      ; preds = %bb27.i.i.i
  %39 = load <16 x i8>, ptr %_38.i.i.i, align 16, !noalias !1335
  %40 = icmp slt <16 x i8> %39, zeroinitializer
  %41 = bitcast <16 x i1> %40 to i16
  %42 = icmp ne i16 %41, 0
  tail call void @llvm.assume(i1 %42)
  %43 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %41, i1 true)
  %_25.i.i.i.i = zext nneg i16 %43 to i64
  %_9.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %_25.i.i.i.i
  %old_ctrl.i.pre.i = load i8, ptr %_9.i.phi.trans.insert.i, align 1, !noalias !1338
  br label %bb2.i39

bb2.i39:                                          ; preds = %bb2.i.i.i.i, %bb27.i.i.i
  %old_ctrl.i.i = phi i8 [ %_12.i20.i.i.i, %bb27.i.i.i ], [ %old_ctrl.i.pre.i, %bb2.i.i.i.i ]
  %_0.sroa.3.0.i.ph.i.i = phi i64 [ %insert_index.sroa.4.138.i.i.i, %bb27.i.i.i ], [ %_25.i.i.i.i, %bb2.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %_9.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %_0.sroa.3.0.i.ph.i.i
  %_14.i.i = and i8 %old_ctrl.i.i, 1
  %_12.i.i = zext nneg i8 %_14.i.i to i64
  %44 = load i64, ptr %11, align 8, !alias.scope !1338, !noundef !19
  %45 = sub i64 %44, %_12.i.i
  store i64 %45, ptr %11, align 8, !alias.scope !1338
  %_17.i.i = add i64 %_0.sroa.3.0.i.ph.i.i, -16
  %_16.i.i = and i64 %_17.i.i, %_35.i.i.i
  store i8 %tag_hash.i.i.i34, ptr %_9.i.i, align 1, !noalias !1338
  %46 = getelementptr i8, ptr %_38.i.i.i, i64 %_16.i.i
  %_24.i.i = getelementptr i8, ptr %46, i64 16
  store i8 %tag_hash.i.i.i34, ptr %_24.i.i, align 1, !noalias !1338
  %47 = load i64, ptr %9, align 8, !alias.scope !1338, !noundef !19
  %48 = add i64 %47, 1
  store i64 %48, ptr %9, align 8, !alias.scope !1338
  %_37.i.i = sub nsw i64 0, %_0.sroa.3.0.i.ph.i.i
  %49 = getelementptr inbounds i32, ptr %_38.i.i.i, i64 %_37.i.i
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  store i32 %_0.sroa.4.0.i.ph, ptr %50, align 4, !noalias !1338
  br label %bb5

bb3:                                              ; preds = %bb10.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  br label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb20.i.i.i.i.i, %bb3
  %probe_seq.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb3 ], [ %57, %bb20.i.i.i.i.i ]
  %hash.pn.i.i.i.i = phi i64 [ %.pre182, %bb3 ], [ %58, %bb20.i.i.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i.i.i = and i64 %hash.pn.i.i.i.i, %_26.i.i.i.i.i
  %_27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i.i.i = load <16 x i8>, ptr %_27.i.i.i.i.i, align 1, !noalias !1351
  %51 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i
  %52 = bitcast <16 x i1> %51 to i16
  %.not.i.not23.i.i.i.i = icmp eq i16 %52, 0
  br i1 %.not.i.not23.i.i.i.i, label %bb11.i.i.i.i.i, label %bb10.i.i.i.i.i

bb10.i.i.i.i.i:                                   ; preds = %bb1.i.i.i.i.i, %bb17.i.i.i.i.i
  %iter.sroa.0.0.i24.i.i.i.i = phi i16 [ %_51.i.i.i.i.i, %bb17.i.i.i.i.i ], [ %52, %bb1.i.i.i.i.i ]
  %53 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i.i.i, i1 true)
  %_42.i.i.i.i.i = zext nneg i16 %53 to i64
  %_13.i.i.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i.i.i, %_42.i.i.i.i.i
  %index5.i.i.i.i.i = and i64 %_13.i.i.i.i.i, %_26.i.i.i.i.i
  %_18.i.i.i.i.i = sub nsw i64 0, %index5.i.i.i.i.i
  %gep.i.i.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i.i.i
  %_4.i.i.i.i.i.i.i.i = load i32, ptr %gep.i.i.i.i, align 4, !range !1094, !alias.scope !1362, !noalias !1369, !noundef !19
  %_0.i.i.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i.i.i, label %bb4.i.i.i, label %bb17.i.i.i.i.i, !prof !1175

bb11.i.i.i.i.i:                                   ; preds = %bb17.i.i.i.i.i, %bb1.i.i.i.i.i
  %54 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i.i.i, splat (i8 -1)
  %55 = bitcast <16 x i1> %54 to i16
  %b8.not.i.i.i.i.i = icmp eq i16 %55, 0
  br i1 %b8.not.i.i.i.i.i, label %bb20.i.i.i.i.i, label %bb5, !prof !925

bb17.i.i.i.i.i:                                   ; preds = %bb10.i.i.i.i.i
  %56 = add i16 %iter.sroa.0.0.i24.i.i.i.i, -1
  %_51.i.i.i.i.i = and i16 %56, %iter.sroa.0.0.i24.i.i.i.i
  %.not.i.not.i.i.i.i = icmp eq i16 %_51.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb11.i.i.i.i.i, label %bb10.i.i.i.i.i

bb20.i.i.i.i.i:                                   ; preds = %bb11.i.i.i.i.i
  %57 = add i64 %probe_seq.sroa.9.0.i.i.i.i.i, 16
  %58 = add i64 %probe_seq.sroa.0.0.i.i.i.i.i, %57
  br label %bb1.i.i.i.i.i

bb4.i.i.i:                                        ; preds = %bb10.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %_6.i.i.i.i.i.i44 = add nsw i64 %index5.i.i.i.i.i, -16
  %index_before.i.i.i.i.i.i = and i64 %_6.i.i.i.i.i.i44, %_26.i.i.i.i.i
  %_15.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %index_before.i.i.i.i.i.i
  %dst.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %_15.i.i.i.i.i.i, align 1, !noalias !1384
  %59 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %60 = bitcast <16 x i1> %59 to i16
  %_24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %index5.i.i.i.i.i
  %dst.sroa.0.0.copyload.i624.i.i.i.i.i.i = load <16 x i8>, ptr %_24.i.i.i.i.i.i, align 1, !noalias !1388
  %61 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i.i.i.i.i.i, splat (i8 -1)
  %62 = bitcast <16 x i1> %61 to i16
  %63 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %60, i1 false)
  %64 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %62, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %64, %63
  %_11.i.i.i.i.i.i = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %_11.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i", label %bb2.i.i.i.i.i.i

bb2.i.i.i.i.i.i:                                  ; preds = %bb4.i.i.i
  %65 = load i64, ptr %11, align 8, !alias.scope !1391, !noalias !1392, !noundef !19
  %66 = add i64 %65, 1
  store i64 %66, ptr %11, align 8, !alias.scope !1391, !noalias !1392
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i": ; preds = %bb2.i.i.i.i.i.i, %bb4.i.i.i
  %ctrl.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb2.i.i.i.i.i.i ], [ -128, %bb4.i.i.i ]
  store i8 %ctrl.sroa.0.0.i.i.i.i.i.i, ptr %_24.i.i.i.i.i.i, align 1, !noalias !1393
  %_46.i.i.i.i.i.i = getelementptr i8, ptr %_15.i.i.i.i.i.i, i64 16
  store i8 %ctrl.sroa.0.0.i.i.i.i.i.i, ptr %_46.i.i.i.i.i.i, align 1, !noalias !1393
  %67 = add i64 %_11.i, -1
  store i64 %67, ptr %9, align 8, !alias.scope !1391, !noalias !1392
  br label %bb5

bb5:                                              ; preds = %bb11.i.i.i.i.i, %bb15.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i", %bb2.i39
  %_38.i.i.i70 = phi ptr [ %_38.i.i.i69, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_38.i.i.i, %bb2.i39 ], [ %_38.i.i.i, %bb15.i.i.i ], [ %_38.i.i.i69, %bb11.i.i.i.i.i ]
  %_35.i.i.i67 = phi i64 [ %_35.i.i.i66, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_35.i.i.i, %bb2.i39 ], [ %_35.i.i.i, %bb15.i.i.i ], [ %_35.i.i.i66, %bb11.i.i.i.i.i ]
  %_29.i.i.i.i.i65 = phi ptr [ %_29.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_38.i.i.i, %bb2.i39 ], [ %_38.i.i.i, %bb15.i.i.i ], [ %_29.i.i.i.i.i, %bb11.i.i.i.i.i ]
  %_26.i.i.i.i.i63 = phi i64 [ %_26.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_35.i.i.i, %bb2.i39 ], [ %_35.i.i.i, %bb15.i.i.i ], [ %_26.i.i.i.i.i, %bb11.i.i.i.i.i ]
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_32
  br i1 %_7.i.i, label %bb23, label %bb14.i

bb20:                                             ; preds = %bb2.i.i.i3.i.i, %bb19
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
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1394
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1400
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit", label %bb7.i.i, !prof !1175

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1175

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h48d93dd9494788eaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1417, !noalias !1420, !noundef !19
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1421, !noalias !1422, !noundef !19
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1423, !noalias !1424
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1425, !noalias !1432, !noundef !19
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1423, !noalias !1436
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1417, !noalias !1420, !noundef !19
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1421, !noalias !1422, !noundef !19
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1423, !noalias !1424
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1425, !noalias !1432, !noundef !19
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1423, !noalias !1436
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1453, !noalias !1454, !noundef !19
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1455, !noalias !1456, !noundef !19
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1423, !noalias !1424
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1425, !noalias !1432, !noundef !19
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1423, !noalias !1436
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1394
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; std::sys::random::linux::hashmap_random_keys
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE() unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #14

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; hashbrown::raw::Fallibility::capacity_overflow
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext) unnamed_addr #2

; hashbrown::raw::Fallibility::alloc_err
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noinline noreturn }
attributes #21 = { noreturn }
attributes #22 = { noinline }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E: %_1"}
!5 = distinct !{!5, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E: %_1"}
!8 = distinct !{!8, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E: %_1"}
!11 = distinct !{!11, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E: %self"}
!14 = distinct !{!14, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE: %self"}
!17 = distinct !{!17, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE"}
!18 = !{!16, !13, !10, !7, !4}
!19 = !{}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!22 = distinct !{!22, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!27 = distinct !{!27, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE: %c"}
!30 = distinct !{!30, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE"}
!31 = !{!32}
!32 = distinct !{!32, !27, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"cmpfunc: %a"}
!35 = distinct !{!35, !"cmpfunc"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"cmpfunc: %b"}
!38 = !{!34, !26, !21}
!39 = !{!37, !32, !24, !29}
!40 = !{!37, !32, !24}
!41 = !{!34, !26, !21, !29}
!42 = !{!43, !45, !47}
!43 = distinct !{!43, !44, !"cmpfunc: %b"}
!44 = distinct !{!44, !"cmpfunc"}
!45 = distinct !{!45, !46, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!46 = distinct !{!46, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!47 = distinct !{!47, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!48 = distinct !{!48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!49 = !{!50, !51, !52}
!50 = distinct !{!50, !44, !"cmpfunc: %a"}
!51 = distinct !{!51, !46, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!52 = distinct !{!52, !48, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!55 = distinct !{!55, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!60 = distinct !{!60, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"cmpfunc: %a"}
!65 = distinct !{!65, !"cmpfunc"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"cmpfunc: %b"}
!68 = !{!64, !59, !54}
!69 = !{!67, !62, !57}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!72 = distinct !{!72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!77 = distinct !{!77, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"cmpfunc: %a"}
!82 = distinct !{!82, !"cmpfunc"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"cmpfunc: %b"}
!85 = !{!81, !76, !71}
!86 = !{!84, !79, !74}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!94 = distinct !{!94, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"cmpfunc: %a"}
!99 = distinct !{!99, !"cmpfunc"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"cmpfunc: %b"}
!102 = !{!98, !93, !88}
!103 = !{!101, !96, !91}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!106 = distinct !{!106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!111 = distinct !{!111, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"cmpfunc: %a"}
!116 = distinct !{!116, !"cmpfunc"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"cmpfunc: %b"}
!119 = !{!115, !110, !105}
!120 = !{!118, !113, !108}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!123 = distinct !{!123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!128 = distinct !{!128, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"cmpfunc: %a"}
!133 = distinct !{!133, !"cmpfunc"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"cmpfunc: %b"}
!136 = !{!132, !127, !122}
!137 = !{!135, !130, !125}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!140 = distinct !{!140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!145 = distinct !{!145, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"cmpfunc: %a"}
!150 = distinct !{!150, !"cmpfunc"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"cmpfunc: %b"}
!153 = !{!149, !144, !139}
!154 = !{!152, !147, !142}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!157 = distinct !{!157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!162 = distinct !{!162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"cmpfunc: %a"}
!167 = distinct !{!167, !"cmpfunc"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"cmpfunc: %b"}
!170 = !{!166, !161, !156}
!171 = !{!169, !164, !159}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!174 = distinct !{!174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!179 = distinct !{!179, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"cmpfunc: %a"}
!184 = distinct !{!184, !"cmpfunc"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"cmpfunc: %b"}
!187 = !{!183, !178, !173}
!188 = !{!186, !181, !176}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!191 = distinct !{!191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!196 = distinct !{!196, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"cmpfunc: %a"}
!201 = distinct !{!201, !"cmpfunc"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"cmpfunc: %b"}
!204 = !{!200, !195, !190}
!205 = !{!203, !198, !193}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!208 = distinct !{!208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!213 = distinct !{!213, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"cmpfunc: %a"}
!218 = distinct !{!218, !"cmpfunc"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"cmpfunc: %b"}
!221 = !{!217, !212, !207}
!222 = !{!220, !215, !210}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E: %v.0"}
!225 = distinct !{!225, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E"}
!226 = !{!227, !229, !231, !224}
!227 = distinct !{!227, !228, !"cmpfunc: %b"}
!228 = distinct !{!228, !"cmpfunc"}
!229 = distinct !{!229, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!230 = distinct !{!230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!231 = distinct !{!231, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!232 = distinct !{!232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!233 = !{!234, !235, !236, !237}
!234 = distinct !{!234, !228, !"cmpfunc: %a"}
!235 = distinct !{!235, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!236 = distinct !{!236, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!237 = distinct !{!237, !238, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %_0"}
!238 = distinct !{!238, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E"}
!239 = !{!237, !240, !224}
!240 = distinct !{!240, !238, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %is_less"}
!241 = !{!242, !244, !246, !224}
!242 = distinct !{!242, !243, !"cmpfunc: %b"}
!243 = distinct !{!243, !"cmpfunc"}
!244 = distinct !{!244, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!245 = distinct !{!245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!246 = distinct !{!246, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!247 = distinct !{!247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!248 = !{!249, !250, !251, !252}
!249 = distinct !{!249, !243, !"cmpfunc: %a"}
!250 = distinct !{!250, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!251 = distinct !{!251, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!252 = distinct !{!252, !253, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %_0"}
!253 = distinct !{!253, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE"}
!254 = !{!252, !255, !224}
!255 = distinct !{!255, !253, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %is_less"}
!256 = !{!257}
!257 = distinct !{!257, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It1"}
!258 = !{!259}
!259 = distinct !{!259, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It1"}
!260 = !{!261}
!261 = distinct !{!261, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It1"}
!262 = !{!237}
!263 = !{!264}
!264 = distinct !{!264, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It1"}
!265 = !{!266}
!266 = distinct !{!266, !228, !"cmpfunc: %a:It1"}
!267 = !{!268}
!268 = distinct !{!268, !228, !"cmpfunc: %b:It1"}
!269 = !{!266, !261, !257, !224}
!270 = !{!268, !264, !259, !237}
!271 = !{!268, !264, !259, !224}
!272 = !{!266, !261, !257, !237}
!273 = !{!274}
!274 = distinct !{!274, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It1"}
!275 = !{!276}
!276 = distinct !{!276, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It1"}
!277 = !{!278}
!278 = distinct !{!278, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It1"}
!279 = !{!252}
!280 = !{!281}
!281 = distinct !{!281, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It1"}
!282 = !{!283}
!283 = distinct !{!283, !243, !"cmpfunc: %a:It1"}
!284 = !{!285}
!285 = distinct !{!285, !243, !"cmpfunc: %b:It1"}
!286 = !{!283, !278, !274, !224}
!287 = !{!285, !281, !276, !252}
!288 = !{!285, !281, !276, !224}
!289 = !{!283, !278, !274, !252}
!290 = !{!291}
!291 = distinct !{!291, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It2"}
!292 = !{!293}
!293 = distinct !{!293, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It2"}
!294 = !{!295}
!295 = distinct !{!295, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It2"}
!296 = !{!297}
!297 = distinct !{!297, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It2"}
!298 = !{!299}
!299 = distinct !{!299, !228, !"cmpfunc: %a:It2"}
!300 = !{!301}
!301 = distinct !{!301, !228, !"cmpfunc: %b:It2"}
!302 = !{!299, !295, !291, !224}
!303 = !{!301, !297, !293, !237}
!304 = !{!301, !297, !293, !224}
!305 = !{!299, !295, !291, !237}
!306 = !{!307}
!307 = distinct !{!307, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It2"}
!308 = !{!309}
!309 = distinct !{!309, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It2"}
!310 = !{!311}
!311 = distinct !{!311, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It2"}
!312 = !{!313}
!313 = distinct !{!313, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It2"}
!314 = !{!315}
!315 = distinct !{!315, !243, !"cmpfunc: %a:It2"}
!316 = !{!317}
!317 = distinct !{!317, !243, !"cmpfunc: %b:It2"}
!318 = !{!315, !311, !307, !224}
!319 = !{!317, !313, !309, !252}
!320 = !{!317, !313, !309, !224}
!321 = !{!315, !311, !307, !252}
!322 = !{!323}
!323 = distinct !{!323, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It3"}
!324 = !{!325}
!325 = distinct !{!325, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It3"}
!326 = !{!327}
!327 = distinct !{!327, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It3"}
!328 = !{!329}
!329 = distinct !{!329, !230, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It3"}
!330 = !{!331}
!331 = distinct !{!331, !228, !"cmpfunc: %a:It3"}
!332 = !{!333}
!333 = distinct !{!333, !228, !"cmpfunc: %b:It3"}
!334 = !{!331, !327, !323, !224}
!335 = !{!333, !329, !325, !237}
!336 = !{!333, !329, !325, !224}
!337 = !{!331, !327, !323, !237}
!338 = !{!339}
!339 = distinct !{!339, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It3"}
!340 = !{!341}
!341 = distinct !{!341, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It3"}
!342 = !{!343}
!343 = distinct !{!343, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It3"}
!344 = !{!345}
!345 = distinct !{!345, !245, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It3"}
!346 = !{!347}
!347 = distinct !{!347, !243, !"cmpfunc: %a:It3"}
!348 = !{!349}
!349 = distinct !{!349, !243, !"cmpfunc: %b:It3"}
!350 = !{!347, !343, !339, !224}
!351 = !{!349, !345, !341, !252}
!352 = !{!349, !345, !341, !224}
!353 = !{!347, !343, !339, !252}
!354 = !{!"branch_weights", i32 4001, i32 4000000}
!355 = !{!"branch_weights", i32 2002, i32 2000}
!356 = !{!357, !359}
!357 = distinct !{!357, !358, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hecb3e98345d07324E: %_0"}
!358 = distinct !{!358, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hecb3e98345d07324E"}
!359 = distinct !{!359, !360, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E: %_0"}
!360 = distinct !{!360, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E"}
!361 = !{!362, !364, !366, !368}
!362 = distinct !{!362, !363, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E: %self"}
!363 = distinct !{!363, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E"}
!364 = distinct !{!364, !365, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfeab8d3c7eb26dbfE: %self"}
!365 = distinct !{!365, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfeab8d3c7eb26dbfE"}
!366 = distinct !{!366, !367, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17he1fa56f2d5a30084E: %_1"}
!367 = distinct !{!367, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17he1fa56f2d5a30084E"}
!368 = distinct !{!368, !369, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE: %_1"}
!369 = distinct !{!369, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE"}
!370 = !{!371, !373, !375, !377}
!371 = distinct !{!371, !372, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E: %self"}
!372 = distinct !{!372, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E"}
!373 = distinct !{!373, !374, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfeab8d3c7eb26dbfE: %self"}
!374 = distinct !{!374, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfeab8d3c7eb26dbfE"}
!375 = distinct !{!375, !376, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17he1fa56f2d5a30084E: %_1"}
!376 = distinct !{!376, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17he1fa56f2d5a30084E"}
!377 = distinct !{!377, !378, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE: %_1"}
!378 = distinct !{!378, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h64761dc6b4a3208bE"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE: %scratch.0"}
!389 = distinct !{!389, !"_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE"}
!390 = !{!391}
!391 = distinct !{!391, !386, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"cmpfunc: %a"}
!394 = distinct !{!394, !"cmpfunc"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"cmpfunc: %b"}
!397 = !{!393, !385, !380}
!398 = !{!396, !391, !383, !388}
!399 = !{!396, !391, !383}
!400 = !{!393, !385, !380, !388}
!401 = !{!402, !404, !406}
!402 = distinct !{!402, !403, !"cmpfunc: %a"}
!403 = distinct !{!403, !"cmpfunc"}
!404 = distinct !{!404, !405, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!405 = distinct !{!405, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!406 = distinct !{!406, !407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!407 = distinct !{!407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!408 = !{!409, !410, !411, !388}
!409 = distinct !{!409, !403, !"cmpfunc: %b"}
!410 = distinct !{!410, !405, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!411 = distinct !{!411, !407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!412 = !{!413, !415, !417}
!413 = distinct !{!413, !414, !"cmpfunc: %a"}
!414 = distinct !{!414, !"cmpfunc"}
!415 = distinct !{!415, !416, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!416 = distinct !{!416, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!417 = distinct !{!417, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!418 = distinct !{!418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!419 = !{!420, !421, !422, !388}
!420 = distinct !{!420, !414, !"cmpfunc: %b"}
!421 = distinct !{!421, !416, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!422 = distinct !{!422, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E: %a.0"}
!425 = distinct !{!425, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E"}
!426 = !{!388, !427}
!427 = distinct !{!427, !389, !"_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE: %is_less"}
!428 = !{!429}
!429 = distinct !{!429, !425, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E: %b.0"}
!430 = !{!424, !431}
!431 = distinct !{!431, !432, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc413f2b2c0f35c2dE: %self.0"}
!432 = distinct !{!432, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc413f2b2c0f35c2dE"}
!433 = !{!429, !388, !427}
!434 = !{!429, !431}
!435 = !{!424, !388, !427}
!436 = distinct !{!436, !437, !438}
!437 = !{!"llvm.loop.isvectorized", i32 1}
!438 = !{!"llvm.loop.unroll.runtime.disable"}
!439 = distinct !{!439, !438, !437}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E: %v.0"}
!442 = distinct !{!442, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E: %scratch.0"}
!445 = !{!441, !444}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!448 = distinct !{!448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!453 = distinct !{!453, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!454 = !{!455}
!455 = distinct !{!455, !453, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"cmpfunc: %a"}
!458 = distinct !{!458, !"cmpfunc"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"cmpfunc: %b"}
!461 = !{!457, !452, !447, !444}
!462 = !{!460, !455, !450, !463, !441}
!463 = distinct !{!463, !464, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E: %self"}
!464 = distinct !{!464, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E"}
!465 = !{!460, !455, !450, !441}
!466 = !{!457, !452, !447, !463, !444}
!467 = !{!463, !444}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!470 = distinct !{!470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!471 = !{!472}
!472 = distinct !{!472, !470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!475 = distinct !{!475, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"cmpfunc: %a"}
!480 = distinct !{!480, !"cmpfunc"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"cmpfunc: %b"}
!483 = !{!479, !474, !469, !441}
!484 = !{!482, !477, !472, !485, !444}
!485 = distinct !{!485, !486, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE: %self"}
!486 = distinct !{!486, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE"}
!487 = !{!482, !477, !472, !444}
!488 = !{!479, !474, !469, !485, !441}
!489 = !{!485, !444}
!490 = !{!491, !493}
!491 = distinct !{!491, !492, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E: %self"}
!492 = distinct !{!492, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E"}
!493 = distinct !{!493, !494, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE: %_1"}
!494 = distinct !{!494, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E: %v.0"}
!497 = distinct !{!497, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E: %scratch.0"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!502 = distinct !{!502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!503 = !{!504}
!504 = distinct !{!504, !502, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!507 = distinct !{!507, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!508 = !{!509}
!509 = distinct !{!509, !507, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!510 = !{!511}
!511 = distinct !{!511, !512, !"cmpfunc: %a"}
!512 = distinct !{!512, !"cmpfunc"}
!513 = !{!514}
!514 = distinct !{!514, !512, !"cmpfunc: %b"}
!515 = !{!511, !506, !501, !496}
!516 = !{!514, !509, !504, !499, !517}
!517 = distinct !{!517, !497, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E: %is_less"}
!518 = !{!514, !509, !504, !496}
!519 = !{!511, !506, !501, !499, !517}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!522 = distinct !{!522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!527 = distinct !{!527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!528 = !{!529}
!529 = distinct !{!529, !527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!530 = !{!531}
!531 = distinct !{!531, !532, !"cmpfunc: %a"}
!532 = distinct !{!532, !"cmpfunc"}
!533 = !{!534}
!534 = distinct !{!534, !532, !"cmpfunc: %b"}
!535 = !{!531, !526, !521, !496}
!536 = !{!534, !529, !524, !499, !517}
!537 = !{!534, !529, !524, !496}
!538 = !{!531, !526, !521, !499, !517}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!541 = distinct !{!541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!542 = !{!543}
!543 = distinct !{!543, !541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!546 = distinct !{!546, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!547 = !{!548}
!548 = distinct !{!548, !546, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"cmpfunc: %a"}
!551 = distinct !{!551, !"cmpfunc"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"cmpfunc: %b"}
!554 = !{!550, !545, !540, !496}
!555 = !{!553, !548, !543, !499, !517}
!556 = !{!553, !548, !543, !496}
!557 = !{!550, !545, !540, !499, !517}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!560 = distinct !{!560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!565 = distinct !{!565, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"cmpfunc: %a"}
!570 = distinct !{!570, !"cmpfunc"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"cmpfunc: %b"}
!573 = !{!569, !564, !559, !496}
!574 = !{!572, !567, !562, !499, !517}
!575 = !{!572, !567, !562, !496}
!576 = !{!569, !564, !559, !499, !517}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!579 = distinct !{!579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!584 = distinct !{!584, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"cmpfunc: %a"}
!589 = distinct !{!589, !"cmpfunc"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"cmpfunc: %b"}
!592 = !{!588, !583, !578, !496}
!593 = !{!591, !586, !581, !499, !517}
!594 = !{!591, !586, !581, !496}
!595 = !{!588, !583, !578, !499, !517}
!596 = !{!496, !517}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!599 = distinct !{!599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!604 = distinct !{!604, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"cmpfunc: %a"}
!609 = distinct !{!609, !"cmpfunc"}
!610 = !{!611}
!611 = distinct !{!611, !609, !"cmpfunc: %b"}
!612 = !{!608, !603, !598, !496}
!613 = !{!611, !606, !601, !499, !517}
!614 = !{!611, !606, !601, !496}
!615 = !{!608, !603, !598, !499, !517}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!618 = distinct !{!618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!619 = !{!620}
!620 = distinct !{!620, !618, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!623 = distinct !{!623, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!624 = !{!625}
!625 = distinct !{!625, !623, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!626 = !{!627}
!627 = distinct !{!627, !628, !"cmpfunc: %a"}
!628 = distinct !{!628, !"cmpfunc"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"cmpfunc: %b"}
!631 = !{!627, !622, !617, !496}
!632 = !{!630, !625, !620, !499, !517}
!633 = !{!630, !625, !620, !496}
!634 = !{!627, !622, !617, !499, !517}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!637 = distinct !{!637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!638 = !{!639}
!639 = distinct !{!639, !637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!642 = distinct !{!642, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!643 = !{!644}
!644 = distinct !{!644, !642, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"cmpfunc: %a"}
!647 = distinct !{!647, !"cmpfunc"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"cmpfunc: %b"}
!650 = !{!646, !641, !636, !496}
!651 = !{!649, !644, !639, !499, !517}
!652 = !{!649, !644, !639, !496}
!653 = !{!646, !641, !636, !499, !517}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!656 = distinct !{!656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!661 = distinct !{!661, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!664 = !{!665}
!665 = distinct !{!665, !666, !"cmpfunc: %a"}
!666 = distinct !{!666, !"cmpfunc"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"cmpfunc: %b"}
!669 = !{!665, !660, !655, !496}
!670 = !{!668, !663, !658, !499, !517}
!671 = !{!668, !663, !658, !496}
!672 = !{!665, !660, !655, !499, !517}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!675 = distinct !{!675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!676 = !{!677}
!677 = distinct !{!677, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!680 = distinct !{!680, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!681 = !{!682}
!682 = distinct !{!682, !680, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!683 = !{!684}
!684 = distinct !{!684, !685, !"cmpfunc: %a"}
!685 = distinct !{!685, !"cmpfunc"}
!686 = !{!687}
!687 = distinct !{!687, !685, !"cmpfunc: %b"}
!688 = !{!684, !679, !674, !496}
!689 = !{!687, !682, !677, !499, !517}
!690 = !{!687, !682, !677, !496}
!691 = !{!684, !679, !674, !499, !517}
!692 = !{!499, !517}
!693 = !{!694, !696, !698, !499}
!694 = distinct !{!694, !695, !"cmpfunc: %b"}
!695 = distinct !{!695, !"cmpfunc"}
!696 = distinct !{!696, !697, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!697 = distinct !{!697, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!698 = distinct !{!698, !699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!699 = distinct !{!699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!700 = !{!701, !702, !703, !496, !517}
!701 = distinct !{!701, !695, !"cmpfunc: %a"}
!702 = distinct !{!702, !697, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!703 = distinct !{!703, !699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!704 = !{!705, !707, !709, !499}
!705 = distinct !{!705, !706, !"cmpfunc: %b"}
!706 = distinct !{!706, !"cmpfunc"}
!707 = distinct !{!707, !708, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!708 = distinct !{!708, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!709 = distinct !{!709, !710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!710 = distinct !{!710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!711 = !{!712, !713, !714, !496, !517}
!712 = distinct !{!712, !706, !"cmpfunc: %a"}
!713 = distinct !{!713, !708, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!714 = distinct !{!714, !710, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!715 = !{!716, !718, !496, !517}
!716 = distinct !{!716, !717, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!717 = distinct !{!717, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!718 = distinct !{!718, !719, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!719 = distinct !{!719, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E: %v.0"}
!722 = distinct !{!722, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!725 = distinct !{!725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!726 = !{!727}
!727 = distinct !{!727, !725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!730 = distinct !{!730, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %_0"}
!733 = distinct !{!733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E"}
!734 = !{!735}
!735 = distinct !{!735, !730, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"cmpfunc: %a"}
!738 = distinct !{!738, !"cmpfunc"}
!739 = !{!740}
!740 = distinct !{!740, !738, !"cmpfunc: %b"}
!741 = !{!737, !729, !724, !721, !499}
!742 = !{!740, !735, !727, !732, !496, !517}
!743 = !{!740, !735, !727, !721, !499}
!744 = !{!737, !729, !724, !732, !496, !517}
!745 = !{!732, !746, !721, !499, !517}
!746 = distinct !{!746, !733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %is_less"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!749 = distinct !{!749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!750 = !{!751}
!751 = distinct !{!751, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!754 = distinct !{!754, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %_0"}
!757 = distinct !{!757, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE"}
!758 = !{!759}
!759 = distinct !{!759, !754, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"cmpfunc: %a"}
!762 = distinct !{!762, !"cmpfunc"}
!763 = !{!764}
!764 = distinct !{!764, !762, !"cmpfunc: %b"}
!765 = !{!761, !753, !748, !721, !499}
!766 = !{!764, !759, !751, !756, !496, !517}
!767 = !{!764, !759, !751, !721, !499}
!768 = !{!761, !753, !748, !756, !496, !517}
!769 = !{!756, !770, !721, !499, !517}
!770 = distinct !{!770, !757, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %is_less"}
!771 = !{!721, !499}
!772 = !{!721, !499, !517}
!773 = !{!496, !499, !517}
!774 = !{!496, !499}
!775 = !{!776, !778, !517}
!776 = distinct !{!776, !777, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!777 = distinct !{!777, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!778 = distinct !{!778, !779, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!779 = distinct !{!779, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!782 = distinct !{!782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!787 = distinct !{!787, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE: %c"}
!790 = distinct !{!790, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE"}
!791 = !{!792}
!792 = distinct !{!792, !787, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"cmpfunc: %a"}
!795 = distinct !{!795, !"cmpfunc"}
!796 = !{!797}
!797 = distinct !{!797, !795, !"cmpfunc: %b"}
!798 = !{!794, !786, !781, !799}
!799 = distinct !{!799, !800, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE: %v.0"}
!800 = distinct !{!800, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE"}
!801 = !{!797, !792, !784, !789, !802}
!802 = distinct !{!802, !800, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE: %is_less"}
!803 = !{!797, !792, !784, !799}
!804 = !{!794, !786, !781, !789, !802}
!805 = !{!806, !808, !810, !799}
!806 = distinct !{!806, !807, !"cmpfunc: %b"}
!807 = distinct !{!807, !"cmpfunc"}
!808 = distinct !{!808, !809, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!809 = distinct !{!809, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!810 = distinct !{!810, !811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!811 = distinct !{!811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!812 = !{!813, !814, !815, !802}
!813 = distinct !{!813, !807, !"cmpfunc: %a"}
!814 = distinct !{!814, !809, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!815 = distinct !{!815, !811, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!816 = !{!817, !819, !821}
!817 = distinct !{!817, !818, !"cmpfunc: %a"}
!818 = distinct !{!818, !"cmpfunc"}
!819 = distinct !{!819, !820, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!820 = distinct !{!820, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!821 = distinct !{!821, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!822 = distinct !{!822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!823 = !{!824, !825, !826}
!824 = distinct !{!824, !818, !"cmpfunc: %b"}
!825 = distinct !{!825, !820, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!826 = distinct !{!826, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!827 = !{!828}
!828 = distinct !{!828, !829, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5faa6d1b37260ccaE: %v.0"}
!829 = distinct !{!829, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5faa6d1b37260ccaE"}
!830 = !{!831}
!831 = distinct !{!831, !829, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5faa6d1b37260ccaE: %scratch.0"}
!832 = !{!833, !835, !837, !828}
!833 = distinct !{!833, !834, !"cmpfunc: %b"}
!834 = distinct !{!834, !"cmpfunc"}
!835 = distinct !{!835, !836, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!836 = distinct !{!836, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!837 = distinct !{!837, !838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!838 = distinct !{!838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!839 = !{!840, !841, !842, !831}
!840 = distinct !{!840, !834, !"cmpfunc: %a"}
!841 = distinct !{!841, !836, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!842 = distinct !{!842, !838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!843 = !{!842}
!844 = !{!837}
!845 = !{!841}
!846 = !{!835}
!847 = !{!840}
!848 = !{!833}
!849 = !{!840, !841, !842, !828}
!850 = !{!833, !835, !837, !831}
!851 = !{!852, !828}
!852 = distinct !{!852, !853, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!853 = distinct !{!853, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!854 = !{!855, !857, !859, !828}
!855 = distinct !{!855, !856, !"cmpfunc: %a"}
!856 = distinct !{!856, !"cmpfunc"}
!857 = distinct !{!857, !858, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!858 = distinct !{!858, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!859 = distinct !{!859, !860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!860 = distinct !{!860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!861 = !{!862, !863, !864, !831}
!862 = distinct !{!862, !856, !"cmpfunc: %b"}
!863 = distinct !{!863, !858, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!864 = distinct !{!864, !860, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!865 = !{!866, !828}
!866 = distinct !{!866, !867, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!867 = distinct !{!867, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!868 = !{!869, !871, !873, !828}
!869 = distinct !{!869, !870, !"cmpfunc: %a"}
!870 = distinct !{!870, !"cmpfunc"}
!871 = distinct !{!871, !872, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!872 = distinct !{!872, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!873 = distinct !{!873, !874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!874 = distinct !{!874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!875 = !{!876, !877, !878, !831}
!876 = distinct !{!876, !870, !"cmpfunc: %b"}
!877 = distinct !{!877, !872, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!878 = distinct !{!878, !874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!879 = !{!880, !828}
!880 = distinct !{!880, !881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!881 = distinct !{!881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!882 = !{!883, !885, !887, !828}
!883 = distinct !{!883, !884, !"cmpfunc: %a"}
!884 = distinct !{!884, !"cmpfunc"}
!885 = distinct !{!885, !886, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!886 = distinct !{!886, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!887 = distinct !{!887, !888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!888 = distinct !{!888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!889 = !{!890, !891, !892, !831}
!890 = distinct !{!890, !884, !"cmpfunc: %b"}
!891 = distinct !{!891, !886, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!892 = distinct !{!892, !888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!893 = !{!894, !828}
!894 = distinct !{!894, !895, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!895 = distinct !{!895, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!896 = !{!897, !899, !901, !828}
!897 = distinct !{!897, !898, !"cmpfunc: %b"}
!898 = distinct !{!898, !"cmpfunc"}
!899 = distinct !{!899, !900, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!900 = distinct !{!900, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!901 = distinct !{!901, !902, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!902 = distinct !{!902, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!903 = !{!904, !905, !906, !831}
!904 = distinct !{!904, !898, !"cmpfunc: %a"}
!905 = distinct !{!905, !900, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!906 = distinct !{!906, !902, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!907 = !{!906}
!908 = !{!901}
!909 = !{!905}
!910 = !{!899}
!911 = !{!904}
!912 = !{!897}
!913 = !{!904, !905, !906, !828}
!914 = !{!897, !899, !901, !831}
!915 = !{!916, !828}
!916 = distinct !{!916, !917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!917 = distinct !{!917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!918 = !{!919, !831}
!919 = distinct !{!919, !920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!920 = distinct !{!920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!921 = !{!919, !828}
!922 = !{!828, !831}
!923 = distinct !{!923, !437, !438}
!924 = distinct !{!924, !438, !437}
!925 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!926 = !{!927, !929}
!927 = distinct !{!927, !928, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E: %pair"}
!928 = distinct !{!928, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E"}
!929 = distinct !{!929, !928, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E: %self.0"}
!930 = !{!931}
!931 = distinct !{!931, !932, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E: %v.0"}
!932 = distinct !{!932, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E"}
!933 = !{!934}
!934 = distinct !{!934, !932, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E: %scratch.0"}
!935 = !{!936, !938, !940, !942, !931}
!936 = distinct !{!936, !937, !"cmpfunc: %a"}
!937 = distinct !{!937, !"cmpfunc"}
!938 = distinct !{!938, !939, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!939 = distinct !{!939, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!940 = distinct !{!940, !941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!941 = distinct !{!941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!942 = distinct !{!942, !943, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!943 = distinct !{!943, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!944 = !{!945, !946, !947, !948, !934}
!945 = distinct !{!945, !937, !"cmpfunc: %b"}
!946 = distinct !{!946, !939, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!947 = distinct !{!947, !941, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!948 = distinct !{!948, !943, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!949 = !{!948}
!950 = !{!942}
!951 = !{!940}
!952 = !{!947}
!953 = !{!938}
!954 = !{!946}
!955 = !{!936}
!956 = !{!945}
!957 = !{!945, !946, !947, !948, !931}
!958 = !{!936, !938, !940, !942, !934}
!959 = !{!960, !931}
!960 = distinct !{!960, !961, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!961 = distinct !{!961, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!962 = !{!963, !965, !967, !969, !931}
!963 = distinct !{!963, !964, !"cmpfunc: %b"}
!964 = distinct !{!964, !"cmpfunc"}
!965 = distinct !{!965, !966, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!966 = distinct !{!966, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!967 = distinct !{!967, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!968 = distinct !{!968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!969 = distinct !{!969, !970, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!970 = distinct !{!970, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!971 = !{!972, !973, !974, !975, !934}
!972 = distinct !{!972, !964, !"cmpfunc: %a"}
!973 = distinct !{!973, !966, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!974 = distinct !{!974, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!975 = distinct !{!975, !970, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!976 = !{!977, !931}
!977 = distinct !{!977, !978, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!978 = distinct !{!978, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!979 = !{!980, !982, !984, !986, !931}
!980 = distinct !{!980, !981, !"cmpfunc: %b"}
!981 = distinct !{!981, !"cmpfunc"}
!982 = distinct !{!982, !983, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!983 = distinct !{!983, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!984 = distinct !{!984, !985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!985 = distinct !{!985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!986 = distinct !{!986, !987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!987 = distinct !{!987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!988 = !{!989, !990, !991, !992, !934}
!989 = distinct !{!989, !981, !"cmpfunc: %a"}
!990 = distinct !{!990, !983, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!991 = distinct !{!991, !985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!992 = distinct !{!992, !987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!993 = !{!994, !931}
!994 = distinct !{!994, !995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!995 = distinct !{!995, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!996 = !{!997, !999, !1001, !1003, !931}
!997 = distinct !{!997, !998, !"cmpfunc: %b"}
!998 = distinct !{!998, !"cmpfunc"}
!999 = distinct !{!999, !1000, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1000 = distinct !{!1000, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1001 = distinct !{!1001, !1002, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1002 = distinct !{!1002, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1003 = distinct !{!1003, !1004, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1004 = distinct !{!1004, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1005 = !{!1006, !1007, !1008, !1009, !934}
!1006 = distinct !{!1006, !998, !"cmpfunc: %a"}
!1007 = distinct !{!1007, !1000, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1008 = distinct !{!1008, !1002, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1009 = distinct !{!1009, !1004, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1010 = !{!1011, !931}
!1011 = distinct !{!1011, !1012, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1012 = distinct !{!1012, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1013 = !{!1014, !1016, !1018, !1020, !931}
!1014 = distinct !{!1014, !1015, !"cmpfunc: %a"}
!1015 = distinct !{!1015, !"cmpfunc"}
!1016 = distinct !{!1016, !1017, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1017 = distinct !{!1017, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1018 = distinct !{!1018, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1019 = distinct !{!1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1020 = distinct !{!1020, !1021, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1021 = distinct !{!1021, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1022 = !{!1023, !1024, !1025, !1026, !934}
!1023 = distinct !{!1023, !1015, !"cmpfunc: %b"}
!1024 = distinct !{!1024, !1017, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1025 = distinct !{!1025, !1019, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1026 = distinct !{!1026, !1021, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1027 = !{!1026}
!1028 = !{!1020}
!1029 = !{!1018}
!1030 = !{!1025}
!1031 = !{!1016}
!1032 = !{!1024}
!1033 = !{!1014}
!1034 = !{!1023}
!1035 = !{!1023, !1024, !1025, !1026, !931}
!1036 = !{!1014, !1016, !1018, !1020, !934}
!1037 = !{!1038, !931}
!1038 = distinct !{!1038, !1039, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1039 = distinct !{!1039, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1040 = !{!1041, !934}
!1041 = distinct !{!1041, !1042, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1042 = distinct !{!1042, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1043 = !{!1041, !931}
!1044 = !{!931, !934}
!1045 = distinct !{!1045, !437, !438}
!1046 = distinct !{!1046, !438, !437}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE: %self"}
!1049 = distinct !{!1049, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE: %alloc"}
!1052 = !{!1048, !1051}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE: %self"}
!1055 = distinct !{!1055, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE"}
!1056 = !{!"branch_weights", i32 4292820, i32 2143190828}
!1057 = !{!1058, !1060, !1054, !1048}
!1058 = distinct !{!1058, !1059, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E: %_0"}
!1059 = distinct !{!1059, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E"}
!1060 = distinct !{!1060, !1061, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E: %_0"}
!1061 = distinct !{!1061, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E"}
!1062 = !{!1060, !1054, !1048}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x"}
!1065 = distinct !{!1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y"}
!1068 = !{!1054, !1048}
!1069 = !{!1070, !1051}
!1070 = distinct !{!1070, !1055, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE: %alloc"}
!1071 = !{!1072, !1054, !1048}
!1072 = distinct !{!1072, !1073, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1073 = distinct !{!1073, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1074 = !{!1075, !1077}
!1075 = distinct !{!1075, !1076, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1076 = distinct !{!1076, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1077 = distinct !{!1077, !1078, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1078 = distinct !{!1078, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1079 = !{!1080, !1081, !1082, !1084, !1085, !1087}
!1080 = distinct !{!1080, !1076, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1081 = distinct !{!1081, !1078, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1082 = distinct !{!1082, !1083, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %_1"}
!1083 = distinct !{!1083, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E"}
!1084 = distinct !{!1084, !1083, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %val"}
!1085 = distinct !{!1085, !1086, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %_1"}
!1086 = distinct !{!1086, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E"}
!1087 = distinct !{!1087, !1086, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %table"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1090 = distinct !{!1090, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1091 = !{!1084}
!1092 = !{!1077}
!1093 = !{!1081}
!1094 = !{i32 0, i32 1114112}
!1095 = !{!1096, !1081, !1084}
!1096 = distinct !{!1096, !1097, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1097 = distinct !{!1097, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1098 = !{!1099, !1100, !1102, !1077, !1082, !1085, !1087}
!1099 = distinct !{!1099, !1097, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!1100 = distinct !{!1100, !1101, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!1101 = distinct !{!1101, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!1102 = distinct !{!1102, !1101, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!1103 = !{!1104, !1106}
!1104 = distinct !{!1104, !1105, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1105 = distinct !{!1105, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1106 = distinct !{!1106, !1107, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1107 = distinct !{!1107, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1108 = !{!"branch_weights", i32 1, i32 1999}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x:It1"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y:It1"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x:It2"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1065, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y:It2"}
!1117 = !{!1118, !1120, !1121, !1123}
!1118 = distinct !{!1118, !1119, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E: %_1"}
!1119 = distinct !{!1119, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E"}
!1120 = distinct !{!1120, !1119, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E: %self_"}
!1121 = distinct !{!1121, !1122, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54f130f6b1d0bafbE: %self"}
!1122 = distinct !{!1122, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54f130f6b1d0bafbE"}
!1123 = distinct !{!1123, !1124, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf038268e302d4f2E: %_1"}
!1124 = distinct !{!1124, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf038268e302d4f2E"}
!1125 = !{!"branch_weights", i32 0, i32 1}
!1126 = !{!1127, !1106}
!1127 = distinct !{!1127, !1128, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1128 = distinct !{!1128, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1129 = !{!1130, !1127, !1106}
!1130 = distinct !{!1130, !1131, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1131 = distinct !{!1131, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1134, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE: %self"}
!1134 = distinct !{!1134, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E: %self"}
!1137 = distinct !{!1137, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E"}
!1138 = !{!1136, !1133}
!1139 = !{!1140, !1136, !1133, !1051}
!1140 = distinct !{!1140, !1141, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1141 = distinct !{!1141, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1142 = !{!1143, !1136, !1133, !1051}
!1143 = distinct !{!1143, !1144, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E: %a"}
!1144 = distinct !{!1144, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E"}
!1145 = !{!1136, !1133, !1051}
!1146 = !{!1133, !1051}
!1147 = !{!1148, !1150, !1152}
!1148 = distinct !{!1148, !1149, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1149 = distinct !{!1149, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1150 = distinct !{!1150, !1151, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1151 = distinct !{!1151, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1152 = distinct !{!1152, !1153, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %val"}
!1153 = distinct !{!1153, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E"}
!1154 = !{!1155, !1156, !1158, !1159, !1160, !1161, !1163, !1133, !1051}
!1155 = distinct !{!1155, !1149, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!1156 = distinct !{!1156, !1157, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!1157 = distinct !{!1157, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!1158 = distinct !{!1158, !1157, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!1159 = distinct !{!1159, !1151, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1160 = distinct !{!1160, !1153, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %_1"}
!1161 = distinct !{!1161, !1162, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %_1"}
!1162 = distinct !{!1162, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E"}
!1163 = distinct !{!1163, !1162, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %table"}
!1164 = !{!1165, !1167, !1133, !1051}
!1165 = distinct !{!1165, !1166, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1166 = distinct !{!1166, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1167 = distinct !{!1167, !1168, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1168 = distinct !{!1168, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1169 = !{!1170, !1167, !1133, !1051}
!1170 = distinct !{!1170, !1171, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1171 = distinct !{!1171, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1172 = !{!1173, !1170, !1167, !1133, !1051}
!1173 = distinct !{!1173, !1174, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1174 = distinct !{!1174, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1175 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E: %x"}
!1178 = distinct !{!1178, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E: %y"}
!1181 = !{!1180, !1133, !1051}
!1182 = !{!1177, !1133, !1051}
!1183 = !{i8 0, i8 2}
!1184 = !{!1185, !1187, !1189, !1191, !1193}
!1185 = distinct !{!1185, !1186, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E: %i"}
!1186 = distinct !{!1186, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E"}
!1187 = distinct !{!1187, !1188, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E: %__rust_std_internal_init"}
!1188 = distinct !{!1188, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E"}
!1189 = distinct !{!1189, !1190, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E: argument 0"}
!1190 = distinct !{!1190, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E"}
!1191 = distinct !{!1191, !1192, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %_0"}
!1192 = distinct !{!1192, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE"}
!1193 = distinct !{!1193, !1194, !"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h0d99390d06b31d86E: %_0"}
!1194 = distinct !{!1194, !"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h0d99390d06b31d86E"}
!1195 = !{!1191, !1193}
!1196 = !{!1197, !1191, !1193}
!1197 = distinct !{!1197, !1198, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE: argument 0"}
!1198 = distinct !{!1198, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE: %_1"}
!1201 = distinct !{!1201, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE: %_1"}
!1204 = distinct !{!1204, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1207, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc35956e8e7bda475E: %_1"}
!1207 = distinct !{!1207, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc35956e8e7bda475E"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb568dcef5f4b79f4E: %self"}
!1210 = distinct !{!1210, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb568dcef5f4b79f4E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E: %self"}
!1213 = distinct !{!1213, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E"}
!1214 = !{i64 0, i64 -9223372036854775808}
!1215 = !{!1216, !1212, !1209, !1206, !1203, !1200}
!1216 = distinct !{!1216, !1217, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE: %self"}
!1217 = distinct !{!1217, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1217, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE: %_0"}
!1220 = !{!1212, !1209, !1206, !1203, !1200}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN4core3str11validations15next_code_point17h6c00bea8f8c66228E: %bytes"}
!1223 = distinct !{!1223, !"_ZN4core3str11validations15next_code_point17h6c00bea8f8c66228E"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1226, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE: %self"}
!1226 = distinct !{!1226, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1226, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE: %k"}
!1229 = !{!1230, !1232, !1234}
!1230 = distinct !{!1230, !1231, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1231 = distinct !{!1231, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1232 = distinct !{!1232, !1233, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1233 = distinct !{!1233, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1234 = distinct !{!1234, !1235, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h872682af38f14043E: %self"}
!1235 = distinct !{!1235, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h872682af38f14043E"}
!1236 = !{!1237, !1238}
!1237 = distinct !{!1237, !1231, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1238 = distinct !{!1238, !1233, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1239 = !{!1240, !1242, !1244, !1246, !1225, !1228}
!1240 = distinct !{!1240, !1241, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1241 = distinct !{!1241, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1242 = distinct !{!1242, !1243, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1243 = distinct !{!1243, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1244 = distinct !{!1244, !1245, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: %self"}
!1245 = distinct !{!1245, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E"}
!1246 = distinct !{!1246, !1245, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: argument 1"}
!1247 = !{!1248, !1250, !1252}
!1248 = distinct !{!1248, !1249, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1249 = distinct !{!1249, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1250 = distinct !{!1250, !1251, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1251 = distinct !{!1251, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1252 = distinct !{!1252, !1253, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1253 = distinct !{!1253, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1254 = !{!1255, !1256, !1257, !1258, !1242, !1244, !1246, !1225, !1228}
!1255 = distinct !{!1255, !1249, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1256 = distinct !{!1256, !1251, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1257 = distinct !{!1257, !1253, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1258 = distinct !{!1258, !1259, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E: %_1"}
!1259 = distinct !{!1259, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E"}
!1260 = !{!1261, !1263, !1265, !1267, !1269, !1271}
!1261 = distinct !{!1261, !1262, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE: %self"}
!1262 = distinct !{!1262, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE"}
!1263 = distinct !{!1263, !1264, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E: %self"}
!1264 = distinct !{!1264, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E"}
!1265 = distinct !{!1265, !1266, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E: %_1"}
!1266 = distinct !{!1266, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E"}
!1267 = distinct !{!1267, !1268, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E: %_1"}
!1268 = distinct !{!1268, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E"}
!1269 = distinct !{!1269, !1270, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E: %_1"}
!1270 = distinct !{!1270, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E"}
!1271 = distinct !{!1271, !1272, !"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E: %_1"}
!1272 = distinct !{!1272, !"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"}
!1273 = !{!1271}
!1274 = !{!1269}
!1275 = !{!1267}
!1276 = !{!1265}
!1277 = !{!1263}
!1278 = !{!1261}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE: %_1"}
!1281 = distinct !{!1281, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE: %_1"}
!1284 = distinct !{!1284, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1287, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc35956e8e7bda475E: %_1"}
!1287 = distinct !{!1287, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc35956e8e7bda475E"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb568dcef5f4b79f4E: %self"}
!1290 = distinct !{!1290, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb568dcef5f4b79f4E"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E: %self"}
!1293 = distinct !{!1293, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hcc1d7a0fda5a9502E"}
!1294 = !{!1295, !1292, !1289, !1286, !1283, !1280}
!1295 = distinct !{!1295, !1296, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE: %self"}
!1296 = distinct !{!1296, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9c2499acb3f3c22eE: %_0"}
!1299 = !{!1292, !1289, !1286, !1283, !1280}
!1300 = !{!1234}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: %self"}
!1303 = distinct !{!1303, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE"}
!1304 = !{!1305, !1302, !1234}
!1305 = distinct !{!1305, !1306, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E: %self"}
!1306 = distinct !{!1306, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E"}
!1307 = !{!1308, !1309, !1310}
!1308 = distinct !{!1308, !1306, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E: %hasher"}
!1309 = distinct !{!1309, !1303, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: argument 1"}
!1310 = distinct !{!1310, !1303, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: %hasher"}
!1311 = !{!1312, !1302, !1234}
!1312 = distinct !{!1312, !1313, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E: %self"}
!1313 = distinct !{!1313, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E"}
!1314 = !{!1309, !1310}
!1315 = !{!1312}
!1316 = !{!1317, !1312, !1302, !1309, !1310, !1234}
!1317 = distinct !{!1317, !1318, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1318 = distinct !{!1318, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1319 = !{!1320, !1322, !1324}
!1320 = distinct !{!1320, !1321, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1321 = distinct !{!1321, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1322 = distinct !{!1322, !1323, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1323 = distinct !{!1323, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1324 = distinct !{!1324, !1325, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1325 = distinct !{!1325, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1326 = !{!1327, !1328, !1329, !1330, !1312, !1302, !1309, !1310, !1234}
!1327 = distinct !{!1327, !1321, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1328 = distinct !{!1328, !1323, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1329 = distinct !{!1329, !1325, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1330 = distinct !{!1330, !1331, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17h8a765c39ba539a5dE: %_1"}
!1331 = distinct !{!1331, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17h8a765c39ba539a5dE"}
!1332 = !{!1333, !1312, !1302, !1309, !1310, !1234}
!1333 = distinct !{!1333, !1334, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1334 = distinct !{!1334, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1335 = !{!1336, !1333, !1312, !1302, !1309, !1310, !1234}
!1336 = distinct !{!1336, !1337, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1337 = distinct !{!1337, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1338 = !{!1339, !1234}
!1339 = distinct !{!1339, !1340, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h3cca5d044e204ce7E: %self"}
!1340 = distinct !{!1340, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h3cca5d044e204ce7E"}
!1341 = !{!1339}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h837ccbb2fd1ee208E: %self"}
!1344 = distinct !{!1344, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h837ccbb2fd1ee208E"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE: %self"}
!1347 = distinct !{!1347, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E: %self"}
!1350 = distinct !{!1350, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E"}
!1351 = !{!1352, !1354, !1356, !1358, !1349, !1359, !1346, !1360, !1343, !1361}
!1352 = distinct !{!1352, !1353, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1353 = distinct !{!1353, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1354 = distinct !{!1354, !1355, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1355 = distinct !{!1355, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1356 = distinct !{!1356, !1357, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: %self"}
!1357 = distinct !{!1357, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E"}
!1358 = distinct !{!1358, !1357, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: argument 1"}
!1359 = distinct !{!1359, !1350, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E: %eq"}
!1360 = distinct !{!1360, !1347, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE: %k"}
!1361 = distinct !{!1361, !1344, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h837ccbb2fd1ee208E: %k"}
!1362 = !{!1363, !1365, !1367}
!1363 = distinct !{!1363, !1364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1364 = distinct !{!1364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1365 = distinct !{!1365, !1366, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1366 = distinct !{!1366, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1367 = distinct !{!1367, !1368, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1368 = distinct !{!1368, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1369 = !{!1370, !1371, !1372, !1373, !1354, !1356, !1358, !1349, !1359, !1346, !1360, !1343, !1361}
!1370 = distinct !{!1370, !1364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1371 = distinct !{!1371, !1366, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1372 = distinct !{!1372, !1368, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1373 = distinct !{!1373, !1374, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E: %_1"}
!1374 = distinct !{!1374, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E: %self"}
!1377 = distinct !{!1377, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %self"}
!1380 = distinct !{!1380, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE: %self"}
!1383 = distinct !{!1383, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE"}
!1384 = !{!1385, !1382, !1379, !1387, !1376, !1349, !1359, !1346, !1360, !1343, !1361}
!1385 = distinct !{!1385, !1386, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1386 = distinct !{!1386, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1387 = distinct !{!1387, !1380, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %item"}
!1388 = !{!1389, !1382, !1379, !1387, !1376, !1349, !1359, !1346, !1360, !1343, !1361}
!1389 = distinct !{!1389, !1390, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1390 = distinct !{!1390, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1391 = !{!1382, !1379, !1376, !1349, !1346, !1343}
!1392 = !{!1387, !1359, !1360, !1361}
!1393 = !{!1382, !1379, !1387, !1376, !1349, !1359, !1346, !1360, !1343, !1361}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE: %self.0"}
!1396 = distinct !{!1396, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E: %v.0"}
!1399 = distinct !{!1399, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E"}
!1400 = !{!1398, !1401, !1395}
!1401 = distinct !{!1401, !1399, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E: argument 1"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1404 = distinct !{!1404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1409 = distinct !{!1409, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"cmpfunc: %a"}
!1414 = distinct !{!1414, !"cmpfunc"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"cmpfunc: %b"}
!1417 = !{!1413, !1408, !1403, !1418, !1398, !1395}
!1418 = distinct !{!1418, !1419, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf70ee3bbb8914ac5E: %v.0"}
!1419 = distinct !{!1419, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf70ee3bbb8914ac5E"}
!1420 = !{!1416, !1411, !1406, !1401}
!1421 = !{!1416, !1411, !1406, !1418, !1398, !1395}
!1422 = !{!1413, !1408, !1403, !1401}
!1423 = !{!1418, !1398, !1395}
!1424 = !{!1401}
!1425 = !{!1426, !1428, !1430, !1418, !1398, !1395}
!1426 = distinct !{!1426, !1427, !"cmpfunc: %b"}
!1427 = distinct !{!1427, !"cmpfunc"}
!1428 = distinct !{!1428, !1429, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1429 = distinct !{!1429, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1430 = distinct !{!1430, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1431 = distinct !{!1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1432 = !{!1433, !1434, !1435, !1401}
!1433 = distinct !{!1433, !1427, !"cmpfunc: %a"}
!1434 = distinct !{!1434, !1429, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1435 = distinct !{!1435, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1436 = !{!1437, !1439, !1401}
!1437 = distinct !{!1437, !1438, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!1438 = distinct !{!1438, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!1439 = distinct !{!1439, !1440, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!1440 = distinct !{!1440, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It1"}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1404, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It1"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1409, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It1"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1409, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It1"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1414, !"cmpfunc: %a:It1"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1414, !"cmpfunc: %b:It1"}
!1453 = !{!1450, !1446, !1442, !1418, !1398, !1395}
!1454 = !{!1452, !1448, !1444, !1401}
!1455 = !{!1452, !1448, !1444, !1418, !1398, !1395}
!1456 = !{!1450, !1446, !1442, !1401}
