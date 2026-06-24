; ModuleID = 'MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS_emit.36d637e055abe102-cgu.0'
source_filename = "MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS_emit.36d637e055abe102-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_a4fc8e8a1db30465e462be4106b43538 = private unnamed_addr constant [133 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS_emit.rs\00", align 1
@alloc_f65fb40ebe18196b3c4b526d70fc48d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a4fc8e8a1db30465e462be4106b43538, [16 x i8] c"\84\00\00\00\00\00\00\00\1A\00\00\00%\00\00\00" }>, align 8
@alloc_5a4e2e2827c9baab404b2aa355eebd22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a4fc8e8a1db30465e462be4106b43538, [16 x i8] c"\84\00\00\00\00\00\00\00\1A\00\00\00.\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0940d1e46bdeab84E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0940d1e46bdeab84E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0940d1e46bdeab84E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0940d1e46bdeab84E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd10abf74e9ee8c5aE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd10abf74e9ee8c5aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd10abf74e9ee8c5aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd10abf74e9ee8c5aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42), !noalias !45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48), !noalias !45
  %_3.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !50, !noalias !51, !noundef !23
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !52, !noalias !53, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_4.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !54, !noalias !59, !noundef !23
  %_0.i.i7 = icmp slt i32 %_3.i.i, %_4.i.i6
  %6 = xor i1 %_0.i.i, %_0.i.i7
  %_0.i.i10 = icmp slt i32 %_4.i.i, %_4.i.i6
  %_12.i = xor i1 %_0.i.i, %_0.i.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4a92c67f2ddd1d0cE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !72, !noalias !73, !noundef !23
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !73, !noalias !72, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !84, !noalias !85, !noundef !23
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !85, !noalias !84, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !96, !noalias !97, !noundef !23
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !97, !noalias !96, !noundef !23
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !108, !noalias !109, !noundef !23
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !109, !noalias !108, !noundef !23
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i, i32 %_4.i.i11.i)
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !120, !noalias !121, !noundef !23
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !121, !noalias !120, !noundef !23
  %_0.i.i18.i = icmp slt i32 %_3.i.i16.i, %_4.i.i17.i
  store i32 %0, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %5 = select i1 %_0.i.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %5, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %6 = select i1 %_0.i.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %6, ptr %dst6.i, align 4
  %7 = getelementptr i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %8 = select i1 %_0.i.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %8, ptr %7, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !132, !noalias !133, !noundef !23
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !133, !noalias !132, !noundef !23
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !144, !noalias !145, !noundef !23
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !145, !noalias !144, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !156, !noalias !157, !noundef !23
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !157, !noalias !156, !noundef !23
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !168, !noalias !169, !noundef !23
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !169, !noalias !168, !noundef !23
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i19, i32 %_4.i.i11.i20)
  %10 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %_3.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !180, !noalias !181, !noundef !23
  %_4.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !181, !noalias !180, !noundef !23
  %_0.i.i18.i27 = icmp slt i32 %_3.i.i16.i25, %_4.i.i17.i26
  store i32 %9, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %13, align 4
  %.val19.i30 = load i32, ptr %11, align 4
  %14 = select i1 %_0.i.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %14, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %11, align 4
  %.val21.i33 = load i32, ptr %13, align 4
  %15 = select i1 %_0.i.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %15, ptr %dst6.i31, align 4
  %16 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %17 = select i1 %_0.i.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %17, ptr %16, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i.i38 = icmp slt i32 %9, %0
  %is_l.i18.i = xor i1 %_0.i.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %0)
  store i32 %19, ptr %dst, align 4, !noalias !185
  %count.i.i = zext i1 %_0.i.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i.i21.i = icmp slt i32 %17, %8
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %8)
  store i32 %20, ptr %18, align 4, !noalias !189
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198), !noalias !201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !201
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !204, !noalias !205, !noundef !23
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !206, !noalias !207, !noundef !23
  %_0.i.i.i38.1 = icmp slt i32 %_3.i.i.i36.1, %_4.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.1, i32 %_4.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !185
  %count.i.i.1 = zext i1 %_0.i.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213), !noalias !216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217), !noalias !216
  %_3.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !219, !noalias !220, !noundef !23
  %_4.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !221, !noalias !222, !noundef !23
  %_0.i.i21.i.1 = icmp slt i32 %_3.i.i19.i.1, %_4.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.1, i32 %_4.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !189
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227), !noalias !201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229), !noalias !201
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !231, !noalias !232, !noundef !23
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !233, !noalias !234, !noundef !23
  %_0.i.i.i38.2 = icmp slt i32 %_3.i.i.i36.2, %_4.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.2, i32 %_4.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !185
  %count.i.i.2 = zext i1 %_0.i.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239), !noalias !216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241), !noalias !216
  %_3.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !243, !noalias !244, !noundef !23
  %_4.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !245, !noalias !246, !noundef !23
  %_0.i.i21.i.2 = icmp slt i32 %_3.i.i19.i.2, %_4.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.2, i32 %_4.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !189
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251), !noalias !201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253), !noalias !201
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !255, !noalias !256, !noundef !23
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !257, !noalias !258, !noundef !23
  %_0.i.i.i38.3 = icmp slt i32 %_3.i.i.i36.3, %_4.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.3, i32 %_4.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !185
  %count.i.i.3 = zext i1 %_0.i.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265), !noalias !216
  %_3.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !267, !noalias !268, !noundef !23
  %_4.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !269, !noalias !270, !noundef !23
  %_0.i.i21.i.3 = icmp slt i32 %_3.i.i19.i.3, %_4.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.3, i32 %_4.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !189
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE.exit, !prof !271

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !182
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7ba59ba2705f69d9E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !287, !noalias !288, !noundef !23
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !288, !noalias !287, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !304, !noalias !305, !noundef !23
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !305, !noalias !304, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !321, !noalias !322, !noundef !23
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !322, !noalias !321, !noundef !23
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !338, !noalias !339, !noundef !23
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !339, !noalias !338, !noundef !23
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !355, !noalias !356, !noundef !23
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !356, !noalias !355, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !372, !noalias !373, !noundef !23
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !373, !noalias !372, !noundef !23
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !389, !noalias !390, !noundef !23
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !390, !noalias !389, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !406, !noalias !407, !noundef !23
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !407, !noalias !406, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !423, !noalias !424, !noundef !23
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !424, !noalias !423, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !440, !noalias !441, !noundef !23
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !441, !noalias !440, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !445, !noalias !452, !noundef !23
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !458
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !460, !noalias !467, !noundef !23
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !473
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486), !noalias !481
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !488, !noalias !489, !noundef !23
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !490, !noalias !491, !noundef !23
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !458
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503), !noalias !498
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !505, !noalias !506, !noundef !23
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !507, !noalias !508, !noundef !23
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !473
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519), !noalias !481
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !521, !noalias !522, !noundef !23
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !523, !noalias !524, !noundef !23
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !458
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !498
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !537, !noalias !538, !noundef !23
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !539, !noalias !540, !noundef !23
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !473
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !481
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !553, !noalias !554, !noundef !23
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !555, !noalias !556, !noundef !23
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !458
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !498
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !569, !noalias !570, !noundef !23
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !571, !noalias !572, !noundef !23
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !473
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E.exit, !prof !271

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !442
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hed42af24580d233dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hba85c9061be4aee4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hf8b56acd288cc975E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1b4b8e813fd28730E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1b4b8e813fd28730E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i, %bb30
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
  %_3.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !633, !noalias !634, !noundef !23
  %_4.i.i63 = load i32, ptr %_82, align 4, !alias.scope !635, !noalias !636, !noundef !23
  %_0.i.i64 = icmp slt i32 %_3.i.i62, %_4.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i60 = phi i32 [ %_3.i.i59, %bb15.i.i ], [ %_3.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_3.i.i59 = load i32, ptr %2, align 4, !alias.scope !637, !noalias !642, !noundef !23
  %_0.i.i61 = icmp slt i32 %_3.i.i59, %_4.i.i60
  br i1 %_0.i.i61, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_3.i.i, %bb7.i.i ], [ %_3.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !645, !noalias !650, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i58
  br i1 %_0.i.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i
  br i1 %_0.i.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653), !noalias !656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !656
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd0b7611089840463E.exit.i.thread101 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit, label %bb5.i45

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
  %_3.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !686, !noalias !687, !noundef !23
  %_4.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !690, !noalias !691, !noundef !23
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !670, !noalias !692
  %_20.i.i = xor i1 %_0.i.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %25, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i.i to i64
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
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !703, !noalias !704, !noundef !23
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !707, !noalias !708, !noundef !23
  %_0.i.i.i14.i = icmp slt i32 %_3.i.i.i12.i, %_4.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12.i, i32 %_4.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !670, !noalias !709
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i.i14.i to i64
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit

_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17haa0beae7b704187eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hba85c9061be4aee4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i, %bb30
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
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !737, !noalias !744, !noundef !23
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !748, !noalias !755, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759), !noalias !762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !762
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hefb751cae5179468E.exit.i.thread100 ]
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

_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit, label %bb5.i45

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
  br label %_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit

