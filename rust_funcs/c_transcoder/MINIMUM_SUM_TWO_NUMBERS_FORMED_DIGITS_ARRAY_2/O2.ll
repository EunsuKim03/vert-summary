; ModuleID = 'MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit.f9c3e781f65897f9-cgu.0'
source_filename = "MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit.f9c3e781f65897f9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_ebfd97a6bc3eb2050fcd762bf8c3e140 = private unnamed_addr constant [143 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit.rs\00", align 1
@alloc_7b93abd3670b3023ebceb126cbccd1b4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ebfd97a6bc3eb2050fcd762bf8c3e140, [16 x i8] c"\8E\00\00\00\00\00\00\00\1E\00\00\00 \00\00\00" }>, align 8
@alloc_2b648ac720853773226d2adc6c4e4ae0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ebfd97a6bc3eb2050fcd762bf8c3e140, [16 x i8] c"\8E\00\00\00\00\00\00\00\1C\00\00\00 \00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4d95b87202d87658E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4d95b87202d87658E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4d95b87202d87658E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4d95b87202d87658E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19), !noalias !11
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !21, !noalias !22, !noundef !23
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !24, !noalias !25, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !26, !noalias !33, !noundef !23
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17haea3e81d8d8e5ec6E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17haea3e81d8d8e5ec6E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17haea3e81d8d8e5ec6E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17haea3e81d8d8e5ec6E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42), !noalias !45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48), !noalias !45
  %_4.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !50, !noalias !51, !noundef !23
  %_5.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !52, !noalias !53, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_5.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !54, !noalias !59, !noundef !23
  %_0.i7 = icmp slt i32 %_4.i.i, %_5.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_5.i.i, %_5.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4c24201ae3c8461bE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !77, !noalias !78, !noundef !23
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !78, !noalias !77, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !94, !noalias !95, !noundef !23
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !95, !noalias !94, !noundef !23
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
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !111, !noalias !112, !noundef !23
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !112, !noalias !111, !noundef !23
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !128, !noalias !129, !noundef !23
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !129, !noalias !128, !noundef !23
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !145, !noalias !146, !noundef !23
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !146, !noalias !145, !noundef !23
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
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !162, !noalias !163, !noundef !23
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !163, !noalias !162, !noundef !23
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !179, !noalias !180, !noundef !23
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !180, !noalias !179, !noundef !23
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
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !196, !noalias !197, !noundef !23
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !197, !noalias !196, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !213, !noalias !214, !noundef !23
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !214, !noalias !213, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !230, !noalias !231, !noundef !23
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !231, !noalias !230, !noundef !23
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
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !235, !noalias !242, !noundef !23
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !248
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !250, !noalias !257, !noundef !23
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
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !278, !noalias !279, !noundef !23
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !280, !noalias !281, !noundef !23
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
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !295, !noalias !296, !noundef !23
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !297, !noalias !298, !noundef !23
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
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !311, !noalias !312, !noundef !23
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !313, !noalias !314, !noundef !23
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
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !327, !noalias !328, !noundef !23
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !329, !noalias !330, !noundef !23
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
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !343, !noalias !344, !noundef !23
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !345, !noalias !346, !noundef !23
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
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !359, !noalias !360, !noundef !23
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !361, !noalias !362, !noundef !23
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E.exit, !prof !363

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !232
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hefed4dcb5b376924E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %_4.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !374, !noalias !375, !noundef !23
  %_5.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !375, !noalias !374, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %_4.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !386, !noalias !387, !noundef !23
  %_5.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !387, !noalias !386, !noundef !23
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
  %_4.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !398, !noalias !399, !noundef !23
  %_5.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !399, !noalias !398, !noundef !23
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %_4.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !410, !noalias !411, !noundef !23
  %_5.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !411, !noalias !410, !noundef !23
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %_4.i.i16.i = load i32, ptr %4, align 4, !alias.scope !422, !noalias !423, !noundef !23
  %_5.i.i17.i = load i32, ptr %2, align 4, !alias.scope !423, !noalias !422, !noundef !23
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
  %_4.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !434, !noalias !435, !noundef !23
  %_5.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !435, !noalias !434, !noundef !23
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %_4.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !446, !noalias !447, !noundef !23
  %_5.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !447, !noalias !446, !noundef !23
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
  %_4.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !458, !noalias !459, !noundef !23
  %_5.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !459, !noalias !458, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %_4.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !470, !noalias !471, !noundef !23
  %_5.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !471, !noalias !470, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %_4.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !482, !noalias !483, !noundef !23
  %_5.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !483, !noalias !482, !noundef !23
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
  %_4.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !506, !noalias !507, !noundef !23
  %_5.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !508, !noalias !509, !noundef !23
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
  %_4.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !521, !noalias !522, !noundef !23
  %_5.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !523, !noalias !524, !noundef !23
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
  %_4.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !533, !noalias !534, !noundef !23
  %_5.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !535, !noalias !536, !noundef !23
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
  %_4.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !545, !noalias !546, !noundef !23
  %_5.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !547, !noalias !548, !noundef !23
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
  %_4.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !557, !noalias !558, !noundef !23
  %_5.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !559, !noalias !560, !noundef !23
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
  %_4.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !569, !noalias !570, !noundef !23
  %_5.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !571, !noalias !572, !noundef !23
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E.exit, !prof !363

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !484
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h8afcbd005fc7584aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8d9f5ec590a29886E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17ha5f2bee4fd2b432eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h99be6190cc5ab17eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8d9f5ec590a29886E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !628
  %_4.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !633, !noalias !634, !noundef !23
  %_5.i.i63 = load i32, ptr %_82, align 4, !alias.scope !635, !noalias !636, !noundef !23
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_5.i.i60 = phi i32 [ %_4.i.i59, %bb15.i.i ], [ %_4.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_4.i.i59 = load i32, ptr %2, align 4, !alias.scope !637, !noalias !642, !noundef !23
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_5.i.i = phi i32 [ %_4.i.i58, %bb7.i.i ], [ %_4.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_4.i.i58 = load i32, ptr %4, align 4, !alias.scope !645, !noalias !650, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653), !noalias !656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !656
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h17574dfac00a263fE.exit.i.thread101 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !660, !noalias !663
  %wide.load119 = load <4 x i32>, ptr %9, align 4, !alias.scope !660, !noalias !663
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load120 = load <4 x i32>, ptr %10, align 4, !alias.scope !664, !noalias !665
  %reverse = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load121 = load <4 x i32>, ptr %11, align 4, !alias.scope !664, !noalias !665
  %reverse122 = shufflevector <4 x i32> %wide.load121, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !660, !noalias !663
  store <4 x i32> %reverse122, ptr %9, align 4, !alias.scope !660, !noalias !663
  %reverse123 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %10, align 4, !alias.scope !664, !noalias !665
  %reverse124 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse124, ptr %11, align 4, !alias.scope !664, !noalias !665
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !666

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !660, !noalias !663, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !664, !noalias !665
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !660, !noalias !663
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !664, !noalias !665
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !669

_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !23
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !675
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %_4.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !686, !noalias !687, !noundef !23
  %_5.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !690, !noalias !691, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !670, !noalias !692
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %_4.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !703, !noalias !704, !noundef !23
  %_5.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !707, !noalias !708, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i12.i, %_5.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i12.i, i32 %_5.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !670, !noalias !709
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !675, !noalias !710
  br label %_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit

_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h46c701cf60eb8184E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h99be6190cc5ab17eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728), !noalias !723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !723
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !733, !noalias !734, !noundef !23
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !735, !noalias !736, !noundef !23
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !737, !noalias !744, !noundef !23
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !748, !noalias !755, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759), !noalias !762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !762
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc8dd701d19db8c15E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !766, !noalias !769
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !766, !noalias !769
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !770, !noalias !771
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !770, !noalias !771
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !766, !noalias !769
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !766, !noalias !769
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !770, !noalias !771
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !770, !noalias !771
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !772

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !766, !noalias !769, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !770, !noalias !771
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !766, !noalias !769
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !770, !noalias !771
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !773

_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !23
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !779
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !795, !noalias !796, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !799, !noalias !800, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !774, !noalias !801
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !817, !noalias !818, !noundef !23
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !821, !noalias !822, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !774, !noalias !823
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !779, !noalias !824
  br label %_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit

