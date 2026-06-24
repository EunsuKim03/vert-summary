; ModuleID = 'MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0'
source_filename = "MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_72c38a69020295bb50917b298b49ea2d = private unnamed_addr constant [185 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.rs\00", align 1
@alloc_65666827395734502cae8ee7b2e4a1c0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_72c38a69020295bb50917b298b49ea2d, [16 x i8] c"\B8\00\00\00\00\00\00\00\1B\00\00\00\14\00\00\00" }>, align 8
@alloc_e393816fd9e35d37e9e92871c97089d9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_72c38a69020295bb50917b298b49ea2d, [16 x i8] c"\B8\00\00\00\00\00\00\00\1B\00\00\00$\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  %_4.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !16, !noalias !17, !noundef !18
  %_5.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !19, !noalias !20, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_5.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !21, !noalias !26, !noundef !18
  %_0.i7 = icmp slt i32 %_4.i.i, %_5.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_5.i.i, %_5.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40), !noalias !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42), !noalias !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45), !noalias !37
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !47, !noalias !48, !noundef !18
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !49, !noalias !50, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !51, !noalias !58, !noundef !18
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !77, !noalias !78, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !78, !noalias !77, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !94, !noalias !95, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !95, !noalias !94, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !111, !noalias !112, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !112, !noalias !111, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !128, !noalias !129, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !129, !noalias !128, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !145, !noalias !146, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !146, !noalias !145, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !162, !noalias !163, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !163, !noalias !162, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !179, !noalias !180, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !180, !noalias !179, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !196, !noalias !197, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !197, !noalias !196, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !213, !noalias !214, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !214, !noalias !213, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !230, !noalias !231, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !231, !noalias !230, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !235, !noalias !242, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !248
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !250, !noalias !257, !noundef !18
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !263
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276), !noalias !271
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !278, !noalias !279, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !280, !noalias !281, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !248
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293), !noalias !288
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !295, !noalias !296, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !297, !noalias !298, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !263
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309), !noalias !271
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !311, !noalias !312, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !313, !noalias !314, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !248
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325), !noalias !288
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !327, !noalias !328, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !329, !noalias !330, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !263
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341), !noalias !271
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !343, !noalias !344, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !345, !noalias !346, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !248
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355), !noalias !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357), !noalias !288
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !359, !noalias !360, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !361, !noalias !362, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !263
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit, !prof !363

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !232
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb68b1619c0866984E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %_4.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !374, !noalias !375, !noundef !18
  %_5.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !375, !noalias !374, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %_4.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !386, !noalias !387, !noundef !18
  %_5.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !387, !noalias !386, !noundef !18
  %_0.i9.i = icmp slt i32 %_4.i.i7.i, %_5.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %_4.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !398, !noalias !399, !noundef !18
  %_5.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !399, !noalias !398, !noundef !18
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %_4.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !410, !noalias !411, !noundef !18
  %_5.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !411, !noalias !410, !noundef !18
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %_4.i.i16.i = load i32, ptr %4, align 4, !alias.scope !422, !noalias !423, !noundef !18
  %_5.i.i17.i = load i32, ptr %2, align 4, !alias.scope !423, !noalias !422, !noundef !18
  %_0.i18.i = icmp slt i32 %_4.i.i16.i, %_5.i.i17.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %_4.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !434, !noalias !435, !noundef !18
  %_5.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !435, !noalias !434, !noundef !18
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %_4.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !446, !noalias !447, !noundef !18
  %_5.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !447, !noalias !446, !noundef !18
  %_0.i9.i9 = icmp slt i32 %_4.i.i7.i7, %_5.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %_4.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !458, !noalias !459, !noundef !18
  %_5.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !459, !noalias !458, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %_4.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !470, !noalias !471, !noundef !18
  %_5.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !471, !noalias !470, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %_4.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !482, !noalias !483, !noundef !18
  %_5.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !483, !noalias !482, !noundef !18
  %_0.i18.i27 = icmp slt i32 %_4.i.i16.i25, %_5.i.i17.i26
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i38 = icmp slt i32 %9, %0
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %0)
  store i32 %19, ptr %dst, align 4, !noalias !487
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %17, %8
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %8)
  store i32 %20, ptr %18, align 4, !noalias !491
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !503
  %_4.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !506, !noalias !507, !noundef !18
  %_5.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !508, !noalias !509, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !487
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519), !noalias !518
  %_4.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !521, !noalias !522, !noundef !18
  %_5.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !523, !noalias !524, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !491
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531), !noalias !503
  %_4.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !533, !noalias !534, !noundef !18
  %_5.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !535, !noalias !536, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !487
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !518
  %_4.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !545, !noalias !546, !noundef !18
  %_5.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !547, !noalias !548, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !491
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !503
  %_4.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !557, !noalias !558, !noundef !18
  %_5.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !559, !noalias !560, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !487
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565), !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !518
  %_4.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !569, !noalias !570, !noundef !18
  %_5.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !571, !noalias !572, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !491
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E.exit, !prof !363

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !484
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !573

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !574
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !574
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb5.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb5.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb5.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb5.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb5.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb5.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %bb2.i.i.i3.i, label %bb10

bb10:                                             ; preds = %bb2.i.i.i3.i, %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb2.i.i.i3.i:                                     ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !579
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !588
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h5436bcb9b76deca8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !573

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !597
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !597
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb5.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb5.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb5.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb5.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb5.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb5.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bf800476d0f323cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %bb2.i.i.i3.i, label %bb10

bb10:                                             ; preds = %bb2.i.i.i3.i, %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb2.i.i.i3.i:                                     ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !602
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !611
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h8faa72b49dcfa83aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !573

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !620
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !620
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb5.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb5.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb5.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb5.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb5.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb5.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h49b5a40f221d4c04E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %bb2.i.i.i3.i, label %bb10

bb10:                                             ; preds = %bb2.i.i.i3.i, %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb2.i.i.i3.i:                                     ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !625
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !634
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !651
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !651
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !651
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !noalias !651
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !661, !noalias !662, !noundef !18
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !663, !noalias !664, !noundef !18
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !665, !noalias !672, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !676, !noalias !683, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687), !noalias !690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !690
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !694, !noalias !697
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !694, !noalias !697
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !698, !noalias !699
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !698, !noalias !699
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !694, !noalias !697
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !694, !noalias !697
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !698, !noalias !699
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !698, !noalias !699
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !700

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !694, !noalias !697, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !698, !noalias !699
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !694, !noalias !697
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !698, !noalias !699
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !703

_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !709
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !725, !noalias !726, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !729, !noalias !730, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !704, !noalias !731
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !747, !noalias !748, !noundef !18
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !751, !noalias !752, !noundef !18
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !704, !noalias !753
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !709, !noalias !754
  br label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit

_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bf800476d0f323cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %_13.not.i98 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i104 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %36, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %35, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit ], [ 1, %bb6 ]
  %_3783 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3783, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !767
  %_4.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !772, !noalias !773, !noundef !18
  %_5.i.i63 = load i32, ptr %_82, align 4, !alias.scope !774, !noalias !775, !noundef !18
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_5.i.i60 = phi i32 [ %_4.i.i59, %bb15.i.i ], [ %_4.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_4.i.i59 = load i32, ptr %2, align 4, !alias.scope !776, !noalias !781, !noundef !18
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_5.i.i = phi i32 [ %_4.i.i58, %bb7.i.i ], [ %_4.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_4.i.i58 = load i32, ptr %4, align 4, !alias.scope !784, !noalias !789, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792), !noalias !795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797), !noalias !795
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h04c1b82f604071a6E.exit.i.thread101 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_82, i64 %_0.sroa.0.0.i.i99107111
  %min.iters.check = icmp samesign ult i64 %half_len2.i112, 8
  br i1 %min.iters.check, label %bb6.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb5.preheader.i.i
  %n.vec = and i64 %half_len2.i112, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = xor i64 %index, -1
  %7 = getelementptr inbounds nuw i32, ptr %_82, i64 %index
  %8 = getelementptr i32, ptr %end.i, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !799, !noalias !802
  %wide.load119 = load <4 x i32>, ptr %9, align 4, !alias.scope !799, !noalias !802
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load120 = load <4 x i32>, ptr %10, align 4, !alias.scope !803, !noalias !804
  %reverse = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load121 = load <4 x i32>, ptr %11, align 4, !alias.scope !803, !noalias !804
  %reverse122 = shufflevector <4 x i32> %wide.load121, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !799, !noalias !802
  store <4 x i32> %reverse122, ptr %9, align 4, !alias.scope !799, !noalias !802
  %reverse123 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %10, align 4, !alias.scope !803, !noalias !804
  %reverse124 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse124, ptr %11, align 4, !alias.scope !803, !noalias !804
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %half_len2.i112, %n.vec
  br i1 %cmp.n, label %bb5.i38, label %bb6.i.i.preheader

bb6.i.i.preheader:                                ; preds = %bb5.preheader.i.i, %middle.block
  %i.sroa.0.016.i.i.ph = phi i64 [ 0, %bb5.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i.preheader, %bb6.i.i
  %i.sroa.0.016.i.i = phi i64 [ %16, %bb6.i.i ], [ %i.sroa.0.016.i.i.ph, %bb6.i.i.preheader ]
  %13 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %13
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !799, !noalias !802, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !803, !noalias !804
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !799, !noalias !802
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !803, !noalias !804
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !806

_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !18
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.184, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.184, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %19 = or i64 %left10, %prev_run.sroa.0.184
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !812
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %_4.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !823, !noalias !824, !noundef !18
  %_5.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !827, !noalias !828, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !807, !noalias !829
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %_4.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !840, !noalias !841, !noundef !18
  %_5.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !844, !noalias !845, !noundef !18
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i12.i, %_5.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i12.i, i32 %_5.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !807, !noalias !846
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !812, !noalias !847
  br label %_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit

_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hc14cadc787fedd6eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h49b5a40f221d4c04E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %_13.not.i98 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i104 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %36, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %35, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit ], [ 1, %bb6 ]
  %_3783 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3783, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857), !noalias !860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863), !noalias !860
  %_4.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !865, !noalias !866, !noundef !18
  %_5.i.i63 = load i32, ptr %_82, align 4, !alias.scope !867, !noalias !868, !noundef !18
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_5.i.i60 = phi i32 [ %_4.i.i59, %bb15.i.i ], [ %_4.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_4.i.i59 = load i32, ptr %2, align 4, !alias.scope !869, !noalias !874, !noundef !18
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_5.i.i = phi i32 [ %_4.i.i58, %bb7.i.i ], [ %_4.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_4.i.i58 = load i32, ptr %4, align 4, !alias.scope !877, !noalias !882, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885), !noalias !888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890), !noalias !888
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h607faa55cb830ea1E.exit.i.thread101 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_82, i64 %_0.sroa.0.0.i.i99107111
  %min.iters.check = icmp samesign ult i64 %half_len2.i112, 8
  br i1 %min.iters.check, label %bb6.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb5.preheader.i.i
  %n.vec = and i64 %half_len2.i112, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = xor i64 %index, -1
  %7 = getelementptr inbounds nuw i32, ptr %_82, i64 %index
  %8 = getelementptr i32, ptr %end.i, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !892, !noalias !895
  %wide.load119 = load <4 x i32>, ptr %9, align 4, !alias.scope !892, !noalias !895
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load120 = load <4 x i32>, ptr %10, align 4, !alias.scope !896, !noalias !897
  %reverse = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load121 = load <4 x i32>, ptr %11, align 4, !alias.scope !896, !noalias !897
  %reverse122 = shufflevector <4 x i32> %wide.load121, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !892, !noalias !895
  store <4 x i32> %reverse122, ptr %9, align 4, !alias.scope !892, !noalias !895
  %reverse123 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %10, align 4, !alias.scope !896, !noalias !897
  %reverse124 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse124, ptr %11, align 4, !alias.scope !896, !noalias !897
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !898

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %half_len2.i112, %n.vec
  br i1 %cmp.n, label %bb5.i38, label %bb6.i.i.preheader

