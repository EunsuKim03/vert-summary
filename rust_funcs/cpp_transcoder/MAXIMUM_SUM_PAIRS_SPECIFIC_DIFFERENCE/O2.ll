; ModuleID = 'MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_emit.fbf9afe122887a3f-cgu.0'
source_filename = "MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_emit.fbf9afe122887a3f-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_752a0f4127b3985f2bbc8acc1f7a6313 = private unnamed_addr constant [129 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_emit.rs\00", align 1
@alloc_bf59e646bb61a248b441087a84dfad10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_752a0f4127b3985f2bbc8acc1f7a6313, [16 x i8] c"\80\00\00\00\00\00\00\00\1B\00\00\00\07\00\00\00" }>, align 8
@alloc_867812af7dedc9233078db62fd9013bf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_752a0f4127b3985f2bbc8acc1f7a6313, [16 x i8] c"\80\00\00\00\00\00\00\00\1E\00\00\00\0F\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h462293dda90134e3E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h462293dda90134e3E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h462293dda90134e3E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h462293dda90134e3E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  %_3.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !16, !noalias !17, !noundef !18
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !19, !noalias !20, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %_4.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !21, !noalias !26, !noundef !18
  %_0.i.i7 = icmp slt i32 %_3.i.i, %_4.i.i6
  %6 = xor i1 %_0.i.i, %_0.i.i7
  %_0.i.i10 = icmp slt i32 %_4.i.i, %_4.i.i6
  %_12.i = xor i1 %_0.i.i, %_0.i.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hef695c5163c56ef9E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hef695c5163c56ef9E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hef695c5163c56ef9E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hef695c5163c56ef9E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hcfc76b6f698d4d28E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !72, !noalias !73, !noundef !18
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !73, !noalias !72, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !84, !noalias !85, !noundef !18
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !85, !noalias !84, !noundef !18
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
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !96, !noalias !97, !noundef !18
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !97, !noalias !96, !noundef !18
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !108, !noalias !109, !noundef !18
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !109, !noalias !108, !noundef !18
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i, i32 %_4.i.i11.i)
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !120, !noalias !121, !noundef !18
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !121, !noalias !120, !noundef !18
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
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !132, !noalias !133, !noundef !18
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !133, !noalias !132, !noundef !18
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !144, !noalias !145, !noundef !18
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !145, !noalias !144, !noundef !18
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
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !156, !noalias !157, !noundef !18
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !157, !noalias !156, !noundef !18
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !168, !noalias !169, !noundef !18
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !169, !noalias !168, !noundef !18
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i19, i32 %_4.i.i11.i20)
  %10 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %_3.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !180, !noalias !181, !noundef !18
  %_4.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !181, !noalias !180, !noundef !18
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
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !204, !noalias !205, !noundef !18
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !206, !noalias !207, !noundef !18
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
  %_3.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !219, !noalias !220, !noundef !18
  %_4.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !221, !noalias !222, !noundef !18
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
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !231, !noalias !232, !noundef !18
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !233, !noalias !234, !noundef !18
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
  %_3.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !243, !noalias !244, !noundef !18
  %_4.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !245, !noalias !246, !noundef !18
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
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !255, !noalias !256, !noundef !18
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !257, !noalias !258, !noundef !18
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
  %_3.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !267, !noalias !268, !noundef !18
  %_4.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !269, !noalias !270, !noundef !18
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E.exit, !prof !271

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #19, !noalias !182
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hea438bf02b89c5aeE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !287, !noalias !288, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !288, !noalias !287, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !304, !noalias !305, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !305, !noalias !304, !noundef !18
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
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !321, !noalias !322, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !322, !noalias !321, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !338, !noalias !339, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !339, !noalias !338, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !355, !noalias !356, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !356, !noalias !355, !noundef !18
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
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !372, !noalias !373, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !373, !noalias !372, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !389, !noalias !390, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !390, !noalias !389, !noundef !18
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
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !406, !noalias !407, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !407, !noalias !406, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !423, !noalias !424, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !424, !noalias !423, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !440, !noalias !441, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !441, !noalias !440, !noundef !18
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
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !445, !noalias !452, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !458
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !460, !noalias !467, !noundef !18
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
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !488, !noalias !489, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !490, !noalias !491, !noundef !18
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
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !505, !noalias !506, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !507, !noalias !508, !noundef !18
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
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !521, !noalias !522, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !523, !noalias !524, !noundef !18
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
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !537, !noalias !538, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !539, !noalias !540, !noundef !18
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
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !553, !noalias !554, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !555, !noalias !556, !noundef !18
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
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !569, !noalias !570, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !571, !noalias !572, !noundef !18
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E.exit, !prof !271

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #19, !noalias !442
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h03fb5ed0d1e9a466E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb3.i.i.i, !prof !573

bb3.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !574
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !574
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb3.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb3.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb3.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb3.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h19d4c0e58859ddffE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !579
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !588
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h4af889ee3b355f33E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb3.i.i.i, !prof !573

bb3.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !597
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !597
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %bb3.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb3.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb3.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb3.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h72f04ba909f92f53E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !602
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !611
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h19d4c0e58859ddffE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i, %bb30
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
  %_3.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !633, !noalias !634, !noundef !18
  %_4.i.i63 = load i32, ptr %_82, align 4, !alias.scope !635, !noalias !636, !noundef !18
  %_0.i.i64 = icmp slt i32 %_3.i.i62, %_4.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i60 = phi i32 [ %_3.i.i59, %bb15.i.i ], [ %_3.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_3.i.i59 = load i32, ptr %2, align 4, !alias.scope !637, !noalias !642, !noundef !18
  %_0.i.i61 = icmp slt i32 %_3.i.i59, %_4.i.i60
  br i1 %_0.i.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_3.i.i, %bb7.i.i ], [ %_3.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !645, !noalias !650, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i58
  br i1 %_0.i.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i
  br i1 %_0.i.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #22
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653), !noalias !656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !656
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h90885350d4c544d4E.exit.i.thread101 ]
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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !660, !noalias !663, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !664, !noalias !665
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !660, !noalias !663
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !664, !noalias !665
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !669

_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #22
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit, label %bb5.i45

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
  %_3.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !686, !noalias !687, !noundef !18
  %_4.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !690, !noalias !691, !noundef !18
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
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !703, !noalias !704, !noundef !18
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !707, !noalias !708, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit

_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #22
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h4ec9ff6503f3635cE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #22
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h72f04ba909f92f53E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i, %bb30
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
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !733, !noalias !734, !noundef !18
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !735, !noalias !736, !noundef !18
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !737, !noalias !744, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !748, !noalias !755, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759), !noalias !762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !762
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbf3569157c49a50cE.exit.i.thread100 ]
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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !766, !noalias !769, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !770, !noalias !771
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !766, !noalias !769
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !770, !noalias !771
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !773

_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit, label %bb5.i45

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
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !795, !noalias !796, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !799, !noalias !800, !noundef !18
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
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !817, !noalias !818, !noundef !18
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !821, !noalias !822, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit

_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hbad53c657d703e43E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hea438bf02b89c5aeE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hea438bf02b89c5aeE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !849, !noalias !850, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !852, !noalias !853, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !869, !noalias !870, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !871, !noalias !872, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !888, !noalias !889, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !890, !noalias !891, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !907, !noalias !908, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !909, !noalias !910, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !926, !noalias !927, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !928, !noalias !929, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !832, !noalias !930
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !832, !noalias !930
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !832, !noalias !930
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !832, !noalias !930
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !946, !noalias !947, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !948, !noalias !949, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !965, !noalias !966, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !967, !noalias !968, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !984, !noalias !985, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !986, !noalias !987, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1003, !noalias !1004, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1005, !noalias !1006, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1022, !noalias !1023, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1024, !noalias !1025, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !832, !noalias !930
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !832, !noalias !930
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !832, !noalias !930
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !832, !noalias !930
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !829, !noalias !1026
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !832, !noalias !930
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !829, !noalias !1026
  store i32 %25, ptr %24, align 4, !alias.scope !832, !noalias !930
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !829, !noalias !1026
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !832, !noalias !930
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1027, !noalias !1034, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !832, !noalias !930
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1038, !noalias !1045, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !832, !noalias !1049
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1068), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1073), !noalias !1065
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1075, !noalias !1076, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1077, !noalias !1078, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !829, !noalias !1079
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086), !noalias !1089
  call void @llvm.experimental.noalias.scope.decl(metadata !1092), !noalias !1089
  call void @llvm.experimental.noalias.scope.decl(metadata !1094), !noalias !1089
  call void @llvm.experimental.noalias.scope.decl(metadata !1097), !noalias !1089
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1099, !noalias !1100, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1101, !noalias !1102, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !829, !noalias !1103
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1105, !noalias !930
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !829, !noalias !1106
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
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #19
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1107

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1108, !noalias !1109
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !829, !noalias !1026
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !832, !noalias !930
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1027, !noalias !1034, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !832, !noalias !930
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1038, !noalias !1045, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !832, !noalias !1049
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hef695c5163c56ef9E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119), !noalias !1122
  call void @llvm.experimental.noalias.scope.decl(metadata !1125), !noalias !1122
  call void @llvm.experimental.noalias.scope.decl(metadata !1127), !noalias !1122
  call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1122
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1132, !noalias !1135, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1137, !noalias !1138, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1139, !noalias !1146, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h72f04ba909f92f53E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1150, !noalias !1157, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1166, !noalias !1173, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1183, !noalias !1184, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1164, !noalias !1185
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1188, !noalias !1195, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1164, !noalias !1199
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1202, !noalias !1209, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1164, !noalias !1213
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1216, !noalias !1223, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1164, !noalias !1227
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1230, !noalias !1237, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1247, !noalias !1248, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1164, !noalias !1249
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1161, !noalias !1252
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1164, !noalias !1255
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1256
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1164, !noalias !1161
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1164, !noalias !1161
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1161, !noalias !1164
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1161, !noalias !1164
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1257

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1164, !noalias !1161
  store i32 %78, ptr %75, align 4, !alias.scope !1161, !noalias !1164
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1258

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit", !prof !1259

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #19, !noalias !1260
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h160bbf113b8220baE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1269, !noalias !1278, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1291, !noalias !1292, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1267, !noalias !1293
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1296, !noalias !1305, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1267, !noalias !1310
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1313, !noalias !1322, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1267, !noalias !1327
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1330, !noalias !1339, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1267, !noalias !1344
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1347, !noalias !1356, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1369, !noalias !1370, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1267, !noalias !1371
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1264, !noalias !1374
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1267, !noalias !1377
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1378
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1267, !noalias !1264
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1267, !noalias !1264
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1264, !noalias !1267
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1264, !noalias !1267
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1267, !noalias !1264
  store i32 %108, ptr %105, align 4, !alias.scope !1264, !noalias !1267
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E.exit, label %bb42.i66, !llvm.loop !1380

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1259

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #19
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hcfc76b6f698d4d28E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hcfc76b6f698d4d28E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %_3.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1396, !noalias !1397, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1399, !noalias !1400, !noundef !18
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %_3.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1411, !noalias !1412, !noundef !18
  %_4.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1413, !noalias !1414, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %_3.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1425, !noalias !1426, !noundef !18
  %_4.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1427, !noalias !1428, !noundef !18
  %_0.i.i12.i.i = icmp slt i32 %_3.i.i10.i.i, %_4.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %_3.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1439, !noalias !1440, !noundef !18
  %_4.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1441, !noalias !1442, !noundef !18
  %_0.i.i15.i.i = icmp slt i32 %_3.i.i13.i.i, %_4.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i.i, i32 %_4.i.i11.i.i)
  %6 = select i1 %_0.i.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %_3.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1453, !noalias !1454, !noundef !18
  %_4.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1455, !noalias !1456, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1384, !noalias !1457
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1384, !noalias !1457
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1384, !noalias !1457
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i.i, i32 %_4.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1384, !noalias !1457
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %_3.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1468, !noalias !1469, !noundef !18
  %_4.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1470, !noalias !1471, !noundef !18
  %_0.i.i.i16.i = icmp slt i32 %_3.i.i.i14.i, %_4.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %_3.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1482, !noalias !1483, !noundef !18
  %_4.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1484, !noalias !1485, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %_3.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1496, !noalias !1497, !noundef !18
  %_4.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1498, !noalias !1499, !noundef !18
  %_0.i.i12.i33.i = icmp slt i32 %_3.i.i10.i31.i, %_4.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %_3.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1510, !noalias !1511, !noundef !18
  %_4.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1512, !noalias !1513, !noundef !18
  %_0.i.i15.i36.i = icmp slt i32 %_3.i.i13.i34.i, %_4.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i31.i, i32 %_4.i.i11.i32.i)
  %15 = select i1 %_0.i.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %_3.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1524, !noalias !1525, !noundef !18
  %_4.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1526, !noalias !1527, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1384, !noalias !1457
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1384, !noalias !1457
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1384, !noalias !1457
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i34.i, i32 %_4.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1384, !noalias !1457
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1381, !noalias !1528
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1384, !noalias !1457
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1381, !noalias !1528
  store i32 %25, ptr %24, align 4, !alias.scope !1384, !noalias !1457
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1381, !noalias !1528
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1384, !noalias !1457
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1529, !noalias !1534, !noundef !18
  %_0.i.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i55.1.i
  br i1 %_0.i.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1384, !noalias !1457
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1537, !noalias !1542, !noundef !18
  %_0.i.i3.i.1.i = icmp slt i32 %27, %_4.i.i2.i.1.i
  br i1 %_0.i.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1384, !noalias !1545
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  call void @llvm.experimental.noalias.scope.decl(metadata !1558), !noalias !1561
  call void @llvm.experimental.noalias.scope.decl(metadata !1564), !noalias !1561
  %_3.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1566, !noalias !1567, !noundef !18
  %_4.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1568, !noalias !1569, !noundef !18
  %_0.i.i.i50.i = icmp slt i32 %_3.i.i.i48.i, %_4.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i48.i, i32 %_4.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1381, !noalias !1570
  %count.i.i.i = zext i1 %_0.i.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.experimental.noalias.scope.decl(metadata !1577), !noalias !1580
  call void @llvm.experimental.noalias.scope.decl(metadata !1583), !noalias !1580
  %_3.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1585, !noalias !1586, !noundef !18
  %_4.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1587, !noalias !1588, !noundef !18
  %_0.i.i21.i.i = icmp slt i32 %_3.i.i19.i.i, %_4.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i19.i.i, i32 %_4.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1381, !noalias !1589
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1591, !noalias !1457
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1381, !noalias !1592
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
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #19
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1593

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1594, !noalias !1595
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1381, !noalias !1528
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1384, !noalias !1457
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1529, !noalias !1534, !noundef !18
  %_0.i.i.i56.i = icmp slt i32 %44, %_4.i.i.i55.i
  br i1 %_0.i.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1384, !noalias !1457
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1537, !noalias !1542, !noundef !18
  %_0.i.i3.i.i = icmp slt i32 %44, %_4.i.i2.i.i
  br i1 %_0.i.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1384, !noalias !1545
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h462293dda90134e3E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605), !noalias !1608
  call void @llvm.experimental.noalias.scope.decl(metadata !1611), !noalias !1608
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1613, !noalias !1616, !noundef !18
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1618, !noalias !1619, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1620, !noalias !1625, !noundef !18
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %49 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h19d4c0e58859ddffE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
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
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1628, !noalias !1633, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
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
  %_4.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1641, !noalias !1646, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  %_3.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1653, !noalias !1654, !noundef !18
  %_0.i.i.i31 = icmp slt i32 %_3.i.i.i29, %_4.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1639, !noalias !1655
  %_8.i.i = zext i1 %_0.i.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1658, !noalias !1663, !noundef !18
  %_0.i.i27.i = icmp slt i32 %_3.i.i25.i, %_4.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1639, !noalias !1666
  %_8.i33.i = zext i1 %_0.i.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1669, !noalias !1674, !noundef !18
  %_0.i.i37.i = icmp slt i32 %_3.i.i35.i, %_4.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1639, !noalias !1677
  %_8.i43.i = zext i1 %_0.i.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1680, !noalias !1685, !noundef !18
  %_0.i.i47.i = icmp slt i32 %_3.i.i45.i, %_4.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1639, !noalias !1688
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
  %_4.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1691, !noalias !1696, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %_3.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1703, !noalias !1704, !noundef !18
  %_0.i.i57.i = icmp slt i32 %_3.i.i55.i, %_4.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1639, !noalias !1705
  %_8.i63.i = zext i1 %_0.i.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1636, !noalias !1708
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1639, !noalias !1711
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1712
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1639, !noalias !1636
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1639, !noalias !1636
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1636, !noalias !1639
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1636, !noalias !1639
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1713

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1639, !noalias !1636
  store i32 %78, ptr %75, align 4, !alias.scope !1636, !noalias !1639
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1714

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit", !prof !1259

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #19, !noalias !1715
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6fa2ab239eaf9181E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
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
  %_3.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1724, !noalias !1731, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %_4.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1741, !noalias !1742, !noundef !18
  %_0.i.i.i.i84 = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1722, !noalias !1743
  %_8.i.i87 = zext i1 %_0.i.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1746, !noalias !1753, !noundef !18
  %_0.i.i.i27.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1722, !noalias !1757
  %_8.i33.i91 = zext i1 %_0.i.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1760, !noalias !1767, !noundef !18
  %_0.i.i.i37.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1722, !noalias !1771
  %_8.i43.i95 = zext i1 %_0.i.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1774, !noalias !1781, !noundef !18
  %_0.i.i.i47.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1722, !noalias !1785
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
  %_3.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1788, !noalias !1795, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %_4.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1805, !noalias !1806, !noundef !18
  %_0.i.i.i57.i = icmp sge i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1722, !noalias !1807
  %_8.i63.i75 = zext i1 %_0.i.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1719, !noalias !1810
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1722, !noalias !1813
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1722, !noalias !1719
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1722, !noalias !1719
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1719, !noalias !1722
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1719, !noalias !1722
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1815

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1722, !noalias !1719
  store i32 %108, ptr %105, align 4, !alias.scope !1719, !noalias !1722
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E.exit, label %bb42.i66, !llvm.loop !1816

_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1259

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #19
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
define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %K) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1817
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1817
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %bb9.i

bb3.i.i:                                          ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 8) #21, !noalias !1823
  unreachable

bb9.i:                                            ; preds = %start
  store i64 %0, ptr %1, align 4, !noalias !1823
  %tail.sroa.0.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %4, %5
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i

bb10.i.i.i:                                       ; preds = %bb9.i
  store i32 %5, ptr %tail.sroa.0.04.i.i.ptr, align 4, !alias.scope !1824
  store i32 %4, ptr %1, align 4, !alias.scope !1824, !noalias !1829
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i: ; preds = %bb10.i.i.i, %bb9.i
  %iter2 = sext i32 %N to i64
  %_21.0.i.i.i = shl nsw i64 %iter2, 2
  %_21.1.i.i.i = icmp slt i32 %N, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !573

cleanup:                                          ; preds = %bb14.i
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

bb17.i.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i
  %_8.i.i = icmp eq i32 %N, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1834
; call __rustc::__rust_alloc_zeroed
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1834
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb14.i, label %bb19

bb14.i:                                           ; preds = %bb3.i3.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb14.i
  unreachable

bb19:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %7, align 4
  %_6058.not = icmp eq i32 %N, 1
  br i1 %_6058.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37", label %bb25

panic:                                            ; preds = %bb17.i.i
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bf59e646bb61a248b441087a84dfad10) #21
          to label %unreachable unwind label %cleanup3.thread52

cleanup3.thread52:                                ; preds = %panic
  %lpad.thr_comm.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

cleanup3.thread:                                  ; preds = %panic7
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1839
  br label %bb15

unreachable:                                      ; preds = %panic7, %panic
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37": ; preds = %bb10, %bb19
  %9 = getelementptr i32, ptr %7, i64 %iter2
  %_47 = getelementptr i8, ptr %9, i64 -4
  %_0 = load i32, ptr %_47, align 4, !noundef !18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1848
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1857
  ret i32 %_0

bb25:                                             ; preds = %bb19
  %_17 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %_17, align 4
  %_20 = load i32, ptr %tail.sroa.0.04.i.i.ptr, align 4, !noundef !18
  %_22 = load i32, ptr %1, align 4, !noundef !18
  %_19 = sub i32 %_20, %_22
  %_18 = icmp slt i32 %_19, %K
  br i1 %_18, label %bb38, label %bb10

panic7:                                           ; preds = %bb10
  %_17.1 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %_14.1, ptr %_17.1, align 4
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_867812af7dedc9233078db62fd9013bf) #21
          to label %unreachable unwind label %cleanup3.thread

bb10:                                             ; preds = %bb38, %bb25
  %_14.1 = phi i32 [ %_0.sroa.0.0.i, %bb38 ], [ 0, %bb25 ]
  %exitcond65.not = icmp samesign ult i32 %N, 3
  br i1 %exitcond65.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37", label %panic7

bb38:                                             ; preds = %bb25
  %_41 = add i32 %_22, %_20
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_41, i32 0)
  store i32 %_0.sroa.0.0.i, ptr %_17, align 4
  br label %bb10