_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hd579fef3d67821b1E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hefed4dcb5b376924E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hefed4dcb5b376924E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %_4.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !844, !noalias !845, !noundef !23
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !847, !noalias !848, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %_4.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !859, !noalias !860, !noundef !23
  %_5.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !861, !noalias !862, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %_4.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !873, !noalias !874, !noundef !23
  %_5.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !875, !noalias !876, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %_4.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !887, !noalias !888, !noundef !23
  %_5.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !889, !noalias !890, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %_4.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !901, !noalias !902, !noundef !23
  %_5.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !903, !noalias !904, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !832, !noalias !905
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !832, !noalias !905
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !832, !noalias !905
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !832, !noalias !905
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %_4.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !916, !noalias !917, !noundef !23
  %_5.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !918, !noalias !919, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %_4.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !930, !noalias !931, !noundef !23
  %_5.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !932, !noalias !933, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %_4.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !944, !noalias !945, !noundef !23
  %_5.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !946, !noalias !947, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %_4.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !958, !noalias !959, !noundef !23
  %_5.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !960, !noalias !961, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %_4.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !972, !noalias !973, !noundef !23
  %_5.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !974, !noalias !975, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !832, !noalias !905
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !832, !noalias !905
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !832, !noalias !905
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !832, !noalias !905
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !829, !noalias !976
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !832, !noalias !905
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !829, !noalias !976
  store i32 %25, ptr %24, align 4, !alias.scope !832, !noalias !905
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !829, !noalias !976
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !832, !noalias !905
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_5.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !977, !noalias !982, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_5.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_5.i.i2.i.1.i, %bb7.i.1.i ], [ %_5.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !832, !noalias !905
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_5.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !985, !noalias !990, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %27, %_5.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !832, !noalias !993
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !1009
  call void @llvm.experimental.noalias.scope.decl(metadata !1012), !noalias !1009
  %_4.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1014, !noalias !1015, !noundef !23
  %_5.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1016, !noalias !1017, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !829, !noalias !1018
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025), !noalias !1028
  call void @llvm.experimental.noalias.scope.decl(metadata !1031), !noalias !1028
  %_4.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1033, !noalias !1034, !noundef !23
  %_5.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1035, !noalias !1036, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !829, !noalias !1037
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1039, !noalias !905
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !829, !noalias !1040
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
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1041

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1042, !noalias !1043
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !829, !noalias !976
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !832, !noalias !905
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_5.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !977, !noalias !982, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_5.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_5.i.i2.i.i, %bb7.i.i ], [ %_5.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !832, !noalias !905
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_5.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !985, !noalias !990, !noundef !23
  %_0.i3.i.i = icmp slt i32 %44, %_5.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !832, !noalias !993
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17haea3e81d8d8e5ec6E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053), !noalias !1056
  call void @llvm.experimental.noalias.scope.decl(metadata !1059), !noalias !1056
  %_4.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1061, !noalias !1064, !noundef !23
  %_5.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1066, !noalias !1067, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1068, !noalias !1073, !noundef !23
  %_0.i7.i = icmp slt i32 %_4.i.i.i, %_5.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i, %_5.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8d9f5ec590a29886E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !23
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_4.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1076, !noalias !1081, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
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
  %_5.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1089, !noalias !1094, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %_4.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1101, !noalias !1102, !noundef !23
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_4.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1087, !noalias !1103
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_4.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1106, !noalias !1111, !noundef !23
  %_0.i27.i = icmp slt i32 %_4.i.i25.i, %_5.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_4.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1087, !noalias !1114
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_4.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1117, !noalias !1122, !noundef !23
  %_0.i37.i = icmp slt i32 %_4.i.i35.i, %_5.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_4.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1087, !noalias !1125
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_4.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1128, !noalias !1133, !noundef !23
  %_0.i47.i = icmp slt i32 %_4.i.i45.i, %_5.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_4.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1087, !noalias !1136
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
  %_5.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1139, !noalias !1144, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %_4.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1151, !noalias !1152, !noundef !23
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_4.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1087, !noalias !1153
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1084, !noalias !1156
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1087, !noalias !1159
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1160
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1087, !noalias !1084
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1087, !noalias !1084
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1084, !noalias !1087
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1084, !noalias !1087
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1161

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1087, !noalias !1084
  store i32 %78, ptr %75, align 4, !alias.scope !1084, !noalias !1087
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1162

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit", !prof !1163

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1164
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1062ccab4d285464E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
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
  %_4.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1173, !noalias !1180, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %_5.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1190, !noalias !1191, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_5.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1171, !noalias !1192
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_5.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1195, !noalias !1202, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_5.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1171, !noalias !1206
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_5.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1209, !noalias !1216, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_5.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1171, !noalias !1220
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_5.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1223, !noalias !1230, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_5.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1171, !noalias !1234
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
  %_4.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1237, !noalias !1244, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %_5.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1254, !noalias !1255, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_5.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1171, !noalias !1256
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1168, !noalias !1259
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1171, !noalias !1262
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1263
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1171, !noalias !1168
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1171, !noalias !1168
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1168, !noalias !1171
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1168, !noalias !1171
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1171, !noalias !1168
  store i32 %108, ptr %105, align 4, !alias.scope !1168, !noalias !1171
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E.exit, label %bb42.i66, !llvm.loop !1265

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1163

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4c24201ae3c8461bE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4c24201ae3c8461bE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1286, !noalias !1287, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1289, !noalias !1290, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1306, !noalias !1307, !noundef !23
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1308, !noalias !1309, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1325, !noalias !1326, !noundef !23
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1327, !noalias !1328, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1344, !noalias !1345, !noundef !23
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1346, !noalias !1347, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1363, !noalias !1364, !noundef !23
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1365, !noalias !1366, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1269, !noalias !1367
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1269, !noalias !1367
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1269, !noalias !1367
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1269, !noalias !1367
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1383, !noalias !1384, !noundef !23
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1385, !noalias !1386, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1402, !noalias !1403, !noundef !23
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1404, !noalias !1405, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1421, !noalias !1422, !noundef !23
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1423, !noalias !1424, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1440, !noalias !1441, !noundef !23
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1442, !noalias !1443, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1459, !noalias !1460, !noundef !23
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1461, !noalias !1462, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1269, !noalias !1367
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1269, !noalias !1367
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1269, !noalias !1367
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1269, !noalias !1367
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1266, !noalias !1463
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1269, !noalias !1367
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1266, !noalias !1463
  store i32 %25, ptr %24, align 4, !alias.scope !1269, !noalias !1367
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1266, !noalias !1463
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1269, !noalias !1367
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1464, !noalias !1471, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1269, !noalias !1367
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1475, !noalias !1482, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1269, !noalias !1486
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1507), !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1510), !noalias !1502
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1512, !noalias !1513, !noundef !23
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1514, !noalias !1515, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1266, !noalias !1516
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  call void @llvm.experimental.noalias.scope.decl(metadata !1523), !noalias !1526
  call void @llvm.experimental.noalias.scope.decl(metadata !1529), !noalias !1526
  call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1526
  call void @llvm.experimental.noalias.scope.decl(metadata !1534), !noalias !1526
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1536, !noalias !1537, !noundef !23
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1538, !noalias !1539, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1266, !noalias !1540
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1542, !noalias !1367
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1266, !noalias !1543
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
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1544

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1545, !noalias !1546
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1266, !noalias !1463
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1269, !noalias !1367
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1464, !noalias !1471, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1269, !noalias !1367
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1475, !noalias !1482, !noundef !23
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1269, !noalias !1486
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4d95b87202d87658E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556), !noalias !1559
  call void @llvm.experimental.noalias.scope.decl(metadata !1562), !noalias !1559
  call void @llvm.experimental.noalias.scope.decl(metadata !1564), !noalias !1559
  call void @llvm.experimental.noalias.scope.decl(metadata !1567), !noalias !1559
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1569, !noalias !1572, !noundef !23
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1574, !noalias !1575, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1576, !noalias !1583, !noundef !23
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h99be6190cc5ab17eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !23
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1587, !noalias !1594, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1603, !noalias !1610, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1620, !noalias !1621, !noundef !23
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1601, !noalias !1622
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1625, !noalias !1632, !noundef !23
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1601, !noalias !1636
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1639, !noalias !1646, !noundef !23
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1601, !noalias !1650
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1653, !noalias !1660, !noundef !23
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1601, !noalias !1664
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1667, !noalias !1674, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1684, !noalias !1685, !noundef !23
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1601, !noalias !1686
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1598, !noalias !1689
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1601, !noalias !1692
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1693
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1601, !noalias !1598
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1601, !noalias !1598
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1598, !noalias !1601
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1598, !noalias !1601
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1694

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1601, !noalias !1598
  store i32 %78, ptr %75, align 4, !alias.scope !1598, !noalias !1601
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1695

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit", !prof !1163

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1696
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h586c81f6d2346d32E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.experimental.noalias.scope.decl(metadata !1703)
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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1705, !noalias !1714, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1727, !noalias !1728, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1703, !noalias !1729
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1732, !noalias !1741, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1703, !noalias !1746
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1749, !noalias !1758, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1703, !noalias !1763
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1766, !noalias !1775, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1703, !noalias !1780
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1783, !noalias !1792, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1805, !noalias !1806, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1703, !noalias !1807
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1700, !noalias !1810
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1703, !noalias !1813
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1814
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1703, !noalias !1700
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1703, !noalias !1700
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1700, !noalias !1703
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1700, !noalias !1703
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1815

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1703, !noalias !1700
  store i32 %108, ptr %105, align 4, !alias.scope !1700, !noalias !1703
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E.exit, label %bb42.i66, !llvm.loop !1816

_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1163

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #3 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !23
  %_4 = load i32, ptr %b, align 4, !noundef !23
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1817
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1823
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit", label %bb7.i.i, !prof !1825

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1825

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h8afcbd005fc7584aE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %0 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1836, !noalias !1839, !noundef !23
  %_5.i.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !1840, !noalias !1841, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %a.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1844, !noalias !1849, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %a.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %a.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %a.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1836, !noalias !1839, !noundef !23
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1840, !noalias !1841, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %a.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1844, !noalias !1849, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %a.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1865, !noalias !1866, !noundef !23
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1867, !noalias !1868, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %a.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1844, !noalias !1849, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %a.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a9d1a8f92f0b1ccE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1817
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_209 = icmp sgt i32 %n, 0
  br i1 %_209, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb8

bb9.loopexit:                                     ; preds = %bb7
  %8 = add i32 %num1.sroa.0.1, %num2.sroa.0.1
  br label %bb9

bb9:                                              ; preds = %bb9.loopexit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit"
  %_0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE.exit" ], [ %8, %bb9.loopexit ]
  ret i32 %_0

bb8:                                              ; preds = %bb8.preheader, %bb7
  %indvars.iv = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next, %bb7 ]
  %num1.sroa.0.012 = phi i32 [ 0, %bb8.preheader ], [ %num1.sroa.0.1, %bb7 ]
  %num2.sroa.0.011 = phi i32 [ 0, %bb8.preheader ], [ %num2.sroa.0.1, %bb7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_915 = and i64 %indvars.iv, 1
  %_8 = icmp eq i64 %_915, 0
  %_14 = icmp samesign ugt i64 %a.1, %indvars.iv
  br i1 %_8, label %bb3, label %bb5

bb5:                                              ; preds = %bb8
  br i1 %_14, label %bb6, label %panic

bb3:                                              ; preds = %bb8
  br i1 %_14, label %bb4, label %panic1

bb6:                                              ; preds = %bb5
  %_15 = mul i32 %num2.sroa.0.011, 10
  %9 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_16 = load i32, ptr %9, align 4, !noundef !23
  %10 = add i32 %_16, %_15
  br label %bb7

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7b93abd3670b3023ebceb126cbccd1b4) #18
  unreachable