bb6.i.i.preheader:                                ; preds = %bb5.preheader.i.i, %middle.block
  %i.sroa.0.016.i.i.ph = phi i64 [ 0, %bb5.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i.preheader, %bb6.i.i
  %i.sroa.0.016.i.i = phi i64 [ %16, %bb6.i.i ], [ %i.sroa.0.016.i.i.ph, %bb6.i.i.preheader ]
  %13 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %13
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !892, !noalias !895, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !896, !noalias !897
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !892, !noalias !895
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !896, !noalias !897
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !899

_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !18
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.184, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.184, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %19 = or i64 %left10, %prev_run.sroa.0.184
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !905
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %_4.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !916, !noalias !917, !noundef !18
  %_5.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !920, !noalias !921, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !900, !noalias !922
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %_4.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !933, !noalias !934, !noundef !18
  %_5.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !937, !noalias !938, !noundef !18
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i12.i, %_5.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i12.i, i32 %_5.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !900, !noalias !939
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !905, !noalias !940
  br label %_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit

_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h350d13a2e5770882E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb68b1619c0866984E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb68b1619c0866984E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %_4.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !960, !noalias !961, !noundef !18
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !963, !noalias !964, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %_4.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !975, !noalias !976, !noundef !18
  %_5.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !977, !noalias !978, !noundef !18
  %_0.i9.i.i = icmp slt i32 %_4.i.i7.i.i, %_5.i.i8.i.i
  %count.i.i = zext i1 %_0.i.i.i to i64
  %a.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count.i.i
  %_19.i.i = xor i1 %_0.i.i.i, true
  %count2.i.i = zext i1 %_19.i.i to i64
  %b.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count2.i.i
  %count3.i.i = select i1 %_0.i9.i.i, i64 3, i64 2
  %c.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count3.i.i
  %count4.i.i = select i1 %_0.i9.i.i, i64 2, i64 3
  %d.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %_4.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !989, !noalias !990, !noundef !18
  %_5.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !991, !noalias !992, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %_4.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1003, !noalias !1004, !noundef !18
  %_5.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1005, !noalias !1006, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %_4.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1017, !noalias !1018, !noundef !18
  %_5.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1019, !noalias !1020, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !948, !noalias !1021
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !948, !noalias !1021
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !948, !noalias !1021
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !948, !noalias !1021
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %_4.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1032, !noalias !1033, !noundef !18
  %_5.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1034, !noalias !1035, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %_4.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1046, !noalias !1047, !noundef !18
  %_5.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1048, !noalias !1049, !noundef !18
  %_0.i9.i21.i = icmp slt i32 %_4.i.i7.i19.i, %_5.i.i8.i20.i
  %count.i22.i = zext i1 %_0.i.i16.i to i64
  %a.i23.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count.i22.i
  %_19.i24.i = xor i1 %_0.i.i16.i, true
  %count2.i25.i = zext i1 %_19.i24.i to i64
  %b.i26.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count2.i25.i
  %count3.i27.i = select i1 %_0.i9.i21.i, i64 3, i64 2
  %c.i28.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count3.i27.i
  %count4.i29.i = select i1 %_0.i9.i21.i, i64 2, i64 3
  %d.i30.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count4.i29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %_4.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1060, !noalias !1061, !noundef !18
  %_5.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1062, !noalias !1063, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %_4.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1074, !noalias !1075, !noundef !18
  %_5.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1076, !noalias !1077, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %_4.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1088, !noalias !1089, !noundef !18
  %_5.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1090, !noalias !1091, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !948, !noalias !1021
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !948, !noalias !1021
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !948, !noalias !1021
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !948, !noalias !1021
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !945, !noalias !1092
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !948, !noalias !1021
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !945, !noalias !1092
  store i32 %25, ptr %24, align 4, !alias.scope !948, !noalias !1021
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !945, !noalias !1092
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !948, !noalias !1021
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_5.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1093, !noalias !1098, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_5.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_5.i.i2.i.1.i, %bb7.i.1.i ], [ %_5.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !948, !noalias !1021
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_5.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1101, !noalias !1106, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_5.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !948, !noalias !1109
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1122), !noalias !1125
  call void @llvm.experimental.noalias.scope.decl(metadata !1128), !noalias !1125
  %_4.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1130, !noalias !1131, !noundef !18
  %_5.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1132, !noalias !1133, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !945, !noalias !1134
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1144
  call void @llvm.experimental.noalias.scope.decl(metadata !1147), !noalias !1144
  %_4.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1149, !noalias !1150, !noundef !18
  %_5.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1151, !noalias !1152, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !945, !noalias !1153
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1155, !noalias !1021
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !945, !noalias !1156
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !363

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1157

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1158, !noalias !1159
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !945, !noalias !1092
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !948, !noalias !1021
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_5.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1093, !noalias !1098, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_5.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_5.i.i2.i.i, %bb7.i.i ], [ %_5.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !948, !noalias !1021
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_5.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1101, !noalias !1106, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_5.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !948, !noalias !1109
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  call void @llvm.experimental.noalias.scope.decl(metadata !1169), !noalias !1172
  call void @llvm.experimental.noalias.scope.decl(metadata !1175), !noalias !1172
  %_4.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1177, !noalias !1180, !noundef !18
  %_5.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1182, !noalias !1183, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1184, !noalias !1189, !noundef !18
  %_0.i7.i = icmp slt i32 %_4.i.i.i, %_5.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i, %_5.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1bf800476d0f323cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !18
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_4.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1192, !noalias !1197, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !363

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
  %_5.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1205, !noalias !1210, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %_4.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1217, !noalias !1218, !noundef !18
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_4.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1203, !noalias !1219
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_4.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1222, !noalias !1227, !noundef !18
  %_0.i27.i = icmp slt i32 %_4.i.i25.i, %_5.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_4.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1203, !noalias !1230
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_4.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1233, !noalias !1238, !noundef !18
  %_0.i37.i = icmp slt i32 %_4.i.i35.i, %_5.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_4.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1203, !noalias !1241
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_4.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1244, !noalias !1249, !noundef !18
  %_0.i47.i = icmp slt i32 %_4.i.i45.i, %_5.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_4.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1203, !noalias !1252
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
  %_5.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1255, !noalias !1260, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %_4.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1267, !noalias !1268, !noundef !18
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_4.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1203, !noalias !1269
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1200, !noalias !1272
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1203, !noalias !1275
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1276
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1203, !noalias !1200
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1203, !noalias !1200
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1200, !noalias !1203
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1200, !noalias !1203
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1277

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1203, !noalias !1200
  store i32 %78, ptr %75, align 4, !alias.scope !1200, !noalias !1203
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1278

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", !prof !1279

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1280
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32a554e2f42892ceE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !363

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
  %_4.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1289, !noalias !1296, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %_5.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1306, !noalias !1307, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_5.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1287, !noalias !1308
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_5.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1311, !noalias !1318, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_5.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1287, !noalias !1322
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_5.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1325, !noalias !1332, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_5.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1287, !noalias !1336
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_5.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1339, !noalias !1346, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_5.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1287, !noalias !1350
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
  %_4.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1353, !noalias !1360, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %_5.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1370, !noalias !1371, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_5.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1287, !noalias !1372
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1284, !noalias !1375
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1287, !noalias !1378
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1379
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1287, !noalias !1284
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1287, !noalias !1284
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1284, !noalias !1287
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1284, !noalias !1287
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1287, !noalias !1284
  store i32 %108, ptr %105, align 4, !alias.scope !1284, !noalias !1287
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E.exit, label %bb42.i66, !llvm.loop !1381

_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1279

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1402, !noalias !1403, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1405, !noalias !1406, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1422, !noalias !1423, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1424, !noalias !1425, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1441, !noalias !1442, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1443, !noalias !1444, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1460, !noalias !1461, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1462, !noalias !1463, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1479, !noalias !1480, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1481, !noalias !1482, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1385, !noalias !1483
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1385, !noalias !1483
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1385, !noalias !1483
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1385, !noalias !1483
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1499, !noalias !1500, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1501, !noalias !1502, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1518, !noalias !1519, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1520, !noalias !1521, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1537, !noalias !1538, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1539, !noalias !1540, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1556, !noalias !1557, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1558, !noalias !1559, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1575, !noalias !1576, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1577, !noalias !1578, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1385, !noalias !1483
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1385, !noalias !1483
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1385, !noalias !1483
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1385, !noalias !1483
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1382, !noalias !1579
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1385, !noalias !1483
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1382, !noalias !1579
  store i32 %25, ptr %24, align 4, !alias.scope !1385, !noalias !1483
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1382, !noalias !1579
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1385, !noalias !1483
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1580, !noalias !1587, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1385, !noalias !1483
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1591, !noalias !1598, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1385, !noalias !1602
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1607)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  call void @llvm.experimental.noalias.scope.decl(metadata !1615), !noalias !1618
  call void @llvm.experimental.noalias.scope.decl(metadata !1621), !noalias !1618
  call void @llvm.experimental.noalias.scope.decl(metadata !1623), !noalias !1618
  call void @llvm.experimental.noalias.scope.decl(metadata !1626), !noalias !1618
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1628, !noalias !1629, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1630, !noalias !1631, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1382, !noalias !1632
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639), !noalias !1642
  call void @llvm.experimental.noalias.scope.decl(metadata !1645), !noalias !1642
  call void @llvm.experimental.noalias.scope.decl(metadata !1647), !noalias !1642
  call void @llvm.experimental.noalias.scope.decl(metadata !1650), !noalias !1642
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1652, !noalias !1653, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1654, !noalias !1655, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1382, !noalias !1656
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1658, !noalias !1483
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1382, !noalias !1659
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !363

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1660

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1661, !noalias !1662
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1382, !noalias !1579
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1385, !noalias !1483
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1580, !noalias !1587, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1385, !noalias !1483
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1591, !noalias !1598, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1385, !noalias !1602
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672), !noalias !1675
  call void @llvm.experimental.noalias.scope.decl(metadata !1678), !noalias !1675
  call void @llvm.experimental.noalias.scope.decl(metadata !1680), !noalias !1675
  call void @llvm.experimental.noalias.scope.decl(metadata !1683), !noalias !1675
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1685, !noalias !1688, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1690, !noalias !1691, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1692, !noalias !1699, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !18
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1703, !noalias !1710, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !363

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1719, !noalias !1726, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1736, !noalias !1737, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1717, !noalias !1738
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1741, !noalias !1748, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1717, !noalias !1752
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1755, !noalias !1762, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1717, !noalias !1766
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1769, !noalias !1776, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1717, !noalias !1780
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1783, !noalias !1790, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1800, !noalias !1801, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1717, !noalias !1802
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1714, !noalias !1805
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1717, !noalias !1808
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1809
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1717, !noalias !1714
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1717, !noalias !1714
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1714, !noalias !1717
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1714, !noalias !1717
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1810

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1717, !noalias !1714
  store i32 %78, ptr %75, align 4, !alias.scope !1714, !noalias !1717
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1811

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", !prof !1279

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1812
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !363

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1821, !noalias !1830, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1843, !noalias !1844, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1819, !noalias !1845
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1848, !noalias !1857, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1819, !noalias !1862
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1865, !noalias !1874, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1819, !noalias !1879
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1882, !noalias !1891, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1819, !noalias !1896
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1899, !noalias !1908, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1921, !noalias !1922, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1819, !noalias !1923
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1816, !noalias !1926
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1819, !noalias !1929
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1930
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1819, !noalias !1816
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1819, !noalias !1816
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1816, !noalias !1819
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1816, !noalias !1819
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1931

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1819, !noalias !1816
  store i32 %108, ptr %105, align 4, !alias.scope !1816, !noalias !1819
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit, label %bb42.i66, !llvm.loop !1932

_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1279

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  call void @llvm.experimental.noalias.scope.decl(metadata !1936)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb68b1619c0866984E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb68b1619c0866984E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %_4.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1948, !noalias !1949, !noundef !18
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1951, !noalias !1952, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %_4.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1963, !noalias !1964, !noundef !18
  %_5.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1965, !noalias !1966, !noundef !18
  %_0.i9.i.i = icmp slt i32 %_4.i.i7.i.i, %_5.i.i8.i.i
  %count.i.i = zext i1 %_0.i.i.i to i64
  %a.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count.i.i
  %_19.i.i = xor i1 %_0.i.i.i, true
  %count2.i.i = zext i1 %_19.i.i to i64
  %b.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count2.i.i
  %count3.i.i = select i1 %_0.i9.i.i, i64 3, i64 2
  %c.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count3.i.i
  %count4.i.i = select i1 %_0.i9.i.i, i64 2, i64 3
  %d.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %_4.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1977, !noalias !1978, !noundef !18
  %_5.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1979, !noalias !1980, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %_4.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1991, !noalias !1992, !noundef !18
  %_5.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1993, !noalias !1994, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  %_4.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !2005, !noalias !2006, !noundef !18
  %_5.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !2007, !noalias !2008, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1936, !noalias !2009
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1936, !noalias !2009
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1936, !noalias !2009
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1936, !noalias !2009
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %_4.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !2020, !noalias !2021, !noundef !18
  %_5.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !2022, !noalias !2023, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %_4.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !2034, !noalias !2035, !noundef !18
  %_5.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !2036, !noalias !2037, !noundef !18
  %_0.i9.i21.i = icmp slt i32 %_4.i.i7.i19.i, %_5.i.i8.i20.i
  %count.i22.i = zext i1 %_0.i.i16.i to i64
  %a.i23.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count.i22.i
  %_19.i24.i = xor i1 %_0.i.i16.i, true
  %count2.i25.i = zext i1 %_19.i24.i to i64
  %b.i26.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count2.i25.i
  %count3.i27.i = select i1 %_0.i9.i21.i, i64 3, i64 2
  %c.i28.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count3.i27.i
  %count4.i29.i = select i1 %_0.i9.i21.i, i64 2, i64 3
  %d.i30.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count4.i29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %_4.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !2048, !noalias !2049, !noundef !18
  %_5.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !2050, !noalias !2051, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %_4.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !2062, !noalias !2063, !noundef !18
  %_5.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !2064, !noalias !2065, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %_4.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !2076, !noalias !2077, !noundef !18
  %_5.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !2078, !noalias !2079, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1936, !noalias !2009
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1936, !noalias !2009
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1936, !noalias !2009
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1936, !noalias !2009
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1933, !noalias !2080
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1936, !noalias !2009
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1933, !noalias !2080
  store i32 %25, ptr %24, align 4, !alias.scope !1936, !noalias !2009
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1933, !noalias !2080
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1936, !noalias !2009
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_5.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !2081, !noalias !2086, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_5.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_5.i.i2.i.1.i, %bb7.i.1.i ], [ %_5.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1936, !noalias !2009
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_5.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !2089, !noalias !2094, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_5.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1936, !noalias !2097
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110), !noalias !2113
  call void @llvm.experimental.noalias.scope.decl(metadata !2116), !noalias !2113
  %_4.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !2118, !noalias !2119, !noundef !18
  %_5.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !2120, !noalias !2121, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1933, !noalias !2122
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  call void @llvm.experimental.noalias.scope.decl(metadata !2129), !noalias !2132
  call void @llvm.experimental.noalias.scope.decl(metadata !2135), !noalias !2132
  %_4.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !2137, !noalias !2138, !noundef !18
  %_5.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !2139, !noalias !2140, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1933, !noalias !2141
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !2143, !noalias !2009
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1933, !noalias !2144
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !363

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !2145

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !2146, !noalias !2147
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1933, !noalias !2080
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1936, !noalias !2009
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_5.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !2081, !noalias !2086, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_5.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_5.i.i2.i.i, %bb7.i.i ], [ %_5.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1936, !noalias !2009
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_5.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !2089, !noalias !2094, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_5.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1936, !noalias !2097
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h02683dd324059119E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157), !noalias !2160
  call void @llvm.experimental.noalias.scope.decl(metadata !2163), !noalias !2160
  %_4.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !2165, !noalias !2168, !noundef !18
  %_5.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2170, !noalias !2171, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2172, !noalias !2177, !noundef !18
  %_0.i7.i = icmp slt i32 %_4.i.i.i, %_5.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i, %_5.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h49b5a40f221d4c04E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !18
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_4.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !2180, !noalias !2185, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !363

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
  %_5.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !2193, !noalias !2198, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %_4.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2205, !noalias !2206, !noundef !18
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_4.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !2191, !noalias !2207
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_4.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2210, !noalias !2215, !noundef !18
  %_0.i27.i = icmp slt i32 %_4.i.i25.i, %_5.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_4.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !2191, !noalias !2218
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_4.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2221, !noalias !2226, !noundef !18
  %_0.i37.i = icmp slt i32 %_4.i.i35.i, %_5.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_4.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !2191, !noalias !2229
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_4.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2232, !noalias !2237, !noundef !18
  %_0.i47.i = icmp slt i32 %_4.i.i45.i, %_5.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_4.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !2191, !noalias !2240
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
  %_5.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2243, !noalias !2248, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %_4.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2255, !noalias !2256, !noundef !18
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_4.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !2191, !noalias !2257
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !2188, !noalias !2260
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !2191, !noalias !2263
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2264
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !2191, !noalias !2188
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !2191, !noalias !2188
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !2188, !noalias !2191
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !2188, !noalias !2191
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2265

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
  %78 = load i32, ptr %77, align 4, !alias.scope !2191, !noalias !2188
  store i32 %78, ptr %75, align 4, !alias.scope !2188, !noalias !2191
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2266

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", !prof !1279

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !2267
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he3af011fbbea14e5E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !363

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
  %_4.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2276, !noalias !2283, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  %_5.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2293, !noalias !2294, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_5.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2274, !noalias !2295
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_5.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2298, !noalias !2305, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_5.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2274, !noalias !2309
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_5.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2312, !noalias !2319, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_5.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2274, !noalias !2323
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_5.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2326, !noalias !2333, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_5.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2274, !noalias !2337
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
  %_4.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2340, !noalias !2347, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %_5.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2357, !noalias !2358, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_5.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2274, !noalias !2359
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2271, !noalias !2362
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2274, !noalias !2365
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !2366
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2274, !noalias !2271
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2274, !noalias !2271
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2271, !noalias !2274
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2271, !noalias !2274
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2274, !noalias !2271
  store i32 %108, ptr %105, align 4, !alias.scope !2271, !noalias !2274
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E.exit, label %bb42.i66, !llvm.loop !2368