_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17he2ac740079e24b39E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4a92c67f2ddd1d0cE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h4a92c67f2ddd1d0cE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %_3.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !844, !noalias !845, !noundef !23
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !847, !noalias !848, !noundef !23
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %_3.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !859, !noalias !860, !noundef !23
  %_4.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !861, !noalias !862, !noundef !23
  %_0.i.i9.i.i = icmp slt i32 %_3.i.i7.i.i, %_4.i.i8.i.i
  %count.i.i = zext i1 %_0.i.i.i.i to i64
  %a.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count.i.i
  %_19.i.i = xor i1 %_0.i.i.i.i, true
  %count2.i.i = zext i1 %_19.i.i to i64
  %b.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count2.i.i
  %count3.i.i = select i1 %_0.i.i9.i.i, i64 3, i64 2
  %c.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count3.i.i
  %count4.i.i = select i1 %_0.i.i9.i.i, i64 2, i64 3
  %d.i.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %count4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %_3.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !873, !noalias !874, !noundef !23
  %_4.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !875, !noalias !876, !noundef !23
  %_0.i.i12.i.i = icmp slt i32 %_3.i.i10.i.i, %_4.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %_3.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !887, !noalias !888, !noundef !23
  %_4.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !889, !noalias !890, !noundef !23
  %_0.i.i15.i.i = icmp slt i32 %_3.i.i13.i.i, %_4.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i.i, i32 %_4.i.i11.i.i)
  %6 = select i1 %_0.i.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %_3.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !901, !noalias !902, !noundef !23
  %_4.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !903, !noalias !904, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !832, !noalias !905
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !832, !noalias !905
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !832, !noalias !905
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i.i, i32 %_4.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !832, !noalias !905
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %_3.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !916, !noalias !917, !noundef !23
  %_4.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !918, !noalias !919, !noundef !23
  %_0.i.i.i16.i = icmp slt i32 %_3.i.i.i14.i, %_4.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %_3.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !930, !noalias !931, !noundef !23
  %_4.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !932, !noalias !933, !noundef !23
  %_0.i.i9.i21.i = icmp slt i32 %_3.i.i7.i19.i, %_4.i.i8.i20.i
  %count.i22.i = zext i1 %_0.i.i.i16.i to i64
  %a.i23.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count.i22.i
  %_19.i24.i = xor i1 %_0.i.i.i16.i, true
  %count2.i25.i = zext i1 %_19.i24.i to i64
  %b.i26.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count2.i25.i
  %count3.i27.i = select i1 %_0.i.i9.i21.i, i64 3, i64 2
  %c.i28.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count3.i27.i
  %count4.i29.i = select i1 %_0.i.i9.i21.i, i64 2, i64 3
  %d.i30.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %count4.i29.i
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %_3.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !944, !noalias !945, !noundef !23
  %_4.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !946, !noalias !947, !noundef !23
  %_0.i.i12.i33.i = icmp slt i32 %_3.i.i10.i31.i, %_4.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %_3.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !958, !noalias !959, !noundef !23
  %_4.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !960, !noalias !961, !noundef !23
  %_0.i.i15.i36.i = icmp slt i32 %_3.i.i13.i34.i, %_4.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i31.i, i32 %_4.i.i11.i32.i)
  %15 = select i1 %_0.i.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %_3.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !972, !noalias !973, !noundef !23
  %_4.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !974, !noalias !975, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !832, !noalias !905
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !832, !noalias !905
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !832, !noalias !905
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i34.i, i32 %_4.i.i14.i35.i)
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

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !829, !noalias !976
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !832, !noalias !905
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !977, !noalias !982, !noundef !23
  %_0.i.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i55.1.i
  br i1 %_0.i.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !832, !noalias !905
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !985, !noalias !990, !noundef !23
  %_0.i.i3.i.1.i = icmp slt i32 %27, %_4.i.i2.i.1.i
  br i1 %_0.i.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !832, !noalias !993
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.1.i, %bb16.loopexit.i
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
  %_3.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1014, !noalias !1015, !noundef !23
  %_4.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1016, !noalias !1017, !noundef !23
  %_0.i.i.i50.i = icmp slt i32 %_3.i.i.i48.i, %_4.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i48.i, i32 %_4.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !829, !noalias !1018
  %count.i.i.i = zext i1 %_0.i.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025), !noalias !1028
  call void @llvm.experimental.noalias.scope.decl(metadata !1031), !noalias !1028
  %_3.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1033, !noalias !1034, !noundef !23
  %_4.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1035, !noalias !1036, !noundef !23
  %_0.i.i21.i.i = icmp slt i32 %_3.i.i19.i.i, %_4.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i19.i.i, i32 %_4.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !829, !noalias !1037
  %count.neg.i.i.i = sext i1 %is_l.i.i.i to i64
  %38 = getelementptr i32, ptr %right_rev.sroa.0.024.i.i, i64 %count.neg.i.i.i
  %count3.neg.i.i.i = sext i1 %_0.i.i21.i.i to i64
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !271

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

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !829, !noalias !976
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !832, !noalias !905
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !977, !noalias !982, !noundef !23
  %_0.i.i.i56.i = icmp slt i32 %44, %_4.i.i.i55.i
  br i1 %_0.i.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !832, !noalias !905
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !985, !noalias !990, !noundef !23
  %_0.i.i3.i.i = icmp slt i32 %44, %_4.i.i2.i.i
  br i1 %_0.i.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !832, !noalias !993
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd10abf74e9ee8c5aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053), !noalias !1056
  call void @llvm.experimental.noalias.scope.decl(metadata !1059), !noalias !1056
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1061, !noalias !1064, !noundef !23
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1066, !noalias !1067, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1068, !noalias !1073, !noundef !23
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %49 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1b4b8e813fd28730E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
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
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1076, !noalias !1081, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !271

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
  %_4.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1089, !noalias !1094, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %_3.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1101, !noalias !1102, !noundef !23
  %_0.i.i.i31 = icmp slt i32 %_3.i.i.i29, %_4.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1087, !noalias !1103
  %_8.i.i = zext i1 %_0.i.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1106, !noalias !1111, !noundef !23
  %_0.i.i27.i = icmp slt i32 %_3.i.i25.i, %_4.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1087, !noalias !1114
  %_8.i33.i = zext i1 %_0.i.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1117, !noalias !1122, !noundef !23
  %_0.i.i37.i = icmp slt i32 %_3.i.i35.i, %_4.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1087, !noalias !1125
  %_8.i43.i = zext i1 %_0.i.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1128, !noalias !1133, !noundef !23
  %_0.i.i47.i = icmp slt i32 %_3.i.i45.i, %_4.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1087, !noalias !1136
  %_8.i53.i = zext i1 %_0.i.i47.i to i64
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
  %_4.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1139, !noalias !1144, !noundef !23
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
  %_3.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1151, !noalias !1152, !noundef !23
  %_0.i.i57.i = icmp slt i32 %_3.i.i55.i, %_4.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1087, !noalias !1153
  %_8.i63.i = zext i1 %_0.i.i57.i to i64
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
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit", !prof !1163

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1164
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0e8a023a27905fa0E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !271

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
  %_3.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1173, !noalias !1180, !noundef !23
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
  %_4.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1190, !noalias !1191, !noundef !23
  %_0.i.i.i.i84 = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1171, !noalias !1192
  %_8.i.i87 = zext i1 %_0.i.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1195, !noalias !1202, !noundef !23
  %_0.i.i.i27.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1171, !noalias !1206
  %_8.i33.i91 = zext i1 %_0.i.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1209, !noalias !1216, !noundef !23
  %_0.i.i.i37.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1171, !noalias !1220
  %_8.i43.i95 = zext i1 %_0.i.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1223, !noalias !1230, !noundef !23
  %_0.i.i.i47.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1171, !noalias !1234
  %_8.i53.i99 = zext i1 %_0.i.i.i47.i to i64
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
  %_3.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1237, !noalias !1244, !noundef !23
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
  %_4.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1254, !noalias !1255, !noundef !23
  %_0.i.i.i57.i = icmp sge i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1171, !noalias !1256
  %_8.i63.i75 = zext i1 %_0.i.i.i57.i to i64
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
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E.exit, label %bb42.i66.preheader

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
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E.exit, label %bb42.i66, !llvm.loop !1265

_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1163

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7ba59ba2705f69d9E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7ba59ba2705f69d9E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
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

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1266, !noalias !1463
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1269, !noalias !1367
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1464, !noalias !1471, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i

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
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.1.i, %bb16.loopexit.i
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !271

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

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1266, !noalias !1463
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1269, !noalias !1367
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1464, !noalias !1471, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i

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
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0940d1e46bdeab84E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
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
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hba85c9061be4aee4E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !271

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
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit", !prof !1163

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1696
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h785f2f6165dae901E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !271

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
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E.exit, label %bb42.i66.preheader

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
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E.exit, label %bb42.i66, !llvm.loop !1816

_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1163

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E.exit
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
define noundef range(i32 0, -2147483648) i32 @f_gold(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %ar.1, 2
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb7.i, !prof !1817

bb7.i:                                            ; preds = %start
  %b1.i = icmp samesign ult i64 %ar.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1817

bb10.i:                                           ; preds = %bb7.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hf8b56acd288cc975E(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, ptr noalias noundef nonnull align 1 %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %ar.1, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %ar.0, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %ar.0, i64 4
  %0 = and i64 %ar.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i.prol = load i32, ptr %ar.0, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %1 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.prol ], [ %ar.0, %bb5.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1836
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %ar.0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %ar.0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %ar.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %ar.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol ]
  %3 = icmp eq i64 %ar.1, 2
  br i1 %3, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %4 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %5, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1836
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %ar.0
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %5, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %ar.0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1858, !noalias !1859, !noundef !23
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i, %bb7.i.i.i.1
  %6 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1836
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %ar.0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %ar.0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1, %start, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_417.not = icmp eq i64 %_6, 0
  br i1 %_417.not, label %bb12, label %bb3.preheader

bb3.preheader:                                    ; preds = %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, %bb10
  %res.sroa.0.019 = phi i32 [ %_0.sroa.0.0.i, %bb10 ], [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ]
  %i.sroa.0.018 = phi i64 [ %.pre-phi, %bb10 ], [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ]
  %8 = add nuw i64 %i.sroa.0.018, 1
  %umax24 = call i64 @llvm.umax.i64(i64 %_6, i64 %8)
  br label %bb4

bb12:                                             ; preds = %bb10, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit
  %res.sroa.0.0.lcssa = phi i32 [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ], [ %_0.sroa.0.0.i, %bb10 ]
  ret i32 %res.sroa.0.0.lcssa

bb4:                                              ; preds = %bb3.preheader, %bb7
  %i.sroa.0.116 = phi i64 [ %i.sroa.0.018, %bb3.preheader ], [ %_17, %bb7 ]
  %count.sroa.0.015 = phi i32 [ 1, %bb3.preheader ], [ %11, %bb7 ]
  %_15 = icmp ult i64 %i.sroa.0.116, %ar.1
  br i1 %_15, label %bb5, label %panic

bb10:                                             ; preds = %bb6, %bb7.bb10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %bb7.bb10_crit_edge ], [ %_17, %bb6 ]
  %count.sroa.0.0.lcssa = phi i32 [ %11, %bb7.bb10_crit_edge ], [ %count.sroa.0.015, %bb6 ]
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.0.lcssa, i32 %res.sroa.0.019)
  %_4 = icmp ult i64 %.pre-phi, %_6
  br i1 %_4, label %bb3.preheader, label %bb12