bb7:                                              ; preds = %bb4, %bb6
  %num2.sroa.0.1 = phi i32 [ %num2.sroa.0.011, %bb4 ], [ %10, %bb6 ]
  %num1.sroa.0.1 = phi i32 [ %12, %bb4 ], [ %num1.sroa.0.012, %bb6 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb9.loopexit, label %bb8

bb4:                                              ; preds = %bb3
  %_10 = mul i32 %num1.sroa.0.012, 10
  %11 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_11 = load i32, ptr %11, align 4, !noundef !23
  %12 = add i32 %_11, %_10
  br label %bb7

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2b648ac720853773226d2adc6c4e4ae0) #18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1869
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1875
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E.exit", label %bb7.i.i, !prof !1825

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1825

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha5f2bee4fd2b432eE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1892, !noalias !1895, !noundef !23
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1896, !noalias !1897, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1898, !noalias !1899
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1900, !noalias !1907, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1898, !noalias !1911
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1892, !noalias !1895, !noundef !23
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1896, !noalias !1897, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1898, !noalias !1899
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1900, !noalias !1907, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1898, !noalias !1911
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1928, !noalias !1929, !noundef !23
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1930, !noalias !1931, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1898, !noalias !1899
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1900, !noalias !1907, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1898, !noalias !1911
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hde149b261d22d4f1E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1869
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!10 = distinct !{!10, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h9a5931089ad13146E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h9a5931089ad13146E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"cmpfunc: %a"}
!18 = distinct !{!18, !"cmpfunc"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"cmpfunc: %b"}
!21 = !{!17, !9, !4}
!22 = !{!20, !15, !7, !12}
!23 = !{}
!24 = !{!20, !15, !7}
!25 = !{!17, !9, !4, !12}
!26 = !{!27, !29, !31}
!27 = distinct !{!27, !28, !"cmpfunc: %b"}
!28 = distinct !{!28, !"cmpfunc"}
!29 = distinct !{!29, !30, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!30 = distinct !{!30, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!31 = distinct !{!31, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!32 = distinct !{!32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!33 = !{!34, !35, !36}
!34 = distinct !{!34, !28, !"cmpfunc: %a"}
!35 = distinct !{!35, !30, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!36 = distinct !{!36, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!44 = distinct !{!44, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4core5slice4sort6shared5pivot7median317hd4c81e6519b8a748E: %c"}
!47 = distinct !{!47, !"_ZN4core5slice4sort6shared5pivot7median317hd4c81e6519b8a748E"}
!48 = !{!49}
!49 = distinct !{!49, !44, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!50 = !{!43, !38}
!51 = !{!49, !41, !46}
!52 = !{!49, !41}
!53 = !{!43, !38, !46}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!56 = distinct !{!56, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!57 = distinct !{!57, !58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!58 = distinct !{!58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!59 = !{!60, !61}
!60 = distinct !{!60, !56, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!61 = distinct !{!61, !58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!64 = distinct !{!64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!69 = distinct !{!69, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"cmpfunc: %a"}
!74 = distinct !{!74, !"cmpfunc"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"cmpfunc: %b"}
!77 = !{!73, !68, !63}
!78 = !{!76, !71, !66}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!81 = distinct !{!81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"cmpfunc: %a"}
!91 = distinct !{!91, !"cmpfunc"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"cmpfunc: %b"}
!94 = !{!90, !85, !80}
!95 = !{!93, !88, !83}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!98 = distinct !{!98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!103 = distinct !{!103, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"cmpfunc: %a"}
!108 = distinct !{!108, !"cmpfunc"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"cmpfunc: %b"}
!111 = !{!107, !102, !97}
!112 = !{!110, !105, !100}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!115 = distinct !{!115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!120 = distinct !{!120, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"cmpfunc: %a"}
!125 = distinct !{!125, !"cmpfunc"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"cmpfunc: %b"}
!128 = !{!124, !119, !114}
!129 = !{!127, !122, !117}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!132 = distinct !{!132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!137 = distinct !{!137, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"cmpfunc: %a"}
!142 = distinct !{!142, !"cmpfunc"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"cmpfunc: %b"}
!145 = !{!141, !136, !131}
!146 = !{!144, !139, !134}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!149 = distinct !{!149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!154 = distinct !{!154, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"cmpfunc: %a"}
!159 = distinct !{!159, !"cmpfunc"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"cmpfunc: %b"}
!162 = !{!158, !153, !148}
!163 = !{!161, !156, !151}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!166 = distinct !{!166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"cmpfunc: %a"}
!176 = distinct !{!176, !"cmpfunc"}
!177 = !{!178}
!178 = distinct !{!178, !176, !"cmpfunc: %b"}
!179 = !{!175, !170, !165}
!180 = !{!178, !173, !168}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!183 = distinct !{!183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!188 = distinct !{!188, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"cmpfunc: %a"}
!193 = distinct !{!193, !"cmpfunc"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"cmpfunc: %b"}
!196 = !{!192, !187, !182}
!197 = !{!195, !190, !185}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!200 = distinct !{!200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!205 = distinct !{!205, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"cmpfunc: %a"}
!210 = distinct !{!210, !"cmpfunc"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"cmpfunc: %b"}
!213 = !{!209, !204, !199}
!214 = !{!212, !207, !202}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!217 = distinct !{!217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!222 = distinct !{!222, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!223 = !{!224}
!224 = distinct !{!224, !222, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"cmpfunc: %a"}
!227 = distinct !{!227, !"cmpfunc"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"cmpfunc: %b"}
!230 = !{!226, !221, !216}
!231 = !{!229, !224, !219}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E: %v.0"}
!234 = distinct !{!234, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E"}
!235 = !{!236, !238, !240, !233}
!236 = distinct !{!236, !237, !"cmpfunc: %b"}
!237 = distinct !{!237, !"cmpfunc"}
!238 = distinct !{!238, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!239 = distinct !{!239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!240 = distinct !{!240, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!241 = distinct !{!241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!242 = !{!243, !244, !245, !246}
!243 = distinct !{!243, !237, !"cmpfunc: %a"}
!244 = distinct !{!244, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!245 = distinct !{!245, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!246 = distinct !{!246, !247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E: %_0"}
!247 = distinct !{!247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E"}
!248 = !{!246, !249, !233}
!249 = distinct !{!249, !247, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E: %is_less"}
!250 = !{!251, !253, !255, !233}
!251 = distinct !{!251, !252, !"cmpfunc: %b"}
!252 = distinct !{!252, !"cmpfunc"}
!253 = distinct !{!253, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!254 = distinct !{!254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!255 = distinct !{!255, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!256 = distinct !{!256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!257 = !{!258, !259, !260, !261}
!258 = distinct !{!258, !252, !"cmpfunc: %a"}
!259 = distinct !{!259, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!260 = distinct !{!260, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!261 = distinct !{!261, !262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E: %_0"}
!262 = distinct !{!262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E"}
!263 = !{!261, !264, !233}
!264 = distinct !{!264, !262, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E: %is_less"}
!265 = !{!266}
!266 = distinct !{!266, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It1"}
!267 = !{!268}
!268 = distinct !{!268, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It1"}
!269 = !{!270}
!270 = distinct !{!270, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It1"}
!271 = !{!246}
!272 = !{!273}
!273 = distinct !{!273, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It1"}
!274 = !{!275}
!275 = distinct !{!275, !237, !"cmpfunc: %a:It1"}
!276 = !{!277}
!277 = distinct !{!277, !237, !"cmpfunc: %b:It1"}
!278 = !{!275, !270, !266, !233}
!279 = !{!277, !273, !268, !246}
!280 = !{!277, !273, !268, !233}
!281 = !{!275, !270, !266, !246}
!282 = !{!283}
!283 = distinct !{!283, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It1"}
!284 = !{!285}
!285 = distinct !{!285, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It1"}
!286 = !{!287}
!287 = distinct !{!287, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It1"}
!288 = !{!261}
!289 = !{!290}
!290 = distinct !{!290, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It1"}
!291 = !{!292}
!292 = distinct !{!292, !252, !"cmpfunc: %a:It1"}
!293 = !{!294}
!294 = distinct !{!294, !252, !"cmpfunc: %b:It1"}
!295 = !{!292, !287, !283, !233}
!296 = !{!294, !290, !285, !261}
!297 = !{!294, !290, !285, !233}
!298 = !{!292, !287, !283, !261}
!299 = !{!300}
!300 = distinct !{!300, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It2"}
!301 = !{!302}
!302 = distinct !{!302, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It2"}
!303 = !{!304}
!304 = distinct !{!304, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It2"}
!305 = !{!306}
!306 = distinct !{!306, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It2"}
!307 = !{!308}
!308 = distinct !{!308, !237, !"cmpfunc: %a:It2"}
!309 = !{!310}
!310 = distinct !{!310, !237, !"cmpfunc: %b:It2"}
!311 = !{!308, !304, !300, !233}
!312 = !{!310, !306, !302, !246}
!313 = !{!310, !306, !302, !233}
!314 = !{!308, !304, !300, !246}
!315 = !{!316}
!316 = distinct !{!316, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It2"}
!317 = !{!318}
!318 = distinct !{!318, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It2"}
!319 = !{!320}
!320 = distinct !{!320, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It2"}
!321 = !{!322}
!322 = distinct !{!322, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It2"}
!323 = !{!324}
!324 = distinct !{!324, !252, !"cmpfunc: %a:It2"}
!325 = !{!326}
!326 = distinct !{!326, !252, !"cmpfunc: %b:It2"}
!327 = !{!324, !320, !316, !233}
!328 = !{!326, !322, !318, !261}
!329 = !{!326, !322, !318, !233}
!330 = !{!324, !320, !316, !261}
!331 = !{!332}
!332 = distinct !{!332, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It3"}
!333 = !{!334}
!334 = distinct !{!334, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It3"}
!335 = !{!336}
!336 = distinct !{!336, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It3"}
!337 = !{!338}
!338 = distinct !{!338, !239, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It3"}
!339 = !{!340}
!340 = distinct !{!340, !237, !"cmpfunc: %a:It3"}
!341 = !{!342}
!342 = distinct !{!342, !237, !"cmpfunc: %b:It3"}
!343 = !{!340, !336, !332, !233}
!344 = !{!342, !338, !334, !246}
!345 = !{!342, !338, !334, !233}
!346 = !{!340, !336, !332, !246}
!347 = !{!348}
!348 = distinct !{!348, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It3"}
!349 = !{!350}
!350 = distinct !{!350, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It3"}
!351 = !{!352}
!352 = distinct !{!352, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It3"}
!353 = !{!354}
!354 = distinct !{!354, !254, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It3"}
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
!365 = distinct !{!365, !366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!366 = distinct !{!366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!371 = distinct !{!371, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!374 = !{!370, !365}
!375 = !{!373, !368}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!378 = distinct !{!378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!383 = distinct !{!383, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!386 = !{!382, !377}
!387 = !{!385, !380}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!390 = distinct !{!390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!395 = distinct !{!395, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!398 = !{!394, !389}
!399 = !{!397, !392}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!402 = distinct !{!402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!407 = distinct !{!407, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!410 = !{!406, !401}
!411 = !{!409, !404}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!414 = distinct !{!414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!419 = distinct !{!419, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!422 = !{!418, !413}
!423 = !{!421, !416}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!426 = distinct !{!426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!431 = distinct !{!431, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!434 = !{!430, !425}
!435 = !{!433, !428}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!438 = distinct !{!438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!439 = !{!440}
!440 = distinct !{!440, !438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!443 = distinct !{!443, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!446 = !{!442, !437}
!447 = !{!445, !440}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!450 = distinct !{!450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!451 = !{!452}
!452 = distinct !{!452, !450, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!455 = distinct !{!455, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!456 = !{!457}
!457 = distinct !{!457, !455, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!458 = !{!454, !449}
!459 = !{!457, !452}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!462 = distinct !{!462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!467 = distinct !{!467, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!470 = !{!466, !461}
!471 = !{!469, !464}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!474 = distinct !{!474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!479 = distinct !{!479, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!482 = !{!478, !473}
!483 = !{!481, !476}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E: %v.0"}
!486 = distinct !{!486, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E"}
!487 = !{!488, !490, !485}
!488 = distinct !{!488, !489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE: %_0"}
!489 = distinct !{!489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE"}
!490 = distinct !{!490, !489, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE: %is_less"}
!491 = !{!492, !494, !485}
!492 = distinct !{!492, !493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E: %_0"}
!493 = distinct !{!493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E"}
!494 = distinct !{!494, !493, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E: %is_less"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It1"}
!497 = distinct !{!497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It1"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It1"}
!502 = distinct !{!502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!503 = !{!488}
!504 = !{!505}
!505 = distinct !{!505, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It1"}
!506 = !{!501, !496, !485}
!507 = !{!505, !499, !488}
!508 = !{!505, !499, !485}
!509 = !{!501, !496, !488}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It1"}
!512 = distinct !{!512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!513 = !{!514}
!514 = distinct !{!514, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It1"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It1"}
!517 = distinct !{!517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!518 = !{!492}
!519 = !{!520}
!520 = distinct !{!520, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It1"}
!521 = !{!516, !511, !485}
!522 = !{!520, !514, !492}
!523 = !{!520, !514, !485}
!524 = !{!516, !511, !492}
!525 = !{!526}
!526 = distinct !{!526, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It2"}
!527 = !{!528}
!528 = distinct !{!528, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It2"}
!529 = !{!530}
!530 = distinct !{!530, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It2"}
!531 = !{!532}
!532 = distinct !{!532, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It2"}
!533 = !{!530, !526, !485}
!534 = !{!532, !528, !488}
!535 = !{!532, !528, !485}
!536 = !{!530, !526, !488}
!537 = !{!538}
!538 = distinct !{!538, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It2"}
!539 = !{!540}
!540 = distinct !{!540, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It2"}
!541 = !{!542}
!542 = distinct !{!542, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It2"}
!543 = !{!544}
!544 = distinct !{!544, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It2"}
!545 = !{!542, !538, !485}
!546 = !{!544, !540, !492}
!547 = !{!544, !540, !485}
!548 = !{!542, !538, !492}
!549 = !{!550}
!550 = distinct !{!550, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It3"}
!551 = !{!552}
!552 = distinct !{!552, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It3"}
!553 = !{!554}
!554 = distinct !{!554, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It3"}
!555 = !{!556}
!556 = distinct !{!556, !502, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It3"}
!557 = !{!554, !550, !485}
!558 = !{!556, !552, !488}
!559 = !{!556, !552, !485}
!560 = !{!554, !550, !488}
!561 = !{!562}
!562 = distinct !{!562, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It3"}
!563 = !{!564}
!564 = distinct !{!564, !512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It3"}
!565 = !{!566}
!566 = distinct !{!566, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It3"}
!567 = !{!568}
!568 = distinct !{!568, !517, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It3"}
!569 = !{!566, !562, !485}
!570 = !{!568, !564, !492}
!571 = !{!568, !564, !485}
!572 = !{!566, !562, !492}
!573 = !{!"branch_weights", i32 2002, i32 2000}
!574 = !{!575, !577}
!575 = distinct !{!575, !576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he8ed65a6d4da527fE: %_0"}
!576 = distinct !{!576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he8ed65a6d4da527fE"}
!577 = distinct !{!577, !578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc3813fea1a630413E: %_0"}
!578 = distinct !{!578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc3813fea1a630413E"}
!579 = !{!580, !582, !584, !586}
!580 = distinct !{!580, !581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE: %self"}
!581 = distinct !{!581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE"}
!582 = distinct !{!582, !583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E: %self"}
!583 = distinct !{!583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E"}
!584 = distinct !{!584, !585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E: %_1"}
!585 = distinct !{!585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E"}
!586 = distinct !{!586, !587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE: %_1"}
!587 = distinct !{!587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE"}
!588 = !{!589, !591, !593, !595}
!589 = distinct !{!589, !590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE: %self"}
!590 = distinct !{!590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE"}
!591 = distinct !{!591, !592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E: %self"}
!592 = distinct !{!592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E"}
!593 = distinct !{!593, !594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E: %_1"}
!594 = distinct !{!594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E"}
!595 = distinct !{!595, !596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE: %_1"}
!596 = distinct !{!596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE"}
!597 = !{!598, !600}
!598 = distinct !{!598, !599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he8ed65a6d4da527fE: %_0"}
!599 = distinct !{!599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17he8ed65a6d4da527fE"}
!600 = distinct !{!600, !601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc3813fea1a630413E: %_0"}
!601 = distinct !{!601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc3813fea1a630413E"}
!602 = !{!603, !605, !607, !609}
!603 = distinct !{!603, !604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE: %self"}
!604 = distinct !{!604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE"}
!605 = distinct !{!605, !606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E: %self"}
!606 = distinct !{!606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E"}
!607 = distinct !{!607, !608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E: %_1"}
!608 = distinct !{!608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE"}
!611 = !{!612, !614, !616, !618}
!612 = distinct !{!612, !613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE: %self"}
!613 = distinct !{!613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h370bb097cd2d240eE"}
!614 = distinct !{!614, !615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E: %self"}
!615 = distinct !{!615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7d4655c756576e85E"}
!616 = distinct !{!616, !617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E: %_1"}
!617 = distinct !{!617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha4aa18ce2ee49120E"}
!618 = distinct !{!618, !619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE: %_1"}
!619 = distinct !{!619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h88ae36dd3f2549eaE"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!622 = distinct !{!622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!627 = distinct !{!627, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE: %scratch.0"}
!630 = distinct !{!630, !"_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE"}
!631 = !{!632}
!632 = distinct !{!632, !627, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!633 = !{!626, !621}
!634 = !{!632, !624, !629}
!635 = !{!632, !624}
!636 = !{!626, !621, !629}
!637 = !{!638, !640}
!638 = distinct !{!638, !639, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!639 = distinct !{!639, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!640 = distinct !{!640, !641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!641 = distinct !{!641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!642 = !{!643, !644, !629}
!643 = distinct !{!643, !639, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!644 = distinct !{!644, !641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!645 = !{!646, !648}
!646 = distinct !{!646, !647, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!647 = distinct !{!647, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!648 = distinct !{!648, !649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!649 = distinct !{!649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!650 = !{!651, !652, !629}
!651 = distinct !{!651, !647, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!652 = distinct !{!652, !649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE: %a.0"}
!655 = distinct !{!655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE"}
!656 = !{!629, !657}
!657 = distinct !{!657, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h947a78427763aacfE: %is_less"}
!658 = !{!659}
!659 = distinct !{!659, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE: %b.0"}
!660 = !{!654, !661}
!661 = distinct !{!661, !662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd17cdc5c916ccba1E: %self.0"}
!662 = distinct !{!662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd17cdc5c916ccba1E"}
!663 = !{!659, !629, !657}
!664 = !{!659, !661}
!665 = !{!654, !629, !657}
!666 = distinct !{!666, !667, !668}
!667 = !{!"llvm.loop.isvectorized", i32 1}
!668 = !{!"llvm.loop.unroll.runtime.disable"}
!669 = distinct !{!669, !668, !667}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE: %v.0"}
!672 = distinct !{!672, !"_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core5slice4sort6stable5merge5merge17h8856933039596bccE: %scratch.0"}
!675 = !{!671, !674}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!678 = distinct !{!678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!683 = distinct !{!683, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!686 = !{!682, !677, !674}
!687 = !{!685, !680, !688, !671}
!688 = distinct !{!688, !689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb0196561a254f021E: %self"}
!689 = distinct !{!689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb0196561a254f021E"}
!690 = !{!685, !680, !671}
!691 = !{!682, !677, !688, !674}
!692 = !{!688, !674}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!695 = distinct !{!695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!700 = distinct !{!700, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!701 = !{!702}
!702 = distinct !{!702, !700, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!703 = !{!699, !694, !671}
!704 = !{!702, !697, !705, !674}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h123bfc25dc28c0cdE: %self"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h123bfc25dc28c0cdE"}
!707 = !{!702, !697, !674}
!708 = !{!699, !694, !705, !671}
!709 = !{!705, !674}
!710 = !{!711, !713}
!711 = distinct !{!711, !712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05134da9ffa5d1d5E: %self"}
!712 = distinct !{!712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05134da9ffa5d1d5E"}
!713 = distinct !{!713, !714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h23ae13669a1f64c0E: %_1"}
!714 = distinct !{!714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h23ae13669a1f64c0E"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!717 = distinct !{!717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!718 = !{!719}
!719 = distinct !{!719, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!722 = distinct !{!722, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E: %scratch.0"}
!725 = distinct !{!725, !"_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E"}
!726 = !{!727}
!727 = distinct !{!727, !722, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"cmpfunc: %a"}
!730 = distinct !{!730, !"cmpfunc"}
!731 = !{!732}
!732 = distinct !{!732, !730, !"cmpfunc: %b"}
!733 = !{!729, !721, !716}
!734 = !{!732, !727, !719, !724}
!735 = !{!732, !727, !719}
!736 = !{!729, !721, !716, !724}
!737 = !{!738, !740, !742}
!738 = distinct !{!738, !739, !"cmpfunc: %a"}
!739 = distinct !{!739, !"cmpfunc"}
!740 = distinct !{!740, !741, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!741 = distinct !{!741, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!742 = distinct !{!742, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!743 = distinct !{!743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!744 = !{!745, !746, !747, !724}
!745 = distinct !{!745, !739, !"cmpfunc: %b"}
!746 = distinct !{!746, !741, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!747 = distinct !{!747, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!748 = !{!749, !751, !753}
!749 = distinct !{!749, !750, !"cmpfunc: %a"}
!750 = distinct !{!750, !"cmpfunc"}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!753 = distinct !{!753, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!754 = distinct !{!754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!755 = !{!756, !757, !758, !724}
!756 = distinct !{!756, !750, !"cmpfunc: %b"}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!758 = distinct !{!758, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE: %a.0"}
!761 = distinct !{!761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE"}
!762 = !{!724, !763}
!763 = distinct !{!763, !725, !"_ZN4core5slice4sort6stable5drift10create_run17h068cc184b2a48bc4E: %is_less"}
!764 = !{!765}
!765 = distinct !{!765, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17ha3de6aa490ac496cE: %b.0"}
!766 = !{!760, !767}
!767 = distinct !{!767, !768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd17cdc5c916ccba1E: %self.0"}
!768 = distinct !{!768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd17cdc5c916ccba1E"}
!769 = !{!765, !724, !763}
!770 = !{!765, !767}
!771 = !{!760, !724, !763}
!772 = distinct !{!772, !667, !668}
!773 = distinct !{!773, !668, !667}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E: %v.0"}
!776 = distinct !{!776, !"_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E"}
!777 = !{!778}
!778 = distinct !{!778, !776, !"_ZN4core5slice4sort6stable5merge5merge17hd2ba6f9ab550b0b2E: %scratch.0"}
!779 = !{!775, !778}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!782 = distinct !{!782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!787 = distinct !{!787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"cmpfunc: %a"}
!792 = distinct !{!792, !"cmpfunc"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"cmpfunc: %b"}
!795 = !{!791, !786, !781, !778}
!796 = !{!794, !789, !784, !797, !775}
!797 = distinct !{!797, !798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h21cb576fae34bd60E: %self"}
!798 = distinct !{!798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h21cb576fae34bd60E"}
!799 = !{!794, !789, !784, !775}
!800 = !{!791, !786, !781, !797, !778}
!801 = !{!797, !778}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!804 = distinct !{!804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!809 = distinct !{!809, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"cmpfunc: %a"}
!814 = distinct !{!814, !"cmpfunc"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"cmpfunc: %b"}
!817 = !{!813, !808, !803, !775}
!818 = !{!816, !811, !806, !819, !778}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5e010a7938265350E: %self"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5e010a7938265350E"}
!821 = !{!816, !811, !806, !778}
!822 = !{!813, !808, !803, !819, !775}
!823 = !{!819, !778}
!824 = !{!825, !827}
!825 = distinct !{!825, !826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05134da9ffa5d1d5E: %self"}
!826 = distinct !{!826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05134da9ffa5d1d5E"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h23ae13669a1f64c0E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h23ae13669a1f64c0E"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h03a9750deceafc36E: %v.0"}
!831 = distinct !{!831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h03a9750deceafc36E"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h03a9750deceafc36E: %scratch.0"}
!834 = !{!835}
!835 = distinct !{!835, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!836 = distinct !{!836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!837 = !{!838}
!838 = distinct !{!838, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!841 = distinct !{!841, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!842 = !{!843}
!843 = distinct !{!843, !841, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!844 = !{!840, !835, !830}
!845 = !{!843, !838, !833, !846}
!846 = distinct !{!846, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h03a9750deceafc36E: %is_less"}
!847 = !{!843, !838, !830}
!848 = !{!840, !835, !833, !846}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!851 = distinct !{!851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!852 = !{!853}
!853 = distinct !{!853, !851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!856 = distinct !{!856, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!859 = !{!855, !850, !830}
!860 = !{!858, !853, !833, !846}
!861 = !{!858, !853, !830}
!862 = !{!855, !850, !833, !846}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!865 = distinct !{!865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!866 = !{!867}
!867 = distinct !{!867, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!870 = distinct !{!870, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!871 = !{!872}
!872 = distinct !{!872, !870, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!873 = !{!869, !864, !830}
!874 = !{!872, !867, !833, !846}
!875 = !{!872, !867, !830}
!876 = !{!869, !864, !833, !846}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!884 = distinct !{!884, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!887 = !{!883, !878, !830}
!888 = !{!886, !881, !833, !846}
!889 = !{!886, !881, !830}
!890 = !{!883, !878, !833, !846}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!898 = distinct !{!898, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!901 = !{!897, !892, !830}
!902 = !{!900, !895, !833, !846}
!903 = !{!900, !895, !830}
!904 = !{!897, !892, !833, !846}
!905 = !{!830, !846}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!908 = distinct !{!908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!913 = distinct !{!913, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!916 = !{!912, !907, !830}
!917 = !{!915, !910, !833, !846}
!918 = !{!915, !910, !830}
!919 = !{!912, !907, !833, !846}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!922 = distinct !{!922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!925 = !{!926}
!926 = distinct !{!926, !927, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!927 = distinct !{!927, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!928 = !{!929}
!929 = distinct !{!929, !927, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!930 = !{!926, !921, !830}
!931 = !{!929, !924, !833, !846}
!932 = !{!929, !924, !830}
!933 = !{!926, !921, !833, !846}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!936 = distinct !{!936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!937 = !{!938}
!938 = distinct !{!938, !936, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!941 = distinct !{!941, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!942 = !{!943}
!943 = distinct !{!943, !941, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!944 = !{!940, !935, !830}
!945 = !{!943, !938, !833, !846}
!946 = !{!943, !938, !830}
!947 = !{!940, !935, !833, !846}
!948 = !{!949}
!949 = distinct !{!949, !950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!950 = distinct !{!950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!955 = distinct !{!955, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!958 = !{!954, !949, !830}
!959 = !{!957, !952, !833, !846}
!960 = !{!957, !952, !830}
!961 = !{!954, !949, !833, !846}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!964 = distinct !{!964, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!969 = distinct !{!969, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!972 = !{!968, !963, !830}
!973 = !{!971, !966, !833, !846}
!974 = !{!971, !966, !830}
!975 = !{!968, !963, !833, !846}
!976 = !{!833, !846}
!977 = !{!978, !980, !833}
!978 = distinct !{!978, !979, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!979 = distinct !{!979, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!980 = distinct !{!980, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!981 = distinct !{!981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!982 = !{!983, !984, !830, !846}
!983 = distinct !{!983, !979, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!984 = distinct !{!984, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!985 = !{!986, !988, !833}
!986 = distinct !{!986, !987, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!987 = distinct !{!987, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!988 = distinct !{!988, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!989 = distinct !{!989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!990 = !{!991, !992, !830, !846}
!991 = distinct !{!991, !987, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!992 = distinct !{!992, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!993 = !{!994, !996, !830, !846}
!994 = distinct !{!994, !995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!995 = distinct !{!995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!996 = distinct !{!996, !997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!997 = distinct !{!997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E: %v.0"}
!1000 = distinct !{!1000, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9dd1673a08827040E"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1003 = distinct !{!1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1008 = distinct !{!1008, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE: %_0"}
!1011 = distinct !{!1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1008, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1014 = !{!1007, !1002, !999, !833}
!1015 = !{!1013, !1005, !1010, !830, !846}
!1016 = !{!1013, !1005, !999, !833}
!1017 = !{!1007, !1002, !1010, !830, !846}
!1018 = !{!1010, !1019, !999, !833, !846}
!1019 = distinct !{!1019, !1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h62f42115aded989dE: %is_less"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1022 = distinct !{!1022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1027 = distinct !{!1027, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E: %_0"}
!1030 = distinct !{!1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1027, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1033 = !{!1026, !1021, !999, !833}
!1034 = !{!1032, !1024, !1029, !830, !846}
!1035 = !{!1032, !1024, !999, !833}
!1036 = !{!1026, !1021, !1029, !830, !846}
!1037 = !{!1029, !1038, !999, !833, !846}
!1038 = distinct !{!1038, !1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha4e0fe612d611701E: %is_less"}
!1039 = !{!999, !833}
!1040 = !{!999, !833, !846}
!1041 = !{!830, !833, !846}
!1042 = !{!830, !833}
!1043 = !{!1044, !1046, !846}
!1044 = distinct !{!1044, !1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!1045 = distinct !{!1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!1046 = distinct !{!1046, !1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!1047 = distinct !{!1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1050 = distinct !{!1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1055 = distinct !{!1055, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN4core5slice4sort6shared5pivot7median317hd4c81e6519b8a748E: %c"}
!1058 = distinct !{!1058, !"_ZN4core5slice4sort6shared5pivot7median317hd4c81e6519b8a748E"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1055, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1061 = !{!1054, !1049, !1062}
!1062 = distinct !{!1062, !1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6a6b561fff271704E: %v.0"}
!1063 = distinct !{!1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6a6b561fff271704E"}
!1064 = !{!1060, !1052, !1057, !1065}
!1065 = distinct !{!1065, !1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6a6b561fff271704E: %is_less"}
!1066 = !{!1060, !1052, !1062}
!1067 = !{!1054, !1049, !1057, !1065}
!1068 = !{!1069, !1071, !1062}
!1069 = distinct !{!1069, !1070, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1070 = distinct !{!1070, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1071 = distinct !{!1071, !1072, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1072 = distinct !{!1072, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1073 = !{!1074, !1075, !1065}
!1074 = distinct !{!1074, !1070, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1075 = distinct !{!1075, !1072, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1076 = !{!1077, !1079}
!1077 = distinct !{!1077, !1078, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1078 = distinct !{!1078, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1079 = distinct !{!1079, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1080 = distinct !{!1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1081 = !{!1082, !1083}
!1082 = distinct !{!1082, !1078, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1083 = distinct !{!1083, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b85f2d80dcfe1c7E: %v.0"}
!1086 = distinct !{!1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b85f2d80dcfe1c7E"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b85f2d80dcfe1c7E: %scratch.0"}
!1089 = !{!1090, !1092, !1085}
!1090 = distinct !{!1090, !1091, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1091 = distinct !{!1091, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1093 = distinct !{!1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1094 = !{!1095, !1096, !1088}
!1095 = distinct !{!1095, !1091, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1096 = distinct !{!1096, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1097 = !{!1096}
!1098 = !{!1092}
!1099 = !{!1095}
!1100 = !{!1090}
!1101 = !{!1095, !1096, !1085}
!1102 = !{!1090, !1092, !1088}
!1103 = !{!1104, !1085}
!1104 = distinct !{!1104, !1105, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1105 = distinct !{!1105, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1106 = !{!1107, !1109, !1085}
!1107 = distinct !{!1107, !1108, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1108 = distinct !{!1108, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1109 = distinct !{!1109, !1110, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1110 = distinct !{!1110, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1111 = !{!1112, !1113, !1088}
!1112 = distinct !{!1112, !1108, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1113 = distinct !{!1113, !1110, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1114 = !{!1115, !1085}
!1115 = distinct !{!1115, !1116, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1116 = distinct !{!1116, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1117 = !{!1118, !1120, !1085}
!1118 = distinct !{!1118, !1119, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1119 = distinct !{!1119, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1120 = distinct !{!1120, !1121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1121 = distinct !{!1121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1122 = !{!1123, !1124, !1088}
!1123 = distinct !{!1123, !1119, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1124 = distinct !{!1124, !1121, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1125 = !{!1126, !1085}
!1126 = distinct !{!1126, !1127, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1127 = distinct !{!1127, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1128 = !{!1129, !1131, !1085}
!1129 = distinct !{!1129, !1130, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1130 = distinct !{!1130, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1131 = distinct !{!1131, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1132 = distinct !{!1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1133 = !{!1134, !1135, !1088}
!1134 = distinct !{!1134, !1130, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1135 = distinct !{!1135, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1136 = !{!1137, !1085}
!1137 = distinct !{!1137, !1138, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1138 = distinct !{!1138, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1139 = !{!1140, !1142, !1085}
!1140 = distinct !{!1140, !1141, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1141 = distinct !{!1141, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1142 = distinct !{!1142, !1143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1143 = distinct !{!1143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1144 = !{!1145, !1146, !1088}
!1145 = distinct !{!1145, !1141, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1146 = distinct !{!1146, !1143, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1147 = !{!1146}
!1148 = !{!1142}
!1149 = !{!1145}
!1150 = !{!1140}
!1151 = !{!1145, !1146, !1085}
!1152 = !{!1140, !1142, !1088}
!1153 = !{!1154, !1085}
!1154 = distinct !{!1154, !1155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1155 = distinct !{!1155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1156 = !{!1157, !1088}
!1157 = distinct !{!1157, !1158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1158 = distinct !{!1158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1159 = !{!1157, !1085}
!1160 = !{!1085, !1088}
!1161 = distinct !{!1161, !667, !668}
!1162 = distinct !{!1162, !668, !667}
!1163 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1164 = !{!1165, !1167}
!1165 = distinct !{!1165, !1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E: %pair"}
!1166 = distinct !{!1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E"}
!1167 = distinct !{!1167, !1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E: %self.0"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E: %v.0"}
!1170 = distinct !{!1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb86ccb0438f16e12E: %scratch.0"}
!1173 = !{!1174, !1176, !1178, !1169}
!1174 = distinct !{!1174, !1175, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1175 = distinct !{!1175, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1176 = distinct !{!1176, !1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1177 = distinct !{!1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1178 = distinct !{!1178, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %b"}
!1179 = distinct !{!1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE"}
!1180 = !{!1181, !1182, !1183, !1172}
!1181 = distinct !{!1181, !1175, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1182 = distinct !{!1182, !1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1183 = distinct !{!1183, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %a"}
!1184 = !{!1183}
!1185 = !{!1178}
!1186 = !{!1176}
!1187 = !{!1182}
!1188 = !{!1174}
!1189 = !{!1181}
!1190 = !{!1181, !1182, !1183, !1169}
!1191 = !{!1174, !1176, !1178, !1172}
!1192 = !{!1193, !1169}
!1193 = distinct !{!1193, !1194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1194 = distinct !{!1194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1195 = !{!1196, !1198, !1200, !1169}
!1196 = distinct !{!1196, !1197, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1197 = distinct !{!1197, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1198 = distinct !{!1198, !1199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1199 = distinct !{!1199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1200 = distinct !{!1200, !1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %a"}
!1201 = distinct !{!1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE"}
!1202 = !{!1203, !1204, !1205, !1172}
!1203 = distinct !{!1203, !1197, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1204 = distinct !{!1204, !1199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1205 = distinct !{!1205, !1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %b"}
!1206 = !{!1207, !1169}
!1207 = distinct !{!1207, !1208, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1208 = distinct !{!1208, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1209 = !{!1210, !1212, !1214, !1169}
!1210 = distinct !{!1210, !1211, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1211 = distinct !{!1211, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1212 = distinct !{!1212, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1213 = distinct !{!1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1214 = distinct !{!1214, !1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %a"}
!1215 = distinct !{!1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE"}
!1216 = !{!1217, !1218, !1219, !1172}
!1217 = distinct !{!1217, !1211, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1218 = distinct !{!1218, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1219 = distinct !{!1219, !1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %b"}
!1220 = !{!1221, !1169}
!1221 = distinct !{!1221, !1222, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1222 = distinct !{!1222, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1223 = !{!1224, !1226, !1228, !1169}
!1224 = distinct !{!1224, !1225, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1225 = distinct !{!1225, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1226 = distinct !{!1226, !1227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1227 = distinct !{!1227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1228 = distinct !{!1228, !1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %a"}
!1229 = distinct !{!1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE"}
!1230 = !{!1231, !1232, !1233, !1172}
!1231 = distinct !{!1231, !1225, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1232 = distinct !{!1232, !1227, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1233 = distinct !{!1233, !1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %b"}
!1234 = !{!1235, !1169}
!1235 = distinct !{!1235, !1236, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1236 = distinct !{!1236, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1237 = !{!1238, !1240, !1242, !1169}
!1238 = distinct !{!1238, !1239, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1239 = distinct !{!1239, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1240 = distinct !{!1240, !1241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1241 = distinct !{!1241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1242 = distinct !{!1242, !1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %b"}
!1243 = distinct !{!1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE"}
!1244 = !{!1245, !1246, !1247, !1172}
!1245 = distinct !{!1245, !1239, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1246 = distinct !{!1246, !1241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1247 = distinct !{!1247, !1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h42570157893953ecE: %a"}
!1248 = !{!1247}
!1249 = !{!1242}
!1250 = !{!1240}
!1251 = !{!1246}
!1252 = !{!1238}
!1253 = !{!1245}
!1254 = !{!1245, !1246, !1247, !1169}
!1255 = !{!1238, !1240, !1242, !1172}
!1256 = !{!1257, !1169}
!1257 = distinct !{!1257, !1258, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1258 = distinct !{!1258, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1259 = !{!1260, !1172}
!1260 = distinct !{!1260, !1261, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1261 = distinct !{!1261, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1262 = !{!1260, !1169}
!1263 = !{!1169, !1172}
!1264 = distinct !{!1264, !667, !668}
!1265 = distinct !{!1265, !668, !667}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f858bdeae10145cE: %v.0"}
!1268 = distinct !{!1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f858bdeae10145cE"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f858bdeae10145cE: %scratch.0"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1273 = distinct !{!1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1278 = distinct !{!1278, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"cmpfunc: %a"}
!1283 = distinct !{!1283, !"cmpfunc"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"cmpfunc: %b"}
!1286 = !{!1282, !1277, !1272, !1267}
!1287 = !{!1285, !1280, !1275, !1270, !1288}
!1288 = distinct !{!1288, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f858bdeae10145cE: %is_less"}
!1289 = !{!1285, !1280, !1275, !1267}
!1290 = !{!1282, !1277, !1272, !1270, !1288}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1293 = distinct !{!1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1298 = distinct !{!1298, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"cmpfunc: %a"}
!1303 = distinct !{!1303, !"cmpfunc"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"cmpfunc: %b"}
!1306 = !{!1302, !1297, !1292, !1267}
!1307 = !{!1305, !1300, !1295, !1270, !1288}
!1308 = !{!1305, !1300, !1295, !1267}
!1309 = !{!1302, !1297, !1292, !1270, !1288}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1312 = distinct !{!1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1317 = distinct !{!1317, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"cmpfunc: %a"}
!1322 = distinct !{!1322, !"cmpfunc"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1322, !"cmpfunc: %b"}
!1325 = !{!1321, !1316, !1311, !1267}
!1326 = !{!1324, !1319, !1314, !1270, !1288}
!1327 = !{!1324, !1319, !1314, !1267}
!1328 = !{!1321, !1316, !1311, !1270, !1288}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1331 = distinct !{!1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1336 = distinct !{!1336, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"cmpfunc: %a"}
!1341 = distinct !{!1341, !"cmpfunc"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"cmpfunc: %b"}
!1344 = !{!1340, !1335, !1330, !1267}
!1345 = !{!1343, !1338, !1333, !1270, !1288}
!1346 = !{!1343, !1338, !1333, !1267}
!1347 = !{!1340, !1335, !1330, !1270, !1288}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1350 = distinct !{!1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1355 = distinct !{!1355, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"cmpfunc: %a"}
!1360 = distinct !{!1360, !"cmpfunc"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1360, !"cmpfunc: %b"}
!1363 = !{!1359, !1354, !1349, !1267}
!1364 = !{!1362, !1357, !1352, !1270, !1288}
!1365 = !{!1362, !1357, !1352, !1267}
!1366 = !{!1359, !1354, !1349, !1270, !1288}
!1367 = !{!1267, !1288}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1370 = distinct !{!1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1375 = distinct !{!1375, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1375, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"cmpfunc: %a"}
!1380 = distinct !{!1380, !"cmpfunc"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"cmpfunc: %b"}
!1383 = !{!1379, !1374, !1369, !1267}
!1384 = !{!1382, !1377, !1372, !1270, !1288}
!1385 = !{!1382, !1377, !1372, !1267}
!1386 = !{!1379, !1374, !1369, !1270, !1288}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1394 = distinct !{!1394, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"cmpfunc: %a"}
!1399 = distinct !{!1399, !"cmpfunc"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"cmpfunc: %b"}
!1402 = !{!1398, !1393, !1388, !1267}
!1403 = !{!1401, !1396, !1391, !1270, !1288}
!1404 = !{!1401, !1396, !1391, !1267}
!1405 = !{!1398, !1393, !1388, !1270, !1288}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1408 = distinct !{!1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1413 = distinct !{!1413, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1416 = !{!1417}
!1417 = distinct !{!1417, !1418, !"cmpfunc: %a"}
!1418 = distinct !{!1418, !"cmpfunc"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1418, !"cmpfunc: %b"}
!1421 = !{!1417, !1412, !1407, !1267}
!1422 = !{!1420, !1415, !1410, !1270, !1288}
!1423 = !{!1420, !1415, !1410, !1267}
!1424 = !{!1417, !1412, !1407, !1270, !1288}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1427 = distinct !{!1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1432, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1432 = distinct !{!1432, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1432, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1437, !"cmpfunc: %a"}
!1437 = distinct !{!1437, !"cmpfunc"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1437, !"cmpfunc: %b"}
!1440 = !{!1436, !1431, !1426, !1267}
!1441 = !{!1439, !1434, !1429, !1270, !1288}
!1442 = !{!1439, !1434, !1429, !1267}
!1443 = !{!1436, !1431, !1426, !1270, !1288}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1446 = distinct !{!1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1451, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1451 = distinct !{!1451, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1451, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1456, !"cmpfunc: %a"}
!1456 = distinct !{!1456, !"cmpfunc"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1456, !"cmpfunc: %b"}
!1459 = !{!1455, !1450, !1445, !1267}
!1460 = !{!1458, !1453, !1448, !1270, !1288}
!1461 = !{!1458, !1453, !1448, !1267}
!1462 = !{!1455, !1450, !1445, !1270, !1288}
!1463 = !{!1270, !1288}
!1464 = !{!1465, !1467, !1469, !1270}
!1465 = distinct !{!1465, !1466, !"cmpfunc: %b"}
!1466 = distinct !{!1466, !"cmpfunc"}
!1467 = distinct !{!1467, !1468, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1468 = distinct !{!1468, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1469 = distinct !{!1469, !1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1470 = distinct !{!1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1471 = !{!1472, !1473, !1474, !1267, !1288}
!1472 = distinct !{!1472, !1466, !"cmpfunc: %a"}
!1473 = distinct !{!1473, !1468, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1474 = distinct !{!1474, !1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1475 = !{!1476, !1478, !1480, !1270}
!1476 = distinct !{!1476, !1477, !"cmpfunc: %b"}
!1477 = distinct !{!1477, !"cmpfunc"}
!1478 = distinct !{!1478, !1479, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1479 = distinct !{!1479, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1480 = distinct !{!1480, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1481 = distinct !{!1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1482 = !{!1483, !1484, !1485, !1267, !1288}
!1483 = distinct !{!1483, !1477, !"cmpfunc: %a"}
!1484 = distinct !{!1484, !1479, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1485 = distinct !{!1485, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1486 = !{!1487, !1489, !1267, !1288}
!1487 = distinct !{!1487, !1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!1488 = distinct !{!1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!1489 = distinct !{!1489, !1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!1490 = distinct !{!1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E: %v.0"}
!1493 = distinct !{!1493, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h224456c3ba9b3ab5E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1496 = distinct !{!1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1501 = distinct !{!1501, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E: %_0"}
!1504 = distinct !{!1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1501, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"cmpfunc: %a"}
!1509 = distinct !{!1509, !"cmpfunc"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"cmpfunc: %b"}
!1512 = !{!1508, !1500, !1495, !1492, !1270}
!1513 = !{!1511, !1506, !1498, !1503, !1267, !1288}
!1514 = !{!1511, !1506, !1498, !1492, !1270}
!1515 = !{!1508, !1500, !1495, !1503, !1267, !1288}
!1516 = !{!1503, !1517, !1492, !1270, !1288}
!1517 = distinct !{!1517, !1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h43179e2abb7cd318E: %is_less"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1520 = distinct !{!1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1525, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1525 = distinct !{!1525, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E: %_0"}
!1528 = distinct !{!1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1525, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1533, !"cmpfunc: %a"}
!1533 = distinct !{!1533, !"cmpfunc"}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1533, !"cmpfunc: %b"}
!1536 = !{!1532, !1524, !1519, !1492, !1270}
!1537 = !{!1535, !1530, !1522, !1527, !1267, !1288}
!1538 = !{!1535, !1530, !1522, !1492, !1270}
!1539 = !{!1532, !1524, !1519, !1527, !1267, !1288}
!1540 = !{!1527, !1541, !1492, !1270, !1288}
!1541 = distinct !{!1541, !1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h66d8295668304647E: %is_less"}
!1542 = !{!1492, !1270}
!1543 = !{!1492, !1270, !1288}
!1544 = !{!1267, !1270, !1288}
!1545 = !{!1267, !1270}
!1546 = !{!1547, !1549, !1288}
!1547 = distinct !{!1547, !1548, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!1548 = distinct !{!1548, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!1549 = distinct !{!1549, !1550, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!1550 = distinct !{!1550, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1553 = distinct !{!1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1558, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1558 = distinct !{!1558, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZN4core5slice4sort6shared5pivot7median317h9a5931089ad13146E: %c"}
!1561 = distinct !{!1561, !"_ZN4core5slice4sort6shared5pivot7median317h9a5931089ad13146E"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1558, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"cmpfunc: %a"}
!1566 = distinct !{!1566, !"cmpfunc"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1566, !"cmpfunc: %b"}
!1569 = !{!1565, !1557, !1552, !1570}
!1570 = distinct !{!1570, !1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0bb4126e07e7f544E: %v.0"}
!1571 = distinct !{!1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0bb4126e07e7f544E"}
!1572 = !{!1568, !1563, !1555, !1560, !1573}
!1573 = distinct !{!1573, !1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0bb4126e07e7f544E: %is_less"}
!1574 = !{!1568, !1563, !1555, !1570}
!1575 = !{!1565, !1557, !1552, !1560, !1573}
!1576 = !{!1577, !1579, !1581, !1570}
!1577 = distinct !{!1577, !1578, !"cmpfunc: %b"}
!1578 = distinct !{!1578, !"cmpfunc"}
!1579 = distinct !{!1579, !1580, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1580 = distinct !{!1580, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1581 = distinct !{!1581, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1582 = distinct !{!1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1583 = !{!1584, !1585, !1586, !1573}
!1584 = distinct !{!1584, !1578, !"cmpfunc: %a"}
!1585 = distinct !{!1585, !1580, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1586 = distinct !{!1586, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1587 = !{!1588, !1590, !1592}
!1588 = distinct !{!1588, !1589, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !"cmpfunc"}
!1590 = distinct !{!1590, !1591, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1591 = distinct !{!1591, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1592 = distinct !{!1592, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1593 = distinct !{!1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1594 = !{!1595, !1596, !1597}
!1595 = distinct !{!1595, !1589, !"cmpfunc: %b"}
!1596 = distinct !{!1596, !1591, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1597 = distinct !{!1597, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hff295911feea74d0E: %v.0"}
!1600 = distinct !{!1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hff295911feea74d0E"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hff295911feea74d0E: %scratch.0"}
!1603 = !{!1604, !1606, !1608, !1599}
!1604 = distinct !{!1604, !1605, !"cmpfunc: %b"}
!1605 = distinct !{!1605, !"cmpfunc"}
!1606 = distinct !{!1606, !1607, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1607 = distinct !{!1607, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1608 = distinct !{!1608, !1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1609 = distinct !{!1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1610 = !{!1611, !1612, !1613, !1602}
!1611 = distinct !{!1611, !1605, !"cmpfunc: %a"}
!1612 = distinct !{!1612, !1607, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1613 = distinct !{!1613, !1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1614 = !{!1613}
!1615 = !{!1608}
!1616 = !{!1612}
!1617 = !{!1606}
!1618 = !{!1611}
!1619 = !{!1604}
!1620 = !{!1611, !1612, !1613, !1599}
!1621 = !{!1604, !1606, !1608, !1602}
!1622 = !{!1623, !1599}
!1623 = distinct !{!1623, !1624, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1624 = distinct !{!1624, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1625 = !{!1626, !1628, !1630, !1599}
!1626 = distinct !{!1626, !1627, !"cmpfunc: %a"}
!1627 = distinct !{!1627, !"cmpfunc"}
!1628 = distinct !{!1628, !1629, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1629 = distinct !{!1629, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1630 = distinct !{!1630, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1631 = distinct !{!1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1632 = !{!1633, !1634, !1635, !1602}
!1633 = distinct !{!1633, !1627, !"cmpfunc: %b"}
!1634 = distinct !{!1634, !1629, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1635 = distinct !{!1635, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1636 = !{!1637, !1599}
!1637 = distinct !{!1637, !1638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1638 = distinct !{!1638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1639 = !{!1640, !1642, !1644, !1599}
!1640 = distinct !{!1640, !1641, !"cmpfunc: %a"}
!1641 = distinct !{!1641, !"cmpfunc"}
!1642 = distinct !{!1642, !1643, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1643 = distinct !{!1643, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1644 = distinct !{!1644, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1645 = distinct !{!1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1646 = !{!1647, !1648, !1649, !1602}
!1647 = distinct !{!1647, !1641, !"cmpfunc: %b"}
!1648 = distinct !{!1648, !1643, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1649 = distinct !{!1649, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1650 = !{!1651, !1599}
!1651 = distinct !{!1651, !1652, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1652 = distinct !{!1652, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1653 = !{!1654, !1656, !1658, !1599}
!1654 = distinct !{!1654, !1655, !"cmpfunc: %a"}
!1655 = distinct !{!1655, !"cmpfunc"}
!1656 = distinct !{!1656, !1657, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1657 = distinct !{!1657, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1658 = distinct !{!1658, !1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1659 = distinct !{!1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1660 = !{!1661, !1662, !1663, !1602}
!1661 = distinct !{!1661, !1655, !"cmpfunc: %b"}
!1662 = distinct !{!1662, !1657, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1663 = distinct !{!1663, !1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1664 = !{!1665, !1599}
!1665 = distinct !{!1665, !1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1666 = distinct !{!1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1667 = !{!1668, !1670, !1672, !1599}
!1668 = distinct !{!1668, !1669, !"cmpfunc: %b"}
!1669 = distinct !{!1669, !"cmpfunc"}
!1670 = distinct !{!1670, !1671, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1671 = distinct !{!1671, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1672 = distinct !{!1672, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1673 = distinct !{!1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1674 = !{!1675, !1676, !1677, !1602}
!1675 = distinct !{!1675, !1669, !"cmpfunc: %a"}
!1676 = distinct !{!1676, !1671, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1677 = distinct !{!1677, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1678 = !{!1677}
!1679 = !{!1672}
!1680 = !{!1676}
!1681 = !{!1670}
!1682 = !{!1675}
!1683 = !{!1668}
!1684 = !{!1675, !1676, !1677, !1599}
!1685 = !{!1668, !1670, !1672, !1602}
!1686 = !{!1687, !1599}
!1687 = distinct !{!1687, !1688, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1688 = distinct !{!1688, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1689 = !{!1690, !1602}
!1690 = distinct !{!1690, !1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1691 = distinct !{!1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1692 = !{!1690, !1599}
!1693 = !{!1599, !1602}
!1694 = distinct !{!1694, !667, !668}
!1695 = distinct !{!1695, !668, !667}
!1696 = !{!1697, !1699}
!1697 = distinct !{!1697, !1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E: %pair"}
!1698 = distinct !{!1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E"}
!1699 = distinct !{!1699, !1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h9694744ae55560c1E: %self.0"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E: %v.0"}
!1702 = distinct !{!1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbc0030d22bf60613E: %scratch.0"}
!1705 = !{!1706, !1708, !1710, !1712, !1701}
!1706 = distinct !{!1706, !1707, !"cmpfunc: %a"}
!1707 = distinct !{!1707, !"cmpfunc"}
!1708 = distinct !{!1708, !1709, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1709 = distinct !{!1709, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1710 = distinct !{!1710, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1711 = distinct !{!1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1712 = distinct !{!1712, !1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %b"}
!1713 = distinct !{!1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E"}
!1714 = !{!1715, !1716, !1717, !1718, !1704}
!1715 = distinct !{!1715, !1707, !"cmpfunc: %b"}
!1716 = distinct !{!1716, !1709, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1717 = distinct !{!1717, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1718 = distinct !{!1718, !1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %a"}
!1719 = !{!1718}
!1720 = !{!1712}
!1721 = !{!1710}
!1722 = !{!1717}
!1723 = !{!1708}
!1724 = !{!1716}
!1725 = !{!1706}
!1726 = !{!1715}
!1727 = !{!1715, !1716, !1717, !1718, !1701}
!1728 = !{!1706, !1708, !1710, !1712, !1704}
!1729 = !{!1730, !1701}
!1730 = distinct !{!1730, !1731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1731 = distinct !{!1731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1732 = !{!1733, !1735, !1737, !1739, !1701}
!1733 = distinct !{!1733, !1734, !"cmpfunc: %b"}
!1734 = distinct !{!1734, !"cmpfunc"}
!1735 = distinct !{!1735, !1736, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1736 = distinct !{!1736, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1737 = distinct !{!1737, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1738 = distinct !{!1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1739 = distinct !{!1739, !1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %a"}
!1740 = distinct !{!1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E"}
!1741 = !{!1742, !1743, !1744, !1745, !1704}
!1742 = distinct !{!1742, !1734, !"cmpfunc: %a"}
!1743 = distinct !{!1743, !1736, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1744 = distinct !{!1744, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1745 = distinct !{!1745, !1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %b"}
!1746 = !{!1747, !1701}
!1747 = distinct !{!1747, !1748, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1748 = distinct !{!1748, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1749 = !{!1750, !1752, !1754, !1756, !1701}
!1750 = distinct !{!1750, !1751, !"cmpfunc: %b"}
!1751 = distinct !{!1751, !"cmpfunc"}
!1752 = distinct !{!1752, !1753, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1753 = distinct !{!1753, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1754 = distinct !{!1754, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1755 = distinct !{!1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1756 = distinct !{!1756, !1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %a"}
!1757 = distinct !{!1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E"}
!1758 = !{!1759, !1760, !1761, !1762, !1704}
!1759 = distinct !{!1759, !1751, !"cmpfunc: %a"}
!1760 = distinct !{!1760, !1753, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1761 = distinct !{!1761, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1762 = distinct !{!1762, !1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %b"}
!1763 = !{!1764, !1701}
!1764 = distinct !{!1764, !1765, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1765 = distinct !{!1765, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1766 = !{!1767, !1769, !1771, !1773, !1701}
!1767 = distinct !{!1767, !1768, !"cmpfunc: %b"}
!1768 = distinct !{!1768, !"cmpfunc"}
!1769 = distinct !{!1769, !1770, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1770 = distinct !{!1770, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1771 = distinct !{!1771, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1772 = distinct !{!1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1773 = distinct !{!1773, !1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %a"}
!1774 = distinct !{!1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E"}
!1775 = !{!1776, !1777, !1778, !1779, !1704}
!1776 = distinct !{!1776, !1768, !"cmpfunc: %a"}
!1777 = distinct !{!1777, !1770, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1778 = distinct !{!1778, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1779 = distinct !{!1779, !1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %b"}
!1780 = !{!1781, !1701}
!1781 = distinct !{!1781, !1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1782 = distinct !{!1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1783 = !{!1784, !1786, !1788, !1790, !1701}
!1784 = distinct !{!1784, !1785, !"cmpfunc: %a"}
!1785 = distinct !{!1785, !"cmpfunc"}
!1786 = distinct !{!1786, !1787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1787 = distinct !{!1787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1788 = distinct !{!1788, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1789 = distinct !{!1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1790 = distinct !{!1790, !1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %b"}
!1791 = distinct !{!1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E"}
!1792 = !{!1793, !1794, !1795, !1796, !1704}
!1793 = distinct !{!1793, !1785, !"cmpfunc: %b"}
!1794 = distinct !{!1794, !1787, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1795 = distinct !{!1795, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1796 = distinct !{!1796, !1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hddb082a0c334e148E: %a"}
!1797 = !{!1796}
!1798 = !{!1790}
!1799 = !{!1788}
!1800 = !{!1795}
!1801 = !{!1786}
!1802 = !{!1794}
!1803 = !{!1784}
!1804 = !{!1793}
!1805 = !{!1793, !1794, !1795, !1796, !1701}
!1806 = !{!1784, !1786, !1788, !1790, !1704}
!1807 = !{!1808, !1701}
!1808 = distinct !{!1808, !1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1809 = distinct !{!1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1810 = !{!1811, !1704}
!1811 = distinct !{!1811, !1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E: %self"}
!1812 = distinct !{!1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hb6abb9b6cf876fc8E"}
!1813 = !{!1811, !1701}
!1814 = !{!1701, !1704}
!1815 = distinct !{!1815, !667, !668}
!1816 = distinct !{!1816, !668, !667}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1819, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE: %self.0"}
!1819 = distinct !{!1819, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h6a0164226d671befE"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1822, !"_ZN5alloc5slice11stable_sort17h501cceedd28551ddE: %v.0"}
!1822 = distinct !{!1822, !"_ZN5alloc5slice11stable_sort17h501cceedd28551ddE"}
!1823 = !{!1821, !1824, !1818}
!1824 = distinct !{!1824, !1822, !"_ZN5alloc5slice11stable_sort17h501cceedd28551ddE: argument 1"}
!1825 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1826 = !{!1827}
!1827 = distinct !{!1827, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1828 = distinct !{!1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1829 = !{!1830}
!1830 = distinct !{!1830, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1833 = distinct !{!1833, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1834 = !{!1835}
!1835 = distinct !{!1835, !1833, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1836 = !{!1832, !1827, !1837, !1821, !1818}
!1837 = distinct !{!1837, !1838, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17heba270f41190bbb9E: %v.0"}
!1838 = distinct !{!1838, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17heba270f41190bbb9E"}
!1839 = !{!1835, !1830, !1824}
!1840 = !{!1835, !1830, !1837, !1821, !1818}
!1841 = !{!1832, !1827, !1824}
!1842 = !{!1837, !1821, !1818}
!1843 = !{!1824}
!1844 = !{!1845, !1847, !1837, !1821, !1818}
!1845 = distinct !{!1845, !1846, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b"}
!1846 = distinct !{!1846, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E"}
!1847 = distinct !{!1847, !1848, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b"}
!1848 = distinct !{!1848, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E"}
!1849 = !{!1850, !1851, !1824}
!1850 = distinct !{!1850, !1846, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a"}
!1851 = distinct !{!1851, !1848, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a"}
!1852 = !{!1853, !1855, !1824}
!1853 = distinct !{!1853, !1854, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!1854 = distinct !{!1854, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!1855 = distinct !{!1855, !1856, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!1856 = distinct !{!1856, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %a:It1"}
!1859 = !{!1860}
!1860 = distinct !{!1860, !1828, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha6f2eb113abebb29E: %b:It1"}
!1861 = !{!1862}
!1862 = distinct !{!1862, !1833, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %a:It1"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1833, !"_ZN50MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4297b2c0a1919513E: %b:It1"}
!1865 = !{!1862, !1858, !1837, !1821, !1818}
!1866 = !{!1864, !1860, !1824}
!1867 = !{!1864, !1860, !1837, !1821, !1818}
!1868 = !{!1862, !1858, !1824}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E: %self.0"}
!1871 = distinct !{!1871, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1829e709caf06742E"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1874, !"_ZN5alloc5slice11stable_sort17h8a41538b6bc21d9bE: %v.0"}
!1874 = distinct !{!1874, !"_ZN5alloc5slice11stable_sort17h8a41538b6bc21d9bE"}
!1875 = !{!1873, !1876, !1870}
!1876 = distinct !{!1876, !1874, !"_ZN5alloc5slice11stable_sort17h8a41538b6bc21d9bE: argument 1"}
!1877 = !{!1878}
!1878 = distinct !{!1878, !1879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1879 = distinct !{!1879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1882 = !{!1883}
!1883 = distinct !{!1883, !1884, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1884 = distinct !{!1884, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1885 = !{!1886}
!1886 = distinct !{!1886, !1884, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1887 = !{!1888}
!1888 = distinct !{!1888, !1889, !"cmpfunc: %a"}
!1889 = distinct !{!1889, !"cmpfunc"}
!1890 = !{!1891}
!1891 = distinct !{!1891, !1889, !"cmpfunc: %b"}
!1892 = !{!1888, !1883, !1878, !1893, !1873, !1870}
!1893 = distinct !{!1893, !1894, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb314bd8f19f94a18E: %v.0"}
!1894 = distinct !{!1894, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb314bd8f19f94a18E"}
!1895 = !{!1891, !1886, !1881, !1876}
!1896 = !{!1891, !1886, !1881, !1893, !1873, !1870}
!1897 = !{!1888, !1883, !1878, !1876}
!1898 = !{!1893, !1873, !1870}
!1899 = !{!1876}
!1900 = !{!1901, !1903, !1905, !1893, !1873, !1870}
!1901 = distinct !{!1901, !1902, !"cmpfunc: %b"}
!1902 = distinct !{!1902, !"cmpfunc"}
!1903 = distinct !{!1903, !1904, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1"}
!1904 = distinct !{!1904, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E"}
!1905 = distinct !{!1905, !1906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b"}
!1906 = distinct !{!1906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E"}
!1907 = !{!1908, !1909, !1910, !1876}
!1908 = distinct !{!1908, !1902, !"cmpfunc: %a"}
!1909 = distinct !{!1909, !1904, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0"}
!1910 = distinct !{!1910, !1906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a"}
!1911 = !{!1912, !1914, !1876}
!1912 = distinct !{!1912, !1913, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E: %self"}
!1913 = distinct !{!1913, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h794db4f3d75b30f2E"}
!1914 = distinct !{!1914, !1915, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE: %_1"}
!1915 = distinct !{!1915, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h743edd1c4ec3684cE"}
!1916 = !{!1917}
!1917 = distinct !{!1917, !1879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %a:It1"}
!1918 = !{!1919}
!1919 = distinct !{!1919, !1879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h43f1a7b4131bef50E: %b:It1"}
!1920 = !{!1921}
!1921 = distinct !{!1921, !1884, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 0:It1"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1884, !"_ZN4core3ops8function5FnMut8call_mut17hdd489653e53a53d3E: argument 1:It1"}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1889, !"cmpfunc: %a:It1"}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1889, !"cmpfunc: %b:It1"}
!1928 = !{!1925, !1921, !1917, !1893, !1873, !1870}
!1929 = !{!1927, !1923, !1919, !1876}
!1930 = !{!1927, !1923, !1919, !1893, !1873, !1870}
!1931 = !{!1925, !1921, !1917, !1876}