_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1279

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #3 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !18
  %_4 = load i32, ptr %b, align 4, !noundef !18
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2369
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !2375
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb7.i.i, !prof !2377

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2377

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h8faa72b49dcfa83aE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %0 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2388, !noalias !2391, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !2392, !noalias !2393, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %a.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %a.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %a.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %a.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2388, !noalias !2391, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2392, !noalias !2393, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %a.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %a.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2417, !noalias !2418, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2419, !noalias !2420, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2394, !noalias !2395
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %a.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2396, !noalias !2401, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %a.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2394, !noalias !2404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b29be51414b643bE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2369
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2421
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !2427
  %b.i.i6 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb7.i.i7, !prof !2377

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit"
  %b1.i.i8 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !2377

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5436bcb9b76deca8E(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
  %v_end.idx.i.i.i11 = shl nuw nsw i64 %b.1, 2
  %v_end.i.i.i12 = getelementptr inbounds nuw i8, ptr %b.0, i64 %v_end.idx.i.i.i11
  %tail.sroa.0.01.i.i.i13 = getelementptr inbounds nuw i8, ptr %b.0, i64 4
  %8 = and i64 %b.1, 1
  %lcmp.mod51.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod51.not.not, label %bb5.i.i.i14.prol, label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol:                                 ; preds = %bb9.i.i10
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %_4.i.i.i.i.i.i17.prol = load i32, ptr %tail.sroa.0.01.i.i.i13, align 4, !alias.scope !2439, !noalias !2442, !noundef !18
  %_5.i.i.i.i.i.i18.prol = load i32, ptr %b.0, align 4, !alias.scope !2443, !noalias !2444, !noundef !18
  %_0.i.i.i.i.i19.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i.i.i.i.i19.prol, label %bb4.i.i.i.i22.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol

bb4.i.i.i.i22.prol:                               ; preds = %bb5.i.i.i14.prol, %bb7.i.i.i.i26.prol
  %9 = phi i32 [ %_5.i.i2.i.i.i.i27.prol, %bb7.i.i.i.i26.prol ], [ %_5.i.i.i.i.i.i18.prol, %bb5.i.i.i14.prol ]
  %gap_guard.sroa.5.0.i.i.i.i23.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %tail.sroa.0.01.i.i.i13, %bb5.i.i.i14.prol ]
  %sift.sroa.0.0.i.i.i.i24.prol = phi ptr [ %10, %bb7.i.i.i.i26.prol ], [ %b.0, %bb5.i.i.i14.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i23.prol, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.prol, %b.0
  br i1 %_18.i.i.i.i25.prol, label %bb10.i.i.i.i29.prol, label %bb7.i.i.i.i26.prol

bb7.i.i.i.i26.prol:                               ; preds = %bb4.i.i.i.i22.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.prol, i64 -4
  %_5.i.i2.i.i.i.i27.prol = load i32, ptr %10, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i2.i.i.i.i27.prol
  br i1 %_0.i3.i.i.i.i28.prol, label %bb4.i.i.i.i22.prol, label %bb10.i.i.i.i29.prol

bb10.i.i.i.i29.prol:                              ; preds = %bb7.i.i.i.i26.prol, %bb4.i.i.i.i22.prol
  %sift.sroa.0.0.i.lcssa.i.i.i30.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %b.0, %bb4.i.i.i.i22.prol ]
  store i32 %_4.i.i.i.i.i.i17.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i30.prol, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i29.prol, %bb5.i.i.i14.prol
  %tail.sroa.0.0.i.i.i20.prol = getelementptr inbounds nuw i8, ptr %b.0, i64 8
  br label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol, %bb9.i.i10
  %tail.sroa.0.04.i.i.i15.unr = phi ptr [ %tail.sroa.0.01.i.i.i13, %bb9.i.i10 ], [ %tail.sroa.0.0.i.i.i20.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i16.unr = phi ptr [ %b.0, %bb9.i.i10 ], [ %tail.sroa.0.01.i.i.i13, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.prol ]
  %11 = icmp eq i64 %b.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb5.i.i.i14

bb5.i.i.i14:                                      ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i20.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i15.unr, %bb5.i.i.i14.prol.loopexit ]
  %v.0.pn3.i.i.i16 = phi ptr [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i16.unr, %bb5.i.i.i14.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %_4.i.i.i.i.i.i17 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2439, !noalias !2442, !noundef !18
  %_5.i.i.i.i.i.i18 = load i32, ptr %v.0.pn3.i.i.i16, align 4, !alias.scope !2443, !noalias !2444, !noundef !18
  %_0.i.i.i.i.i19 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i.i.i.i.i18
  br i1 %_0.i.i.i.i.i19, label %bb4.i.i.i.i22, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i

bb4.i.i.i.i22:                                    ; preds = %bb5.i.i.i14, %bb7.i.i.i.i26
  %12 = phi i32 [ %_5.i.i2.i.i.i.i27, %bb7.i.i.i.i26 ], [ %_5.i.i.i.i.i.i18, %bb5.i.i.i14 ]
  %gap_guard.sroa.5.0.i.i.i.i23 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %tail.sroa.0.04.i.i.i15, %bb5.i.i.i14 ]
  %sift.sroa.0.0.i.i.i.i24 = phi ptr [ %13, %bb7.i.i.i.i26 ], [ %v.0.pn3.i.i.i16, %bb5.i.i.i14 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i23, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24, %b.0
  br i1 %_18.i.i.i.i25, label %bb10.i.i.i.i29, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb4.i.i.i.i22
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24, i64 -4
  %_5.i.i2.i.i.i.i27 = load i32, ptr %13, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i2.i.i.i.i27
  br i1 %_0.i3.i.i.i.i28, label %bb4.i.i.i.i22, label %bb10.i.i.i.i29

bb10.i.i.i.i29:                                   ; preds = %bb7.i.i.i.i26, %bb4.i.i.i.i22
  %sift.sroa.0.0.i.lcssa.i.i.i30 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %b.0, %bb4.i.i.i.i22 ]
  store i32 %_4.i.i.i.i.i.i17, ptr %sift.sroa.0.0.i.lcssa.i.i.i30, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i: ; preds = %bb10.i.i.i.i29, %bb5.i.i.i14
  %tail.sroa.0.0.i.i.i20 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %_4.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.0.i.i.i20, align 4, !alias.scope !2468, !noalias !2469, !noundef !18
  %_5.i.i.i.i.i.i18.1 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2470, !noalias !2471, !noundef !18
  %_0.i.i.i.i.i19.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i.i.i.i.i19.1, label %bb4.i.i.i.i22.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1

bb4.i.i.i.i22.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i, %bb7.i.i.i.i26.1
  %14 = phi i32 [ %_5.i.i2.i.i.i.i27.1, %bb7.i.i.i.i26.1 ], [ %_5.i.i.i.i.i.i18.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i23.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i24.1 = phi ptr [ %15, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.04.i.i.i15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i23.1, align 4, !alias.scope !2445, !noalias !2446
  %_18.i.i.i.i25.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.1, %b.0
  br i1 %_18.i.i.i.i25.1, label %bb10.i.i.i.i29.1, label %bb7.i.i.i.i26.1

bb7.i.i.i.i26.1:                                  ; preds = %bb4.i.i.i.i22.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.1, i64 -4
  %_5.i.i2.i.i.i.i27.1 = load i32, ptr %15, align 4, !alias.scope !2447, !noalias !2452, !noundef !18
  %_0.i3.i.i.i.i28.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i2.i.i.i.i27.1
  br i1 %_0.i3.i.i.i.i28.1, label %bb4.i.i.i.i22.1, label %bb10.i.i.i.i29.1

bb10.i.i.i.i29.1:                                 ; preds = %bb7.i.i.i.i26.1, %bb4.i.i.i.i22.1
  %sift.sroa.0.0.i.lcssa.i.i.i30.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %b.0, %bb4.i.i.i.i22.1 ]
  store i32 %_4.i.i.i.i.i.i17.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i30.1, align 4, !alias.scope !2445, !noalias !2455
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i29.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i20.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 8
  %_11.not.i.i.i21.1 = icmp eq ptr %tail.sroa.0.0.i.i.i20.1, %v_end.i.i.i12
  br i1 %_11.not.i.i.i21.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit", label %bb5.i.i.i14

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit": ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h63b7cf15bdf9566bE.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E.exit", %bb10.i.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2421
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_1734 = icmp sgt i32 %n, 0
  br i1 %_1734, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"
  %wide.trip.count = zext nneg i32 %n to i64
  %umin = call i64 @llvm.umin.i64(i64 %b.1, i64 %a.1)
  %16 = add nsw i64 %wide.trip.count, -1
  %umin42 = call i64 @llvm.umin.i64(i64 %umin, i64 %16)
  %min.iters.check = icmp samesign ult i64 %umin42, 8
  br i1 %min.iters.check, label %bb6.preheader47, label %vector.ph

vector.ph:                                        ; preds = %bb6.preheader
  %17 = add nuw nsw i64 %umin42, 1
  %n.mod.vf = and i64 %17, 7
  %18 = icmp eq i64 %n.mod.vf, 0
  %19 = select i1 %18, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %17, %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %28, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %29, %vector.body ]
  %20 = getelementptr inbounds nuw i32, ptr %a.0, i64 %index
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %wide.load = load <4 x i32>, ptr %20, align 4
  %wide.load44 = load <4 x i32>, ptr %21, align 4
  %22 = getelementptr inbounds nuw i32, ptr %b.0, i64 %index
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %wide.load45 = load <4 x i32>, ptr %22, align 4
  %wide.load46 = load <4 x i32>, ptr %23, align 4
  %24 = sub <4 x i32> %wide.load, %wide.load45
  %25 = sub <4 x i32> %wide.load44, %wide.load46
  %26 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %24, i1 false)
  %27 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %25, i1 false)
  %28 = add <4 x i32> %26, %vec.phi
  %29 = add <4 x i32> %27, %vec.phi43
  %index.next = add nuw i64 %index, 8
  %30 = icmp eq i64 %index.next, %n.vec
  br i1 %30, label %middle.block, label %vector.body, !llvm.loop !2472

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %29, %28
  %31 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb6.preheader47

bb6.preheader47:                                  ; preds = %bb6.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb6.preheader ], [ %n.vec, %middle.block ]
  %result.sroa.0.036.ph = phi i32 [ 0, %bb6.preheader ], [ %31, %middle.block ]
  br label %bb6

bb7:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE.exit" ], [ %34, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader47, %bb5
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb5 ], [ %indvars.iv.ph, %bb6.preheader47 ]
  %result.sroa.0.036 = phi i32 [ %34, %bb5 ], [ %result.sroa.0.036.ph, %bb6.preheader47 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %a.1
  br i1 %exitcond.not, label %panic, label %bb4

bb4:                                              ; preds = %bb6
  %exitcond40.not = icmp eq i64 %indvars.iv, %b.1
  br i1 %exitcond40.not, label %panic1, label %bb5

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_65666827395734502cae8ee7b2e4a1c0) #18
  unreachable