bb5:                                              ; preds = %bb4
  %_17 = add nuw i64 %i.sroa.0.116, 1
  %_19 = icmp ult i64 %_17, %ar.1
  br i1 %_19, label %bb6, label %panic1

panic:                                            ; preds = %bb4
  %umax = call i64 @llvm.umax.i64(i64 %i.sroa.0.018, i64 %ar.1)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f65fb40ebe18196b3c4b526d70fc48d3) #18
  unreachable

bb6:                                              ; preds = %bb5
  %9 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %i.sroa.0.116
  %_12 = load i32, ptr %9, align 4, !noundef !23
  %10 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_17
  %_16 = load i32, ptr %10, align 4, !noundef !23
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb7, label %bb10

panic1:                                           ; preds = %bb5
  %umax23 = call i64 @llvm.umax.i64(i64 %ar.1, i64 %8)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax23, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5a4e2e2827c9baab404b2aa355eebd22) #18
  unreachable

bb7:                                              ; preds = %bb6
  %11 = add i32 %count.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %_17, %umax24
  br i1 %exitcond.not, label %bb7.bb10_crit_edge, label %bb4

bb7.bb10_crit_edge:                               ; preds = %bb7
  %.pre = add nuw i64 %umax24, 1
  br label %bb10
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1862
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1868
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE.exit", label %bb7.i.i, !prof !1817

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1817

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hed42af24580d233dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1885, !noalias !1888, !noundef !23
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1889, !noalias !1890, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1891, !noalias !1892
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1893, !noalias !1900, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1891, !noalias !1904
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1885, !noalias !1888, !noundef !23
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1889, !noalias !1890, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1891, !noalias !1892
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1893, !noalias !1900, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1891, !noalias !1904
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1921, !noalias !1922, !noundef !23
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1923, !noalias !1924, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1891, !noalias !1892
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1893, !noalias !1900, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1891, !noalias !1904
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77f967e8bafc95b3E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1862
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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!10 = distinct !{!10, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317hf9b98b1b159a1d22E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317hf9b98b1b159a1d22E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!29 = distinct !{!29, !30, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!30 = distinct !{!30, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!31 = distinct !{!31, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!32 = distinct !{!32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!33 = !{!34, !35, !36}
!34 = distinct !{!34, !28, !"cmpfunc: %a"}
!35 = distinct !{!35, !30, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!36 = distinct !{!36, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!39 = distinct !{!39, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!44 = distinct !{!44, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4core5slice4sort6shared5pivot7median317h120acc510e3f22aeE: %c"}
!47 = distinct !{!47, !"_ZN4core5slice4sort6shared5pivot7median317h120acc510e3f22aeE"}
!48 = !{!49}
!49 = distinct !{!49, !44, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!50 = !{!43, !38}
!51 = !{!49, !41, !46}
!52 = !{!49, !41}
!53 = !{!43, !38, !46}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!56 = distinct !{!56, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!57 = distinct !{!57, !58, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!58 = distinct !{!58, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!59 = !{!60, !61}
!60 = distinct !{!60, !56, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!61 = distinct !{!61, !58, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!64 = distinct !{!64, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!69 = distinct !{!69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!72 = !{!68, !63}
!73 = !{!71, !66}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!76 = distinct !{!76, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!81 = distinct !{!81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!84 = !{!80, !75}
!85 = !{!83, !78}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!88 = distinct !{!88, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!93 = distinct !{!93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!96 = !{!92, !87}
!97 = !{!95, !90}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!100 = distinct !{!100, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!105 = distinct !{!105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!108 = !{!104, !99}
!109 = !{!107, !102}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!112 = distinct !{!112, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!117 = distinct !{!117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!120 = !{!116, !111}
!121 = !{!119, !114}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!124 = distinct !{!124, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!129 = distinct !{!129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!132 = !{!128, !123}
!133 = !{!131, !126}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!141 = distinct !{!141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!144 = !{!140, !135}
!145 = !{!143, !138}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!148 = distinct !{!148, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!153 = distinct !{!153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!156 = !{!152, !147}
!157 = !{!155, !150}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!160 = distinct !{!160, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!165 = distinct !{!165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!168 = !{!164, !159}
!169 = !{!167, !162}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!172 = distinct !{!172, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!177 = distinct !{!177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!180 = !{!176, !171}
!181 = !{!179, !174}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE: %v.0"}
!184 = distinct !{!184, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE"}
!185 = !{!186, !188, !183}
!186 = distinct !{!186, !187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE: %_0"}
!187 = distinct !{!187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE"}
!188 = distinct !{!188, !187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE: %is_less"}
!189 = !{!190, !192, !183}
!190 = distinct !{!190, !191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE: %_0"}
!191 = distinct !{!191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE"}
!192 = distinct !{!192, !191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE: %is_less"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It1"}
!195 = distinct !{!195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It1"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!200 = distinct !{!200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!201 = !{!186}
!202 = !{!203}
!203 = distinct !{!203, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!204 = !{!199, !194, !183}
!205 = !{!203, !197, !186}
!206 = !{!203, !197, !183}
!207 = !{!199, !194, !186}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It1"}
!210 = distinct !{!210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It1"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!215 = distinct !{!215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!216 = !{!190}
!217 = !{!218}
!218 = distinct !{!218, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!219 = !{!214, !209, !183}
!220 = !{!218, !212, !190}
!221 = !{!218, !212, !183}
!222 = !{!214, !209, !190}
!223 = !{!224}
!224 = distinct !{!224, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It2"}
!225 = !{!226}
!226 = distinct !{!226, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It2"}
!227 = !{!228}
!228 = distinct !{!228, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!229 = !{!230}
!230 = distinct !{!230, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!231 = !{!228, !224, !183}
!232 = !{!230, !226, !186}
!233 = !{!230, !226, !183}
!234 = !{!228, !224, !186}
!235 = !{!236}
!236 = distinct !{!236, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It2"}
!237 = !{!238}
!238 = distinct !{!238, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It2"}
!239 = !{!240}
!240 = distinct !{!240, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!241 = !{!242}
!242 = distinct !{!242, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!243 = !{!240, !236, !183}
!244 = !{!242, !238, !190}
!245 = !{!242, !238, !183}
!246 = !{!240, !236, !190}
!247 = !{!248}
!248 = distinct !{!248, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It3"}
!249 = !{!250}
!250 = distinct !{!250, !195, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It3"}
!251 = !{!252}
!252 = distinct !{!252, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!253 = !{!254}
!254 = distinct !{!254, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!255 = !{!252, !248, !183}
!256 = !{!254, !250, !186}
!257 = !{!254, !250, !183}
!258 = !{!252, !248, !186}
!259 = !{!260}
!260 = distinct !{!260, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It3"}
!261 = !{!262}
!262 = distinct !{!262, !210, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It3"}
!263 = !{!264}
!264 = distinct !{!264, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!265 = !{!266}
!266 = distinct !{!266, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!267 = !{!264, !260, !183}
!268 = !{!266, !262, !190}
!269 = !{!266, !262, !183}
!270 = !{!264, !260, !190}
!271 = !{!"branch_weights", i32 4001, i32 4000000}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!274 = distinct !{!274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!279 = distinct !{!279, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"cmpfunc: %a"}
!284 = distinct !{!284, !"cmpfunc"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"cmpfunc: %b"}
!287 = !{!283, !278, !273}
!288 = !{!286, !281, !276}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!291 = distinct !{!291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!296 = distinct !{!296, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"cmpfunc: %a"}
!301 = distinct !{!301, !"cmpfunc"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"cmpfunc: %b"}
!304 = !{!300, !295, !290}
!305 = !{!303, !298, !293}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!308 = distinct !{!308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!313 = distinct !{!313, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"cmpfunc: %a"}
!318 = distinct !{!318, !"cmpfunc"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"cmpfunc: %b"}
!321 = !{!317, !312, !307}
!322 = !{!320, !315, !310}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!325 = distinct !{!325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!330 = distinct !{!330, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"cmpfunc: %a"}
!335 = distinct !{!335, !"cmpfunc"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"cmpfunc: %b"}
!338 = !{!334, !329, !324}
!339 = !{!337, !332, !327}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!342 = distinct !{!342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!347 = distinct !{!347, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"cmpfunc: %a"}
!352 = distinct !{!352, !"cmpfunc"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"cmpfunc: %b"}
!355 = !{!351, !346, !341}
!356 = !{!354, !349, !344}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!359 = distinct !{!359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!364 = distinct !{!364, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"cmpfunc: %a"}
!369 = distinct !{!369, !"cmpfunc"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"cmpfunc: %b"}
!372 = !{!368, !363, !358}
!373 = !{!371, !366, !361}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!376 = distinct !{!376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!381 = distinct !{!381, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"cmpfunc: %a"}
!386 = distinct !{!386, !"cmpfunc"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"cmpfunc: %b"}
!389 = !{!385, !380, !375}
!390 = !{!388, !383, !378}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!393 = distinct !{!393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!398 = distinct !{!398, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"cmpfunc: %a"}
!403 = distinct !{!403, !"cmpfunc"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"cmpfunc: %b"}
!406 = !{!402, !397, !392}
!407 = !{!405, !400, !395}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!410 = distinct !{!410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!415 = distinct !{!415, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"cmpfunc: %a"}
!420 = distinct !{!420, !"cmpfunc"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"cmpfunc: %b"}
!423 = !{!419, !414, !409}
!424 = !{!422, !417, !412}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!427 = distinct !{!427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!432 = distinct !{!432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"cmpfunc: %a"}
!437 = distinct !{!437, !"cmpfunc"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"cmpfunc: %b"}
!440 = !{!436, !431, !426}
!441 = !{!439, !434, !429}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E: %v.0"}
!444 = distinct !{!444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E"}
!445 = !{!446, !448, !450, !443}
!446 = distinct !{!446, !447, !"cmpfunc: %b"}
!447 = distinct !{!447, !"cmpfunc"}
!448 = distinct !{!448, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!449 = distinct !{!449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!450 = distinct !{!450, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!451 = distinct !{!451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!452 = !{!453, !454, !455, !456}
!453 = distinct !{!453, !447, !"cmpfunc: %a"}
!454 = distinct !{!454, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!455 = distinct !{!455, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!456 = distinct !{!456, !457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E: %_0"}
!457 = distinct !{!457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E"}
!458 = !{!456, !459, !443}
!459 = distinct !{!459, !457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E: %is_less"}
!460 = !{!461, !463, !465, !443}
!461 = distinct !{!461, !462, !"cmpfunc: %b"}
!462 = distinct !{!462, !"cmpfunc"}
!463 = distinct !{!463, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!464 = distinct !{!464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!465 = distinct !{!465, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!466 = distinct !{!466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!467 = !{!468, !469, !470, !471}
!468 = distinct !{!468, !462, !"cmpfunc: %a"}
!469 = distinct !{!469, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!470 = distinct !{!470, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!471 = distinct !{!471, !472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE: %_0"}
!472 = distinct !{!472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE"}
!473 = !{!471, !474, !443}
!474 = distinct !{!474, !472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE: %is_less"}
!475 = !{!476}
!476 = distinct !{!476, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It1"}
!477 = !{!478}
!478 = distinct !{!478, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It1"}
!479 = !{!480}
!480 = distinct !{!480, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It1"}
!481 = !{!456}
!482 = !{!483}
!483 = distinct !{!483, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It1"}
!484 = !{!485}
!485 = distinct !{!485, !447, !"cmpfunc: %a:It1"}
!486 = !{!487}
!487 = distinct !{!487, !447, !"cmpfunc: %b:It1"}
!488 = !{!485, !480, !476, !443}
!489 = !{!487, !483, !478, !456}
!490 = !{!487, !483, !478, !443}
!491 = !{!485, !480, !476, !456}
!492 = !{!493}
!493 = distinct !{!493, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It1"}
!494 = !{!495}
!495 = distinct !{!495, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It1"}
!496 = !{!497}
!497 = distinct !{!497, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It1"}
!498 = !{!471}
!499 = !{!500}
!500 = distinct !{!500, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It1"}
!501 = !{!502}
!502 = distinct !{!502, !462, !"cmpfunc: %a:It1"}
!503 = !{!504}
!504 = distinct !{!504, !462, !"cmpfunc: %b:It1"}
!505 = !{!502, !497, !493, !443}
!506 = !{!504, !500, !495, !471}
!507 = !{!504, !500, !495, !443}
!508 = !{!502, !497, !493, !471}
!509 = !{!510}
!510 = distinct !{!510, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It2"}
!511 = !{!512}
!512 = distinct !{!512, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It2"}
!513 = !{!514}
!514 = distinct !{!514, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It2"}
!515 = !{!516}
!516 = distinct !{!516, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It2"}
!517 = !{!518}
!518 = distinct !{!518, !447, !"cmpfunc: %a:It2"}
!519 = !{!520}
!520 = distinct !{!520, !447, !"cmpfunc: %b:It2"}
!521 = !{!518, !514, !510, !443}
!522 = !{!520, !516, !512, !456}
!523 = !{!520, !516, !512, !443}
!524 = !{!518, !514, !510, !456}
!525 = !{!526}
!526 = distinct !{!526, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It2"}
!527 = !{!528}
!528 = distinct !{!528, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It2"}
!529 = !{!530}
!530 = distinct !{!530, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It2"}
!531 = !{!532}
!532 = distinct !{!532, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It2"}
!533 = !{!534}
!534 = distinct !{!534, !462, !"cmpfunc: %a:It2"}
!535 = !{!536}
!536 = distinct !{!536, !462, !"cmpfunc: %b:It2"}
!537 = !{!534, !530, !526, !443}
!538 = !{!536, !532, !528, !471}
!539 = !{!536, !532, !528, !443}
!540 = !{!534, !530, !526, !471}
!541 = !{!542}
!542 = distinct !{!542, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It3"}
!543 = !{!544}
!544 = distinct !{!544, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It3"}
!545 = !{!546}
!546 = distinct !{!546, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It3"}
!547 = !{!548}
!548 = distinct !{!548, !449, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It3"}
!549 = !{!550}
!550 = distinct !{!550, !447, !"cmpfunc: %a:It3"}
!551 = !{!552}
!552 = distinct !{!552, !447, !"cmpfunc: %b:It3"}
!553 = !{!550, !546, !542, !443}
!554 = !{!552, !548, !544, !456}
!555 = !{!552, !548, !544, !443}
!556 = !{!550, !546, !542, !456}
!557 = !{!558}
!558 = distinct !{!558, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It3"}
!559 = !{!560}
!560 = distinct !{!560, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It3"}
!561 = !{!562}
!562 = distinct !{!562, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It3"}
!563 = !{!564}
!564 = distinct !{!564, !464, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It3"}
!565 = !{!566}
!566 = distinct !{!566, !462, !"cmpfunc: %a:It3"}
!567 = !{!568}
!568 = distinct !{!568, !462, !"cmpfunc: %b:It3"}
!569 = !{!566, !562, !558, !443}
!570 = !{!568, !564, !560, !471}
!571 = !{!568, !564, !560, !443}
!572 = !{!566, !562, !558, !471}
!573 = !{!"branch_weights", i32 2002, i32 2000}
!574 = !{!575, !577}
!575 = distinct !{!575, !576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hca954167e8280384E: %_0"}
!576 = distinct !{!576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hca954167e8280384E"}
!577 = distinct !{!577, !578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc35048cb27ce9388E: %_0"}
!578 = distinct !{!578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc35048cb27ce9388E"}
!579 = !{!580, !582, !584, !586}
!580 = distinct !{!580, !581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E: %self"}
!581 = distinct !{!581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E"}
!582 = distinct !{!582, !583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE: %self"}
!583 = distinct !{!583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE"}
!584 = distinct !{!584, !585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE: %_1"}
!585 = distinct !{!585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE"}
!586 = distinct !{!586, !587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E: %_1"}
!587 = distinct !{!587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E"}
!588 = !{!589, !591, !593, !595}
!589 = distinct !{!589, !590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E: %self"}
!590 = distinct !{!590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E"}
!591 = distinct !{!591, !592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE: %self"}
!592 = distinct !{!592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE"}
!593 = distinct !{!593, !594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE: %_1"}
!594 = distinct !{!594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE"}
!595 = distinct !{!595, !596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E: %_1"}
!596 = distinct !{!596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E"}
!597 = !{!598, !600}
!598 = distinct !{!598, !599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hca954167e8280384E: %_0"}
!599 = distinct !{!599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hca954167e8280384E"}
!600 = distinct !{!600, !601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc35048cb27ce9388E: %_0"}
!601 = distinct !{!601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hc35048cb27ce9388E"}
!602 = !{!603, !605, !607, !609}
!603 = distinct !{!603, !604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E: %self"}
!604 = distinct !{!604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E"}
!605 = distinct !{!605, !606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE: %self"}
!606 = distinct !{!606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE"}
!607 = distinct !{!607, !608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE: %_1"}
!608 = distinct !{!608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E"}
!611 = !{!612, !614, !616, !618}
!612 = distinct !{!612, !613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E: %self"}
!613 = distinct !{!613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h8460336d02943c93E"}
!614 = distinct !{!614, !615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE: %self"}
!615 = distinct !{!615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb287b504568a716fE"}
!616 = distinct !{!616, !617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE: %_1"}
!617 = distinct !{!617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h3b556cb738f4cc3aE"}
!618 = distinct !{!618, !619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E: %_1"}
!619 = distinct !{!619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8ab1eeb0beb7aa14E"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!622 = distinct !{!622, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!627 = distinct !{!627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E: %scratch.0"}
!630 = distinct !{!630, !"_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E"}
!631 = !{!632}
!632 = distinct !{!632, !627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!633 = !{!626, !621}
!634 = !{!632, !624, !629}
!635 = !{!632, !624}
!636 = !{!626, !621, !629}
!637 = !{!638, !640}
!638 = distinct !{!638, !639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!639 = distinct !{!639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!640 = distinct !{!640, !641, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!641 = distinct !{!641, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!642 = !{!643, !644, !629}
!643 = distinct !{!643, !639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!644 = distinct !{!644, !641, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!645 = !{!646, !648}
!646 = distinct !{!646, !647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!647 = distinct !{!647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!648 = distinct !{!648, !649, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!649 = distinct !{!649, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!650 = !{!651, !652, !629}
!651 = distinct !{!651, !647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!652 = distinct !{!652, !649, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE: %a.0"}
!655 = distinct !{!655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE"}
!656 = !{!629, !657}
!657 = distinct !{!657, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h1476fe18c973f963E: %is_less"}
!658 = !{!659}
!659 = distinct !{!659, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE: %b.0"}
!660 = !{!654, !661}
!661 = distinct !{!661, !662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hed2ff93336fac2d2E: %self.0"}
!662 = distinct !{!662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hed2ff93336fac2d2E"}
!663 = !{!659, !629, !657}
!664 = !{!659, !661}
!665 = !{!654, !629, !657}
!666 = distinct !{!666, !667, !668}
!667 = !{!"llvm.loop.isvectorized", i32 1}
!668 = !{!"llvm.loop.unroll.runtime.disable"}
!669 = distinct !{!669, !668, !667}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE: %v.0"}
!672 = distinct !{!672, !"_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core5slice4sort6stable5merge5merge17h4e75d98329d427adE: %scratch.0"}
!675 = !{!671, !674}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!678 = distinct !{!678, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!683 = distinct !{!683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!686 = !{!682, !677, !674}
!687 = !{!685, !680, !688, !671}
!688 = distinct !{!688, !689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h31582fe2835181b6E: %self"}
!689 = distinct !{!689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h31582fe2835181b6E"}
!690 = !{!685, !680, !671}
!691 = !{!682, !677, !688, !674}
!692 = !{!688, !674}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!695 = distinct !{!695, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!700 = distinct !{!700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!701 = !{!702}
!702 = distinct !{!702, !700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!703 = !{!699, !694, !671}
!704 = !{!702, !697, !705, !674}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hec28e14d1c29f338E: %self"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hec28e14d1c29f338E"}
!707 = !{!702, !697, !674}
!708 = !{!699, !694, !705, !671}
!709 = !{!705, !674}
!710 = !{!711, !713}
!711 = distinct !{!711, !712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h73e75b6f1edf7c86E: %self"}
!712 = distinct !{!712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h73e75b6f1edf7c86E"}
!713 = distinct !{!713, !714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hecc2d337a93d4b02E: %_1"}
!714 = distinct !{!714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hecc2d337a93d4b02E"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!717 = distinct !{!717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!718 = !{!719}
!719 = distinct !{!719, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!722 = distinct !{!722, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E: %scratch.0"}
!725 = distinct !{!725, !"_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E"}
!726 = !{!727}
!727 = distinct !{!727, !722, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!740 = distinct !{!740, !741, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!741 = distinct !{!741, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!742 = distinct !{!742, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!743 = distinct !{!743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!744 = !{!745, !746, !747, !724}
!745 = distinct !{!745, !739, !"cmpfunc: %b"}
!746 = distinct !{!746, !741, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!747 = distinct !{!747, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!748 = !{!749, !751, !753}
!749 = distinct !{!749, !750, !"cmpfunc: %a"}
!750 = distinct !{!750, !"cmpfunc"}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!753 = distinct !{!753, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!754 = distinct !{!754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!755 = !{!756, !757, !758, !724}
!756 = distinct !{!756, !750, !"cmpfunc: %b"}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!758 = distinct !{!758, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE: %a.0"}
!761 = distinct !{!761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE"}
!762 = !{!724, !763}
!763 = distinct !{!763, !725, !"_ZN4core5slice4sort6stable5drift10create_run17hf5a993e4505f0018E: %is_less"}
!764 = !{!765}
!765 = distinct !{!765, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hea4260850b9af90cE: %b.0"}
!766 = !{!760, !767}
!767 = distinct !{!767, !768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hed2ff93336fac2d2E: %self.0"}
!768 = distinct !{!768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hed2ff93336fac2d2E"}
!769 = !{!765, !724, !763}
!770 = !{!765, !767}
!771 = !{!760, !724, !763}
!772 = distinct !{!772, !667, !668}
!773 = distinct !{!773, !668, !667}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE: %v.0"}
!776 = distinct !{!776, !"_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE"}
!777 = !{!778}
!778 = distinct !{!778, !776, !"_ZN4core5slice4sort6stable5merge5merge17ha2c38a0b9ed1fafcE: %scratch.0"}
!779 = !{!775, !778}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!782 = distinct !{!782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!787 = distinct !{!787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"cmpfunc: %a"}
!792 = distinct !{!792, !"cmpfunc"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"cmpfunc: %b"}
!795 = !{!791, !786, !781, !778}
!796 = !{!794, !789, !784, !797, !775}
!797 = distinct !{!797, !798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3b90b8c77f935195E: %self"}
!798 = distinct !{!798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3b90b8c77f935195E"}
!799 = !{!794, !789, !784, !775}
!800 = !{!791, !786, !781, !797, !778}
!801 = !{!797, !778}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!804 = distinct !{!804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!809 = distinct !{!809, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"cmpfunc: %a"}
!814 = distinct !{!814, !"cmpfunc"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"cmpfunc: %b"}
!817 = !{!813, !808, !803, !775}
!818 = !{!816, !811, !806, !819, !778}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3461be0c2c58f930E: %self"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h3461be0c2c58f930E"}
!821 = !{!816, !811, !806, !778}
!822 = !{!813, !808, !803, !819, !775}
!823 = !{!819, !778}
!824 = !{!825, !827}
!825 = distinct !{!825, !826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h73e75b6f1edf7c86E: %self"}
!826 = distinct !{!826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h73e75b6f1edf7c86E"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hecc2d337a93d4b02E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hecc2d337a93d4b02E"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3829d16b64f10351E: %v.0"}
!831 = distinct !{!831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3829d16b64f10351E"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3829d16b64f10351E: %scratch.0"}
!834 = !{!835}
!835 = distinct !{!835, !836, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!836 = distinct !{!836, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!837 = !{!838}
!838 = distinct !{!838, !836, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!841 = distinct !{!841, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!842 = !{!843}
!843 = distinct !{!843, !841, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!844 = !{!840, !835, !830}
!845 = !{!843, !838, !833, !846}
!846 = distinct !{!846, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3829d16b64f10351E: %is_less"}
!847 = !{!843, !838, !830}
!848 = !{!840, !835, !833, !846}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!851 = distinct !{!851, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!852 = !{!853}
!853 = distinct !{!853, !851, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!856 = distinct !{!856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!859 = !{!855, !850, !830}
!860 = !{!858, !853, !833, !846}
!861 = !{!858, !853, !830}
!862 = !{!855, !850, !833, !846}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!865 = distinct !{!865, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!866 = !{!867}
!867 = distinct !{!867, !865, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!870 = distinct !{!870, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!871 = !{!872}
!872 = distinct !{!872, !870, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!873 = !{!869, !864, !830}
!874 = !{!872, !867, !833, !846}
!875 = !{!872, !867, !830}
!876 = !{!869, !864, !833, !846}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!879 = distinct !{!879, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!884 = distinct !{!884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!887 = !{!883, !878, !830}
!888 = !{!886, !881, !833, !846}
!889 = !{!886, !881, !830}
!890 = !{!883, !878, !833, !846}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!893 = distinct !{!893, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!898 = distinct !{!898, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!901 = !{!897, !892, !830}
!902 = !{!900, !895, !833, !846}
!903 = !{!900, !895, !830}
!904 = !{!897, !892, !833, !846}
!905 = !{!830, !846}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!908 = distinct !{!908, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!913 = distinct !{!913, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!916 = !{!912, !907, !830}
!917 = !{!915, !910, !833, !846}
!918 = !{!915, !910, !830}
!919 = !{!912, !907, !833, !846}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!922 = distinct !{!922, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!925 = !{!926}
!926 = distinct !{!926, !927, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!927 = distinct !{!927, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!928 = !{!929}
!929 = distinct !{!929, !927, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!930 = !{!926, !921, !830}
!931 = !{!929, !924, !833, !846}
!932 = !{!929, !924, !830}
!933 = !{!926, !921, !833, !846}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!936 = distinct !{!936, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!937 = !{!938}
!938 = distinct !{!938, !936, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!941 = distinct !{!941, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!942 = !{!943}
!943 = distinct !{!943, !941, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!944 = !{!940, !935, !830}
!945 = !{!943, !938, !833, !846}
!946 = !{!943, !938, !830}
!947 = !{!940, !935, !833, !846}
!948 = !{!949}
!949 = distinct !{!949, !950, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!950 = distinct !{!950, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!955 = distinct !{!955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!958 = !{!954, !949, !830}
!959 = !{!957, !952, !833, !846}
!960 = !{!957, !952, !830}
!961 = !{!954, !949, !833, !846}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!964 = distinct !{!964, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!969 = distinct !{!969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!972 = !{!968, !963, !830}
!973 = !{!971, !966, !833, !846}
!974 = !{!971, !966, !830}
!975 = !{!968, !963, !833, !846}
!976 = !{!833, !846}
!977 = !{!978, !980, !833}
!978 = distinct !{!978, !979, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!979 = distinct !{!979, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!980 = distinct !{!980, !981, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!981 = distinct !{!981, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!982 = !{!983, !984, !830, !846}
!983 = distinct !{!983, !979, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!984 = distinct !{!984, !981, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!985 = !{!986, !988, !833}
!986 = distinct !{!986, !987, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!987 = distinct !{!987, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!988 = distinct !{!988, !989, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!989 = distinct !{!989, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!990 = !{!991, !992, !830, !846}
!991 = distinct !{!991, !987, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!992 = distinct !{!992, !989, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!993 = !{!994, !996, !830, !846}
!994 = distinct !{!994, !995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!995 = distinct !{!995, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!996 = distinct !{!996, !997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!997 = distinct !{!997, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE: %v.0"}
!1000 = distinct !{!1000, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2b76c5b862ca4d3aE"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1003 = distinct !{!1003, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1003, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1008 = distinct !{!1008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE: %_0"}
!1011 = distinct !{!1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1008, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1014 = !{!1007, !1002, !999, !833}
!1015 = !{!1013, !1005, !1010, !830, !846}
!1016 = !{!1013, !1005, !999, !833}
!1017 = !{!1007, !1002, !1010, !830, !846}
!1018 = !{!1010, !1019, !999, !833, !846}
!1019 = distinct !{!1019, !1011, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hee7145a0fc2d297cE: %is_less"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1022 = distinct !{!1022, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1027 = distinct !{!1027, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE: %_0"}
!1030 = distinct !{!1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1027, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1033 = !{!1026, !1021, !999, !833}
!1034 = !{!1032, !1024, !1029, !830, !846}
!1035 = !{!1032, !1024, !999, !833}
!1036 = !{!1026, !1021, !1029, !830, !846}
!1037 = !{!1029, !1038, !999, !833, !846}
!1038 = distinct !{!1038, !1030, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h44ba08e34104efabE: %is_less"}
!1039 = !{!999, !833}
!1040 = !{!999, !833, !846}
!1041 = !{!830, !833, !846}
!1042 = !{!830, !833}
!1043 = !{!1044, !1046, !846}
!1044 = distinct !{!1044, !1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!1045 = distinct !{!1045, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!1046 = distinct !{!1046, !1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!1047 = distinct !{!1047, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1050 = distinct !{!1050, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1055 = distinct !{!1055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN4core5slice4sort6shared5pivot7median317h120acc510e3f22aeE: %c"}
!1058 = distinct !{!1058, !"_ZN4core5slice4sort6shared5pivot7median317h120acc510e3f22aeE"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1055, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1061 = !{!1054, !1049, !1062}
!1062 = distinct !{!1062, !1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6e199356c7ba6255E: %v.0"}
!1063 = distinct !{!1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6e199356c7ba6255E"}
!1064 = !{!1060, !1052, !1057, !1065}
!1065 = distinct !{!1065, !1063, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6e199356c7ba6255E: %is_less"}
!1066 = !{!1060, !1052, !1062}
!1067 = !{!1054, !1049, !1057, !1065}
!1068 = !{!1069, !1071, !1062}
!1069 = distinct !{!1069, !1070, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1070 = distinct !{!1070, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1073 = !{!1074, !1075, !1065}
!1074 = distinct !{!1074, !1070, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1075 = distinct !{!1075, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1076 = !{!1077, !1079}
!1077 = distinct !{!1077, !1078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1078 = distinct !{!1078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1079 = distinct !{!1079, !1080, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1080 = distinct !{!1080, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1081 = !{!1082, !1083}
!1082 = distinct !{!1082, !1078, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1083 = distinct !{!1083, !1080, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hdcc8a0936594216cE: %v.0"}
!1086 = distinct !{!1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hdcc8a0936594216cE"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1086, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hdcc8a0936594216cE: %scratch.0"}
!1089 = !{!1090, !1092, !1085}
!1090 = distinct !{!1090, !1091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1091 = distinct !{!1091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1092 = distinct !{!1092, !1093, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1093 = distinct !{!1093, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1094 = !{!1095, !1096, !1088}
!1095 = distinct !{!1095, !1091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1096 = distinct !{!1096, !1093, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1097 = !{!1096}
!1098 = !{!1092}
!1099 = !{!1095}
!1100 = !{!1090}
!1101 = !{!1095, !1096, !1085}
!1102 = !{!1090, !1092, !1088}
!1103 = !{!1104, !1085}
!1104 = distinct !{!1104, !1105, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1105 = distinct !{!1105, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1106 = !{!1107, !1109, !1085}
!1107 = distinct !{!1107, !1108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1108 = distinct !{!1108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1109 = distinct !{!1109, !1110, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1110 = distinct !{!1110, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1111 = !{!1112, !1113, !1088}
!1112 = distinct !{!1112, !1108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1113 = distinct !{!1113, !1110, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1114 = !{!1115, !1085}
!1115 = distinct !{!1115, !1116, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1116 = distinct !{!1116, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1117 = !{!1118, !1120, !1085}
!1118 = distinct !{!1118, !1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1119 = distinct !{!1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1120 = distinct !{!1120, !1121, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1121 = distinct !{!1121, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1122 = !{!1123, !1124, !1088}
!1123 = distinct !{!1123, !1119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1124 = distinct !{!1124, !1121, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1125 = !{!1126, !1085}
!1126 = distinct !{!1126, !1127, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1127 = distinct !{!1127, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1128 = !{!1129, !1131, !1085}
!1129 = distinct !{!1129, !1130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1130 = distinct !{!1130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1131 = distinct !{!1131, !1132, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1132 = distinct !{!1132, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1133 = !{!1134, !1135, !1088}
!1134 = distinct !{!1134, !1130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1135 = distinct !{!1135, !1132, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1136 = !{!1137, !1085}
!1137 = distinct !{!1137, !1138, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1138 = distinct !{!1138, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1139 = !{!1140, !1142, !1085}
!1140 = distinct !{!1140, !1141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1141 = distinct !{!1141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1142 = distinct !{!1142, !1143, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1143 = distinct !{!1143, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1144 = !{!1145, !1146, !1088}
!1145 = distinct !{!1145, !1141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1146 = distinct !{!1146, !1143, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1147 = !{!1146}
!1148 = !{!1142}
!1149 = !{!1145}
!1150 = !{!1140}
!1151 = !{!1145, !1146, !1085}
!1152 = !{!1140, !1142, !1088}
!1153 = !{!1154, !1085}
!1154 = distinct !{!1154, !1155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1155 = distinct !{!1155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1156 = !{!1157, !1088}
!1157 = distinct !{!1157, !1158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1158 = distinct !{!1158, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1159 = !{!1157, !1085}
!1160 = !{!1085, !1088}
!1161 = distinct !{!1161, !667, !668}
!1162 = distinct !{!1162, !668, !667}
!1163 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1164 = !{!1165, !1167}
!1165 = distinct !{!1165, !1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE: %pair"}
!1166 = distinct !{!1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE"}
!1167 = distinct !{!1167, !1166, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE: %self.0"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E: %v.0"}
!1170 = distinct !{!1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1170, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he3d93133325b14d7E: %scratch.0"}
!1173 = !{!1174, !1176, !1178, !1169}
!1174 = distinct !{!1174, !1175, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1175 = distinct !{!1175, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1176 = distinct !{!1176, !1177, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1177 = distinct !{!1177, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1178 = distinct !{!1178, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %b"}
!1179 = distinct !{!1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E"}
!1180 = !{!1181, !1182, !1183, !1172}
!1181 = distinct !{!1181, !1175, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1182 = distinct !{!1182, !1177, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1183 = distinct !{!1183, !1179, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %a"}
!1184 = !{!1183}
!1185 = !{!1178}
!1186 = !{!1176}
!1187 = !{!1182}
!1188 = !{!1174}
!1189 = !{!1181}
!1190 = !{!1181, !1182, !1183, !1169}
!1191 = !{!1174, !1176, !1178, !1172}
!1192 = !{!1193, !1169}
!1193 = distinct !{!1193, !1194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1194 = distinct !{!1194, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1195 = !{!1196, !1198, !1200, !1169}
!1196 = distinct !{!1196, !1197, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1197 = distinct !{!1197, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1198 = distinct !{!1198, !1199, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1199 = distinct !{!1199, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1200 = distinct !{!1200, !1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %a"}
!1201 = distinct !{!1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E"}
!1202 = !{!1203, !1204, !1205, !1172}
!1203 = distinct !{!1203, !1197, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1204 = distinct !{!1204, !1199, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1205 = distinct !{!1205, !1201, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %b"}
!1206 = !{!1207, !1169}
!1207 = distinct !{!1207, !1208, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1208 = distinct !{!1208, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1209 = !{!1210, !1212, !1214, !1169}
!1210 = distinct !{!1210, !1211, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1211 = distinct !{!1211, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1212 = distinct !{!1212, !1213, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1213 = distinct !{!1213, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1214 = distinct !{!1214, !1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %a"}
!1215 = distinct !{!1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E"}
!1216 = !{!1217, !1218, !1219, !1172}
!1217 = distinct !{!1217, !1211, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1218 = distinct !{!1218, !1213, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1219 = distinct !{!1219, !1215, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %b"}
!1220 = !{!1221, !1169}
!1221 = distinct !{!1221, !1222, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1222 = distinct !{!1222, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1223 = !{!1224, !1226, !1228, !1169}
!1224 = distinct !{!1224, !1225, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1225 = distinct !{!1225, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1226 = distinct !{!1226, !1227, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1227 = distinct !{!1227, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1228 = distinct !{!1228, !1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %a"}
!1229 = distinct !{!1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E"}
!1230 = !{!1231, !1232, !1233, !1172}
!1231 = distinct !{!1231, !1225, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1232 = distinct !{!1232, !1227, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1233 = distinct !{!1233, !1229, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %b"}
!1234 = !{!1235, !1169}
!1235 = distinct !{!1235, !1236, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1236 = distinct !{!1236, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1237 = !{!1238, !1240, !1242, !1169}
!1238 = distinct !{!1238, !1239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1239 = distinct !{!1239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1240 = distinct !{!1240, !1241, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1241 = distinct !{!1241, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1242 = distinct !{!1242, !1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %b"}
!1243 = distinct !{!1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E"}
!1244 = !{!1245, !1246, !1247, !1172}
!1245 = distinct !{!1245, !1239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1246 = distinct !{!1246, !1241, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1247 = distinct !{!1247, !1243, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h766dd6b3762cccc4E: %a"}
!1248 = !{!1247}
!1249 = !{!1242}
!1250 = !{!1240}
!1251 = !{!1246}
!1252 = !{!1238}
!1253 = !{!1245}
!1254 = !{!1245, !1246, !1247, !1169}
!1255 = !{!1238, !1240, !1242, !1172}
!1256 = !{!1257, !1169}
!1257 = distinct !{!1257, !1258, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1258 = distinct !{!1258, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1259 = !{!1260, !1172}
!1260 = distinct !{!1260, !1261, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1261 = distinct !{!1261, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1262 = !{!1260, !1169}
!1263 = !{!1169, !1172}
!1264 = distinct !{!1264, !667, !668}
!1265 = distinct !{!1265, !668, !667}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cdc2561bcde01caE: %v.0"}
!1268 = distinct !{!1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cdc2561bcde01caE"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cdc2561bcde01caE: %scratch.0"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1273 = distinct !{!1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1273, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1278 = distinct !{!1278, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"cmpfunc: %a"}
!1283 = distinct !{!1283, !"cmpfunc"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"cmpfunc: %b"}
!1286 = !{!1282, !1277, !1272, !1267}
!1287 = !{!1285, !1280, !1275, !1270, !1288}
!1288 = distinct !{!1288, !1268, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cdc2561bcde01caE: %is_less"}
!1289 = !{!1285, !1280, !1275, !1267}
!1290 = !{!1282, !1277, !1272, !1270, !1288}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1293 = distinct !{!1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1298 = distinct !{!1298, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1311 = distinct !{!1311, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1312 = distinct !{!1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1317 = distinct !{!1317, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1330 = distinct !{!1330, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1331 = distinct !{!1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1336 = distinct !{!1336, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1349 = distinct !{!1349, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1350 = distinct !{!1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1355 = distinct !{!1355, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1369 = distinct !{!1369, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1370 = distinct !{!1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1370, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1375 = distinct !{!1375, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1376 = !{!1377}
!1377 = distinct !{!1377, !1375, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1394 = distinct !{!1394, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1407 = distinct !{!1407, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1408 = distinct !{!1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1413 = distinct !{!1413, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1426 = distinct !{!1426, !1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1427 = distinct !{!1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1432 = distinct !{!1432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1432, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1445 = distinct !{!1445, !1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1446 = distinct !{!1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1451, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1451 = distinct !{!1451, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1451, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1467 = distinct !{!1467, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1468 = distinct !{!1468, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1469 = distinct !{!1469, !1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1470 = distinct !{!1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1471 = !{!1472, !1473, !1474, !1267, !1288}
!1472 = distinct !{!1472, !1466, !"cmpfunc: %a"}
!1473 = distinct !{!1473, !1468, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1474 = distinct !{!1474, !1470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1475 = !{!1476, !1478, !1480, !1270}
!1476 = distinct !{!1476, !1477, !"cmpfunc: %b"}
!1477 = distinct !{!1477, !"cmpfunc"}
!1478 = distinct !{!1478, !1479, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1479 = distinct !{!1479, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1480 = distinct !{!1480, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1481 = distinct !{!1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1482 = !{!1483, !1484, !1485, !1267, !1288}
!1483 = distinct !{!1483, !1477, !"cmpfunc: %a"}
!1484 = distinct !{!1484, !1479, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1485 = distinct !{!1485, !1481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1486 = !{!1487, !1489, !1267, !1288}
!1487 = distinct !{!1487, !1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!1488 = distinct !{!1488, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!1489 = distinct !{!1489, !1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!1490 = distinct !{!1490, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E: %v.0"}
!1493 = distinct !{!1493, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h169ce8c75feb1a69E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1496 = distinct !{!1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1501 = distinct !{!1501, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E: %_0"}
!1504 = distinct !{!1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1501, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1517 = distinct !{!1517, !1504, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h09fa3bd784cd1f20E: %is_less"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1520 = distinct !{!1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1525, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1525 = distinct !{!1525, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1526 = !{!1527}
!1527 = distinct !{!1527, !1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE: %_0"}
!1528 = distinct !{!1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE"}
!1529 = !{!1530}
!1530 = distinct !{!1530, !1525, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
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
!1541 = distinct !{!1541, !1528, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb7c6704dd633df7dE: %is_less"}
!1542 = !{!1492, !1270}
!1543 = !{!1492, !1270, !1288}
!1544 = !{!1267, !1270, !1288}
!1545 = !{!1267, !1270}
!1546 = !{!1547, !1549, !1288}
!1547 = distinct !{!1547, !1548, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!1548 = distinct !{!1548, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!1549 = distinct !{!1549, !1550, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!1550 = distinct !{!1550, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1553 = distinct !{!1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1553, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1558, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1558 = distinct !{!1558, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZN4core5slice4sort6shared5pivot7median317hf9b98b1b159a1d22E: %c"}
!1561 = distinct !{!1561, !"_ZN4core5slice4sort6shared5pivot7median317hf9b98b1b159a1d22E"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1558, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"cmpfunc: %a"}
!1566 = distinct !{!1566, !"cmpfunc"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1566, !"cmpfunc: %b"}
!1569 = !{!1565, !1557, !1552, !1570}
!1570 = distinct !{!1570, !1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcc7462bc57edaca4E: %v.0"}
!1571 = distinct !{!1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcc7462bc57edaca4E"}
!1572 = !{!1568, !1563, !1555, !1560, !1573}
!1573 = distinct !{!1573, !1571, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcc7462bc57edaca4E: %is_less"}
!1574 = !{!1568, !1563, !1555, !1570}
!1575 = !{!1565, !1557, !1552, !1560, !1573}
!1576 = !{!1577, !1579, !1581, !1570}
!1577 = distinct !{!1577, !1578, !"cmpfunc: %b"}
!1578 = distinct !{!1578, !"cmpfunc"}
!1579 = distinct !{!1579, !1580, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1580 = distinct !{!1580, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1581 = distinct !{!1581, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1582 = distinct !{!1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1583 = !{!1584, !1585, !1586, !1573}
!1584 = distinct !{!1584, !1578, !"cmpfunc: %a"}
!1585 = distinct !{!1585, !1580, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1586 = distinct !{!1586, !1582, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1587 = !{!1588, !1590, !1592}
!1588 = distinct !{!1588, !1589, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !"cmpfunc"}
!1590 = distinct !{!1590, !1591, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1591 = distinct !{!1591, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1592 = distinct !{!1592, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1593 = distinct !{!1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1594 = !{!1595, !1596, !1597}
!1595 = distinct !{!1595, !1589, !"cmpfunc: %b"}
!1596 = distinct !{!1596, !1591, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1597 = distinct !{!1597, !1593, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha6f25b3c6c544e93E: %v.0"}
!1600 = distinct !{!1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha6f25b3c6c544e93E"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1600, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha6f25b3c6c544e93E: %scratch.0"}
!1603 = !{!1604, !1606, !1608, !1599}
!1604 = distinct !{!1604, !1605, !"cmpfunc: %b"}
!1605 = distinct !{!1605, !"cmpfunc"}
!1606 = distinct !{!1606, !1607, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1607 = distinct !{!1607, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1608 = distinct !{!1608, !1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1609 = distinct !{!1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1610 = !{!1611, !1612, !1613, !1602}
!1611 = distinct !{!1611, !1605, !"cmpfunc: %a"}
!1612 = distinct !{!1612, !1607, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1613 = distinct !{!1613, !1609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1614 = !{!1613}
!1615 = !{!1608}
!1616 = !{!1612}
!1617 = !{!1606}
!1618 = !{!1611}
!1619 = !{!1604}
!1620 = !{!1611, !1612, !1613, !1599}
!1621 = !{!1604, !1606, !1608, !1602}
!1622 = !{!1623, !1599}
!1623 = distinct !{!1623, !1624, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1624 = distinct !{!1624, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1625 = !{!1626, !1628, !1630, !1599}
!1626 = distinct !{!1626, !1627, !"cmpfunc: %a"}
!1627 = distinct !{!1627, !"cmpfunc"}
!1628 = distinct !{!1628, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1629 = distinct !{!1629, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1630 = distinct !{!1630, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1631 = distinct !{!1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1632 = !{!1633, !1634, !1635, !1602}
!1633 = distinct !{!1633, !1627, !"cmpfunc: %b"}
!1634 = distinct !{!1634, !1629, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1635 = distinct !{!1635, !1631, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1636 = !{!1637, !1599}
!1637 = distinct !{!1637, !1638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1638 = distinct !{!1638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1639 = !{!1640, !1642, !1644, !1599}
!1640 = distinct !{!1640, !1641, !"cmpfunc: %a"}
!1641 = distinct !{!1641, !"cmpfunc"}
!1642 = distinct !{!1642, !1643, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1643 = distinct !{!1643, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1644 = distinct !{!1644, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1645 = distinct !{!1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1646 = !{!1647, !1648, !1649, !1602}
!1647 = distinct !{!1647, !1641, !"cmpfunc: %b"}
!1648 = distinct !{!1648, !1643, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1649 = distinct !{!1649, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1650 = !{!1651, !1599}
!1651 = distinct !{!1651, !1652, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1652 = distinct !{!1652, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1653 = !{!1654, !1656, !1658, !1599}
!1654 = distinct !{!1654, !1655, !"cmpfunc: %a"}
!1655 = distinct !{!1655, !"cmpfunc"}
!1656 = distinct !{!1656, !1657, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1657 = distinct !{!1657, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1658 = distinct !{!1658, !1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1659 = distinct !{!1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1660 = !{!1661, !1662, !1663, !1602}
!1661 = distinct !{!1661, !1655, !"cmpfunc: %b"}
!1662 = distinct !{!1662, !1657, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1663 = distinct !{!1663, !1659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1664 = !{!1665, !1599}
!1665 = distinct !{!1665, !1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1666 = distinct !{!1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1667 = !{!1668, !1670, !1672, !1599}
!1668 = distinct !{!1668, !1669, !"cmpfunc: %b"}
!1669 = distinct !{!1669, !"cmpfunc"}
!1670 = distinct !{!1670, !1671, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1671 = distinct !{!1671, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1672 = distinct !{!1672, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1673 = distinct !{!1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1674 = !{!1675, !1676, !1677, !1602}
!1675 = distinct !{!1675, !1669, !"cmpfunc: %a"}
!1676 = distinct !{!1676, !1671, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1677 = distinct !{!1677, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1678 = !{!1677}
!1679 = !{!1672}
!1680 = !{!1676}
!1681 = !{!1670}
!1682 = !{!1675}
!1683 = !{!1668}
!1684 = !{!1675, !1676, !1677, !1599}
!1685 = !{!1668, !1670, !1672, !1602}
!1686 = !{!1687, !1599}
!1687 = distinct !{!1687, !1688, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1688 = distinct !{!1688, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1689 = !{!1690, !1602}
!1690 = distinct !{!1690, !1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1691 = distinct !{!1691, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1692 = !{!1690, !1599}
!1693 = !{!1599, !1602}
!1694 = distinct !{!1694, !667, !668}
!1695 = distinct !{!1695, !668, !667}
!1696 = !{!1697, !1699}
!1697 = distinct !{!1697, !1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE: %pair"}
!1698 = distinct !{!1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE"}
!1699 = distinct !{!1699, !1698, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h2c3ea85826788decE: %self.0"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E: %v.0"}
!1702 = distinct !{!1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1702, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hd6c65de0530d1a24E: %scratch.0"}
!1705 = !{!1706, !1708, !1710, !1712, !1701}
!1706 = distinct !{!1706, !1707, !"cmpfunc: %a"}
!1707 = distinct !{!1707, !"cmpfunc"}
!1708 = distinct !{!1708, !1709, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1709 = distinct !{!1709, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1710 = distinct !{!1710, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1711 = distinct !{!1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1712 = distinct !{!1712, !1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %b"}
!1713 = distinct !{!1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E"}
!1714 = !{!1715, !1716, !1717, !1718, !1704}
!1715 = distinct !{!1715, !1707, !"cmpfunc: %b"}
!1716 = distinct !{!1716, !1709, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1717 = distinct !{!1717, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1718 = distinct !{!1718, !1713, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %a"}
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
!1730 = distinct !{!1730, !1731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1731 = distinct !{!1731, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1732 = !{!1733, !1735, !1737, !1739, !1701}
!1733 = distinct !{!1733, !1734, !"cmpfunc: %b"}
!1734 = distinct !{!1734, !"cmpfunc"}
!1735 = distinct !{!1735, !1736, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1736 = distinct !{!1736, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1737 = distinct !{!1737, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1738 = distinct !{!1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1739 = distinct !{!1739, !1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %a"}
!1740 = distinct !{!1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E"}
!1741 = !{!1742, !1743, !1744, !1745, !1704}
!1742 = distinct !{!1742, !1734, !"cmpfunc: %a"}
!1743 = distinct !{!1743, !1736, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1744 = distinct !{!1744, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1745 = distinct !{!1745, !1740, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %b"}
!1746 = !{!1747, !1701}
!1747 = distinct !{!1747, !1748, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1748 = distinct !{!1748, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1749 = !{!1750, !1752, !1754, !1756, !1701}
!1750 = distinct !{!1750, !1751, !"cmpfunc: %b"}
!1751 = distinct !{!1751, !"cmpfunc"}
!1752 = distinct !{!1752, !1753, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1753 = distinct !{!1753, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1754 = distinct !{!1754, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1755 = distinct !{!1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1756 = distinct !{!1756, !1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %a"}
!1757 = distinct !{!1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E"}
!1758 = !{!1759, !1760, !1761, !1762, !1704}
!1759 = distinct !{!1759, !1751, !"cmpfunc: %a"}
!1760 = distinct !{!1760, !1753, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1761 = distinct !{!1761, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1762 = distinct !{!1762, !1757, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %b"}
!1763 = !{!1764, !1701}
!1764 = distinct !{!1764, !1765, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1765 = distinct !{!1765, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1766 = !{!1767, !1769, !1771, !1773, !1701}
!1767 = distinct !{!1767, !1768, !"cmpfunc: %b"}
!1768 = distinct !{!1768, !"cmpfunc"}
!1769 = distinct !{!1769, !1770, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1770 = distinct !{!1770, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1771 = distinct !{!1771, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1772 = distinct !{!1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1773 = distinct !{!1773, !1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %a"}
!1774 = distinct !{!1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E"}
!1775 = !{!1776, !1777, !1778, !1779, !1704}
!1776 = distinct !{!1776, !1768, !"cmpfunc: %a"}
!1777 = distinct !{!1777, !1770, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1778 = distinct !{!1778, !1772, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1779 = distinct !{!1779, !1774, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %b"}
!1780 = !{!1781, !1701}
!1781 = distinct !{!1781, !1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1782 = distinct !{!1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1783 = !{!1784, !1786, !1788, !1790, !1701}
!1784 = distinct !{!1784, !1785, !"cmpfunc: %a"}
!1785 = distinct !{!1785, !"cmpfunc"}
!1786 = distinct !{!1786, !1787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1787 = distinct !{!1787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1788 = distinct !{!1788, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1789 = distinct !{!1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1790 = distinct !{!1790, !1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %b"}
!1791 = distinct !{!1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E"}
!1792 = !{!1793, !1794, !1795, !1796, !1704}
!1793 = distinct !{!1793, !1785, !"cmpfunc: %b"}
!1794 = distinct !{!1794, !1787, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1795 = distinct !{!1795, !1789, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1796 = distinct !{!1796, !1791, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd46db6759bccaa76E: %a"}
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
!1808 = distinct !{!1808, !1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1809 = distinct !{!1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1810 = !{!1811, !1704}
!1811 = distinct !{!1811, !1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E: %self"}
!1812 = distinct !{!1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h5e64f76ae47072e1E"}
!1813 = !{!1811, !1701}
!1814 = !{!1701, !1704}
!1815 = distinct !{!1815, !667, !668}
!1816 = distinct !{!1816, !668, !667}
!1817 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1818 = !{!1819}
!1819 = distinct !{!1819, !1820, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1820 = distinct !{!1820, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1820, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1823 = !{!1824}
!1824 = distinct !{!1824, !1825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1825 = distinct !{!1825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1826 = !{!1827}
!1827 = distinct !{!1827, !1825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1828 = !{!1824, !1819, !1829, !1831}
!1829 = distinct !{!1829, !1830, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc4d4437a6bed7ee5E: %v.0"}
!1830 = distinct !{!1830, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc4d4437a6bed7ee5E"}
!1831 = distinct !{!1831, !1832, !"_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E: %v.0"}
!1832 = distinct !{!1832, !"_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E"}
!1833 = !{!1827, !1822}
!1834 = !{!1827, !1822, !1829, !1831}
!1835 = !{!1824, !1819}
!1836 = !{!1829, !1831}
!1837 = !{!1838, !1840, !1829, !1831}
!1838 = distinct !{!1838, !1839, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1839 = distinct !{!1839, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1840 = distinct !{!1840, !1841, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1"}
!1841 = distinct !{!1841, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E"}
!1842 = !{!1843, !1844}
!1843 = distinct !{!1843, !1839, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1844 = distinct !{!1844, !1841, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0"}
!1845 = !{!1846, !1848}
!1846 = distinct !{!1846, !1847, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!1847 = distinct !{!1847, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!1848 = distinct !{!1848, !1849, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!1849 = distinct !{!1849, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1820, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 0:It1"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1820, !"_ZN4core3ops8function5FnMut8call_mut17hf75529f6204db7d3E: argument 1:It1"}
!1854 = !{!1855}
!1855 = distinct !{!1855, !1825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!1856 = !{!1857}
!1857 = distinct !{!1857, !1825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!1858 = !{!1855, !1851, !1829, !1831}
!1859 = !{!1857, !1853}
!1860 = !{!1857, !1853, !1829, !1831}
!1861 = !{!1855, !1851}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE: %self.0"}
!1864 = distinct !{!1864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hc7d32db03b8e147aE"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"_ZN5alloc5slice11stable_sort17hb1281749dc048c28E: %v.0"}
!1867 = distinct !{!1867, !"_ZN5alloc5slice11stable_sort17hb1281749dc048c28E"}
!1868 = !{!1866, !1869, !1863}
!1869 = distinct !{!1869, !1867, !"_ZN5alloc5slice11stable_sort17hb1281749dc048c28E: argument 1"}
!1870 = !{!1871}
!1871 = distinct !{!1871, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1872 = distinct !{!1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1877 = distinct !{!1877, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1880 = !{!1881}
!1881 = distinct !{!1881, !1882, !"cmpfunc: %a"}
!1882 = distinct !{!1882, !"cmpfunc"}
!1883 = !{!1884}
!1884 = distinct !{!1884, !1882, !"cmpfunc: %b"}
!1885 = !{!1881, !1876, !1871, !1886, !1866, !1863}
!1886 = distinct !{!1886, !1887, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h05bb505b1774bdc0E: %v.0"}
!1887 = distinct !{!1887, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h05bb505b1774bdc0E"}
!1888 = !{!1884, !1879, !1874, !1869}
!1889 = !{!1884, !1879, !1874, !1886, !1866, !1863}
!1890 = !{!1881, !1876, !1871, !1869}
!1891 = !{!1886, !1866, !1863}
!1892 = !{!1869}
!1893 = !{!1894, !1896, !1898, !1886, !1866, !1863}
!1894 = distinct !{!1894, !1895, !"cmpfunc: %b"}
!1895 = distinct !{!1895, !"cmpfunc"}
!1896 = distinct !{!1896, !1897, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1"}
!1897 = distinct !{!1897, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE"}
!1898 = distinct !{!1898, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b"}
!1899 = distinct !{!1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE"}
!1900 = !{!1901, !1902, !1903, !1869}
!1901 = distinct !{!1901, !1895, !"cmpfunc: %a"}
!1902 = distinct !{!1902, !1897, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0"}
!1903 = distinct !{!1903, !1899, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a"}
!1904 = !{!1905, !1907, !1869}
!1905 = distinct !{!1905, !1906, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E: %self"}
!1906 = distinct !{!1906, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44cf1b57b2632594E"}
!1907 = distinct !{!1907, !1908, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E: %_1"}
!1908 = distinct !{!1908, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h38835ba059b64fe3E"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %a:It1"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1e921f3faa7e131bE: %b:It1"}
!1913 = !{!1914}
!1914 = distinct !{!1914, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 0:It1"}
!1915 = !{!1916}
!1916 = distinct !{!1916, !1877, !"_ZN4core3ops8function5FnMut8call_mut17h817132271d27bdbeE: argument 1:It1"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1882, !"cmpfunc: %a:It1"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1882, !"cmpfunc: %b:It1"}
!1921 = !{!1918, !1914, !1910, !1886, !1866, !1863}
!1922 = !{!1920, !1916, !1912, !1869}
!1923 = !{!1920, !1916, !1912, !1886, !1866, !1863}
!1924 = !{!1918, !1914, !1910, !1869}