bb15:                                             ; preds = %cleanup, %cleanup3.thread52, %cleanup3.thread
  %.pn = phi { ptr, i32 } [ %6, %cleanup ], [ %lpad.thr_comm, %cleanup3.thread ], [ %lpad.thr_comm.split-lp54, %cleanup3.thread52 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1866
  resume { ptr, i32 } %.pn
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1875
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1881
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E.exit", label %bb7.i.i, !prof !1883

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1883

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h4af889ee3b355f33E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1899, !noalias !1902, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1903, !noalias !1904, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1905, !noalias !1906
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1907, !noalias !1914, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1905, !noalias !1918
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1899, !noalias !1902, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1903, !noalias !1904, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1905, !noalias !1906
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1907, !noalias !1914, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1905, !noalias !1918
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1935, !noalias !1936, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1937, !noalias !1938, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1905, !noalias !1906
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1907, !noalias !1914, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1905, !noalias !1918
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he3dda4c4c0714ff4E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1875
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

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #14

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #15

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

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
attributes #14 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline noreturn }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!5 = distinct !{!5, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!10 = distinct !{!10, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317hb2288a3501205c50E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317hb2288a3501205c50E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!16 = !{!9, !4}
!17 = !{!15, !7, !12}
!18 = !{}
!19 = !{!15, !7}
!20 = !{!9, !4, !12}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!23 = distinct !{!23, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!24 = distinct !{!24, !25, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!25 = distinct !{!25, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!26 = !{!27, !28}
!27 = distinct !{!27, !23, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!28 = distinct !{!28, !25, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!31 = distinct !{!31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!36 = distinct !{!36, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core5slice4sort6shared5pivot7median317h3f58585d29b092e0E: %c"}
!39 = distinct !{!39, !"_ZN4core5slice4sort6shared5pivot7median317h3f58585d29b092e0E"}
!40 = !{!41}
!41 = distinct !{!41, !36, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
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
!54 = distinct !{!54, !55, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!55 = distinct !{!55, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!56 = distinct !{!56, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!57 = distinct !{!57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!58 = !{!59, !60, !61}
!59 = distinct !{!59, !53, !"cmpfunc: %a"}
!60 = distinct !{!60, !55, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!61 = distinct !{!61, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!64 = distinct !{!64, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!69 = distinct !{!69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!72 = !{!68, !63}
!73 = !{!71, !66}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!76 = distinct !{!76, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!81 = distinct !{!81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!84 = !{!80, !75}
!85 = !{!83, !78}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!88 = distinct !{!88, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!93 = distinct !{!93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!96 = !{!92, !87}
!97 = !{!95, !90}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!100 = distinct !{!100, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!105 = distinct !{!105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!108 = !{!104, !99}
!109 = !{!107, !102}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!112 = distinct !{!112, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!117 = distinct !{!117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!120 = !{!116, !111}
!121 = !{!119, !114}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!124 = distinct !{!124, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!129 = distinct !{!129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!132 = !{!128, !123}
!133 = !{!131, !126}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!141 = distinct !{!141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!144 = !{!140, !135}
!145 = !{!143, !138}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!148 = distinct !{!148, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!153 = distinct !{!153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!156 = !{!152, !147}
!157 = !{!155, !150}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!160 = distinct !{!160, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!165 = distinct !{!165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!168 = !{!164, !159}
!169 = !{!167, !162}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!172 = distinct !{!172, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!177 = distinct !{!177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!180 = !{!176, !171}
!181 = !{!179, !174}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E: %v.0"}
!184 = distinct !{!184, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E"}
!185 = !{!186, !188, !183}
!186 = distinct !{!186, !187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E: %_0"}
!187 = distinct !{!187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E"}
!188 = distinct !{!188, !187, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E: %is_less"}
!189 = !{!190, !192, !183}
!190 = distinct !{!190, !191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE: %_0"}
!191 = distinct !{!191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE"}
!192 = distinct !{!192, !191, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE: %is_less"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It1"}
!195 = distinct !{!195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It1"}
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
!209 = distinct !{!209, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It1"}
!210 = distinct !{!210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It1"}
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
!224 = distinct !{!224, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It2"}
!225 = !{!226}
!226 = distinct !{!226, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It2"}
!227 = !{!228}
!228 = distinct !{!228, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!229 = !{!230}
!230 = distinct !{!230, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!231 = !{!228, !224, !183}
!232 = !{!230, !226, !186}
!233 = !{!230, !226, !183}
!234 = !{!228, !224, !186}
!235 = !{!236}
!236 = distinct !{!236, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It2"}
!237 = !{!238}
!238 = distinct !{!238, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It2"}
!239 = !{!240}
!240 = distinct !{!240, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!241 = !{!242}
!242 = distinct !{!242, !215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!243 = !{!240, !236, !183}
!244 = !{!242, !238, !190}
!245 = !{!242, !238, !183}
!246 = !{!240, !236, !190}
!247 = !{!248}
!248 = distinct !{!248, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It3"}
!249 = !{!250}
!250 = distinct !{!250, !195, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It3"}
!251 = !{!252}
!252 = distinct !{!252, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!253 = !{!254}
!254 = distinct !{!254, !200, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!255 = !{!252, !248, !183}
!256 = !{!254, !250, !186}
!257 = !{!254, !250, !183}
!258 = !{!252, !248, !186}
!259 = !{!260}
!260 = distinct !{!260, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0:It3"}
!261 = !{!262}
!262 = distinct !{!262, !210, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1:It3"}
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
!273 = distinct !{!273, !274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!274 = distinct !{!274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!279 = distinct !{!279, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"cmpfunc: %a"}
!284 = distinct !{!284, !"cmpfunc"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"cmpfunc: %b"}
!287 = !{!283, !278, !273}
!288 = !{!286, !281, !276}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!291 = distinct !{!291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!296 = distinct !{!296, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"cmpfunc: %a"}
!301 = distinct !{!301, !"cmpfunc"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"cmpfunc: %b"}
!304 = !{!300, !295, !290}
!305 = !{!303, !298, !293}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!308 = distinct !{!308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!313 = distinct !{!313, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"cmpfunc: %a"}
!318 = distinct !{!318, !"cmpfunc"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"cmpfunc: %b"}
!321 = !{!317, !312, !307}
!322 = !{!320, !315, !310}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!325 = distinct !{!325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!330 = distinct !{!330, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"cmpfunc: %a"}
!335 = distinct !{!335, !"cmpfunc"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"cmpfunc: %b"}
!338 = !{!334, !329, !324}
!339 = !{!337, !332, !327}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!342 = distinct !{!342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!347 = distinct !{!347, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"cmpfunc: %a"}
!352 = distinct !{!352, !"cmpfunc"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"cmpfunc: %b"}
!355 = !{!351, !346, !341}
!356 = !{!354, !349, !344}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!359 = distinct !{!359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!364 = distinct !{!364, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"cmpfunc: %a"}
!369 = distinct !{!369, !"cmpfunc"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"cmpfunc: %b"}
!372 = !{!368, !363, !358}
!373 = !{!371, !366, !361}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!376 = distinct !{!376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!381 = distinct !{!381, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"cmpfunc: %a"}
!386 = distinct !{!386, !"cmpfunc"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"cmpfunc: %b"}
!389 = !{!385, !380, !375}
!390 = !{!388, !383, !378}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!393 = distinct !{!393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!398 = distinct !{!398, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"cmpfunc: %a"}
!403 = distinct !{!403, !"cmpfunc"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"cmpfunc: %b"}
!406 = !{!402, !397, !392}
!407 = !{!405, !400, !395}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!410 = distinct !{!410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!415 = distinct !{!415, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"cmpfunc: %a"}
!420 = distinct !{!420, !"cmpfunc"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"cmpfunc: %b"}
!423 = !{!419, !414, !409}
!424 = !{!422, !417, !412}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!427 = distinct !{!427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!432 = distinct !{!432, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"cmpfunc: %a"}
!437 = distinct !{!437, !"cmpfunc"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"cmpfunc: %b"}
!440 = !{!436, !431, !426}
!441 = !{!439, !434, !429}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E: %v.0"}
!444 = distinct !{!444, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E"}
!445 = !{!446, !448, !450, !443}
!446 = distinct !{!446, !447, !"cmpfunc: %b"}
!447 = distinct !{!447, !"cmpfunc"}
!448 = distinct !{!448, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!449 = distinct !{!449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!450 = distinct !{!450, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!451 = distinct !{!451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!452 = !{!453, !454, !455, !456}
!453 = distinct !{!453, !447, !"cmpfunc: %a"}
!454 = distinct !{!454, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!455 = distinct !{!455, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!456 = distinct !{!456, !457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE: %_0"}
!457 = distinct !{!457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE"}
!458 = !{!456, !459, !443}
!459 = distinct !{!459, !457, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE: %is_less"}
!460 = !{!461, !463, !465, !443}
!461 = distinct !{!461, !462, !"cmpfunc: %b"}
!462 = distinct !{!462, !"cmpfunc"}
!463 = distinct !{!463, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!464 = distinct !{!464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!465 = distinct !{!465, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!466 = distinct !{!466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!467 = !{!468, !469, !470, !471}
!468 = distinct !{!468, !462, !"cmpfunc: %a"}
!469 = distinct !{!469, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!470 = distinct !{!470, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!471 = distinct !{!471, !472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE: %_0"}
!472 = distinct !{!472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE"}
!473 = !{!471, !474, !443}
!474 = distinct !{!474, !472, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE: %is_less"}
!475 = !{!476}
!476 = distinct !{!476, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It1"}
!477 = !{!478}
!478 = distinct !{!478, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It1"}
!479 = !{!480}
!480 = distinct !{!480, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It1"}
!481 = !{!456}
!482 = !{!483}
!483 = distinct !{!483, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It1"}
!484 = !{!485}
!485 = distinct !{!485, !447, !"cmpfunc: %a:It1"}
!486 = !{!487}
!487 = distinct !{!487, !447, !"cmpfunc: %b:It1"}
!488 = !{!485, !480, !476, !443}
!489 = !{!487, !483, !478, !456}
!490 = !{!487, !483, !478, !443}
!491 = !{!485, !480, !476, !456}
!492 = !{!493}
!493 = distinct !{!493, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It1"}
!494 = !{!495}
!495 = distinct !{!495, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It1"}
!496 = !{!497}
!497 = distinct !{!497, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It1"}
!498 = !{!471}
!499 = !{!500}
!500 = distinct !{!500, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It1"}
!501 = !{!502}
!502 = distinct !{!502, !462, !"cmpfunc: %a:It1"}
!503 = !{!504}
!504 = distinct !{!504, !462, !"cmpfunc: %b:It1"}
!505 = !{!502, !497, !493, !443}
!506 = !{!504, !500, !495, !471}
!507 = !{!504, !500, !495, !443}
!508 = !{!502, !497, !493, !471}
!509 = !{!510}
!510 = distinct !{!510, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It2"}
!511 = !{!512}
!512 = distinct !{!512, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It2"}
!513 = !{!514}
!514 = distinct !{!514, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It2"}
!515 = !{!516}
!516 = distinct !{!516, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It2"}
!517 = !{!518}
!518 = distinct !{!518, !447, !"cmpfunc: %a:It2"}
!519 = !{!520}
!520 = distinct !{!520, !447, !"cmpfunc: %b:It2"}
!521 = !{!518, !514, !510, !443}
!522 = !{!520, !516, !512, !456}
!523 = !{!520, !516, !512, !443}
!524 = !{!518, !514, !510, !456}
!525 = !{!526}
!526 = distinct !{!526, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It2"}
!527 = !{!528}
!528 = distinct !{!528, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It2"}
!529 = !{!530}
!530 = distinct !{!530, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It2"}
!531 = !{!532}
!532 = distinct !{!532, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It2"}
!533 = !{!534}
!534 = distinct !{!534, !462, !"cmpfunc: %a:It2"}
!535 = !{!536}
!536 = distinct !{!536, !462, !"cmpfunc: %b:It2"}
!537 = !{!534, !530, !526, !443}
!538 = !{!536, !532, !528, !471}
!539 = !{!536, !532, !528, !443}
!540 = !{!534, !530, !526, !471}
!541 = !{!542}
!542 = distinct !{!542, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It3"}
!543 = !{!544}
!544 = distinct !{!544, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It3"}
!545 = !{!546}
!546 = distinct !{!546, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It3"}
!547 = !{!548}
!548 = distinct !{!548, !449, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It3"}
!549 = !{!550}
!550 = distinct !{!550, !447, !"cmpfunc: %a:It3"}
!551 = !{!552}
!552 = distinct !{!552, !447, !"cmpfunc: %b:It3"}
!553 = !{!550, !546, !542, !443}
!554 = !{!552, !548, !544, !456}
!555 = !{!552, !548, !544, !443}
!556 = !{!550, !546, !542, !456}
!557 = !{!558}
!558 = distinct !{!558, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It3"}
!559 = !{!560}
!560 = distinct !{!560, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It3"}
!561 = !{!562}
!562 = distinct !{!562, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It3"}
!563 = !{!564}
!564 = distinct !{!564, !464, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It3"}
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
!575 = distinct !{!575, !576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE: %_0"}
!576 = distinct !{!576, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE"}
!577 = distinct !{!577, !578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7dd2c3fa1a8926e9E: %_0"}
!578 = distinct !{!578, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7dd2c3fa1a8926e9E"}
!579 = !{!580, !582, !584, !586}
!580 = distinct !{!580, !581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!581 = distinct !{!581, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!582 = distinct !{!582, !583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!583 = distinct !{!583, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!584 = distinct !{!584, !585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!585 = distinct !{!585, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!586 = distinct !{!586, !587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!587 = distinct !{!587, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!588 = !{!589, !591, !593, !595}
!589 = distinct !{!589, !590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!590 = distinct !{!590, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!591 = distinct !{!591, !592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!592 = distinct !{!592, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!593 = distinct !{!593, !594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!594 = distinct !{!594, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!595 = distinct !{!595, !596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!596 = distinct !{!596, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!597 = !{!598, !600}
!598 = distinct !{!598, !599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE: %_0"}
!599 = distinct !{!599, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE"}
!600 = distinct !{!600, !601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7dd2c3fa1a8926e9E: %_0"}
!601 = distinct !{!601, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7dd2c3fa1a8926e9E"}
!602 = !{!603, !605, !607, !609}
!603 = distinct !{!603, !604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!604 = distinct !{!604, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!605 = distinct !{!605, !606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!606 = distinct !{!606, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!607 = distinct !{!607, !608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!608 = distinct !{!608, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!611 = !{!612, !614, !616, !618}
!612 = distinct !{!612, !613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!613 = distinct !{!613, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!614 = distinct !{!614, !615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!615 = distinct !{!615, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!616 = distinct !{!616, !617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!617 = distinct !{!617, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!618 = distinct !{!618, !619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!619 = distinct !{!619, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!622 = distinct !{!622, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!627 = distinct !{!627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E: %scratch.0"}
!630 = distinct !{!630, !"_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E"}
!631 = !{!632}
!632 = distinct !{!632, !627, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!633 = !{!626, !621}
!634 = !{!632, !624, !629}
!635 = !{!632, !624}
!636 = !{!626, !621, !629}
!637 = !{!638, !640}
!638 = distinct !{!638, !639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!639 = distinct !{!639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!640 = distinct !{!640, !641, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!641 = distinct !{!641, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!642 = !{!643, !644, !629}
!643 = distinct !{!643, !639, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!644 = distinct !{!644, !641, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!645 = !{!646, !648}
!646 = distinct !{!646, !647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!647 = distinct !{!647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!648 = distinct !{!648, !649, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!649 = distinct !{!649, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!650 = !{!651, !652, !629}
!651 = distinct !{!651, !647, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!652 = distinct !{!652, !649, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE: %a.0"}
!655 = distinct !{!655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE"}
!656 = !{!629, !657}
!657 = distinct !{!657, !630, !"_ZN4core5slice4sort6stable5drift10create_run17h0a3a349522e91173E: %is_less"}
!658 = !{!659}
!659 = distinct !{!659, !655, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE: %b.0"}
!660 = !{!654, !661}
!661 = distinct !{!661, !662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c5b9fecb6fc05efE: %self.0"}
!662 = distinct !{!662, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c5b9fecb6fc05efE"}
!663 = !{!659, !629, !657}
!664 = !{!659, !661}
!665 = !{!654, !629, !657}
!666 = distinct !{!666, !667, !668}
!667 = !{!"llvm.loop.isvectorized", i32 1}
!668 = !{!"llvm.loop.unroll.runtime.disable"}
!669 = distinct !{!669, !668, !667}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE: %v.0"}
!672 = distinct !{!672, !"_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core5slice4sort6stable5merge5merge17h597d92e83bb6911cE: %scratch.0"}
!675 = !{!671, !674}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!678 = distinct !{!678, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!683 = distinct !{!683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!684 = !{!685}
!685 = distinct !{!685, !683, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!686 = !{!682, !677, !674}
!687 = !{!685, !680, !688, !671}
!688 = distinct !{!688, !689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00cdaaf21cb2116fE: %self"}
!689 = distinct !{!689, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00cdaaf21cb2116fE"}
!690 = !{!685, !680, !671}
!691 = !{!682, !677, !688, !674}
!692 = !{!688, !674}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!695 = distinct !{!695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!700 = distinct !{!700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!701 = !{!702}
!702 = distinct !{!702, !700, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!703 = !{!699, !694, !671}
!704 = !{!702, !697, !705, !674}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h05ce876ad0be43efE: %self"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h05ce876ad0be43efE"}
!707 = !{!702, !697, !674}
!708 = !{!699, !694, !705, !671}
!709 = !{!705, !674}
!710 = !{!711, !713}
!711 = distinct !{!711, !712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he61524be52b9179fE: %self"}
!712 = distinct !{!712, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he61524be52b9179fE"}
!713 = distinct !{!713, !714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha0eecf1b82db60e4E: %_1"}
!714 = distinct !{!714, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha0eecf1b82db60e4E"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!717 = distinct !{!717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!718 = !{!719}
!719 = distinct !{!719, !717, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!722 = distinct !{!722, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E: %scratch.0"}
!725 = distinct !{!725, !"_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E"}
!726 = !{!727}
!727 = distinct !{!727, !722, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
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
!740 = distinct !{!740, !741, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!741 = distinct !{!741, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!742 = distinct !{!742, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!743 = distinct !{!743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!744 = !{!745, !746, !747, !724}
!745 = distinct !{!745, !739, !"cmpfunc: %b"}
!746 = distinct !{!746, !741, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!747 = distinct !{!747, !743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!748 = !{!749, !751, !753}
!749 = distinct !{!749, !750, !"cmpfunc: %a"}
!750 = distinct !{!750, !"cmpfunc"}
!751 = distinct !{!751, !752, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!752 = distinct !{!752, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!753 = distinct !{!753, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!754 = distinct !{!754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!755 = !{!756, !757, !758, !724}
!756 = distinct !{!756, !750, !"cmpfunc: %b"}
!757 = distinct !{!757, !752, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!758 = distinct !{!758, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE: %a.0"}
!761 = distinct !{!761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE"}
!762 = !{!724, !763}
!763 = distinct !{!763, !725, !"_ZN4core5slice4sort6stable5drift10create_run17h6a1aa9bcfb910555E: %is_less"}
!764 = !{!765}
!765 = distinct !{!765, !761, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb73f0f2e6018fe4eE: %b.0"}
!766 = !{!760, !767}
!767 = distinct !{!767, !768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c5b9fecb6fc05efE: %self.0"}
!768 = distinct !{!768, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c5b9fecb6fc05efE"}
!769 = !{!765, !724, !763}
!770 = !{!765, !767}
!771 = !{!760, !724, !763}
!772 = distinct !{!772, !667, !668}
!773 = distinct !{!773, !668, !667}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E: %v.0"}
!776 = distinct !{!776, !"_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E"}
!777 = !{!778}
!778 = distinct !{!778, !776, !"_ZN4core5slice4sort6stable5merge5merge17ha4ca92140b7ff835E: %scratch.0"}
!779 = !{!775, !778}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!782 = distinct !{!782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!783 = !{!784}
!784 = distinct !{!784, !782, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!787 = distinct !{!787, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!788 = !{!789}
!789 = distinct !{!789, !787, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"cmpfunc: %a"}
!792 = distinct !{!792, !"cmpfunc"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"cmpfunc: %b"}
!795 = !{!791, !786, !781, !778}
!796 = !{!794, !789, !784, !797, !775}
!797 = distinct !{!797, !798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h86ecfe5ca0c7931bE: %self"}
!798 = distinct !{!798, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h86ecfe5ca0c7931bE"}
!799 = !{!794, !789, !784, !775}
!800 = !{!791, !786, !781, !797, !778}
!801 = !{!797, !778}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!804 = distinct !{!804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!805 = !{!806}
!806 = distinct !{!806, !804, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!807 = !{!808}
!808 = distinct !{!808, !809, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!809 = distinct !{!809, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!810 = !{!811}
!811 = distinct !{!811, !809, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"cmpfunc: %a"}
!814 = distinct !{!814, !"cmpfunc"}
!815 = !{!816}
!816 = distinct !{!816, !814, !"cmpfunc: %b"}
!817 = !{!813, !808, !803, !775}
!818 = !{!816, !811, !806, !819, !778}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he15896f47b3da0c8E: %self"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he15896f47b3da0c8E"}
!821 = !{!816, !811, !806, !778}
!822 = !{!813, !808, !803, !819, !775}
!823 = !{!819, !778}
!824 = !{!825, !827}
!825 = distinct !{!825, !826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he61524be52b9179fE: %self"}
!826 = distinct !{!826, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he61524be52b9179fE"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha0eecf1b82db60e4E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha0eecf1b82db60e4E"}
!829 = !{!830}
!830 = distinct !{!830, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f6a326077d7066fE: %v.0"}
!831 = distinct !{!831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f6a326077d7066fE"}
!832 = !{!833}
!833 = distinct !{!833, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f6a326077d7066fE: %scratch.0"}
!834 = !{!835}
!835 = distinct !{!835, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!836 = distinct !{!836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!837 = !{!838}
!838 = distinct !{!838, !836, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!841 = distinct !{!841, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!842 = !{!843}
!843 = distinct !{!843, !841, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!844 = !{!845}
!845 = distinct !{!845, !846, !"cmpfunc: %a"}
!846 = distinct !{!846, !"cmpfunc"}
!847 = !{!848}
!848 = distinct !{!848, !846, !"cmpfunc: %b"}
!849 = !{!845, !840, !835, !830}
!850 = !{!848, !843, !838, !833, !851}
!851 = distinct !{!851, !831, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h3f6a326077d7066fE: %is_less"}
!852 = !{!848, !843, !838, !830}
!853 = !{!845, !840, !835, !833, !851}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!856 = distinct !{!856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!861 = distinct !{!861, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"cmpfunc: %a"}
!866 = distinct !{!866, !"cmpfunc"}
!867 = !{!868}
!868 = distinct !{!868, !866, !"cmpfunc: %b"}
!869 = !{!865, !860, !855, !830}
!870 = !{!868, !863, !858, !833, !851}
!871 = !{!868, !863, !858, !830}
!872 = !{!865, !860, !855, !833, !851}
!873 = !{!874}
!874 = distinct !{!874, !875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!875 = distinct !{!875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!876 = !{!877}
!877 = distinct !{!877, !875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!878 = !{!879}
!879 = distinct !{!879, !880, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!880 = distinct !{!880, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!881 = !{!882}
!882 = distinct !{!882, !880, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!883 = !{!884}
!884 = distinct !{!884, !885, !"cmpfunc: %a"}
!885 = distinct !{!885, !"cmpfunc"}
!886 = !{!887}
!887 = distinct !{!887, !885, !"cmpfunc: %b"}
!888 = !{!884, !879, !874, !830}
!889 = !{!887, !882, !877, !833, !851}
!890 = !{!887, !882, !877, !830}
!891 = !{!884, !879, !874, !833, !851}
!892 = !{!893}
!893 = distinct !{!893, !894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!894 = distinct !{!894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!897 = !{!898}
!898 = distinct !{!898, !899, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!899 = distinct !{!899, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!900 = !{!901}
!901 = distinct !{!901, !899, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!902 = !{!903}
!903 = distinct !{!903, !904, !"cmpfunc: %a"}
!904 = distinct !{!904, !"cmpfunc"}
!905 = !{!906}
!906 = distinct !{!906, !904, !"cmpfunc: %b"}
!907 = !{!903, !898, !893, !830}
!908 = !{!906, !901, !896, !833, !851}
!909 = !{!906, !901, !896, !830}
!910 = !{!903, !898, !893, !833, !851}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!913 = distinct !{!913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!918 = distinct !{!918, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"cmpfunc: %a"}
!923 = distinct !{!923, !"cmpfunc"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"cmpfunc: %b"}
!926 = !{!922, !917, !912, !830}
!927 = !{!925, !920, !915, !833, !851}
!928 = !{!925, !920, !915, !830}
!929 = !{!922, !917, !912, !833, !851}
!930 = !{!830, !851}
!931 = !{!932}
!932 = distinct !{!932, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!933 = distinct !{!933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!938 = distinct !{!938, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!941 = !{!942}
!942 = distinct !{!942, !943, !"cmpfunc: %a"}
!943 = distinct !{!943, !"cmpfunc"}
!944 = !{!945}
!945 = distinct !{!945, !943, !"cmpfunc: %b"}
!946 = !{!942, !937, !932, !830}
!947 = !{!945, !940, !935, !833, !851}
!948 = !{!945, !940, !935, !830}
!949 = !{!942, !937, !932, !833, !851}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!957 = distinct !{!957, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!960 = !{!961}
!961 = distinct !{!961, !962, !"cmpfunc: %a"}
!962 = distinct !{!962, !"cmpfunc"}
!963 = !{!964}
!964 = distinct !{!964, !962, !"cmpfunc: %b"}
!965 = !{!961, !956, !951, !830}
!966 = !{!964, !959, !954, !833, !851}
!967 = !{!964, !959, !954, !830}
!968 = !{!961, !956, !951, !833, !851}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!971 = distinct !{!971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!972 = !{!973}
!973 = distinct !{!973, !971, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!976 = distinct !{!976, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"cmpfunc: %a"}
!981 = distinct !{!981, !"cmpfunc"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"cmpfunc: %b"}
!984 = !{!980, !975, !970, !830}
!985 = !{!983, !978, !973, !833, !851}
!986 = !{!983, !978, !973, !830}
!987 = !{!980, !975, !970, !833, !851}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!990 = distinct !{!990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!991 = !{!992}
!992 = distinct !{!992, !990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!993 = !{!994}
!994 = distinct !{!994, !995, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!995 = distinct !{!995, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!996 = !{!997}
!997 = distinct !{!997, !995, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"cmpfunc: %a"}
!1000 = distinct !{!1000, !"cmpfunc"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1000, !"cmpfunc: %b"}
!1003 = !{!999, !994, !989, !830}
!1004 = !{!1002, !997, !992, !833, !851}
!1005 = !{!1002, !997, !992, !830}
!1006 = !{!999, !994, !989, !833, !851}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1009 = distinct !{!1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1014, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1014 = distinct !{!1014, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1014, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"cmpfunc: %a"}
!1019 = distinct !{!1019, !"cmpfunc"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1019, !"cmpfunc: %b"}
!1022 = !{!1018, !1013, !1008, !830}
!1023 = !{!1021, !1016, !1011, !833, !851}
!1024 = !{!1021, !1016, !1011, !830}
!1025 = !{!1018, !1013, !1008, !833, !851}
!1026 = !{!833, !851}
!1027 = !{!1028, !1030, !1032, !833}
!1028 = distinct !{!1028, !1029, !"cmpfunc: %b"}
!1029 = distinct !{!1029, !"cmpfunc"}
!1030 = distinct !{!1030, !1031, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1031 = distinct !{!1031, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1032 = distinct !{!1032, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1033 = distinct !{!1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1034 = !{!1035, !1036, !1037, !830, !851}
!1035 = distinct !{!1035, !1029, !"cmpfunc: %a"}
!1036 = distinct !{!1036, !1031, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1037 = distinct !{!1037, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1038 = !{!1039, !1041, !1043, !833}
!1039 = distinct !{!1039, !1040, !"cmpfunc: %b"}
!1040 = distinct !{!1040, !"cmpfunc"}
!1041 = distinct !{!1041, !1042, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1042 = distinct !{!1042, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1043 = distinct !{!1043, !1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1044 = distinct !{!1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1045 = !{!1046, !1047, !1048, !830, !851}
!1046 = distinct !{!1046, !1040, !"cmpfunc: %a"}
!1047 = distinct !{!1047, !1042, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1048 = distinct !{!1048, !1044, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1049 = !{!1050, !1052, !830, !851}
!1050 = distinct !{!1050, !1051, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1051 = distinct !{!1051, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1052 = distinct !{!1052, !1053, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1053 = distinct !{!1053, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1054 = !{!1055}
!1055 = distinct !{!1055, !1056, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E: %v.0"}
!1056 = distinct !{!1056, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9da4c15ce50840c5E"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1059 = distinct !{!1059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1060 = !{!1061}
!1061 = distinct !{!1061, !1059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1064 = distinct !{!1064, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE: %_0"}
!1067 = distinct !{!1067, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1064, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"cmpfunc: %a"}
!1072 = distinct !{!1072, !"cmpfunc"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1072, !"cmpfunc: %b"}
!1075 = !{!1071, !1063, !1058, !1055, !833}
!1076 = !{!1074, !1069, !1061, !1066, !830, !851}
!1077 = !{!1074, !1069, !1061, !1055, !833}
!1078 = !{!1071, !1063, !1058, !1066, !830, !851}
!1079 = !{!1066, !1080, !1055, !833, !851}
!1080 = distinct !{!1080, !1067, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7600ac55347e3f2eE: %is_less"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1083 = distinct !{!1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1088 = distinct !{!1088, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1091, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE: %_0"}
!1091 = distinct !{!1091, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1088, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"cmpfunc: %a"}
!1096 = distinct !{!1096, !"cmpfunc"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1096, !"cmpfunc: %b"}
!1099 = !{!1095, !1087, !1082, !1055, !833}
!1100 = !{!1098, !1093, !1085, !1090, !830, !851}
!1101 = !{!1098, !1093, !1085, !1055, !833}
!1102 = !{!1095, !1087, !1082, !1090, !830, !851}
!1103 = !{!1090, !1104, !1055, !833, !851}
!1104 = distinct !{!1104, !1091, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h072ae06c402a1ddcE: %is_less"}
!1105 = !{!1055, !833}
!1106 = !{!1055, !833, !851}
!1107 = !{!830, !833, !851}
!1108 = !{!830, !833}
!1109 = !{!1110, !1112, !851}
!1110 = distinct !{!1110, !1111, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1111 = distinct !{!1111, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1112 = distinct !{!1112, !1113, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1113 = distinct !{!1113, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1116 = distinct !{!1116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1121 = distinct !{!1121, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_ZN4core5slice4sort6shared5pivot7median317h3f58585d29b092e0E: %c"}
!1124 = distinct !{!1124, !"_ZN4core5slice4sort6shared5pivot7median317h3f58585d29b092e0E"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1121, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1129, !"cmpfunc: %a"}
!1129 = distinct !{!1129, !"cmpfunc"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1129, !"cmpfunc: %b"}
!1132 = !{!1128, !1120, !1115, !1133}
!1133 = distinct !{!1133, !1134, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc93f8095af228e62E: %v.0"}
!1134 = distinct !{!1134, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc93f8095af228e62E"}
!1135 = !{!1131, !1126, !1118, !1123, !1136}
!1136 = distinct !{!1136, !1134, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc93f8095af228e62E: %is_less"}
!1137 = !{!1131, !1126, !1118, !1133}
!1138 = !{!1128, !1120, !1115, !1123, !1136}
!1139 = !{!1140, !1142, !1144, !1133}
!1140 = distinct !{!1140, !1141, !"cmpfunc: %b"}
!1141 = distinct !{!1141, !"cmpfunc"}
!1142 = distinct !{!1142, !1143, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1143 = distinct !{!1143, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1144 = distinct !{!1144, !1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1145 = distinct !{!1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1146 = !{!1147, !1148, !1149, !1136}
!1147 = distinct !{!1147, !1141, !"cmpfunc: %a"}
!1148 = distinct !{!1148, !1143, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1149 = distinct !{!1149, !1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1150 = !{!1151, !1153, !1155}
!1151 = distinct !{!1151, !1152, !"cmpfunc: %a"}
!1152 = distinct !{!1152, !"cmpfunc"}
!1153 = distinct !{!1153, !1154, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1154 = distinct !{!1154, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1155 = distinct !{!1155, !1156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1156 = distinct !{!1156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1157 = !{!1158, !1159, !1160}
!1158 = distinct !{!1158, !1152, !"cmpfunc: %b"}
!1159 = distinct !{!1159, !1154, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1160 = distinct !{!1160, !1156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d15a7e13f273b54E: %v.0"}
!1163 = distinct !{!1163, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d15a7e13f273b54E"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1163, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d15a7e13f273b54E: %scratch.0"}
!1166 = !{!1167, !1169, !1171, !1162}
!1167 = distinct !{!1167, !1168, !"cmpfunc: %b"}
!1168 = distinct !{!1168, !"cmpfunc"}
!1169 = distinct !{!1169, !1170, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1170 = distinct !{!1170, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1171 = distinct !{!1171, !1172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1172 = distinct !{!1172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1173 = !{!1174, !1175, !1176, !1165}
!1174 = distinct !{!1174, !1168, !"cmpfunc: %a"}
!1175 = distinct !{!1175, !1170, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1176 = distinct !{!1176, !1172, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1177 = !{!1176}
!1178 = !{!1171}
!1179 = !{!1175}
!1180 = !{!1169}
!1181 = !{!1174}
!1182 = !{!1167}
!1183 = !{!1174, !1175, !1176, !1162}
!1184 = !{!1167, !1169, !1171, !1165}
!1185 = !{!1186, !1162}
!1186 = distinct !{!1186, !1187, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1187 = distinct !{!1187, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1188 = !{!1189, !1191, !1193, !1162}
!1189 = distinct !{!1189, !1190, !"cmpfunc: %a"}
!1190 = distinct !{!1190, !"cmpfunc"}
!1191 = distinct !{!1191, !1192, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1192 = distinct !{!1192, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1193 = distinct !{!1193, !1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1194 = distinct !{!1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1195 = !{!1196, !1197, !1198, !1165}
!1196 = distinct !{!1196, !1190, !"cmpfunc: %b"}
!1197 = distinct !{!1197, !1192, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1198 = distinct !{!1198, !1194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1199 = !{!1200, !1162}
!1200 = distinct !{!1200, !1201, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1201 = distinct !{!1201, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1202 = !{!1203, !1205, !1207, !1162}
!1203 = distinct !{!1203, !1204, !"cmpfunc: %a"}
!1204 = distinct !{!1204, !"cmpfunc"}
!1205 = distinct !{!1205, !1206, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1206 = distinct !{!1206, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1207 = distinct !{!1207, !1208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1208 = distinct !{!1208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1209 = !{!1210, !1211, !1212, !1165}
!1210 = distinct !{!1210, !1204, !"cmpfunc: %b"}
!1211 = distinct !{!1211, !1206, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1212 = distinct !{!1212, !1208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1213 = !{!1214, !1162}
!1214 = distinct !{!1214, !1215, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1215 = distinct !{!1215, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1216 = !{!1217, !1219, !1221, !1162}
!1217 = distinct !{!1217, !1218, !"cmpfunc: %a"}
!1218 = distinct !{!1218, !"cmpfunc"}
!1219 = distinct !{!1219, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1220 = distinct !{!1220, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1221 = distinct !{!1221, !1222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1222 = distinct !{!1222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1223 = !{!1224, !1225, !1226, !1165}
!1224 = distinct !{!1224, !1218, !"cmpfunc: %b"}
!1225 = distinct !{!1225, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1226 = distinct !{!1226, !1222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1227 = !{!1228, !1162}
!1228 = distinct !{!1228, !1229, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1229 = distinct !{!1229, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1230 = !{!1231, !1233, !1235, !1162}
!1231 = distinct !{!1231, !1232, !"cmpfunc: %b"}
!1232 = distinct !{!1232, !"cmpfunc"}
!1233 = distinct !{!1233, !1234, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1234 = distinct !{!1234, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1235 = distinct !{!1235, !1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1236 = distinct !{!1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1237 = !{!1238, !1239, !1240, !1165}
!1238 = distinct !{!1238, !1232, !"cmpfunc: %a"}
!1239 = distinct !{!1239, !1234, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1240 = distinct !{!1240, !1236, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1241 = !{!1240}
!1242 = !{!1235}
!1243 = !{!1239}
!1244 = !{!1233}
!1245 = !{!1238}
!1246 = !{!1231}
!1247 = !{!1238, !1239, !1240, !1162}
!1248 = !{!1231, !1233, !1235, !1165}
!1249 = !{!1250, !1162}
!1250 = distinct !{!1250, !1251, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1251 = distinct !{!1251, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1252 = !{!1253, !1165}
!1253 = distinct !{!1253, !1254, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1254 = distinct !{!1254, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1255 = !{!1253, !1162}
!1256 = !{!1162, !1165}
!1257 = distinct !{!1257, !667, !668}
!1258 = distinct !{!1258, !668, !667}
!1259 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1260 = !{!1261, !1263}
!1261 = distinct !{!1261, !1262, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E: %pair"}
!1262 = distinct !{!1262, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E"}
!1263 = distinct !{!1263, !1262, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E: %self.0"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E: %v.0"}
!1266 = distinct !{!1266, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1266, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7457ad2127a3a543E: %scratch.0"}
!1269 = !{!1270, !1272, !1274, !1276, !1265}
!1270 = distinct !{!1270, !1271, !"cmpfunc: %a"}
!1271 = distinct !{!1271, !"cmpfunc"}
!1272 = distinct !{!1272, !1273, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1273 = distinct !{!1273, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1274 = distinct !{!1274, !1275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1275 = distinct !{!1275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1276 = distinct !{!1276, !1277, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %b"}
!1277 = distinct !{!1277, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E"}
!1278 = !{!1279, !1280, !1281, !1282, !1268}
!1279 = distinct !{!1279, !1271, !"cmpfunc: %b"}
!1280 = distinct !{!1280, !1273, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1281 = distinct !{!1281, !1275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1282 = distinct !{!1282, !1277, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %a"}
!1283 = !{!1282}
!1284 = !{!1276}
!1285 = !{!1274}
!1286 = !{!1281}
!1287 = !{!1272}
!1288 = !{!1280}
!1289 = !{!1270}
!1290 = !{!1279}
!1291 = !{!1279, !1280, !1281, !1282, !1265}
!1292 = !{!1270, !1272, !1274, !1276, !1268}
!1293 = !{!1294, !1265}
!1294 = distinct !{!1294, !1295, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1295 = distinct !{!1295, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1296 = !{!1297, !1299, !1301, !1303, !1265}
!1297 = distinct !{!1297, !1298, !"cmpfunc: %b"}
!1298 = distinct !{!1298, !"cmpfunc"}
!1299 = distinct !{!1299, !1300, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1300 = distinct !{!1300, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1301 = distinct !{!1301, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1302 = distinct !{!1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1303 = distinct !{!1303, !1304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %a"}
!1304 = distinct !{!1304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E"}
!1305 = !{!1306, !1307, !1308, !1309, !1268}
!1306 = distinct !{!1306, !1298, !"cmpfunc: %a"}
!1307 = distinct !{!1307, !1300, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1308 = distinct !{!1308, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1309 = distinct !{!1309, !1304, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %b"}
!1310 = !{!1311, !1265}
!1311 = distinct !{!1311, !1312, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1312 = distinct !{!1312, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1313 = !{!1314, !1316, !1318, !1320, !1265}
!1314 = distinct !{!1314, !1315, !"cmpfunc: %b"}
!1315 = distinct !{!1315, !"cmpfunc"}
!1316 = distinct !{!1316, !1317, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1317 = distinct !{!1317, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1318 = distinct !{!1318, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1319 = distinct !{!1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1320 = distinct !{!1320, !1321, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %a"}
!1321 = distinct !{!1321, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E"}
!1322 = !{!1323, !1324, !1325, !1326, !1268}
!1323 = distinct !{!1323, !1315, !"cmpfunc: %a"}
!1324 = distinct !{!1324, !1317, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1325 = distinct !{!1325, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1326 = distinct !{!1326, !1321, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %b"}
!1327 = !{!1328, !1265}
!1328 = distinct !{!1328, !1329, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1329 = distinct !{!1329, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1330 = !{!1331, !1333, !1335, !1337, !1265}
!1331 = distinct !{!1331, !1332, !"cmpfunc: %b"}
!1332 = distinct !{!1332, !"cmpfunc"}
!1333 = distinct !{!1333, !1334, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1334 = distinct !{!1334, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1335 = distinct !{!1335, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1336 = distinct !{!1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1337 = distinct !{!1337, !1338, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %a"}
!1338 = distinct !{!1338, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E"}
!1339 = !{!1340, !1341, !1342, !1343, !1268}
!1340 = distinct !{!1340, !1332, !"cmpfunc: %a"}
!1341 = distinct !{!1341, !1334, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1342 = distinct !{!1342, !1336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1343 = distinct !{!1343, !1338, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %b"}
!1344 = !{!1345, !1265}
!1345 = distinct !{!1345, !1346, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1346 = distinct !{!1346, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1347 = !{!1348, !1350, !1352, !1354, !1265}
!1348 = distinct !{!1348, !1349, !"cmpfunc: %a"}
!1349 = distinct !{!1349, !"cmpfunc"}
!1350 = distinct !{!1350, !1351, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1351 = distinct !{!1351, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1352 = distinct !{!1352, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1353 = distinct !{!1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1354 = distinct !{!1354, !1355, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %b"}
!1355 = distinct !{!1355, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E"}
!1356 = !{!1357, !1358, !1359, !1360, !1268}
!1357 = distinct !{!1357, !1349, !"cmpfunc: %b"}
!1358 = distinct !{!1358, !1351, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1359 = distinct !{!1359, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1360 = distinct !{!1360, !1355, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h30a2faf2e3c9eb48E: %a"}
!1361 = !{!1360}
!1362 = !{!1354}
!1363 = !{!1352}
!1364 = !{!1359}
!1365 = !{!1350}
!1366 = !{!1358}
!1367 = !{!1348}
!1368 = !{!1357}
!1369 = !{!1357, !1358, !1359, !1360, !1265}
!1370 = !{!1348, !1350, !1352, !1354, !1268}
!1371 = !{!1372, !1265}
!1372 = distinct !{!1372, !1373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1373 = distinct !{!1373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1374 = !{!1375, !1268}
!1375 = distinct !{!1375, !1376, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1376 = distinct !{!1376, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1377 = !{!1375, !1265}
!1378 = !{!1265, !1268}
!1379 = distinct !{!1379, !667, !668}
!1380 = distinct !{!1380, !668, !667}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17haa9a7b5b61c0aefeE: %v.0"}
!1383 = distinct !{!1383, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17haa9a7b5b61c0aefeE"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1383, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17haa9a7b5b61c0aefeE: %scratch.0"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1388 = distinct !{!1388, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1388, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1393 = distinct !{!1393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1396 = !{!1392, !1387, !1382}
!1397 = !{!1395, !1390, !1385, !1398}
!1398 = distinct !{!1398, !1383, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17haa9a7b5b61c0aefeE: %is_less"}
!1399 = !{!1395, !1390, !1382}
!1400 = !{!1392, !1387, !1385, !1398}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1403, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1403 = distinct !{!1403, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1403, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1408 = distinct !{!1408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1411 = !{!1407, !1402, !1382}
!1412 = !{!1410, !1405, !1385, !1398}
!1413 = !{!1410, !1405, !1382}
!1414 = !{!1407, !1402, !1385, !1398}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1417 = distinct !{!1417, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1417, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1422 = distinct !{!1422, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1422, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1425 = !{!1421, !1416, !1382}
!1426 = !{!1424, !1419, !1385, !1398}
!1427 = !{!1424, !1419, !1382}
!1428 = !{!1421, !1416, !1385, !1398}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1431 = distinct !{!1431, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1431, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1436 = distinct !{!1436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1439 = !{!1435, !1430, !1382}
!1440 = !{!1438, !1433, !1385, !1398}
!1441 = !{!1438, !1433, !1382}
!1442 = !{!1435, !1430, !1385, !1398}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1445, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1445 = distinct !{!1445, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1445, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1450 = distinct !{!1450, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1450, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1453 = !{!1449, !1444, !1382}
!1454 = !{!1452, !1447, !1385, !1398}
!1455 = !{!1452, !1447, !1382}
!1456 = !{!1449, !1444, !1385, !1398}
!1457 = !{!1382, !1398}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1465 = distinct !{!1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1468 = !{!1464, !1459, !1382}
!1469 = !{!1467, !1462, !1385, !1398}
!1470 = !{!1467, !1462, !1382}
!1471 = !{!1464, !1459, !1385, !1398}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1474 = distinct !{!1474, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1474, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1479 = distinct !{!1479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1482 = !{!1478, !1473, !1382}
!1483 = !{!1481, !1476, !1385, !1398}
!1484 = !{!1481, !1476, !1382}
!1485 = !{!1478, !1473, !1385, !1398}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1488 = distinct !{!1488, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1488, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1493 = distinct !{!1493, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1493, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1496 = !{!1492, !1487, !1382}
!1497 = !{!1495, !1490, !1385, !1398}
!1498 = !{!1495, !1490, !1382}
!1499 = !{!1492, !1487, !1385, !1398}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1502 = distinct !{!1502, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1507 = distinct !{!1507, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1507, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1510 = !{!1506, !1501, !1382}
!1511 = !{!1509, !1504, !1385, !1398}
!1512 = !{!1509, !1504, !1382}
!1513 = !{!1506, !1501, !1385, !1398}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1516 = distinct !{!1516, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1516, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1521 = distinct !{!1521, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1524 = !{!1520, !1515, !1382}
!1525 = !{!1523, !1518, !1385, !1398}
!1526 = !{!1523, !1518, !1382}
!1527 = !{!1520, !1515, !1385, !1398}
!1528 = !{!1385, !1398}
!1529 = !{!1530, !1532, !1385}
!1530 = distinct !{!1530, !1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1531 = distinct !{!1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1532 = distinct !{!1532, !1533, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1533 = distinct !{!1533, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1534 = !{!1535, !1536, !1382, !1398}
!1535 = distinct !{!1535, !1531, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1536 = distinct !{!1536, !1533, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1537 = !{!1538, !1540, !1385}
!1538 = distinct !{!1538, !1539, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1539 = distinct !{!1539, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1540 = distinct !{!1540, !1541, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1541 = distinct !{!1541, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1542 = !{!1543, !1544, !1382, !1398}
!1543 = distinct !{!1543, !1539, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1544 = distinct !{!1544, !1541, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1545 = !{!1546, !1548, !1382, !1398}
!1546 = distinct !{!1546, !1547, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1547 = distinct !{!1547, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1548 = distinct !{!1548, !1549, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1549 = distinct !{!1549, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1552, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E: %v.0"}
!1552 = distinct !{!1552, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hea9404404b340351E"}
!1553 = !{!1554}
!1554 = distinct !{!1554, !1555, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1555 = distinct !{!1555, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1556 = !{!1557}
!1557 = distinct !{!1557, !1555, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1560, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1560 = distinct !{!1560, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1563, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E: %_0"}
!1563 = distinct !{!1563, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1560, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1566 = !{!1559, !1554, !1551, !1385}
!1567 = !{!1565, !1557, !1562, !1382, !1398}
!1568 = !{!1565, !1557, !1551, !1385}
!1569 = !{!1559, !1554, !1562, !1382, !1398}
!1570 = !{!1562, !1571, !1551, !1385, !1398}
!1571 = distinct !{!1571, !1563, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hbb9e2f2d17548c52E: %is_less"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1574 = distinct !{!1574, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1579 = distinct !{!1579, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE: %_0"}
!1582 = distinct !{!1582, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1579, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1585 = !{!1578, !1573, !1551, !1385}
!1586 = !{!1584, !1576, !1581, !1382, !1398}
!1587 = !{!1584, !1576, !1551, !1385}
!1588 = !{!1578, !1573, !1581, !1382, !1398}
!1589 = !{!1581, !1590, !1551, !1385, !1398}
!1590 = distinct !{!1590, !1582, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0d049046f4605c9eE: %is_less"}
!1591 = !{!1551, !1385}
!1592 = !{!1551, !1385, !1398}
!1593 = !{!1382, !1385, !1398}
!1594 = !{!1382, !1385}
!1595 = !{!1596, !1598, !1398}
!1596 = distinct !{!1596, !1597, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1597 = distinct !{!1597, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1598 = distinct !{!1598, !1599, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1599 = distinct !{!1599, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1602, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1602 = distinct !{!1602, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1603 = !{!1604}
!1604 = distinct !{!1604, !1602, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1607, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1607 = distinct !{!1607, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"_ZN4core5slice4sort6shared5pivot7median317hb2288a3501205c50E: %c"}
!1610 = distinct !{!1610, !"_ZN4core5slice4sort6shared5pivot7median317hb2288a3501205c50E"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1607, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1613 = !{!1606, !1601, !1614}
!1614 = distinct !{!1614, !1615, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h217eb9bf2a1f3218E: %v.0"}
!1615 = distinct !{!1615, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h217eb9bf2a1f3218E"}
!1616 = !{!1612, !1604, !1609, !1617}
!1617 = distinct !{!1617, !1615, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h217eb9bf2a1f3218E: %is_less"}
!1618 = !{!1612, !1604, !1614}
!1619 = !{!1606, !1601, !1609, !1617}
!1620 = !{!1621, !1623, !1614}
!1621 = distinct !{!1621, !1622, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1622 = distinct !{!1622, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1623 = distinct !{!1623, !1624, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1624 = distinct !{!1624, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1625 = !{!1626, !1627, !1617}
!1626 = distinct !{!1626, !1622, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1627 = distinct !{!1627, !1624, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1628 = !{!1629, !1631}
!1629 = distinct !{!1629, !1630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1630 = distinct !{!1630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1631 = distinct !{!1631, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1632 = distinct !{!1632, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1633 = !{!1634, !1635}
!1634 = distinct !{!1634, !1630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1635 = distinct !{!1635, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hea31b6e6504dece8E: %v.0"}
!1638 = distinct !{!1638, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hea31b6e6504dece8E"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1638, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hea31b6e6504dece8E: %scratch.0"}
!1641 = !{!1642, !1644, !1637}
!1642 = distinct !{!1642, !1643, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1643 = distinct !{!1643, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1644 = distinct !{!1644, !1645, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1645 = distinct !{!1645, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1646 = !{!1647, !1648, !1640}
!1647 = distinct !{!1647, !1643, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1648 = distinct !{!1648, !1645, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1649 = !{!1648}
!1650 = !{!1644}
!1651 = !{!1647}
!1652 = !{!1642}
!1653 = !{!1647, !1648, !1637}
!1654 = !{!1642, !1644, !1640}
!1655 = !{!1656, !1637}
!1656 = distinct !{!1656, !1657, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1657 = distinct !{!1657, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1658 = !{!1659, !1661, !1637}
!1659 = distinct !{!1659, !1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1660 = distinct !{!1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1661 = distinct !{!1661, !1662, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1662 = distinct !{!1662, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1663 = !{!1664, !1665, !1640}
!1664 = distinct !{!1664, !1660, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1665 = distinct !{!1665, !1662, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1666 = !{!1667, !1637}
!1667 = distinct !{!1667, !1668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1668 = distinct !{!1668, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1669 = !{!1670, !1672, !1637}
!1670 = distinct !{!1670, !1671, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1671 = distinct !{!1671, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1672 = distinct !{!1672, !1673, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1673 = distinct !{!1673, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1674 = !{!1675, !1676, !1640}
!1675 = distinct !{!1675, !1671, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1676 = distinct !{!1676, !1673, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1677 = !{!1678, !1637}
!1678 = distinct !{!1678, !1679, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1679 = distinct !{!1679, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1680 = !{!1681, !1683, !1637}
!1681 = distinct !{!1681, !1682, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1682 = distinct !{!1682, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1683 = distinct !{!1683, !1684, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1684 = distinct !{!1684, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1685 = !{!1686, !1687, !1640}
!1686 = distinct !{!1686, !1682, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1687 = distinct !{!1687, !1684, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1688 = !{!1689, !1637}
!1689 = distinct !{!1689, !1690, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1690 = distinct !{!1690, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1691 = !{!1692, !1694, !1637}
!1692 = distinct !{!1692, !1693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1693 = distinct !{!1693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1694 = distinct !{!1694, !1695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1695 = distinct !{!1695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1696 = !{!1697, !1698, !1640}
!1697 = distinct !{!1697, !1693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1698 = distinct !{!1698, !1695, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1699 = !{!1698}
!1700 = !{!1694}
!1701 = !{!1697}
!1702 = !{!1692}
!1703 = !{!1697, !1698, !1637}
!1704 = !{!1692, !1694, !1640}
!1705 = !{!1706, !1637}
!1706 = distinct !{!1706, !1707, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1707 = distinct !{!1707, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1708 = !{!1709, !1640}
!1709 = distinct !{!1709, !1710, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1710 = distinct !{!1710, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1711 = !{!1709, !1637}
!1712 = !{!1637, !1640}
!1713 = distinct !{!1713, !667, !668}
!1714 = distinct !{!1714, !668, !667}
!1715 = !{!1716, !1718}
!1716 = distinct !{!1716, !1717, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E: %pair"}
!1717 = distinct !{!1717, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E"}
!1718 = distinct !{!1718, !1717, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h88c7d0bfaee36862E: %self.0"}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E: %v.0"}
!1721 = distinct !{!1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E"}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1721, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h24b7f01db9d888b8E: %scratch.0"}
!1724 = !{!1725, !1727, !1729, !1720}
!1725 = distinct !{!1725, !1726, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1726 = distinct !{!1726, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1727 = distinct !{!1727, !1728, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1728 = distinct !{!1728, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1729 = distinct !{!1729, !1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %b"}
!1730 = distinct !{!1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E"}
!1731 = !{!1732, !1733, !1734, !1723}
!1732 = distinct !{!1732, !1726, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1733 = distinct !{!1733, !1728, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1734 = distinct !{!1734, !1730, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %a"}
!1735 = !{!1734}
!1736 = !{!1729}
!1737 = !{!1727}
!1738 = !{!1733}
!1739 = !{!1725}
!1740 = !{!1732}
!1741 = !{!1732, !1733, !1734, !1720}
!1742 = !{!1725, !1727, !1729, !1723}
!1743 = !{!1744, !1720}
!1744 = distinct !{!1744, !1745, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1745 = distinct !{!1745, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1746 = !{!1747, !1749, !1751, !1720}
!1747 = distinct !{!1747, !1748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1748 = distinct !{!1748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1749 = distinct !{!1749, !1750, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1750 = distinct !{!1750, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1751 = distinct !{!1751, !1752, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %a"}
!1752 = distinct !{!1752, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E"}
!1753 = !{!1754, !1755, !1756, !1723}
!1754 = distinct !{!1754, !1748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1755 = distinct !{!1755, !1750, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1756 = distinct !{!1756, !1752, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %b"}
!1757 = !{!1758, !1720}
!1758 = distinct !{!1758, !1759, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1759 = distinct !{!1759, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1760 = !{!1761, !1763, !1765, !1720}
!1761 = distinct !{!1761, !1762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1762 = distinct !{!1762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1763 = distinct !{!1763, !1764, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1764 = distinct !{!1764, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1765 = distinct !{!1765, !1766, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %a"}
!1766 = distinct !{!1766, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E"}
!1767 = !{!1768, !1769, !1770, !1723}
!1768 = distinct !{!1768, !1762, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1769 = distinct !{!1769, !1764, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1770 = distinct !{!1770, !1766, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %b"}
!1771 = !{!1772, !1720}
!1772 = distinct !{!1772, !1773, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1773 = distinct !{!1773, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1774 = !{!1775, !1777, !1779, !1720}
!1775 = distinct !{!1775, !1776, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1776 = distinct !{!1776, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1777 = distinct !{!1777, !1778, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1778 = distinct !{!1778, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1779 = distinct !{!1779, !1780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %a"}
!1780 = distinct !{!1780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E"}
!1781 = !{!1782, !1783, !1784, !1723}
!1782 = distinct !{!1782, !1776, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1783 = distinct !{!1783, !1778, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1784 = distinct !{!1784, !1780, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %b"}
!1785 = !{!1786, !1720}
!1786 = distinct !{!1786, !1787, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1787 = distinct !{!1787, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1788 = !{!1789, !1791, !1793, !1720}
!1789 = distinct !{!1789, !1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!1790 = distinct !{!1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!1791 = distinct !{!1791, !1792, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 0"}
!1792 = distinct !{!1792, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E"}
!1793 = distinct !{!1793, !1794, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %b"}
!1794 = distinct !{!1794, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E"}
!1795 = !{!1796, !1797, !1798, !1723}
!1796 = distinct !{!1796, !1790, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!1797 = distinct !{!1797, !1792, !"_ZN4core3ops8function5FnMut8call_mut17h299e07cf4dcf9bd9E: argument 1"}
!1798 = distinct !{!1798, !1794, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h276678f76df15b66E: %a"}
!1799 = !{!1798}
!1800 = !{!1793}
!1801 = !{!1791}
!1802 = !{!1797}
!1803 = !{!1789}
!1804 = !{!1796}
!1805 = !{!1796, !1797, !1798, !1720}
!1806 = !{!1789, !1791, !1793, !1723}
!1807 = !{!1808, !1720}
!1808 = distinct !{!1808, !1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1809 = distinct !{!1809, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1810 = !{!1811, !1723}
!1811 = distinct !{!1811, !1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E: %self"}
!1812 = distinct !{!1812, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hae7b1f20c6cd8904E"}
!1813 = !{!1811, !1720}
!1814 = !{!1720, !1723}
!1815 = distinct !{!1815, !667, !668}
!1816 = distinct !{!1816, !668, !667}
!1817 = !{!1818, !1820, !1822}
!1818 = distinct !{!1818, !1819, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE: %_0"}
!1819 = distinct !{!1819, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE"}
!1820 = distinct !{!1820, !1821, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h53ab3bd630c63220E: %v"}
!1821 = distinct !{!1821, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h53ab3bd630c63220E"}
!1822 = distinct !{!1822, !1821, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h53ab3bd630c63220E: %s.0"}
!1823 = !{!1820, !1822}
!1824 = !{!1825, !1827}
!1825 = distinct !{!1825, !1826, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0a928c90019994b6E: %v.0"}
!1826 = distinct !{!1826, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0a928c90019994b6E"}
!1827 = distinct !{!1827, !1828, !"_ZN5alloc5slice11stable_sort17h2b98ce41bb556282E: %v.0"}
!1828 = distinct !{!1828, !"_ZN5alloc5slice11stable_sort17h2b98ce41bb556282E"}
!1829 = !{!1830, !1832}
!1830 = distinct !{!1830, !1831, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1831 = distinct !{!1831, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1832 = distinct !{!1832, !1833, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1833 = distinct !{!1833, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1834 = !{!1835, !1837}
!1835 = distinct !{!1835, !1836, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE: %_0"}
!1836 = distinct !{!1836, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd66d4424b8f6b41aE"}
!1837 = distinct !{!1837, !1838, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h791674cc329db821E: %_0"}
!1838 = distinct !{!1838, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h791674cc329db821E"}
!1839 = !{!1840, !1842, !1844, !1846}
!1840 = distinct !{!1840, !1841, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!1841 = distinct !{!1841, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!1842 = distinct !{!1842, !1843, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!1843 = distinct !{!1843, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!1844 = distinct !{!1844, !1845, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!1845 = distinct !{!1845, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!1846 = distinct !{!1846, !1847, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!1847 = distinct !{!1847, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!1848 = !{!1849, !1851, !1853, !1855}
!1849 = distinct !{!1849, !1850, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!1850 = distinct !{!1850, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!1851 = distinct !{!1851, !1852, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!1852 = distinct !{!1852, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!1853 = distinct !{!1853, !1854, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!1854 = distinct !{!1854, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!1855 = distinct !{!1855, !1856, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!1856 = distinct !{!1856, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!1857 = !{!1858, !1860, !1862, !1864}
!1858 = distinct !{!1858, !1859, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!1859 = distinct !{!1859, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!1860 = distinct !{!1860, !1861, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!1861 = distinct !{!1861, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!1862 = distinct !{!1862, !1863, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!1863 = distinct !{!1863, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!1864 = distinct !{!1864, !1865, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!1865 = distinct !{!1865, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!1866 = !{!1867, !1869, !1871, !1873}
!1867 = distinct !{!1867, !1868, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE: %self"}
!1868 = distinct !{!1868, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17he5b050be7a06168dE"}
!1869 = distinct !{!1869, !1870, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE: %self"}
!1870 = distinct !{!1870, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c77e2e22fe11bebE"}
!1871 = distinct !{!1871, !1872, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE: %_1"}
!1872 = distinct !{!1872, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h163f48ca9681429dE"}
!1873 = distinct !{!1873, !1874, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE: %_1"}
!1874 = distinct !{!1874, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1877, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E: %self.0"}
!1877 = distinct !{!1877, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h53559a7725a44a81E"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1880, !"_ZN5alloc5slice11stable_sort17h94b9cbe26af5c7deE: %v.0"}
!1880 = distinct !{!1880, !"_ZN5alloc5slice11stable_sort17h94b9cbe26af5c7deE"}
!1881 = !{!1879, !1882, !1876}
!1882 = distinct !{!1882, !1880, !"_ZN5alloc5slice11stable_sort17h94b9cbe26af5c7deE: argument 1"}
!1883 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1886 = distinct !{!1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1887 = !{!1888}
!1888 = distinct !{!1888, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1889 = !{!1890}
!1890 = distinct !{!1890, !1891, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1891 = distinct !{!1891, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1892 = !{!1893}
!1893 = distinct !{!1893, !1891, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1894 = !{!1895}
!1895 = distinct !{!1895, !1896, !"cmpfunc: %a"}
!1896 = distinct !{!1896, !"cmpfunc"}
!1897 = !{!1898}
!1898 = distinct !{!1898, !1896, !"cmpfunc: %b"}
!1899 = !{!1895, !1890, !1885, !1900, !1879, !1876}
!1900 = distinct !{!1900, !1901, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hfa6a585ab66846bdE: %v.0"}
!1901 = distinct !{!1901, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hfa6a585ab66846bdE"}
!1902 = !{!1898, !1893, !1888, !1882}
!1903 = !{!1898, !1893, !1888, !1900, !1879, !1876}
!1904 = !{!1895, !1890, !1885, !1882}
!1905 = !{!1900, !1879, !1876}
!1906 = !{!1882}
!1907 = !{!1908, !1910, !1912, !1900, !1879, !1876}
!1908 = distinct !{!1908, !1909, !"cmpfunc: %b"}
!1909 = distinct !{!1909, !"cmpfunc"}
!1910 = distinct !{!1910, !1911, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1"}
!1911 = distinct !{!1911, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E"}
!1912 = distinct !{!1912, !1913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b"}
!1913 = distinct !{!1913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E"}
!1914 = !{!1915, !1916, !1917, !1882}
!1915 = distinct !{!1915, !1909, !"cmpfunc: %a"}
!1916 = distinct !{!1916, !1911, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0"}
!1917 = distinct !{!1917, !1913, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a"}
!1918 = !{!1919, !1921, !1882}
!1919 = distinct !{!1919, !1920, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE: %self"}
!1920 = distinct !{!1920, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08dc3aa8ff0d11bdE"}
!1921 = distinct !{!1921, !1922, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E: %_1"}
!1922 = distinct !{!1922, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hc028c90045d19484E"}
!1923 = !{!1924}
!1924 = distinct !{!1924, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %a:It1"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h8e7d7b8238dd37c7E: %b:It1"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1891, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 0:It1"}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1891, !"_ZN4core3ops8function5FnMut8call_mut17h996b7498843aac04E: argument 1:It1"}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1896, !"cmpfunc: %a:It1"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1896, !"cmpfunc: %b:It1"}
!1935 = !{!1932, !1928, !1924, !1900, !1879, !1876}
!1936 = !{!1934, !1930, !1926, !1882}
!1937 = !{!1934, !1930, !1926, !1900, !1879, !1876}
!1938 = !{!1932, !1928, !1924, !1882}