bb5:                                              ; preds = %bb4
  %32 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_10 = load i32, ptr %32, align 4, !noundef !18
  %33 = getelementptr inbounds nuw i32, ptr %b.0, i64 %indvars.iv
  %_14 = load i32, ptr %33, align 4, !noundef !18
  %_9 = sub i32 %_10, %_14
  %_8.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_9, i1 false)
  %34 = add i32 %_8.sroa.0.0, %result.sroa.0.036
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %bb7, label %bb6, !llvm.loop !2473

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %b.1, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e393816fd9e35d37e9e92871c97089d9) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #4 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #4 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #4 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2474
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2480
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb7.i.i, !prof !2377

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2377

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2497, !noalias !2500, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2501, !noalias !2502, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2503, !noalias !2504
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2505, !noalias !2512, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2503, !noalias !2516
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2497, !noalias !2500, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2501, !noalias !2502, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2503, !noalias !2504
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2505, !noalias !2512, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2503, !noalias !2516
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2533, !noalias !2534, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2535, !noalias !2536, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2503, !noalias !2504
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2505, !noalias !2512, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2503, !noalias !2516
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2474
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #9

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #13

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noinline noreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!10 = distinct !{!10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317hf8fe04ec869f7c06E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317hf8fe04ec869f7c06E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!16 = !{!9, !4}
!17 = !{!15, !7, !12}
!18 = !{}
!19 = !{!15, !7}
!20 = !{!9, !4, !12}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!23 = distinct !{!23, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!26 = !{!27, !28}
!27 = distinct !{!27, !23, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!28 = distinct !{!28, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!31 = distinct !{!31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!36 = distinct !{!36, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!39 = distinct !{!39, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!40 = !{!41}
!41 = distinct !{!41, !36, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"cmpfunc: %a"}
!44 = distinct !{!44, !"cmpfunc"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"cmpfunc: %b"}
!47 = !{!43, !35, !30}
!48 = !{!46, !41, !33, !38}
!49 = !{!46, !41, !33}
!50 = !{!43, !35, !30, !38}
!51 = !{!52, !54, !56}
!52 = distinct !{!52, !53, !"cmpfunc: %b"}
!53 = distinct !{!53, !"cmpfunc"}
!54 = distinct !{!54, !55, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!55 = distinct !{!55, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!56 = distinct !{!56, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!57 = distinct !{!57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!58 = !{!59, !60, !61}
!59 = distinct !{!59, !53, !"cmpfunc: %a"}
!60 = distinct !{!60, !55, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!61 = distinct !{!61, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!64 = distinct !{!64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!69 = distinct !{!69, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"cmpfunc: %a"}
!74 = distinct !{!74, !"cmpfunc"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"cmpfunc: %b"}
!77 = !{!73, !68, !63}
!78 = !{!76, !71, !66}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"cmpfunc: %a"}
!91 = distinct !{!91, !"cmpfunc"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"cmpfunc: %b"}
!94 = !{!90, !85, !80}
!95 = !{!93, !88, !83}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!98 = distinct !{!98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!103 = distinct !{!103, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"cmpfunc: %a"}
!108 = distinct !{!108, !"cmpfunc"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"cmpfunc: %b"}
!111 = !{!107, !102, !97}
!112 = !{!110, !105, !100}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!120 = distinct !{!120, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"cmpfunc: %a"}
!125 = distinct !{!125, !"cmpfunc"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"cmpfunc: %b"}
!128 = !{!124, !119, !114}
!129 = !{!127, !122, !117}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!132 = distinct !{!132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!137 = distinct !{!137, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"cmpfunc: %a"}
!142 = distinct !{!142, !"cmpfunc"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"cmpfunc: %b"}
!145 = !{!141, !136, !131}
!146 = !{!144, !139, !134}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!149 = distinct !{!149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!154 = distinct !{!154, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"cmpfunc: %a"}
!159 = distinct !{!159, !"cmpfunc"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"cmpfunc: %b"}
!162 = !{!158, !153, !148}
!163 = !{!161, !156, !151}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!166 = distinct !{!166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"cmpfunc: %a"}
!176 = distinct !{!176, !"cmpfunc"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"cmpfunc: %b"}
!179 = !{!175, !170, !165}
!180 = !{!178, !173, !168}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!183 = distinct !{!183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!188 = distinct !{!188, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"cmpfunc: %a"}
!193 = distinct !{!193, !"cmpfunc"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"cmpfunc: %b"}
!196 = !{!192, !187, !182}
!197 = !{!195, !190, !185}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!200 = distinct !{!200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!205 = distinct !{!205, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"cmpfunc: %a"}
!210 = distinct !{!210, !"cmpfunc"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"cmpfunc: %b"}
!213 = !{!209, !204, !199}
!214 = !{!212, !207, !202}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!217 = distinct !{!217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!222 = distinct !{!222, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!223 = !{!224}
!224 = distinct !{!224, !222, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"cmpfunc: %a"}
!227 = distinct !{!227, !"cmpfunc"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"cmpfunc: %b"}
!230 = !{!226, !221, !216}
!231 = !{!229, !224, !219}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!234 = distinct !{!234, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!235 = !{!236, !238, !240, !233}
!236 = distinct !{!236, !237, !"cmpfunc: %b"}
!237 = distinct !{!237, !"cmpfunc"}
!238 = distinct !{!238, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!239 = distinct !{!239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!240 = distinct !{!240, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!241 = distinct !{!241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!242 = !{!243, !244, !245, !246}
!243 = distinct !{!243, !237, !"cmpfunc: %a"}
!244 = distinct !{!244, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!245 = distinct !{!245, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!246 = distinct !{!246, !247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!247 = distinct !{!247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!248 = !{!246, !249, !233}
!249 = distinct !{!249, !247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!250 = !{!251, !253, !255, !233}
!251 = distinct !{!251, !252, !"cmpfunc: %b"}
!252 = distinct !{!252, !"cmpfunc"}
!253 = distinct !{!253, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!254 = distinct !{!254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!255 = distinct !{!255, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!256 = distinct !{!256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!257 = !{!258, !259, !260, !261}
!258 = distinct !{!258, !252, !"cmpfunc: %a"}
!259 = distinct !{!259, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!260 = distinct !{!260, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!261 = distinct !{!261, !262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!262 = distinct !{!262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!263 = !{!261, !264, !233}
!264 = distinct !{!264, !262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!265 = !{!266}
!266 = distinct !{!266, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!267 = !{!268}
!268 = distinct !{!268, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!269 = !{!270}
!270 = distinct !{!270, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!271 = !{!246}
!272 = !{!273}
!273 = distinct !{!273, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!274 = !{!275}
!275 = distinct !{!275, !237, !"cmpfunc: %a:It1"}
!276 = !{!277}
!277 = distinct !{!277, !237, !"cmpfunc: %b:It1"}
!278 = !{!275, !270, !266, !233}
!279 = !{!277, !273, !268, !246}
!280 = !{!277, !273, !268, !233}
!281 = !{!275, !270, !266, !246}
!282 = !{!283}
!283 = distinct !{!283, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!284 = !{!285}
!285 = distinct !{!285, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!286 = !{!287}
!287 = distinct !{!287, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!288 = !{!261}
!289 = !{!290}
!290 = distinct !{!290, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!291 = !{!292}
!292 = distinct !{!292, !252, !"cmpfunc: %a:It1"}
!293 = !{!294}
!294 = distinct !{!294, !252, !"cmpfunc: %b:It1"}
!295 = !{!292, !287, !283, !233}
!296 = !{!294, !290, !285, !261}
!297 = !{!294, !290, !285, !233}
!298 = !{!292, !287, !283, !261}
!299 = !{!300}
!300 = distinct !{!300, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!301 = !{!302}
!302 = distinct !{!302, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!303 = !{!304}
!304 = distinct !{!304, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!305 = !{!306}
!306 = distinct !{!306, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!307 = !{!308}
!308 = distinct !{!308, !237, !"cmpfunc: %a:It2"}
!309 = !{!310}
!310 = distinct !{!310, !237, !"cmpfunc: %b:It2"}
!311 = !{!308, !304, !300, !233}
!312 = !{!310, !306, !302, !246}
!313 = !{!310, !306, !302, !233}
!314 = !{!308, !304, !300, !246}
!315 = !{!316}
!316 = distinct !{!316, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!317 = !{!318}
!318 = distinct !{!318, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!319 = !{!320}
!320 = distinct !{!320, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!321 = !{!322}
!322 = distinct !{!322, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!323 = !{!324}
!324 = distinct !{!324, !252, !"cmpfunc: %a:It2"}
!325 = !{!326}
!326 = distinct !{!326, !252, !"cmpfunc: %b:It2"}
!327 = !{!324, !320, !316, !233}
!328 = !{!326, !322, !318, !261}
!329 = !{!326, !322, !318, !233}
!330 = !{!324, !320, !316, !261}
!331 = !{!332}
!332 = distinct !{!332, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!333 = !{!334}
!334 = distinct !{!334, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!335 = !{!336}
!336 = distinct !{!336, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!337 = !{!338}
!338 = distinct !{!338, !239, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!339 = !{!340}
!340 = distinct !{!340, !237, !"cmpfunc: %a:It3"}
!341 = !{!342}
!342 = distinct !{!342, !237, !"cmpfunc: %b:It3"}
!343 = !{!340, !336, !332, !233}
!344 = !{!342, !338, !334, !246}
!345 = !{!342, !338, !334, !233}
!346 = !{!340, !336, !332, !246}
!347 = !{!348}
!348 = distinct !{!348, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!349 = !{!350}
!350 = distinct !{!350, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!351 = !{!352}
!352 = distinct !{!352, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!353 = !{!354}
!354 = distinct !{!354, !254, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!355 = !{!356}
!356 = distinct !{!356, !252, !"cmpfunc: %a:It3"}
!357 = !{!358}
!358 = distinct !{!358, !252, !"cmpfunc: %b:It3"}
!359 = !{!356, !352, !348, !233}
!360 = !{!358, !354, !350, !261}
!361 = !{!358, !354, !350, !233}
!362 = !{!356, !352, !348, !261}
!363 = !{!"branch_weights", i32 4001, i32 4000000}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!366 = distinct !{!366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!371 = distinct !{!371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!374 = !{!370, !365}
!375 = !{!373, !368}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!378 = distinct !{!378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!383 = distinct !{!383, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!386 = !{!382, !377}
!387 = !{!385, !380}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!390 = distinct !{!390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!395 = distinct !{!395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!398 = !{!394, !389}
!399 = !{!397, !392}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!402 = distinct !{!402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!407 = distinct !{!407, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!410 = !{!406, !401}
!411 = !{!409, !404}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!414 = distinct !{!414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!419 = distinct !{!419, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!422 = !{!418, !413}
!423 = !{!421, !416}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!426 = distinct !{!426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!431 = distinct !{!431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!434 = !{!430, !425}
!435 = !{!433, !428}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!438 = distinct !{!438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!439 = !{!440}
!440 = distinct !{!440, !438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!443 = distinct !{!443, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!446 = !{!442, !437}
!447 = !{!445, !440}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!450 = distinct !{!450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!451 = !{!452}
!452 = distinct !{!452, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!455 = distinct !{!455, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!456 = !{!457}
!457 = distinct !{!457, !455, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!458 = !{!454, !449}
!459 = !{!457, !452}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!462 = distinct !{!462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!467 = distinct !{!467, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!470 = !{!466, !461}
!471 = !{!469, !464}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!474 = distinct !{!474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!479 = distinct !{!479, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!482 = !{!478, !473}
!483 = !{!481, !476}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E: %v.0"}
!486 = distinct !{!486, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E"}
!487 = !{!488, !490, !485}
!488 = distinct !{!488, !489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E: %_0"}
!489 = distinct !{!489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E"}
!490 = distinct !{!490, !489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E: %is_less"}
!491 = !{!492, !494, !485}
!492 = distinct !{!492, !493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE: %_0"}
!493 = distinct !{!493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE"}
!494 = distinct !{!494, !493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE: %is_less"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It1"}
!497 = distinct !{!497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It1"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It1"}
!502 = distinct !{!502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!503 = !{!488}
!504 = !{!505}
!505 = distinct !{!505, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It1"}
!506 = !{!501, !496, !485}
!507 = !{!505, !499, !488}
!508 = !{!505, !499, !485}
!509 = !{!501, !496, !488}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It1"}
!512 = distinct !{!512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!513 = !{!514}
!514 = distinct !{!514, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It1"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It1"}
!517 = distinct !{!517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!518 = !{!492}
!519 = !{!520}
!520 = distinct !{!520, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It1"}
!521 = !{!516, !511, !485}
!522 = !{!520, !514, !492}
!523 = !{!520, !514, !485}
!524 = !{!516, !511, !492}
!525 = !{!526}
!526 = distinct !{!526, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It2"}
!527 = !{!528}
!528 = distinct !{!528, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It2"}
!529 = !{!530}
!530 = distinct !{!530, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It2"}
!531 = !{!532}
!532 = distinct !{!532, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It2"}
!533 = !{!530, !526, !485}
!534 = !{!532, !528, !488}
!535 = !{!532, !528, !485}
!536 = !{!530, !526, !488}
!537 = !{!538}
!538 = distinct !{!538, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It2"}
!539 = !{!540}
!540 = distinct !{!540, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It2"}
!541 = !{!542}
!542 = distinct !{!542, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It2"}
!543 = !{!544}
!544 = distinct !{!544, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It2"}
!545 = !{!542, !538, !485}
!546 = !{!544, !540, !492}
!547 = !{!544, !540, !485}
!548 = !{!542, !538, !492}
!549 = !{!550}
!550 = distinct !{!550, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It3"}
!551 = !{!552}
!552 = distinct !{!552, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It3"}
!553 = !{!554}
!554 = distinct !{!554, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It3"}
!555 = !{!556}
!556 = distinct !{!556, !502, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It3"}
!557 = !{!554, !550, !485}
!558 = !{!556, !552, !488}
!559 = !{!556, !552, !485}
!560 = !{!554, !550, !488}
!561 = !{!562}
!562 = distinct !{!562, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It3"}
!563 = !{!564}
!564 = distinct !{!564, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It3"}
!565 = !{!566}
!566 = distinct !{!566, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It3"}
!567 = !{!568}
!568 = distinct !{!568, !517, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It3"}
!569 = !{!566, !562, !485}
!570 = !{!568, !564, !492}
!571 = !{!568, !564, !485}
!572 = !{!566, !562, !492}
!573 = !{!"branch_weights", i32 2002, i32 2000}
!574 = !{!575, !577}
!575 = distinct !{!575, !576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!576 = distinct !{!576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!577 = distinct !{!577, !578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE: %_0"}
!578 = distinct !{!578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"}
!579 = !{!580, !582, !584, !586}
!580 = distinct !{!580, !581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!581 = distinct !{!581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!582 = distinct !{!582, !583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!583 = distinct !{!583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!584 = distinct !{!584, !585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!585 = distinct !{!585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!586 = distinct !{!586, !587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!587 = distinct !{!587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!588 = !{!589, !591, !593, !595}
!589 = distinct !{!589, !590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!590 = distinct !{!590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!591 = distinct !{!591, !592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!592 = distinct !{!592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!593 = distinct !{!593, !594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!594 = distinct !{!594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!595 = distinct !{!595, !596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!596 = distinct !{!596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!597 = !{!598, !600}
!598 = distinct !{!598, !599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!599 = distinct !{!599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!600 = distinct !{!600, !601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE: %_0"}
!601 = distinct !{!601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"}
!602 = !{!603, !605, !607, !609}
!603 = distinct !{!603, !604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!604 = distinct !{!604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!605 = distinct !{!605, !606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!606 = distinct !{!606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!607 = distinct !{!607, !608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!608 = distinct !{!608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!611 = !{!612, !614, !616, !618}
!612 = distinct !{!612, !613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!613 = distinct !{!613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!614 = distinct !{!614, !615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!615 = distinct !{!615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!616 = distinct !{!616, !617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!617 = distinct !{!617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!618 = distinct !{!618, !619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!619 = distinct !{!619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!620 = !{!621, !623}
!621 = distinct !{!621, !622, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E: %_0"}
!622 = distinct !{!622, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h9646500b14017274E"}
!623 = distinct !{!623, !624, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE: %_0"}
!624 = distinct !{!624, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"}
!625 = !{!626, !628, !630, !632}
!626 = distinct !{!626, !627, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!627 = distinct !{!627, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!628 = distinct !{!628, !629, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!629 = distinct !{!629, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!630 = distinct !{!630, !631, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!631 = distinct !{!631, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!632 = distinct !{!632, !633, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!633 = distinct !{!633, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!634 = !{!635, !637, !639, !641}
!635 = distinct !{!635, !636, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E: %self"}
!636 = distinct !{!636, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7fe8231662206d69E"}
!637 = distinct !{!637, !638, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE: %self"}
!638 = distinct !{!638, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"}
!639 = distinct !{!639, !640, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE: %_1"}
!640 = distinct !{!640, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3f1b60277495715eE"}
!641 = distinct !{!641, !642, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE: %_1"}
!642 = distinct !{!642, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h270c3a653f656a9aE"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!645 = distinct !{!645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!650 = distinct !{!650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E: %scratch.0"}
!653 = distinct !{!653, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E"}
!654 = !{!655}
!655 = distinct !{!655, !650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"cmpfunc: %a"}
!658 = distinct !{!658, !"cmpfunc"}
!659 = !{!660}
!660 = distinct !{!660, !658, !"cmpfunc: %b"}
!661 = !{!657, !649, !644}
!662 = !{!660, !655, !647, !652}
!663 = !{!660, !655, !647}
!664 = !{!657, !649, !644, !652}
!665 = !{!666, !668, !670}
!666 = distinct !{!666, !667, !"cmpfunc: %a"}
!667 = distinct !{!667, !"cmpfunc"}
!668 = distinct !{!668, !669, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!669 = distinct !{!669, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!670 = distinct !{!670, !671, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!671 = distinct !{!671, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!672 = !{!673, !674, !675, !652}
!673 = distinct !{!673, !667, !"cmpfunc: %b"}
!674 = distinct !{!674, !669, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!675 = distinct !{!675, !671, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!676 = !{!677, !679, !681}
!677 = distinct !{!677, !678, !"cmpfunc: %a"}
!678 = distinct !{!678, !"cmpfunc"}
!679 = distinct !{!679, !680, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!680 = distinct !{!680, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!681 = distinct !{!681, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!682 = distinct !{!682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!683 = !{!684, !685, !686, !652}
!684 = distinct !{!684, !678, !"cmpfunc: %b"}
!685 = distinct !{!685, !680, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!686 = distinct !{!686, !682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %a.0"}
!689 = distinct !{!689, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE"}
!690 = !{!652, !691}
!691 = distinct !{!691, !653, !"_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E: %is_less"}
!692 = !{!693}
!693 = distinct !{!693, !689, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %b.0"}
!694 = !{!688, !695}
!695 = distinct !{!695, !696, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E: %self.0"}
!696 = distinct !{!696, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E"}
!697 = !{!693, !652, !691}
!698 = !{!693, !695}
!699 = !{!688, !652, !691}
!700 = distinct !{!700, !701, !702}
!701 = !{!"llvm.loop.isvectorized", i32 1}
!702 = !{!"llvm.loop.unroll.runtime.disable"}
!703 = distinct !{!703, !702, !701}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %v.0"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %scratch.0"}
!709 = !{!705, !708}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!712 = distinct !{!712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!713 = !{!714}
!714 = distinct !{!714, !712, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!717 = distinct !{!717, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!718 = !{!719}
!719 = distinct !{!719, !717, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"cmpfunc: %a"}
!722 = distinct !{!722, !"cmpfunc"}
!723 = !{!724}
!724 = distinct !{!724, !722, !"cmpfunc: %b"}
!725 = !{!721, !716, !711, !708}
!726 = !{!724, !719, !714, !727, !705}
!727 = distinct !{!727, !728, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE: %self"}
!728 = distinct !{!728, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE"}
!729 = !{!724, !719, !714, !705}
!730 = !{!721, !716, !711, !727, !708}
!731 = !{!727, !708}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!734 = distinct !{!734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!735 = !{!736}
!736 = distinct !{!736, !734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!739 = distinct !{!739, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!740 = !{!741}
!741 = distinct !{!741, !739, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!742 = !{!743}
!743 = distinct !{!743, !744, !"cmpfunc: %a"}
!744 = distinct !{!744, !"cmpfunc"}
!745 = !{!746}
!746 = distinct !{!746, !744, !"cmpfunc: %b"}
!747 = !{!743, !738, !733, !705}
!748 = !{!746, !741, !736, !749, !708}
!749 = distinct !{!749, !750, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E: %self"}
!750 = distinct !{!750, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E"}
!751 = !{!746, !741, !736, !708}
!752 = !{!743, !738, !733, !749, !705}
!753 = !{!749, !708}
!754 = !{!755, !757}
!755 = distinct !{!755, !756, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!756 = distinct !{!756, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!757 = distinct !{!757, !758, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!758 = distinct !{!758, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!761 = distinct !{!761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!762 = !{!763}
!763 = distinct !{!763, !761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!766 = distinct !{!766, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E: %scratch.0"}
!769 = distinct !{!769, !"_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E"}
!770 = !{!771}
!771 = distinct !{!771, !766, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!772 = !{!765, !760}
!773 = !{!771, !763, !768}
!774 = !{!771, !763}
!775 = !{!765, !760, !768}
!776 = !{!777, !779}
!777 = distinct !{!777, !778, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!778 = distinct !{!778, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!779 = distinct !{!779, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!780 = distinct !{!780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!781 = !{!782, !783, !768}
!782 = distinct !{!782, !778, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!783 = distinct !{!783, !780, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!784 = !{!785, !787}
!785 = distinct !{!785, !786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!786 = distinct !{!786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!787 = distinct !{!787, !788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!788 = distinct !{!788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!789 = !{!790, !791, !768}
!790 = distinct !{!790, !786, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!791 = distinct !{!791, !788, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %a.0"}
!794 = distinct !{!794, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE"}
!795 = !{!768, !796}
!796 = distinct !{!796, !769, !"_ZN4core5slice4sort6stable5drift10create_run17hac98b054b96b4920E: %is_less"}
!797 = !{!798}
!798 = distinct !{!798, !794, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %b.0"}
!799 = !{!793, !800}
!800 = distinct !{!800, !801, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E: %self.0"}
!801 = distinct !{!801, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E"}
!802 = !{!798, !768, !796}
!803 = !{!798, !800}
!804 = !{!793, !768, !796}
!805 = distinct !{!805, !701, !702}
!806 = distinct !{!806, !702, !701}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E: %v.0"}
!809 = distinct !{!809, !"_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN4core5slice4sort6stable5merge5merge17h7f992f64ee398bb6E: %scratch.0"}
!812 = !{!808, !811}
!813 = !{!814}
!814 = distinct !{!814, !815, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!815 = distinct !{!815, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!816 = !{!817}
!817 = distinct !{!817, !815, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!820 = distinct !{!820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!821 = !{!822}
!822 = distinct !{!822, !820, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!823 = !{!819, !814, !811}
!824 = !{!822, !817, !825, !808}
!825 = distinct !{!825, !826, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he2e2f308d8261d05E: %self"}
!826 = distinct !{!826, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he2e2f308d8261d05E"}
!827 = !{!822, !817, !808}
!828 = !{!819, !814, !825, !811}
!829 = !{!825, !811}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!832 = distinct !{!832, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!835 = !{!836}
!836 = distinct !{!836, !837, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!837 = distinct !{!837, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!838 = !{!839}
!839 = distinct !{!839, !837, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!840 = !{!836, !831, !808}
!841 = !{!839, !834, !842, !811}
!842 = distinct !{!842, !843, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7f2690c1cb3e16b6E: %self"}
!843 = distinct !{!843, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7f2690c1cb3e16b6E"}
!844 = !{!839, !834, !811}
!845 = !{!836, !831, !842, !808}
!846 = !{!842, !811}
!847 = !{!848, !850}
!848 = distinct !{!848, !849, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!849 = distinct !{!849, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!850 = distinct !{!850, !851, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!851 = distinct !{!851, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!852 = !{!853}
!853 = distinct !{!853, !854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!854 = distinct !{!854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!855 = !{!856}
!856 = distinct !{!856, !854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!859 = distinct !{!859, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E: %scratch.0"}
!862 = distinct !{!862, !"_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E"}
!863 = !{!864}
!864 = distinct !{!864, !859, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!865 = !{!858, !853}
!866 = !{!864, !856, !861}
!867 = !{!864, !856}
!868 = !{!858, !853, !861}
!869 = !{!870, !872}
!870 = distinct !{!870, !871, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!871 = distinct !{!871, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!872 = distinct !{!872, !873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!873 = distinct !{!873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!874 = !{!875, !876, !861}
!875 = distinct !{!875, !871, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!876 = distinct !{!876, !873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!877 = !{!878, !880}
!878 = distinct !{!878, !879, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!879 = distinct !{!879, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!880 = distinct !{!880, !881, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!881 = distinct !{!881, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!882 = !{!883, !884, !861}
!883 = distinct !{!883, !879, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!884 = distinct !{!884, !881, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %a.0"}
!887 = distinct !{!887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE"}
!888 = !{!861, !889}
!889 = distinct !{!889, !862, !"_ZN4core5slice4sort6stable5drift10create_run17he984054b3a8857e2E: %is_less"}
!890 = !{!891}
!891 = distinct !{!891, !887, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %b.0"}
!892 = !{!886, !893}
!893 = distinct !{!893, !894, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E: %self.0"}
!894 = distinct !{!894, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E"}
!895 = !{!891, !861, !889}
!896 = !{!891, !893}
!897 = !{!886, !861, !889}
!898 = distinct !{!898, !701, !702}
!899 = distinct !{!899, !702, !701}
!900 = !{!901}
!901 = distinct !{!901, !902, !"_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E: %v.0"}
!902 = distinct !{!902, !"_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E"}
!903 = !{!904}
!904 = distinct !{!904, !902, !"_ZN4core5slice4sort6stable5merge5merge17hc2c3c766a8571a14E: %scratch.0"}
!905 = !{!901, !904}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!908 = distinct !{!908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!913 = distinct !{!913, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!916 = !{!912, !907, !904}
!917 = !{!915, !910, !918, !901}
!918 = distinct !{!918, !919, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hec81fdac62d411edE: %self"}
!919 = distinct !{!919, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hec81fdac62d411edE"}
!920 = !{!915, !910, !901}
!921 = !{!912, !907, !918, !904}
!922 = !{!918, !904}
!923 = !{!924}
!924 = distinct !{!924, !925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!925 = distinct !{!925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!926 = !{!927}
!927 = distinct !{!927, !925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!930 = distinct !{!930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!931 = !{!932}
!932 = distinct !{!932, !930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!933 = !{!929, !924, !901}
!934 = !{!932, !927, !935, !904}
!935 = distinct !{!935, !936, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7a250a729b031424E: %self"}
!936 = distinct !{!936, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7a250a729b031424E"}
!937 = !{!932, !927, !904}
!938 = !{!929, !924, !935, !901}
!939 = !{!935, !904}
!940 = !{!941, !943}
!941 = distinct !{!941, !942, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!942 = distinct !{!942, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!943 = distinct !{!943, !944, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!944 = distinct !{!944, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h974ef72f76f0a8dfE: %v.0"}
!947 = distinct !{!947, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h974ef72f76f0a8dfE"}
!948 = !{!949}
!949 = distinct !{!949, !947, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h974ef72f76f0a8dfE: %scratch.0"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!957 = distinct !{!957, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!960 = !{!956, !951, !946}
!961 = !{!959, !954, !949, !962}
!962 = distinct !{!962, !947, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h974ef72f76f0a8dfE: %is_less"}
!963 = !{!959, !954, !946}
!964 = !{!956, !951, !949, !962}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!967 = distinct !{!967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!968 = !{!969}
!969 = distinct !{!969, !967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!972 = distinct !{!972, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!975 = !{!971, !966, !946}
!976 = !{!974, !969, !949, !962}
!977 = !{!974, !969, !946}
!978 = !{!971, !966, !949, !962}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!981 = distinct !{!981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!986 = distinct !{!986, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!989 = !{!985, !980, !946}
!990 = !{!988, !983, !949, !962}
!991 = !{!988, !983, !946}
!992 = !{!985, !980, !949, !962}
!993 = !{!994}
!994 = distinct !{!994, !995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!995 = distinct !{!995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!996 = !{!997}
!997 = distinct !{!997, !995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1000 = distinct !{!1000, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1000, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1003 = !{!999, !994, !946}
!1004 = !{!1002, !997, !949, !962}
!1005 = !{!1002, !997, !946}
!1006 = !{!999, !994, !949, !962}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1009 = distinct !{!1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1014, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1014 = distinct !{!1014, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1014, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1017 = !{!1013, !1008, !946}
!1018 = !{!1016, !1011, !949, !962}
!1019 = !{!1016, !1011, !946}
!1020 = !{!1013, !1008, !949, !962}
!1021 = !{!946, !962}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1024 = distinct !{!1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1024, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1027 = !{!1028}
!1028 = distinct !{!1028, !1029, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1029 = distinct !{!1029, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1029, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1032 = !{!1028, !1023, !946}
!1033 = !{!1031, !1026, !949, !962}
!1034 = !{!1031, !1026, !946}
!1035 = !{!1028, !1023, !949, !962}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1038 = distinct !{!1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1038, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1043 = distinct !{!1043, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1046 = !{!1042, !1037, !946}
!1047 = !{!1045, !1040, !949, !962}
!1048 = !{!1045, !1040, !946}
!1049 = !{!1042, !1037, !949, !962}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1052 = distinct !{!1052, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1052, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1057, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1057 = distinct !{!1057, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1058 = !{!1059}
!1059 = distinct !{!1059, !1057, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1060 = !{!1056, !1051, !946}
!1061 = !{!1059, !1054, !949, !962}
!1062 = !{!1059, !1054, !946}
!1063 = !{!1056, !1051, !949, !962}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1066 = distinct !{!1066, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1066, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1071 = distinct !{!1071, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1072 = !{!1073}
!1073 = distinct !{!1073, !1071, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1074 = !{!1070, !1065, !946}
!1075 = !{!1073, !1068, !949, !962}
!1076 = !{!1073, !1068, !946}
!1077 = !{!1070, !1065, !949, !962}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1080 = distinct !{!1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1085 = distinct !{!1085, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1085, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1088 = !{!1084, !1079, !946}
!1089 = !{!1087, !1082, !949, !962}
!1090 = !{!1087, !1082, !946}
!1091 = !{!1084, !1079, !949, !962}
!1092 = !{!949, !962}
!1093 = !{!1094, !1096, !949}
!1094 = distinct !{!1094, !1095, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1095 = distinct !{!1095, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1096 = distinct !{!1096, !1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1097 = distinct !{!1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1098 = !{!1099, !1100, !946, !962}
!1099 = distinct !{!1099, !1095, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1100 = distinct !{!1100, !1097, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1101 = !{!1102, !1104, !949}
!1102 = distinct !{!1102, !1103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1103 = distinct !{!1103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1104 = distinct !{!1104, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1105 = distinct !{!1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1106 = !{!1107, !1108, !946, !962}
!1107 = distinct !{!1107, !1103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1108 = distinct !{!1108, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1109 = !{!1110, !1112, !946, !962}
!1110 = distinct !{!1110, !1111, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1111 = distinct !{!1111, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1112 = distinct !{!1112, !1113, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1113 = distinct !{!1113, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1116, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E: %v.0"}
!1116 = distinct !{!1116, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h068c79b541d9dc34E"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1119 = distinct !{!1119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1124 = distinct !{!1124, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E: %_0"}
!1127 = distinct !{!1127, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1124, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1130 = !{!1123, !1118, !1115, !949}
!1131 = !{!1129, !1121, !1126, !946, !962}
!1132 = !{!1129, !1121, !1115, !949}
!1133 = !{!1123, !1118, !1126, !946, !962}
!1134 = !{!1126, !1135, !1115, !949, !962}
!1135 = distinct !{!1135, !1127, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2fe25ba24110a25E: %is_less"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1138 = distinct !{!1138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1143 = distinct !{!1143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE: %_0"}
!1146 = distinct !{!1146, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1143, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1149 = !{!1142, !1137, !1115, !949}
!1150 = !{!1148, !1140, !1145, !946, !962}
!1151 = !{!1148, !1140, !1115, !949}
!1152 = !{!1142, !1137, !1145, !946, !962}
!1153 = !{!1145, !1154, !1115, !949, !962}
!1154 = distinct !{!1154, !1146, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h5bc1017a0bbee35fE: %is_less"}
!1155 = !{!1115, !949}
!1156 = !{!1115, !949, !962}
!1157 = !{!946, !949, !962}
!1158 = !{!946, !949}
!1159 = !{!1160, !1162, !962}
!1160 = distinct !{!1160, !1161, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1161 = distinct !{!1161, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1162 = distinct !{!1162, !1163, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1163 = distinct !{!1163, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1166 = distinct !{!1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1171 = distinct !{!1171, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1174, !"_ZN4core5slice4sort6shared5pivot7median317hf8fe04ec869f7c06E: %c"}
!1174 = distinct !{!1174, !"_ZN4core5slice4sort6shared5pivot7median317hf8fe04ec869f7c06E"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1171, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1177 = !{!1170, !1165, !1178}
!1178 = distinct !{!1178, !1179, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hdda8c021ed868d95E: %v.0"}
!1179 = distinct !{!1179, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hdda8c021ed868d95E"}
!1180 = !{!1176, !1168, !1173, !1181}
!1181 = distinct !{!1181, !1179, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hdda8c021ed868d95E: %is_less"}
!1182 = !{!1176, !1168, !1178}
!1183 = !{!1170, !1165, !1173, !1181}
!1184 = !{!1185, !1187, !1178}
!1185 = distinct !{!1185, !1186, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1186 = distinct !{!1186, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1187 = distinct !{!1187, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1188 = distinct !{!1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1189 = !{!1190, !1191, !1181}
!1190 = distinct !{!1190, !1186, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1191 = distinct !{!1191, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1192 = !{!1193, !1195}
!1193 = distinct !{!1193, !1194, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1194 = distinct !{!1194, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1195 = distinct !{!1195, !1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1196 = distinct !{!1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1197 = !{!1198, !1199}
!1198 = distinct !{!1198, !1194, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1199 = distinct !{!1199, !1196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1202, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86cadd7711c5d55E: %v.0"}
!1202 = distinct !{!1202, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86cadd7711c5d55E"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1202, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86cadd7711c5d55E: %scratch.0"}
!1205 = !{!1206, !1208, !1201}
!1206 = distinct !{!1206, !1207, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1207 = distinct !{!1207, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1208 = distinct !{!1208, !1209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1209 = distinct !{!1209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1210 = !{!1211, !1212, !1204}
!1211 = distinct !{!1211, !1207, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1212 = distinct !{!1212, !1209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1213 = !{!1212}
!1214 = !{!1208}
!1215 = !{!1211}
!1216 = !{!1206}
!1217 = !{!1211, !1212, !1201}
!1218 = !{!1206, !1208, !1204}
!1219 = !{!1220, !1201}
!1220 = distinct !{!1220, !1221, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1221 = distinct !{!1221, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1222 = !{!1223, !1225, !1201}
!1223 = distinct !{!1223, !1224, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1224 = distinct !{!1224, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1225 = distinct !{!1225, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1226 = distinct !{!1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1227 = !{!1228, !1229, !1204}
!1228 = distinct !{!1228, !1224, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1229 = distinct !{!1229, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1230 = !{!1231, !1201}
!1231 = distinct !{!1231, !1232, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1232 = distinct !{!1232, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1233 = !{!1234, !1236, !1201}
!1234 = distinct !{!1234, !1235, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1235 = distinct !{!1235, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1236 = distinct !{!1236, !1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1237 = distinct !{!1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1238 = !{!1239, !1240, !1204}
!1239 = distinct !{!1239, !1235, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1240 = distinct !{!1240, !1237, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1241 = !{!1242, !1201}
!1242 = distinct !{!1242, !1243, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1243 = distinct !{!1243, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1244 = !{!1245, !1247, !1201}
!1245 = distinct !{!1245, !1246, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1246 = distinct !{!1246, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1247 = distinct !{!1247, !1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1248 = distinct !{!1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1249 = !{!1250, !1251, !1204}
!1250 = distinct !{!1250, !1246, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1251 = distinct !{!1251, !1248, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1252 = !{!1253, !1201}
!1253 = distinct !{!1253, !1254, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1254 = distinct !{!1254, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1255 = !{!1256, !1258, !1201}
!1256 = distinct !{!1256, !1257, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1257 = distinct !{!1257, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1258 = distinct !{!1258, !1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1259 = distinct !{!1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1260 = !{!1261, !1262, !1204}
!1261 = distinct !{!1261, !1257, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1262 = distinct !{!1262, !1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1263 = !{!1262}
!1264 = !{!1258}
!1265 = !{!1261}
!1266 = !{!1256}
!1267 = !{!1261, !1262, !1201}
!1268 = !{!1256, !1258, !1204}
!1269 = !{!1270, !1201}
!1270 = distinct !{!1270, !1271, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1271 = distinct !{!1271, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1272 = !{!1273, !1204}
!1273 = distinct !{!1273, !1274, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1274 = distinct !{!1274, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1275 = !{!1273, !1201}
!1276 = !{!1201, !1204}
!1277 = distinct !{!1277, !701, !702}
!1278 = distinct !{!1278, !702, !701}
!1279 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1280 = !{!1281, !1283}
!1281 = distinct !{!1281, !1282, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %pair"}
!1282 = distinct !{!1282, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE"}
!1283 = distinct !{!1283, !1282, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %self.0"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E: %v.0"}
!1286 = distinct !{!1286, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h71f88b1e71fd0651E: %scratch.0"}
!1289 = !{!1290, !1292, !1294, !1285}
!1290 = distinct !{!1290, !1291, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1291 = distinct !{!1291, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1293 = distinct !{!1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1294 = distinct !{!1294, !1295, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %b"}
!1295 = distinct !{!1295, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E"}
!1296 = !{!1297, !1298, !1299, !1288}
!1297 = distinct !{!1297, !1291, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1298 = distinct !{!1298, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1299 = distinct !{!1299, !1295, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %a"}
!1300 = !{!1299}
!1301 = !{!1294}
!1302 = !{!1292}
!1303 = !{!1298}
!1304 = !{!1290}
!1305 = !{!1297}
!1306 = !{!1297, !1298, !1299, !1285}
!1307 = !{!1290, !1292, !1294, !1288}
!1308 = !{!1309, !1285}
!1309 = distinct !{!1309, !1310, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1310 = distinct !{!1310, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1311 = !{!1312, !1314, !1316, !1285}
!1312 = distinct !{!1312, !1313, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1313 = distinct !{!1313, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1314 = distinct !{!1314, !1315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1315 = distinct !{!1315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1316 = distinct !{!1316, !1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %a"}
!1317 = distinct !{!1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E"}
!1318 = !{!1319, !1320, !1321, !1288}
!1319 = distinct !{!1319, !1313, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1320 = distinct !{!1320, !1315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1321 = distinct !{!1321, !1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %b"}
!1322 = !{!1323, !1285}
!1323 = distinct !{!1323, !1324, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1324 = distinct !{!1324, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1325 = !{!1326, !1328, !1330, !1285}
!1326 = distinct !{!1326, !1327, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1327 = distinct !{!1327, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1328 = distinct !{!1328, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1329 = distinct !{!1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1330 = distinct !{!1330, !1331, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %a"}
!1331 = distinct !{!1331, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E"}
!1332 = !{!1333, !1334, !1335, !1288}
!1333 = distinct !{!1333, !1327, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1334 = distinct !{!1334, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1335 = distinct !{!1335, !1331, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %b"}
!1336 = !{!1337, !1285}
!1337 = distinct !{!1337, !1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1338 = distinct !{!1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1339 = !{!1340, !1342, !1344, !1285}
!1340 = distinct !{!1340, !1341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1341 = distinct !{!1341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1342 = distinct !{!1342, !1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1343 = distinct !{!1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1344 = distinct !{!1344, !1345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %a"}
!1345 = distinct !{!1345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E"}
!1346 = !{!1347, !1348, !1349, !1288}
!1347 = distinct !{!1347, !1341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1348 = distinct !{!1348, !1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1349 = distinct !{!1349, !1345, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %b"}
!1350 = !{!1351, !1285}
!1351 = distinct !{!1351, !1352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1352 = distinct !{!1352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1353 = !{!1354, !1356, !1358, !1285}
!1354 = distinct !{!1354, !1355, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!1355 = distinct !{!1355, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!1356 = distinct !{!1356, !1357, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!1357 = distinct !{!1357, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!1358 = distinct !{!1358, !1359, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %b"}
!1359 = distinct !{!1359, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E"}
!1360 = !{!1361, !1362, !1363, !1288}
!1361 = distinct !{!1361, !1355, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!1362 = distinct !{!1362, !1357, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!1363 = distinct !{!1363, !1359, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hbc7e21b22638fbe0E: %a"}
!1364 = !{!1363}
!1365 = !{!1358}
!1366 = !{!1356}
!1367 = !{!1362}
!1368 = !{!1354}
!1369 = !{!1361}
!1370 = !{!1361, !1362, !1363, !1285}
!1371 = !{!1354, !1356, !1358, !1288}
!1372 = !{!1373, !1285}
!1373 = distinct !{!1373, !1374, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1374 = distinct !{!1374, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1375 = !{!1376, !1288}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1378 = !{!1376, !1285}
!1379 = !{!1285, !1288}
!1380 = distinct !{!1380, !701, !702}
!1381 = distinct !{!1381, !702, !701}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %v.0"}
!1384 = distinct !{!1384, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1384, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %scratch.0"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1394 = distinct !{!1394, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"cmpfunc: %a"}
!1399 = distinct !{!1399, !"cmpfunc"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"cmpfunc: %b"}
!1402 = !{!1398, !1393, !1388, !1383}
!1403 = !{!1401, !1396, !1391, !1386, !1404}
!1404 = distinct !{!1404, !1384, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE: %is_less"}
!1405 = !{!1401, !1396, !1391, !1383}
!1406 = !{!1398, !1393, !1388, !1386, !1404}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1409 = distinct !{!1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1414 = distinct !{!1414, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"cmpfunc: %a"}
!1419 = distinct !{!1419, !"cmpfunc"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1419, !"cmpfunc: %b"}
!1422 = !{!1418, !1413, !1408, !1383}
!1423 = !{!1421, !1416, !1411, !1386, !1404}
!1424 = !{!1421, !1416, !1411, !1383}
!1425 = !{!1418, !1413, !1408, !1386, !1404}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1428 = distinct !{!1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1428, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1433 = distinct !{!1433, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"cmpfunc: %a"}
!1438 = distinct !{!1438, !"cmpfunc"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1438, !"cmpfunc: %b"}
!1441 = !{!1437, !1432, !1427, !1383}
!1442 = !{!1440, !1435, !1430, !1386, !1404}
!1443 = !{!1440, !1435, !1430, !1383}
!1444 = !{!1437, !1432, !1427, !1386, !1404}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1447 = distinct !{!1447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1452 = distinct !{!1452, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1452, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"cmpfunc: %a"}
!1457 = distinct !{!1457, !"cmpfunc"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1457, !"cmpfunc: %b"}
!1460 = !{!1456, !1451, !1446, !1383}
!1461 = !{!1459, !1454, !1449, !1386, !1404}
!1462 = !{!1459, !1454, !1449, !1383}
!1463 = !{!1456, !1451, !1446, !1386, !1404}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1466 = distinct !{!1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1471 = distinct !{!1471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"cmpfunc: %a"}
!1476 = distinct !{!1476, !"cmpfunc"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"cmpfunc: %b"}
!1479 = !{!1475, !1470, !1465, !1383}
!1480 = !{!1478, !1473, !1468, !1386, !1404}
!1481 = !{!1478, !1473, !1468, !1383}
!1482 = !{!1475, !1470, !1465, !1386, !1404}
!1483 = !{!1383, !1404}
!1484 = !{!1485}
!1485 = distinct !{!1485, !1486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1486 = distinct !{!1486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1491 = distinct !{!1491, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1491, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"cmpfunc: %a"}
!1496 = distinct !{!1496, !"cmpfunc"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"cmpfunc: %b"}
!1499 = !{!1495, !1490, !1485, !1383}
!1500 = !{!1498, !1493, !1488, !1386, !1404}
!1501 = !{!1498, !1493, !1488, !1383}
!1502 = !{!1495, !1490, !1485, !1386, !1404}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1505 = distinct !{!1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1510, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1510 = distinct !{!1510, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1510, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1515, !"cmpfunc: %a"}
!1515 = distinct !{!1515, !"cmpfunc"}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1515, !"cmpfunc: %b"}
!1518 = !{!1514, !1509, !1504, !1383}
!1519 = !{!1517, !1512, !1507, !1386, !1404}
!1520 = !{!1517, !1512, !1507, !1383}
!1521 = !{!1514, !1509, !1504, !1386, !1404}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1524 = distinct !{!1524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1529 = distinct !{!1529, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1529, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1534, !"cmpfunc: %a"}
!1534 = distinct !{!1534, !"cmpfunc"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1534, !"cmpfunc: %b"}
!1537 = !{!1533, !1528, !1523, !1383}
!1538 = !{!1536, !1531, !1526, !1386, !1404}
!1539 = !{!1536, !1531, !1526, !1383}
!1540 = !{!1533, !1528, !1523, !1386, !1404}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1543 = distinct !{!1543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1543, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1548, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1548 = distinct !{!1548, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1548, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"cmpfunc: %a"}
!1553 = distinct !{!1553, !"cmpfunc"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1553, !"cmpfunc: %b"}
!1556 = !{!1552, !1547, !1542, !1383}
!1557 = !{!1555, !1550, !1545, !1386, !1404}
!1558 = !{!1555, !1550, !1545, !1383}
!1559 = !{!1552, !1547, !1542, !1386, !1404}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1562 = distinct !{!1562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1567 = distinct !{!1567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1567, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"cmpfunc: %a"}
!1572 = distinct !{!1572, !"cmpfunc"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"cmpfunc: %b"}
!1575 = !{!1571, !1566, !1561, !1383}
!1576 = !{!1574, !1569, !1564, !1386, !1404}
!1577 = !{!1574, !1569, !1564, !1383}
!1578 = !{!1571, !1566, !1561, !1386, !1404}
!1579 = !{!1386, !1404}
!1580 = !{!1581, !1583, !1585, !1386}
!1581 = distinct !{!1581, !1582, !"cmpfunc: %b"}
!1582 = distinct !{!1582, !"cmpfunc"}
!1583 = distinct !{!1583, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1584 = distinct !{!1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1585 = distinct !{!1585, !1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1586 = distinct !{!1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1587 = !{!1588, !1589, !1590, !1383, !1404}
!1588 = distinct !{!1588, !1582, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1590 = distinct !{!1590, !1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1591 = !{!1592, !1594, !1596, !1386}
!1592 = distinct !{!1592, !1593, !"cmpfunc: %b"}
!1593 = distinct !{!1593, !"cmpfunc"}
!1594 = distinct !{!1594, !1595, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1595 = distinct !{!1595, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1596 = distinct !{!1596, !1597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1597 = distinct !{!1597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1598 = !{!1599, !1600, !1601, !1383, !1404}
!1599 = distinct !{!1599, !1593, !"cmpfunc: %a"}
!1600 = distinct !{!1600, !1595, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1601 = distinct !{!1601, !1597, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1602 = !{!1603, !1605, !1383, !1404}
!1603 = distinct !{!1603, !1604, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1604 = distinct !{!1604, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1605 = distinct !{!1605, !1606, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1606 = distinct !{!1606, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1609, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!1609 = distinct !{!1609, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!1610 = !{!1611}
!1611 = distinct !{!1611, !1612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1612 = distinct !{!1612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1615 = !{!1616}
!1616 = distinct !{!1616, !1617, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1617 = distinct !{!1617, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1618 = !{!1619}
!1619 = distinct !{!1619, !1620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!1620 = distinct !{!1620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1617, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1623 = !{!1624}
!1624 = distinct !{!1624, !1625, !"cmpfunc: %a"}
!1625 = distinct !{!1625, !"cmpfunc"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1625, !"cmpfunc: %b"}
!1628 = !{!1624, !1616, !1611, !1608, !1386}
!1629 = !{!1627, !1622, !1614, !1619, !1383, !1404}
!1630 = !{!1627, !1622, !1614, !1608, !1386}
!1631 = !{!1624, !1616, !1611, !1619, !1383, !1404}
!1632 = !{!1619, !1633, !1608, !1386, !1404}
!1633 = distinct !{!1633, !1620, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1636 = distinct !{!1636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1637 = !{!1638}
!1638 = distinct !{!1638, !1636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1641, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1641 = distinct !{!1641, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!1644 = distinct !{!1644, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1641, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1649, !"cmpfunc: %a"}
!1649 = distinct !{!1649, !"cmpfunc"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1649, !"cmpfunc: %b"}
!1652 = !{!1648, !1640, !1635, !1608, !1386}
!1653 = !{!1651, !1646, !1638, !1643, !1383, !1404}
!1654 = !{!1651, !1646, !1638, !1608, !1386}
!1655 = !{!1648, !1640, !1635, !1643, !1383, !1404}
!1656 = !{!1643, !1657, !1608, !1386, !1404}
!1657 = distinct !{!1657, !1644, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!1658 = !{!1608, !1386}
!1659 = !{!1608, !1386, !1404}
!1660 = !{!1383, !1386, !1404}
!1661 = !{!1383, !1386}
!1662 = !{!1663, !1665, !1404}
!1663 = distinct !{!1663, !1664, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1664 = distinct !{!1664, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1665 = distinct !{!1665, !1666, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1666 = distinct !{!1666, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1674 = distinct !{!1674, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1677, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!1677 = distinct !{!1677, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1674, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1682, !"cmpfunc: %a"}
!1682 = distinct !{!1682, !"cmpfunc"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1682, !"cmpfunc: %b"}
!1685 = !{!1681, !1673, !1668, !1686}
!1686 = distinct !{!1686, !1687, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %v.0"}
!1687 = distinct !{!1687, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E"}
!1688 = !{!1684, !1679, !1671, !1676, !1689}
!1689 = distinct !{!1689, !1687, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %is_less"}
!1690 = !{!1684, !1679, !1671, !1686}
!1691 = !{!1681, !1673, !1668, !1676, !1689}
!1692 = !{!1693, !1695, !1697, !1686}
!1693 = distinct !{!1693, !1694, !"cmpfunc: %b"}
!1694 = distinct !{!1694, !"cmpfunc"}
!1695 = distinct !{!1695, !1696, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1696 = distinct !{!1696, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1697 = distinct !{!1697, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1698 = distinct !{!1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1699 = !{!1700, !1701, !1702, !1689}
!1700 = distinct !{!1700, !1694, !"cmpfunc: %a"}
!1701 = distinct !{!1701, !1696, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1702 = distinct !{!1702, !1698, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1703 = !{!1704, !1706, !1708}
!1704 = distinct !{!1704, !1705, !"cmpfunc: %a"}
!1705 = distinct !{!1705, !"cmpfunc"}
!1706 = distinct !{!1706, !1707, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1707 = distinct !{!1707, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1708 = distinct !{!1708, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1709 = distinct !{!1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1710 = !{!1711, !1712, !1713}
!1711 = distinct !{!1711, !1705, !"cmpfunc: %b"}
!1712 = distinct !{!1712, !1707, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1713 = distinct !{!1713, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1716, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E: %v.0"}
!1716 = distinct !{!1716, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1716, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E: %scratch.0"}
!1719 = !{!1720, !1722, !1724, !1715}
!1720 = distinct !{!1720, !1721, !"cmpfunc: %b"}
!1721 = distinct !{!1721, !"cmpfunc"}
!1722 = distinct !{!1722, !1723, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1723 = distinct !{!1723, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1724 = distinct !{!1724, !1725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1725 = distinct !{!1725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1726 = !{!1727, !1728, !1729, !1718}
!1727 = distinct !{!1727, !1721, !"cmpfunc: %a"}
!1728 = distinct !{!1728, !1723, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1729 = distinct !{!1729, !1725, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1730 = !{!1729}
!1731 = !{!1724}
!1732 = !{!1728}
!1733 = !{!1722}
!1734 = !{!1727}
!1735 = !{!1720}
!1736 = !{!1727, !1728, !1729, !1715}
!1737 = !{!1720, !1722, !1724, !1718}
!1738 = !{!1739, !1715}
!1739 = distinct !{!1739, !1740, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1740 = distinct !{!1740, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1741 = !{!1742, !1744, !1746, !1715}
!1742 = distinct !{!1742, !1743, !"cmpfunc: %a"}
!1743 = distinct !{!1743, !"cmpfunc"}
!1744 = distinct !{!1744, !1745, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1745 = distinct !{!1745, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1746 = distinct !{!1746, !1747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1747 = distinct !{!1747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1748 = !{!1749, !1750, !1751, !1718}
!1749 = distinct !{!1749, !1743, !"cmpfunc: %b"}
!1750 = distinct !{!1750, !1745, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1751 = distinct !{!1751, !1747, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1752 = !{!1753, !1715}
!1753 = distinct !{!1753, !1754, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1754 = distinct !{!1754, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1755 = !{!1756, !1758, !1760, !1715}
!1756 = distinct !{!1756, !1757, !"cmpfunc: %a"}
!1757 = distinct !{!1757, !"cmpfunc"}
!1758 = distinct !{!1758, !1759, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1759 = distinct !{!1759, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1760 = distinct !{!1760, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1761 = distinct !{!1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1762 = !{!1763, !1764, !1765, !1718}
!1763 = distinct !{!1763, !1757, !"cmpfunc: %b"}
!1764 = distinct !{!1764, !1759, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1765 = distinct !{!1765, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1766 = !{!1767, !1715}
!1767 = distinct !{!1767, !1768, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1768 = distinct !{!1768, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1769 = !{!1770, !1772, !1774, !1715}
!1770 = distinct !{!1770, !1771, !"cmpfunc: %a"}
!1771 = distinct !{!1771, !"cmpfunc"}
!1772 = distinct !{!1772, !1773, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1773 = distinct !{!1773, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1774 = distinct !{!1774, !1775, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1775 = distinct !{!1775, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1776 = !{!1777, !1778, !1779, !1718}
!1777 = distinct !{!1777, !1771, !"cmpfunc: %b"}
!1778 = distinct !{!1778, !1773, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1779 = distinct !{!1779, !1775, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1780 = !{!1781, !1715}
!1781 = distinct !{!1781, !1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1782 = distinct !{!1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1783 = !{!1784, !1786, !1788, !1715}
!1784 = distinct !{!1784, !1785, !"cmpfunc: %b"}
!1785 = distinct !{!1785, !"cmpfunc"}
!1786 = distinct !{!1786, !1787, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1787 = distinct !{!1787, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1788 = distinct !{!1788, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1789 = distinct !{!1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1790 = !{!1791, !1792, !1793, !1718}
!1791 = distinct !{!1791, !1785, !"cmpfunc: %a"}
!1792 = distinct !{!1792, !1787, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1793 = distinct !{!1793, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1794 = !{!1793}
!1795 = !{!1788}
!1796 = !{!1792}
!1797 = !{!1786}
!1798 = !{!1791}
!1799 = !{!1784}
!1800 = !{!1791, !1792, !1793, !1715}
!1801 = !{!1784, !1786, !1788, !1718}
!1802 = !{!1803, !1715}
!1803 = distinct !{!1803, !1804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1804 = distinct !{!1804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1805 = !{!1806, !1718}
!1806 = distinct !{!1806, !1807, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1807 = distinct !{!1807, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1808 = !{!1806, !1715}
!1809 = !{!1715, !1718}
!1810 = distinct !{!1810, !701, !702}
!1811 = distinct !{!1811, !702, !701}
!1812 = !{!1813, !1815}
!1813 = distinct !{!1813, !1814, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %pair"}
!1814 = distinct !{!1814, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE"}
!1815 = distinct !{!1815, !1814, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %self.0"}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1818, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E: %v.0"}
!1818 = distinct !{!1818, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1818, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E: %scratch.0"}
!1821 = !{!1822, !1824, !1826, !1828, !1817}
!1822 = distinct !{!1822, !1823, !"cmpfunc: %a"}
!1823 = distinct !{!1823, !"cmpfunc"}
!1824 = distinct !{!1824, !1825, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1825 = distinct !{!1825, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1826 = distinct !{!1826, !1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1827 = distinct !{!1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1828 = distinct !{!1828, !1829, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!1829 = distinct !{!1829, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!1830 = !{!1831, !1832, !1833, !1834, !1820}
!1831 = distinct !{!1831, !1823, !"cmpfunc: %b"}
!1832 = distinct !{!1832, !1825, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1833 = distinct !{!1833, !1827, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1834 = distinct !{!1834, !1829, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!1835 = !{!1834}
!1836 = !{!1828}
!1837 = !{!1826}
!1838 = !{!1833}
!1839 = !{!1824}
!1840 = !{!1832}
!1841 = !{!1822}
!1842 = !{!1831}
!1843 = !{!1831, !1832, !1833, !1834, !1817}
!1844 = !{!1822, !1824, !1826, !1828, !1820}
!1845 = !{!1846, !1817}
!1846 = distinct !{!1846, !1847, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1847 = distinct !{!1847, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1848 = !{!1849, !1851, !1853, !1855, !1817}
!1849 = distinct !{!1849, !1850, !"cmpfunc: %b"}
!1850 = distinct !{!1850, !"cmpfunc"}
!1851 = distinct !{!1851, !1852, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1852 = distinct !{!1852, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1853 = distinct !{!1853, !1854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1854 = distinct !{!1854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1855 = distinct !{!1855, !1856, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!1856 = distinct !{!1856, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!1857 = !{!1858, !1859, !1860, !1861, !1820}
!1858 = distinct !{!1858, !1850, !"cmpfunc: %a"}
!1859 = distinct !{!1859, !1852, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1860 = distinct !{!1860, !1854, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1861 = distinct !{!1861, !1856, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!1862 = !{!1863, !1817}
!1863 = distinct !{!1863, !1864, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1864 = distinct !{!1864, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1865 = !{!1866, !1868, !1870, !1872, !1817}
!1866 = distinct !{!1866, !1867, !"cmpfunc: %b"}
!1867 = distinct !{!1867, !"cmpfunc"}
!1868 = distinct !{!1868, !1869, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1869 = distinct !{!1869, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1870 = distinct !{!1870, !1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1871 = distinct !{!1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1872 = distinct !{!1872, !1873, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!1873 = distinct !{!1873, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!1874 = !{!1875, !1876, !1877, !1878, !1820}
!1875 = distinct !{!1875, !1867, !"cmpfunc: %a"}
!1876 = distinct !{!1876, !1869, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1877 = distinct !{!1877, !1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1878 = distinct !{!1878, !1873, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!1879 = !{!1880, !1817}
!1880 = distinct !{!1880, !1881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1881 = distinct !{!1881, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1882 = !{!1883, !1885, !1887, !1889, !1817}
!1883 = distinct !{!1883, !1884, !"cmpfunc: %b"}
!1884 = distinct !{!1884, !"cmpfunc"}
!1885 = distinct !{!1885, !1886, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1886 = distinct !{!1886, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1887 = distinct !{!1887, !1888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1888 = distinct !{!1888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1889 = distinct !{!1889, !1890, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!1890 = distinct !{!1890, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!1891 = !{!1892, !1893, !1894, !1895, !1820}
!1892 = distinct !{!1892, !1884, !"cmpfunc: %a"}
!1893 = distinct !{!1893, !1886, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1894 = distinct !{!1894, !1888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1895 = distinct !{!1895, !1890, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!1896 = !{!1897, !1817}
!1897 = distinct !{!1897, !1898, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1898 = distinct !{!1898, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1899 = !{!1900, !1902, !1904, !1906, !1817}
!1900 = distinct !{!1900, !1901, !"cmpfunc: %a"}
!1901 = distinct !{!1901, !"cmpfunc"}
!1902 = distinct !{!1902, !1903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1903 = distinct !{!1903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1904 = distinct !{!1904, !1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1905 = distinct !{!1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1906 = distinct !{!1906, !1907, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!1907 = distinct !{!1907, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!1908 = !{!1909, !1910, !1911, !1912, !1820}
!1909 = distinct !{!1909, !1901, !"cmpfunc: %b"}
!1910 = distinct !{!1910, !1903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1911 = distinct !{!1911, !1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1912 = distinct !{!1912, !1907, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!1913 = !{!1912}
!1914 = !{!1906}
!1915 = !{!1904}
!1916 = !{!1911}
!1917 = !{!1902}
!1918 = !{!1910}
!1919 = !{!1900}
!1920 = !{!1909}
!1921 = !{!1909, !1910, !1911, !1912, !1817}
!1922 = !{!1900, !1902, !1904, !1906, !1820}
!1923 = !{!1924, !1817}
!1924 = distinct !{!1924, !1925, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1925 = distinct !{!1925, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1926 = !{!1927, !1820}
!1927 = distinct !{!1927, !1928, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!1928 = distinct !{!1928, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!1929 = !{!1927, !1817}
!1930 = !{!1817, !1820}
!1931 = distinct !{!1931, !701, !702}
!1932 = distinct !{!1932, !702, !701}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h925796d2fbf4f077E: %v.0"}
!1935 = distinct !{!1935, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h925796d2fbf4f077E"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1935, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h925796d2fbf4f077E: %scratch.0"}
!1938 = !{!1939}
!1939 = distinct !{!1939, !1940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!1940 = distinct !{!1940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1945, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!1945 = distinct !{!1945, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1945, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!1948 = !{!1944, !1939, !1934}
!1949 = !{!1947, !1942, !1937, !1950}
!1950 = distinct !{!1950, !1935, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h925796d2fbf4f077E: %is_less"}
!1951 = !{!1947, !1942, !1934}
!1952 = !{!1944, !1939, !1937, !1950}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!1955 = distinct !{!1955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1955, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!1960 = distinct !{!1960, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!1963 = !{!1959, !1954, !1934}
!1964 = !{!1962, !1957, !1937, !1950}
!1965 = !{!1962, !1957, !1934}
!1966 = !{!1959, !1954, !1937, !1950}
!1967 = !{!1968}
!1968 = distinct !{!1968, !1969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!1969 = distinct !{!1969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!1970 = !{!1971}
!1971 = distinct !{!1971, !1969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!1972 = !{!1973}
!1973 = distinct !{!1973, !1974, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!1974 = distinct !{!1974, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!1975 = !{!1976}
!1976 = distinct !{!1976, !1974, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!1977 = !{!1973, !1968, !1934}
!1978 = !{!1976, !1971, !1937, !1950}
!1979 = !{!1976, !1971, !1934}
!1980 = !{!1973, !1968, !1937, !1950}
!1981 = !{!1982}
!1982 = distinct !{!1982, !1983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!1983 = distinct !{!1983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!1984 = !{!1985}
!1985 = distinct !{!1985, !1983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!1988 = distinct !{!1988, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1988, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!1991 = !{!1987, !1982, !1934}
!1992 = !{!1990, !1985, !1937, !1950}
!1993 = !{!1990, !1985, !1934}
!1994 = !{!1987, !1982, !1937, !1950}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!1997 = distinct !{!1997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !1997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2000 = !{!2001}
!2001 = distinct !{!2001, !2002, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2002 = distinct !{!2002, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2002, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2005 = !{!2001, !1996, !1934}
!2006 = !{!2004, !1999, !1937, !1950}
!2007 = !{!2004, !1999, !1934}
!2008 = !{!2001, !1996, !1937, !1950}
!2009 = !{!1934, !1950}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2012 = distinct !{!2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2017 = distinct !{!2017, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2017, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2020 = !{!2016, !2011, !1934}
!2021 = !{!2019, !2014, !1937, !1950}
!2022 = !{!2019, !2014, !1934}
!2023 = !{!2016, !2011, !1937, !1950}
!2024 = !{!2025}
!2025 = distinct !{!2025, !2026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2026 = distinct !{!2026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2027 = !{!2028}
!2028 = distinct !{!2028, !2026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2029 = !{!2030}
!2030 = distinct !{!2030, !2031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2031 = distinct !{!2031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2032 = !{!2033}
!2033 = distinct !{!2033, !2031, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2034 = !{!2030, !2025, !1934}
!2035 = !{!2033, !2028, !1937, !1950}
!2036 = !{!2033, !2028, !1934}
!2037 = !{!2030, !2025, !1937, !1950}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2040 = distinct !{!2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2040, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2045 = distinct !{!2045, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2048 = !{!2044, !2039, !1934}
!2049 = !{!2047, !2042, !1937, !1950}
!2050 = !{!2047, !2042, !1934}
!2051 = !{!2044, !2039, !1937, !1950}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2054 = distinct !{!2054, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2055 = !{!2056}
!2056 = distinct !{!2056, !2054, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2057 = !{!2058}
!2058 = distinct !{!2058, !2059, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2059 = distinct !{!2059, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2059, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2062 = !{!2058, !2053, !1934}
!2063 = !{!2061, !2056, !1937, !1950}
!2064 = !{!2061, !2056, !1934}
!2065 = !{!2058, !2053, !1937, !1950}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2068, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2068 = distinct !{!2068, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2069 = !{!2070}
!2070 = distinct !{!2070, !2068, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2073 = distinct !{!2073, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2073, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2076 = !{!2072, !2067, !1934}
!2077 = !{!2075, !2070, !1937, !1950}
!2078 = !{!2075, !2070, !1934}
!2079 = !{!2072, !2067, !1937, !1950}
!2080 = !{!1937, !1950}
!2081 = !{!2082, !2084, !1937}
!2082 = distinct !{!2082, !2083, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2083 = distinct !{!2083, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2084 = distinct !{!2084, !2085, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2085 = distinct !{!2085, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2086 = !{!2087, !2088, !1934, !1950}
!2087 = distinct !{!2087, !2083, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2088 = distinct !{!2088, !2085, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2089 = !{!2090, !2092, !1937}
!2090 = distinct !{!2090, !2091, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2091 = distinct !{!2091, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2092 = distinct !{!2092, !2093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2093 = distinct !{!2093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2094 = !{!2095, !2096, !1934, !1950}
!2095 = distinct !{!2095, !2091, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2096 = distinct !{!2096, !2093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2097 = !{!2098, !2100, !1934, !1950}
!2098 = distinct !{!2098, !2099, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2099 = distinct !{!2099, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2100 = distinct !{!2100, !2101, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2101 = distinct !{!2101, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbd08d5aeb72976dcE: %v.0"}
!2104 = distinct !{!2104, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbd08d5aeb72976dcE"}
!2105 = !{!2106}
!2106 = distinct !{!2106, !2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2107 = distinct !{!2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2108 = !{!2109}
!2109 = distinct !{!2109, !2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2112 = distinct !{!2112, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0c419633316f16edE: %_0"}
!2115 = distinct !{!2115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0c419633316f16edE"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2112, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2118 = !{!2111, !2106, !2103, !1937}
!2119 = !{!2117, !2109, !2114, !1934, !1950}
!2120 = !{!2117, !2109, !2103, !1937}
!2121 = !{!2111, !2106, !2114, !1934, !1950}
!2122 = !{!2114, !2123, !2103, !1937, !1950}
!2123 = distinct !{!2123, !2115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h0c419633316f16edE: %is_less"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2126 = distinct !{!2126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2131, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2131 = distinct !{!2131, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h566275ffadc226c3E: %_0"}
!2134 = distinct !{!2134, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h566275ffadc226c3E"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2131, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2137 = !{!2130, !2125, !2103, !1937}
!2138 = !{!2136, !2128, !2133, !1934, !1950}
!2139 = !{!2136, !2128, !2103, !1937}
!2140 = !{!2130, !2125, !2133, !1934, !1950}
!2141 = !{!2133, !2142, !2103, !1937, !1950}
!2142 = distinct !{!2142, !2134, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h566275ffadc226c3E: %is_less"}
!2143 = !{!2103, !1937}
!2144 = !{!2103, !1937, !1950}
!2145 = !{!1934, !1937, !1950}
!2146 = !{!1934, !1937}
!2147 = !{!2148, !2150, !1950}
!2148 = distinct !{!2148, !2149, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2149 = distinct !{!2149, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2150 = distinct !{!2150, !2151, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2151 = distinct !{!2151, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2152 = !{!2153}
!2153 = distinct !{!2153, !2154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2154 = distinct !{!2154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2157 = !{!2158}
!2158 = distinct !{!2158, !2159, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2159 = distinct !{!2159, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2160 = !{!2161}
!2161 = distinct !{!2161, !2162, !"_ZN4core5slice4sort6shared5pivot7median317hc1f6c3449048e899E: %c"}
!2162 = distinct !{!2162, !"_ZN4core5slice4sort6shared5pivot7median317hc1f6c3449048e899E"}
!2163 = !{!2164}
!2164 = distinct !{!2164, !2159, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2165 = !{!2158, !2153, !2166}
!2166 = distinct !{!2166, !2167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h879793ba406681efE: %v.0"}
!2167 = distinct !{!2167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h879793ba406681efE"}
!2168 = !{!2164, !2156, !2161, !2169}
!2169 = distinct !{!2169, !2167, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h879793ba406681efE: %is_less"}
!2170 = !{!2164, !2156, !2166}
!2171 = !{!2158, !2153, !2161, !2169}
!2172 = !{!2173, !2175, !2166}
!2173 = distinct !{!2173, !2174, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2174 = distinct !{!2174, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2175 = distinct !{!2175, !2176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2176 = distinct !{!2176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2177 = !{!2178, !2179, !2169}
!2178 = distinct !{!2178, !2174, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2179 = distinct !{!2179, !2176, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2180 = !{!2181, !2183}
!2181 = distinct !{!2181, !2182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2182 = distinct !{!2182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2183 = distinct !{!2183, !2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2184 = distinct !{!2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2185 = !{!2186, !2187}
!2186 = distinct !{!2186, !2182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2187 = distinct !{!2187, !2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2190, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1dad882cfcad170fE: %v.0"}
!2190 = distinct !{!2190, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1dad882cfcad170fE"}
!2191 = !{!2192}
!2192 = distinct !{!2192, !2190, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1dad882cfcad170fE: %scratch.0"}
!2193 = !{!2194, !2196, !2189}
!2194 = distinct !{!2194, !2195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2195 = distinct !{!2195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2196 = distinct !{!2196, !2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2197 = distinct !{!2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2198 = !{!2199, !2200, !2192}
!2199 = distinct !{!2199, !2195, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2200 = distinct !{!2200, !2197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2201 = !{!2200}
!2202 = !{!2196}
!2203 = !{!2199}
!2204 = !{!2194}
!2205 = !{!2199, !2200, !2189}
!2206 = !{!2194, !2196, !2192}
!2207 = !{!2208, !2189}
!2208 = distinct !{!2208, !2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2209 = distinct !{!2209, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2210 = !{!2211, !2213, !2189}
!2211 = distinct !{!2211, !2212, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2212 = distinct !{!2212, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2213 = distinct !{!2213, !2214, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2214 = distinct !{!2214, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2215 = !{!2216, !2217, !2192}
!2216 = distinct !{!2216, !2212, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2217 = distinct !{!2217, !2214, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2218 = !{!2219, !2189}
!2219 = distinct !{!2219, !2220, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2220 = distinct !{!2220, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2221 = !{!2222, !2224, !2189}
!2222 = distinct !{!2222, !2223, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2223 = distinct !{!2223, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2224 = distinct !{!2224, !2225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2225 = distinct !{!2225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2226 = !{!2227, !2228, !2192}
!2227 = distinct !{!2227, !2223, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2228 = distinct !{!2228, !2225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2229 = !{!2230, !2189}
!2230 = distinct !{!2230, !2231, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2231 = distinct !{!2231, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2232 = !{!2233, !2235, !2189}
!2233 = distinct !{!2233, !2234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2234 = distinct !{!2234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2235 = distinct !{!2235, !2236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2236 = distinct !{!2236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2237 = !{!2238, !2239, !2192}
!2238 = distinct !{!2238, !2234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2239 = distinct !{!2239, !2236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2240 = !{!2241, !2189}
!2241 = distinct !{!2241, !2242, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2242 = distinct !{!2242, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2243 = !{!2244, !2246, !2189}
!2244 = distinct !{!2244, !2245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2245 = distinct !{!2245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2246 = distinct !{!2246, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2247 = distinct !{!2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2248 = !{!2249, !2250, !2192}
!2249 = distinct !{!2249, !2245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2250 = distinct !{!2250, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2251 = !{!2250}
!2252 = !{!2246}
!2253 = !{!2249}
!2254 = !{!2244}
!2255 = !{!2249, !2250, !2189}
!2256 = !{!2244, !2246, !2192}
!2257 = !{!2258, !2189}
!2258 = distinct !{!2258, !2259, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2259 = distinct !{!2259, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2260 = !{!2261, !2192}
!2261 = distinct !{!2261, !2262, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2262 = distinct !{!2262, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2263 = !{!2261, !2189}
!2264 = !{!2189, !2192}
!2265 = distinct !{!2265, !701, !702}
!2266 = distinct !{!2266, !702, !701}
!2267 = !{!2268, !2270}
!2268 = distinct !{!2268, !2269, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %pair"}
!2269 = distinct !{!2269, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE"}
!2270 = distinct !{!2270, !2269, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %self.0"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E: %v.0"}
!2273 = distinct !{!2273, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2273, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he382192406013a27E: %scratch.0"}
!2276 = !{!2277, !2279, !2281, !2272}
!2277 = distinct !{!2277, !2278, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2278 = distinct !{!2278, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2279 = distinct !{!2279, !2280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2280 = distinct !{!2280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2281 = distinct !{!2281, !2282, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %b"}
!2282 = distinct !{!2282, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E"}
!2283 = !{!2284, !2285, !2286, !2275}
!2284 = distinct !{!2284, !2278, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2285 = distinct !{!2285, !2280, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2286 = distinct !{!2286, !2282, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %a"}
!2287 = !{!2286}
!2288 = !{!2281}
!2289 = !{!2279}
!2290 = !{!2285}
!2291 = !{!2277}
!2292 = !{!2284}
!2293 = !{!2284, !2285, !2286, !2272}
!2294 = !{!2277, !2279, !2281, !2275}
!2295 = !{!2296, !2272}
!2296 = distinct !{!2296, !2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2297 = distinct !{!2297, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2298 = !{!2299, !2301, !2303, !2272}
!2299 = distinct !{!2299, !2300, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2300 = distinct !{!2300, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2301 = distinct !{!2301, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2302 = distinct !{!2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2303 = distinct !{!2303, !2304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %a"}
!2304 = distinct !{!2304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E"}
!2305 = !{!2306, !2307, !2308, !2275}
!2306 = distinct !{!2306, !2300, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2307 = distinct !{!2307, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2308 = distinct !{!2308, !2304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %b"}
!2309 = !{!2310, !2272}
!2310 = distinct !{!2310, !2311, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2311 = distinct !{!2311, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2312 = !{!2313, !2315, !2317, !2272}
!2313 = distinct !{!2313, !2314, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2314 = distinct !{!2314, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2315 = distinct !{!2315, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2316 = distinct !{!2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2317 = distinct !{!2317, !2318, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %a"}
!2318 = distinct !{!2318, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E"}
!2319 = !{!2320, !2321, !2322, !2275}
!2320 = distinct !{!2320, !2314, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2321 = distinct !{!2321, !2316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2322 = distinct !{!2322, !2318, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %b"}
!2323 = !{!2324, !2272}
!2324 = distinct !{!2324, !2325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2325 = distinct !{!2325, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2326 = !{!2327, !2329, !2331, !2272}
!2327 = distinct !{!2327, !2328, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2328 = distinct !{!2328, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2329 = distinct !{!2329, !2330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2330 = distinct !{!2330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2331 = distinct !{!2331, !2332, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %a"}
!2332 = distinct !{!2332, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E"}
!2333 = !{!2334, !2335, !2336, !2275}
!2334 = distinct !{!2334, !2328, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2335 = distinct !{!2335, !2330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2336 = distinct !{!2336, !2332, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %b"}
!2337 = !{!2338, !2272}
!2338 = distinct !{!2338, !2339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2339 = distinct !{!2339, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2340 = !{!2341, !2343, !2345, !2272}
!2341 = distinct !{!2341, !2342, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2342 = distinct !{!2342, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2343 = distinct !{!2343, !2344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2344 = distinct !{!2344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2345 = distinct !{!2345, !2346, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %b"}
!2346 = distinct !{!2346, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E"}
!2347 = !{!2348, !2349, !2350, !2275}
!2348 = distinct !{!2348, !2342, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2349 = distinct !{!2349, !2344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2350 = distinct !{!2350, !2346, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4e017136ca8a9190E: %a"}
!2351 = !{!2350}
!2352 = !{!2345}
!2353 = !{!2343}
!2354 = !{!2349}
!2355 = !{!2341}
!2356 = !{!2348}
!2357 = !{!2348, !2349, !2350, !2272}
!2358 = !{!2341, !2343, !2345, !2275}
!2359 = !{!2360, !2272}
!2360 = distinct !{!2360, !2361, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2361 = distinct !{!2361, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2362 = !{!2363, !2275}
!2363 = distinct !{!2363, !2364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2364 = distinct !{!2364, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2365 = !{!2363, !2272}
!2366 = !{!2272, !2275}
!2367 = distinct !{!2367, !701, !702}
!2368 = distinct !{!2368, !702, !701}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E: %self.0"}
!2371 = distinct !{!2371, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h218380c8677b6fb5E"}
!2372 = !{!2373}
!2373 = distinct !{!2373, !2374, !"_ZN5alloc5slice11stable_sort17hc57a02d223e9d233E: %v.0"}
!2374 = distinct !{!2374, !"_ZN5alloc5slice11stable_sort17hc57a02d223e9d233E"}
!2375 = !{!2373, !2376, !2370}
!2376 = distinct !{!2376, !2374, !"_ZN5alloc5slice11stable_sort17hc57a02d223e9d233E: argument 1"}
!2377 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2378 = !{!2379}
!2379 = distinct !{!2379, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2380 = distinct !{!2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2381 = !{!2382}
!2382 = distinct !{!2382, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2385 = distinct !{!2385, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2385, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2388 = !{!2384, !2379, !2389, !2373, !2370}
!2389 = distinct !{!2389, !2390, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he1eb46df32583532E: %v.0"}
!2390 = distinct !{!2390, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he1eb46df32583532E"}
!2391 = !{!2387, !2382, !2376}
!2392 = !{!2387, !2382, !2389, !2373, !2370}
!2393 = !{!2384, !2379, !2376}
!2394 = !{!2389, !2373, !2370}
!2395 = !{!2376}
!2396 = !{!2397, !2399, !2389, !2373, !2370}
!2397 = distinct !{!2397, !2398, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y"}
!2398 = distinct !{!2398, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE"}
!2399 = distinct !{!2399, !2400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b"}
!2400 = distinct !{!2400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE"}
!2401 = !{!2402, !2403, !2376}
!2402 = distinct !{!2402, !2398, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x"}
!2403 = distinct !{!2403, !2400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a"}
!2404 = !{!2405, !2407, !2376}
!2405 = distinct !{!2405, !2406, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2406 = distinct !{!2406, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2407 = distinct !{!2407, !2408, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2408 = distinct !{!2408, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %a:It1"}
!2411 = !{!2412}
!2412 = distinct !{!2412, !2380, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4526f368034afb8aE: %b:It1"}
!2413 = !{!2414}
!2414 = distinct !{!2414, !2385, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %x:It1"}
!2415 = !{!2416}
!2416 = distinct !{!2416, !2385, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h2bdf311d3fa6d26cE: %y:It1"}
!2417 = !{!2414, !2410, !2389, !2373, !2370}
!2418 = !{!2416, !2412, !2376}
!2419 = !{!2416, !2412, !2389, !2373, !2370}
!2420 = !{!2414, !2410, !2376}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE: %self.0"}
!2423 = distinct !{!2423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5184eeb8f25aa50aE"}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2426, !"_ZN5alloc5slice11stable_sort17ha63a05d53ad31ba1E: %v.0"}
!2426 = distinct !{!2426, !"_ZN5alloc5slice11stable_sort17ha63a05d53ad31ba1E"}
!2427 = !{!2425, !2428, !2422}
!2428 = distinct !{!2428, !2426, !"_ZN5alloc5slice11stable_sort17ha63a05d53ad31ba1E: argument 1"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!2431 = distinct !{!2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!2432 = !{!2433}
!2433 = distinct !{!2433, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!2436 = distinct !{!2436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!2437 = !{!2438}
!2438 = distinct !{!2438, !2436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!2439 = !{!2435, !2430, !2440, !2425, !2422}
!2440 = distinct !{!2440, !2441, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc76cbb95389a3dc4E: %v.0"}
!2441 = distinct !{!2441, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc76cbb95389a3dc4E"}
!2442 = !{!2438, !2433, !2428}
!2443 = !{!2438, !2433, !2440, !2425, !2422}
!2444 = !{!2435, !2430, !2428}
!2445 = !{!2440, !2425, !2422}
!2446 = !{!2428}
!2447 = !{!2448, !2450, !2440, !2425, !2422}
!2448 = distinct !{!2448, !2449, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y"}
!2449 = distinct !{!2449, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E"}
!2450 = distinct !{!2450, !2451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b"}
!2451 = distinct !{!2451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE"}
!2452 = !{!2453, !2454, !2428}
!2453 = distinct !{!2453, !2449, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x"}
!2454 = distinct !{!2454, !2451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a"}
!2455 = !{!2456, !2458, !2428}
!2456 = distinct !{!2456, !2457, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2457 = distinct !{!2457, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2458 = distinct !{!2458, !2459, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2459 = distinct !{!2459, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %a:It1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4d4efe331f274f7cE: %b:It1"}
!2464 = !{!2465}
!2465 = distinct !{!2465, !2436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %x:It1"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h957d9ac77028a5a9E: %y:It1"}
!2468 = !{!2465, !2461, !2440, !2425, !2422}
!2469 = !{!2467, !2463, !2428}
!2470 = !{!2467, !2463, !2440, !2425, !2422}
!2471 = !{!2465, !2461, !2428}
!2472 = distinct !{!2472, !701, !702}
!2473 = distinct !{!2473, !702, !701}
!2474 = !{!2475}
!2475 = distinct !{!2475, !2476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E: %self.0"}
!2476 = distinct !{!2476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E"}
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: %v.0"}
!2479 = distinct !{!2479, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E"}
!2480 = !{!2478, !2481, !2475}
!2481 = distinct !{!2481, !2479, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: argument 1"}
!2482 = !{!2483}
!2483 = distinct !{!2483, !2484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2484 = distinct !{!2484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2489 = distinct !{!2489, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2489, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"cmpfunc: %a"}
!2494 = distinct !{!2494, !"cmpfunc"}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2494, !"cmpfunc: %b"}
!2497 = !{!2493, !2488, !2483, !2498, !2478, !2475}
!2498 = distinct !{!2498, !2499, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE: %v.0"}
!2499 = distinct !{!2499, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE"}
!2500 = !{!2496, !2491, !2486, !2481}
!2501 = !{!2496, !2491, !2486, !2498, !2478, !2475}
!2502 = !{!2493, !2488, !2483, !2481}
!2503 = !{!2498, !2478, !2475}
!2504 = !{!2481}
!2505 = !{!2506, !2508, !2510, !2498, !2478, !2475}
!2506 = distinct !{!2506, !2507, !"cmpfunc: %b"}
!2507 = distinct !{!2507, !"cmpfunc"}
!2508 = distinct !{!2508, !2509, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2509 = distinct !{!2509, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2510 = distinct !{!2510, !2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2511 = distinct !{!2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2512 = !{!2513, !2514, !2515, !2481}
!2513 = distinct !{!2513, !2507, !"cmpfunc: %a"}
!2514 = distinct !{!2514, !2509, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2515 = distinct !{!2515, !2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2516 = !{!2517, !2519, !2481}
!2517 = distinct !{!2517, !2518, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!2518 = distinct !{!2518, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!2519 = distinct !{!2519, !2520, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!2520 = distinct !{!2520, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!2521 = !{!2522}
!2522 = distinct !{!2522, !2484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!2523 = !{!2524}
!2524 = distinct !{!2524, !2484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!2525 = !{!2526}
!2526 = distinct !{!2526, !2489, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!2527 = !{!2528}
!2528 = distinct !{!2528, !2489, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!2529 = !{!2530}
!2530 = distinct !{!2530, !2494, !"cmpfunc: %a:It1"}
!2531 = !{!2532}
!2532 = distinct !{!2532, !2494, !"cmpfunc: %b:It1"}
!2533 = !{!2530, !2526, !2522, !2498, !2478, !2475}
!2534 = !{!2532, !2528, !2524, !2481}
!2535 = !{!2532, !2528, !2524, !2498, !2478, !2475}
!2536 = !{!2530, !2526, !2522, !2481}
