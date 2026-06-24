; ModuleID = 'MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.9f970eaebf144435-cgu.0'
source_filename = "MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.9f970eaebf144435-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_223eb087169168879892a78c1bd4e328 = private unnamed_addr constant [158 x i8] c"/root/es/vert/vert/rust_funcs/go_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.rs\00", align 1
@alloc_390ea9071b49ed4ab4959f8c81801f2f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_223eb087169168879892a78c1bd4e328, [16 x i8] c"\9D\00\00\00\00\00\00\00\1B\00\00\00\13\00\00\00" }>, align 8
@alloc_3a0728a11c48e5aa548d60738b00786f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_223eb087169168879892a78c1bd4e328, [16 x i8] c"\9D\00\00\00\00\00\00\00\1B\00\00\00#\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !70
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73), !noalias !70
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !75, !noalias !76, !noundef !23
  %_5.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !77, !noalias !78, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_4.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !79, !noalias !84, !noundef !23
  %_0.i7 = icmp slt i32 %_4.i.i5, %_5.i.i
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i5, %_4.i.i
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !97, !noalias !98, !noundef !23
  %_5.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !98, !noalias !97, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %_4.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !109, !noalias !110, !noundef !23
  %_5.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !110, !noalias !109, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %_4.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !121, !noalias !122, !noundef !23
  %_5.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !122, !noalias !121, !noundef !23
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %_4.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !133, !noalias !134, !noundef !23
  %_5.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !134, !noalias !133, !noundef !23
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %_4.i.i16.i = load i32, ptr %2, align 4, !alias.scope !145, !noalias !146, !noundef !23
  %_5.i.i17.i = load i32, ptr %4, align 4, !alias.scope !146, !noalias !145, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %_4.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !157, !noalias !158, !noundef !23
  %_5.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !158, !noalias !157, !noundef !23
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %_4.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !169, !noalias !170, !noundef !23
  %_5.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !170, !noalias !169, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %_4.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !181, !noalias !182, !noundef !23
  %_5.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !182, !noalias !181, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %_4.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !193, !noalias !194, !noundef !23
  %_5.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !194, !noalias !193, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %_4.i.i16.i25 = load i32, ptr %11, align 4, !alias.scope !205, !noalias !206, !noundef !23
  %_5.i.i17.i26 = load i32, ptr %13, align 4, !alias.scope !206, !noalias !205, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i38 = icmp slt i32 %0, %9
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smax.i32(i32 %0, i32 %9)
  store i32 %19, ptr %dst, align 4, !noalias !210
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %8, %17
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smin.i32(i32 %8, i32 %17)
  store i32 %20, ptr %18, align 4, !noalias !214
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223), !noalias !226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227), !noalias !226
  %_4.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !229, !noalias !230, !noundef !23
  %_5.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !231, !noalias !232, !noundef !23
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !210
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238), !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242), !noalias !241
  %_4.i.i19.i.1 = load i32, ptr %22, align 4, !alias.scope !244, !noalias !245, !noundef !23
  %_5.i.i20.i.1 = load i32, ptr %21, align 4, !alias.scope !246, !noalias !247, !noundef !23
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !214
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252), !noalias !226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254), !noalias !226
  %_4.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !256, !noalias !257, !noundef !23
  %_5.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !258, !noalias !259, !noundef !23
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !210
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264), !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266), !noalias !241
  %_4.i.i19.i.2 = load i32, ptr %27, align 4, !alias.scope !268, !noalias !269, !noundef !23
  %_5.i.i20.i.2 = load i32, ptr %26, align 4, !alias.scope !270, !noalias !271, !noundef !23
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !214
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276), !noalias !226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278), !noalias !226
  %_4.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !280, !noalias !281, !noundef !23
  %_5.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !282, !noalias !283, !noundef !23
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !210
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288), !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290), !noalias !241
  %_4.i.i19.i.3 = load i32, ptr %32, align 4, !alias.scope !292, !noalias !293, !noundef !23
  %_5.i.i20.i.3 = load i32, ptr %31, align 4, !alias.scope !294, !noalias !295, !noundef !23
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !214
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !207
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !312, !noalias !313, !noundef !23
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !313, !noalias !312, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !329, !noalias !330, !noundef !23
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !330, !noalias !329, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !346, !noalias !347, !noundef !23
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !347, !noalias !346, !noundef !23
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !363, !noalias !364, !noundef !23
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !364, !noalias !363, !noundef !23
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !380, !noalias !381, !noundef !23
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !381, !noalias !380, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !397, !noalias !398, !noundef !23
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !398, !noalias !397, !noundef !23
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !414, !noalias !415, !noundef !23
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !415, !noalias !414, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !431, !noalias !432, !noundef !23
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !432, !noalias !431, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !448, !noalias !449, !noundef !23
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !449, !noalias !448, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !465, !noalias !466, !noundef !23
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !466, !noalias !465, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !470, !noalias !477, !noundef !23
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !483
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !485, !noalias !492, !noundef !23
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !498
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !506
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !513, !noalias !514, !noundef !23
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !515, !noalias !516, !noundef !23
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !483
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !523
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !530, !noalias !531, !noundef !23
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !532, !noalias !533, !noundef !23
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !498
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544), !noalias !506
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !546, !noalias !547, !noundef !23
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !548, !noalias !549, !noundef !23
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !483
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !523
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !562, !noalias !563, !noundef !23
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !564, !noalias !565, !noundef !23
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !498
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576), !noalias !506
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !578, !noalias !579, !noundef !23
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !580, !noalias !581, !noundef !23
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !483
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !523
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !594, !noalias !595, !noundef !23
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !596, !noalias !597, !noundef !23
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !498
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !467
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %_4.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !608, !noalias !609, !noundef !23
  %_5.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !609, !noalias !608, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %_4.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !620, !noalias !621, !noundef !23
  %_5.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !621, !noalias !620, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %_4.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !632, !noalias !633, !noundef !23
  %_5.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !633, !noalias !632, !noundef !23
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %_4.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !644, !noalias !645, !noundef !23
  %_5.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !645, !noalias !644, !noundef !23
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %_4.i.i16.i = load i32, ptr %4, align 4, !alias.scope !656, !noalias !657, !noundef !23
  %_5.i.i17.i = load i32, ptr %2, align 4, !alias.scope !657, !noalias !656, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %_4.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !668, !noalias !669, !noundef !23
  %_5.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !669, !noalias !668, !noundef !23
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %_4.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !680, !noalias !681, !noundef !23
  %_5.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !681, !noalias !680, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %_4.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !692, !noalias !693, !noundef !23
  %_5.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !693, !noalias !692, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %_4.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !704, !noalias !705, !noundef !23
  %_5.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !705, !noalias !704, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %_4.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !716, !noalias !717, !noundef !23
  %_5.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !717, !noalias !716, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i38 = icmp slt i32 %9, %0
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %0)
  store i32 %19, ptr %dst, align 4, !noalias !721
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %17, %8
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %8)
  store i32 %20, ptr %18, align 4, !noalias !725
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !737
  %_4.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !23
  %_5.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !742, !noalias !743, !noundef !23
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !721
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !752
  %_4.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !755, !noalias !756, !noundef !23
  %_5.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !757, !noalias !758, !noundef !23
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !725
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765), !noalias !737
  %_4.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !767, !noalias !768, !noundef !23
  %_5.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !769, !noalias !770, !noundef !23
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !721
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !752
  %_4.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !779, !noalias !780, !noundef !23
  %_5.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !781, !noalias !782, !noundef !23
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !725
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !737
  %_4.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !791, !noalias !792, !noundef !23
  %_5.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !793, !noalias !794, !noundef !23
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !721
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !752
  %_4.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !803, !noalias !804, !noundef !23
  %_5.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !805, !noalias !806, !noundef !23
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !725
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !718
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hc1c2a334d7d9cd91E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !807

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !808
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !808
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !813
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !822
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !807

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !831
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !831
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !836
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !845
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb5.i.i.i, !prof !807

bb5.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !854
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !854
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !859
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !868
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882), !noalias !885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888), !noalias !885
  %_4.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !890, !noalias !891, !noundef !23
  %_5.i.i63 = load i32, ptr %_82, align 4, !alias.scope !892, !noalias !893, !noundef !23
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_5.i.i60 = phi i32 [ %_4.i.i59, %bb15.i.i ], [ %_4.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_4.i.i59 = load i32, ptr %2, align 4, !alias.scope !894, !noalias !899, !noundef !23
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_5.i.i = phi i32 [ %_4.i.i58, %bb7.i.i ], [ %_4.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_4.i.i58 = load i32, ptr %4, align 4, !alias.scope !902, !noalias !907, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !noalias !913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915), !noalias !913
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5c3847ec6369ba2cE.exit.i.thread101 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !917, !noalias !920
  %wide.load119 = load <4 x i32>, ptr %9, align 4, !alias.scope !917, !noalias !920
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load120 = load <4 x i32>, ptr %10, align 4, !alias.scope !921, !noalias !922
  %reverse = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load121 = load <4 x i32>, ptr %11, align 4, !alias.scope !921, !noalias !922
  %reverse122 = shufflevector <4 x i32> %wide.load121, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !917, !noalias !920
  store <4 x i32> %reverse122, ptr %9, align 4, !alias.scope !917, !noalias !920
  %reverse123 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %10, align 4, !alias.scope !921, !noalias !922
  %reverse124 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse124, ptr %11, align 4, !alias.scope !921, !noalias !922
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !923

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !917, !noalias !920, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !921, !noalias !922
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !917, !noalias !920
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !921, !noalias !922
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !926

_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !932
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %_4.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !943, !noalias !944, !noundef !23
  %_5.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !947, !noalias !948, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !927, !noalias !949
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %_4.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !960, !noalias !961, !noundef !23
  %_5.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !964, !noalias !965, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i12.i, %_5.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i12.i, i32 %_5.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !927, !noalias !966
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !932, !noalias !967
  br label %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit

_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h92a8e4d68234344eE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !980
  %_4.i.i62 = load i32, ptr %_82, align 4, !alias.scope !985, !noalias !986, !noundef !23
  %_5.i.i63 = load i32, ptr %_28.i.i, align 4, !alias.scope !987, !noalias !988, !noundef !23
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i59 = phi i32 [ %_5.i.i60, %bb15.i.i ], [ %_5.i.i63, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_5.i.i60 = load i32, ptr %2, align 4, !alias.scope !989, !noalias !994, !noundef !23
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_5.i.i, %bb7.i.i ], [ %_5.i.i63, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_5.i.i = load i32, ptr %4, align 4, !alias.scope !997, !noalias !1002, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !1008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !1008
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hea544b1a96acec40E.exit.i.thread101 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !1012, !noalias !1015
  %wide.load119 = load <4 x i32>, ptr %9, align 4, !alias.scope !1012, !noalias !1015
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load120 = load <4 x i32>, ptr %10, align 4, !alias.scope !1016, !noalias !1017
  %reverse = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load121 = load <4 x i32>, ptr %11, align 4, !alias.scope !1016, !noalias !1017
  %reverse122 = shufflevector <4 x i32> %wide.load121, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !1012, !noalias !1015
  store <4 x i32> %reverse122, ptr %9, align 4, !alias.scope !1012, !noalias !1015
  %reverse123 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %10, align 4, !alias.scope !1016, !noalias !1017
  %reverse124 = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse124, ptr %11, align 4, !alias.scope !1016, !noalias !1017
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !1018

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !1012, !noalias !1015, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !1016, !noalias !1017
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !1012, !noalias !1015
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !1016, !noalias !1017
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1019

_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !1025
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %_4.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !1036, !noalias !1037, !noundef !23
  %_5.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !1040, !noalias !1041, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %28 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i.i, i32 %_5.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !1020, !noalias !1042
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %_4.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1053, !noalias !1054, !noundef !23
  %_5.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1057, !noalias !1058, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_4.i.i.i12.i, %_5.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i12.i, i32 %_5.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !1020, !noalias !1059
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !1025, !noalias !1060
  br label %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit

_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h4d02614b98c0af96E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078), !noalias !1073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081), !noalias !1073
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !1083, !noalias !1084, !noundef !23
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !1085, !noalias !1086, !noundef !23
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !1087, !noalias !1094, !noundef !23
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !1098, !noalias !1105, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1112
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5c76ef472daed499E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !1116, !noalias !1119
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !1116, !noalias !1119
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !1120, !noalias !1121
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !1120, !noalias !1121
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !1116, !noalias !1119
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !1116, !noalias !1119
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !1120, !noalias !1121
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !1120, !noalias !1121
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !1122

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !1116, !noalias !1119, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !1120, !noalias !1121
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !1116, !noalias !1119
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !1120, !noalias !1121
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1123

_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !1129
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !1145, !noalias !1146, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !1149, !noalias !1150, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !1124, !noalias !1151
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1167, !noalias !1168, !noundef !23
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1171, !noalias !1172, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !1124, !noalias !1173
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !1129, !noalias !1174
  br label %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit

_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6f463c76dfbd0606E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hee251623565a0eb1E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %_4.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1194, !noalias !1195, !noundef !23
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1197, !noalias !1198, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %_4.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1209, !noalias !1210, !noundef !23
  %_5.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1211, !noalias !1212, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %_4.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1223, !noalias !1224, !noundef !23
  %_5.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1225, !noalias !1226, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %_4.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1237, !noalias !1238, !noundef !23
  %_5.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1239, !noalias !1240, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %_4.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1251, !noalias !1252, !noundef !23
  %_5.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1253, !noalias !1254, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1182, !noalias !1255
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1182, !noalias !1255
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1182, !noalias !1255
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1182, !noalias !1255
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %_4.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1266, !noalias !1267, !noundef !23
  %_5.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1268, !noalias !1269, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %_4.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1280, !noalias !1281, !noundef !23
  %_5.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1282, !noalias !1283, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %_4.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1294, !noalias !1295, !noundef !23
  %_5.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1296, !noalias !1297, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %_4.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1308, !noalias !1309, !noundef !23
  %_5.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1310, !noalias !1311, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %_4.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1322, !noalias !1323, !noundef !23
  %_5.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1324, !noalias !1325, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1182, !noalias !1255
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1182, !noalias !1255
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1182, !noalias !1255
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1182, !noalias !1255
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1179, !noalias !1326
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1182, !noalias !1255
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1179, !noalias !1326
  store i32 %25, ptr %24, align 4, !alias.scope !1182, !noalias !1255
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1179, !noalias !1326
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1182, !noalias !1255
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_5.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1327, !noalias !1332, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_5.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_5.i.i2.i.1.i, %bb7.i.1.i ], [ %_5.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1182, !noalias !1255
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_5.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1335, !noalias !1340, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %27, %_5.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1182, !noalias !1343
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356), !noalias !1359
  call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1359
  %_4.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1364, !noalias !1365, !noundef !23
  %_5.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1366, !noalias !1367, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1179, !noalias !1368
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375), !noalias !1378
  call void @llvm.experimental.noalias.scope.decl(metadata !1381), !noalias !1378
  %_4.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1383, !noalias !1384, !noundef !23
  %_5.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1385, !noalias !1386, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1179, !noalias !1387
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1389, !noalias !1255
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1179, !noalias !1390
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !296

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1391

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1392, !noalias !1393
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1179, !noalias !1326
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1182, !noalias !1255
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_5.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1327, !noalias !1332, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_5.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_5.i.i2.i.i, %bb7.i.i ], [ %_5.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1182, !noalias !1255
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_5.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1335, !noalias !1340, !noundef !23
  %_0.i3.i.i = icmp slt i32 %44, %_5.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1182, !noalias !1343
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6df3ca1c8015a0f8E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403), !noalias !1406
  call void @llvm.experimental.noalias.scope.decl(metadata !1409), !noalias !1406
  %_4.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1411, !noalias !1414, !noundef !23
  %_5.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1416, !noalias !1417, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1418, !noalias !1423, !noundef !23
  %_0.i7.i = icmp slt i32 %_4.i.i.i, %_5.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i, %_5.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h106378220af84ad3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_4.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1426, !noalias !1431, !noundef !23
  %_0.i = icmp slt i32 %_4.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !296

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
  %_5.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1439, !noalias !1444, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %_4.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1451, !noalias !1452, !noundef !23
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_4.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1437, !noalias !1453
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_4.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1456, !noalias !1461, !noundef !23
  %_0.i27.i = icmp slt i32 %_4.i.i25.i, %_5.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_4.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1437, !noalias !1464
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_4.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1467, !noalias !1472, !noundef !23
  %_0.i37.i = icmp slt i32 %_4.i.i35.i, %_5.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_4.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1437, !noalias !1475
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_4.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1478, !noalias !1483, !noundef !23
  %_0.i47.i = icmp slt i32 %_4.i.i45.i, %_5.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_4.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1437, !noalias !1486
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
  %_5.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1489, !noalias !1494, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %_4.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1501, !noalias !1502, !noundef !23
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_4.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1437, !noalias !1503
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1434, !noalias !1506
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1437, !noalias !1509
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1510
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1437, !noalias !1434
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1437, !noalias !1434
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1434, !noalias !1437
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1434, !noalias !1437
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1511

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1437, !noalias !1434
  store i32 %78, ptr %75, align 4, !alias.scope !1434, !noalias !1437
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1512

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1514
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h37fafe477ff0f592E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !296

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
  %_4.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1523, !noalias !1530, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %_5.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1540, !noalias !1541, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_5.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1521, !noalias !1542
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_5.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1545, !noalias !1552, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_5.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1521, !noalias !1556
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_5.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1559, !noalias !1566, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_5.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1521, !noalias !1570
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_5.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1573, !noalias !1580, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_5.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1521, !noalias !1584
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
  %_4.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1587, !noalias !1594, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %_5.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1604, !noalias !1605, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_5.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1521, !noalias !1606
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1518, !noalias !1609
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1521, !noalias !1612
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1613
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1521, !noalias !1518
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1521, !noalias !1518
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1518, !noalias !1521
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1518, !noalias !1521
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1521, !noalias !1518
  store i32 %108, ptr %105, align 4, !alias.scope !1518, !noalias !1521
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E.exit, label %bb42.i66, !llvm.loop !1615

_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc497a09f4c81df07E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1631, !noalias !1632, !noundef !23
  %_5.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1634, !noalias !1635, !noundef !23
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %_4.i.i7.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1646, !noalias !1647, !noundef !23
  %_5.i.i8.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1648, !noalias !1649, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %_4.i.i10.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1660, !noalias !1661, !noundef !23
  %_5.i.i11.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1662, !noalias !1663, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %_4.i.i13.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1674, !noalias !1675, !noundef !23
  %_5.i.i14.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1676, !noalias !1677, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %_4.i.i16.i.i = load i32, ptr %7, align 4, !alias.scope !1688, !noalias !1689, !noundef !23
  %_5.i.i17.i.i = load i32, ptr %9, align 4, !alias.scope !1690, !noalias !1691, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1619, !noalias !1692
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1619, !noalias !1692
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1619, !noalias !1692
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1619, !noalias !1692
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %_4.i.i.i14.i = load i32, ptr %_27.i, align 4, !alias.scope !1703, !noalias !1704, !noundef !23
  %_5.i.i.i15.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1705, !noalias !1706, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  %_4.i.i7.i19.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1717, !noalias !1718, !noundef !23
  %_5.i.i8.i20.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1719, !noalias !1720, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %_4.i.i10.i31.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1731, !noalias !1732, !noundef !23
  %_5.i.i11.i32.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1733, !noalias !1734, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %_4.i.i13.i34.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1745, !noalias !1746, !noundef !23
  %_5.i.i14.i35.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1747, !noalias !1748, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %_4.i.i16.i37.i = load i32, ptr %16, align 4, !alias.scope !1759, !noalias !1760, !noundef !23
  %_5.i.i17.i38.i = load i32, ptr %18, align 4, !alias.scope !1761, !noalias !1762, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1619, !noalias !1692
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1619, !noalias !1692
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1619, !noalias !1692
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1619, !noalias !1692
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1616, !noalias !1763
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1619, !noalias !1692
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1616, !noalias !1763
  store i32 %25, ptr %24, align 4, !alias.scope !1619, !noalias !1692
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1616, !noalias !1763
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1619, !noalias !1692
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i54.1.i = load i32, ptr %28, align 4, !alias.scope !1764, !noalias !1769, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %_4.i.i.i54.1.i, %27
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i1.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i54.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1619, !noalias !1692
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i1.i.1.i = load i32, ptr %30, align 4, !alias.scope !1772, !noalias !1777, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %_4.i.i1.i.1.i, %27
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1619, !noalias !1780
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1796
  call void @llvm.experimental.noalias.scope.decl(metadata !1799), !noalias !1796
  %_4.i.i.i48.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1801, !noalias !1802, !noundef !23
  %_5.i.i.i49.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1803, !noalias !1804, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smax.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1616, !noalias !1805
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  call void @llvm.experimental.noalias.scope.decl(metadata !1812), !noalias !1815
  call void @llvm.experimental.noalias.scope.decl(metadata !1818), !noalias !1815
  %_4.i.i19.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1820, !noalias !1821, !noundef !23
  %_5.i.i20.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1822, !noalias !1823, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smin.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1616, !noalias !1824
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1826, !noalias !1692
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1616, !noalias !1827
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !296

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1828

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1829, !noalias !1830
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1616, !noalias !1763
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1619, !noalias !1692
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i54.i = load i32, ptr %45, align 4, !alias.scope !1764, !noalias !1769, !noundef !23
  %_0.i.i56.i = icmp slt i32 %_4.i.i.i54.i, %44
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i1.i.i, %bb7.i.i ], [ %_4.i.i.i54.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1619, !noalias !1692
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i1.i.i = load i32, ptr %47, align 4, !alias.scope !1772, !noalias !1777, !noundef !23
  %_0.i3.i.i = icmp slt i32 %_4.i.i1.i.i, %44
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1619, !noalias !1780
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hcd8e43edb5e2eb65E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  call void @llvm.experimental.noalias.scope.decl(metadata !1840), !noalias !1843
  call void @llvm.experimental.noalias.scope.decl(metadata !1846), !noalias !1843
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1848, !noalias !1851, !noundef !23
  %_5.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1853, !noalias !1854, !noundef !23
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_4.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !1855, !noalias !1860, !noundef !23
  %_0.i7.i = icmp slt i32 %_4.i.i5.i, %_5.i.i.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i5.i, %_4.i.i.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h53fffe20afc27580E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_5.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1863, !noalias !1868, !noundef !23
  %_0.i = icmp slt i32 %value, %_5.i.i
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !296

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
  %_4.i.i.i29 = load i32, ptr %src, align 4, !alias.scope !1876, !noalias !1881, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %_5.i.i.i30 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1888, !noalias !1889, !noundef !23
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_5.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1874, !noalias !1890
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_5.i.i26.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1893, !noalias !1898, !noundef !23
  %_0.i27.i = icmp slt i32 %_4.i.i.i29, %_5.i.i26.i
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_5.i.i26.i, ptr %dst.i31.i, align 4, !alias.scope !1874, !noalias !1901
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_5.i.i36.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1904, !noalias !1909, !noundef !23
  %_0.i37.i = icmp slt i32 %_4.i.i.i29, %_5.i.i36.i
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_5.i.i36.i, ptr %dst.i41.i, align 4, !alias.scope !1874, !noalias !1912
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_5.i.i46.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1915, !noalias !1920, !noundef !23
  %_0.i47.i = icmp slt i32 %_4.i.i.i29, %_5.i.i46.i
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_5.i.i46.i, ptr %dst.i51.i, align 4, !alias.scope !1874, !noalias !1923
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
  %_4.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1926, !noalias !1931, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %_5.i.i56.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1938, !noalias !1939, !noundef !23
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_5.i.i56.i, ptr %dst.i61.i, align 4, !alias.scope !1874, !noalias !1940
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1871, !noalias !1943
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1874, !noalias !1946
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1947
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1874, !noalias !1871
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1874, !noalias !1871
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1871, !noalias !1874
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1871, !noalias !1874
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1948

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1874, !noalias !1871
  store i32 %78, ptr %75, align 4, !alias.scope !1871, !noalias !1874
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1949

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1950
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h450dd68f87ea8f3eE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !296

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
  %_5.i.i.i.i83 = load i32, ptr %src, align 4, !alias.scope !1959, !noalias !1966, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %_4.i.i.i.i82 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1976, !noalias !1977, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i82, ptr %dst.i.i86, align 4, !alias.scope !1957, !noalias !1978
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i25.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1981, !noalias !1988, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i25.i, %_5.i.i.i.i83
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i25.i, ptr %dst.i31.i90, align 4, !alias.scope !1957, !noalias !1992
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i35.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1995, !noalias !2002, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i35.i, %_5.i.i.i.i83
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i35.i, ptr %dst.i41.i94, align 4, !alias.scope !1957, !noalias !2006
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i45.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2009, !noalias !2016, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i45.i, %_5.i.i.i.i83
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i45.i, ptr %dst.i51.i98, align 4, !alias.scope !1957, !noalias !2020
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
  %_5.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2023, !noalias !2030, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  %_4.i.i.i55.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2040, !noalias !2041, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i55.i, ptr %dst.i61.i74, align 4, !alias.scope !1957, !noalias !2042
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1954, !noalias !2045
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1957, !noalias !2048
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !2049
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1957, !noalias !1954
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1957, !noalias !1954
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1954, !noalias !1957
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1954, !noalias !1957
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2050

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1957, !noalias !1954
  store i32 %108, ptr %105, align 4, !alias.scope !1954, !noalias !1957
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE.exit, label %bb42.i66, !llvm.loop !2051

_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hc711899e1305eaebE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !2072, !noalias !2073, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !2075, !noalias !2076, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !2092, !noalias !2093, !noundef !23
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !2094, !noalias !2095, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !2111, !noalias !2112, !noundef !23
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !2113, !noalias !2114, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !2130, !noalias !2131, !noundef !23
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !2132, !noalias !2133, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !2149, !noalias !2150, !noundef !23
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !2151, !noalias !2152, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !2055, !noalias !2153
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !2055, !noalias !2153
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !2055, !noalias !2153
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !2055, !noalias !2153
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !2169, !noalias !2170, !noundef !23
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !2171, !noalias !2172, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !2188, !noalias !2189, !noundef !23
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !2190, !noalias !2191, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !2207, !noalias !2208, !noundef !23
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !2209, !noalias !2210, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !2226, !noalias !2227, !noundef !23
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !2228, !noalias !2229, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !2245, !noalias !2246, !noundef !23
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !2247, !noalias !2248, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !2055, !noalias !2153
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !2055, !noalias !2153
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !2055, !noalias !2153
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !2055, !noalias !2153
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !2052, !noalias !2249
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !2055, !noalias !2153
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !2052, !noalias !2249
  store i32 %25, ptr %24, align 4, !alias.scope !2055, !noalias !2153
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !2052, !noalias !2249
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !2055, !noalias !2153
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !2250, !noalias !2257, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !2055, !noalias !2153
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !2261, !noalias !2268, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !2055, !noalias !2272
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285), !noalias !2288
  call void @llvm.experimental.noalias.scope.decl(metadata !2291), !noalias !2288
  call void @llvm.experimental.noalias.scope.decl(metadata !2293), !noalias !2288
  call void @llvm.experimental.noalias.scope.decl(metadata !2296), !noalias !2288
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !2298, !noalias !2299, !noundef !23
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !2300, !noalias !2301, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !2052, !noalias !2302
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309), !noalias !2312
  call void @llvm.experimental.noalias.scope.decl(metadata !2315), !noalias !2312
  call void @llvm.experimental.noalias.scope.decl(metadata !2317), !noalias !2312
  call void @llvm.experimental.noalias.scope.decl(metadata !2320), !noalias !2312
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !2322, !noalias !2323, !noundef !23
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !2324, !noalias !2325, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !2052, !noalias !2326
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !2328, !noalias !2153
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !2052, !noalias !2329
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !296

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18
          to label %.noexc.i unwind label %cleanup2.i, !noalias !2330

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !2331, !noalias !2332
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !2052, !noalias !2249
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !2055, !noalias !2153
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !2250, !noalias !2257, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !2055, !noalias !2153
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !2261, !noalias !2268, !noundef !23
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !2055, !noalias !2272
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h01c533b834c89417E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  call void @llvm.experimental.noalias.scope.decl(metadata !2342), !noalias !2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2348), !noalias !2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2350), !noalias !2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2353), !noalias !2345
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !2355, !noalias !2358, !noundef !23
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2360, !noalias !2361, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2362, !noalias !2369, !noundef !23
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8ef89d26099d8548E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !2373, !noalias !2380, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !296

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !2389, !noalias !2396, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2406, !noalias !2407, !noundef !23
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !2387, !noalias !2408
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2411, !noalias !2418, !noundef !23
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !2387, !noalias !2422
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2425, !noalias !2432, !noundef !23
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !2387, !noalias !2436
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2439, !noalias !2446, !noundef !23
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !2387, !noalias !2450
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2453, !noalias !2460, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2470, !noalias !2471, !noundef !23
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !2387, !noalias !2472
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !2384, !noalias !2475
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !2387, !noalias !2478
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2479
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !2387, !noalias !2384
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !2387, !noalias !2384
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !2384, !noalias !2387
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !2384, !noalias !2387
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2480

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
  %78 = load i32, ptr %77, align 4, !alias.scope !2387, !noalias !2384
  store i32 %78, ptr %75, align 4, !alias.scope !2384, !noalias !2387
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2481

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !2482
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5ba86096fbd8819bE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !296

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2491, !noalias !2500, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2513, !noalias !2514, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2489, !noalias !2515
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2518, !noalias !2527, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2489, !noalias !2532
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2535, !noalias !2544, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2489, !noalias !2549
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2552, !noalias !2561, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2489, !noalias !2566
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2569, !noalias !2578, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2591, !noalias !2592, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2489, !noalias !2593
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2486, !noalias !2596
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2489, !noalias !2599
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !2600
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2489, !noalias !2486
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2489, !noalias !2486
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2486, !noalias !2489
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2486, !noalias !2489
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2489, !noalias !2486
  store i32 %108, ptr %105, align 4, !alias.scope !2486, !noalias !2489
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E.exit, label %bb42.i66, !llvm.loop !2602

_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E.exit
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
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !2609
  %b.i.i = icmp samesign ult i64 %A.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %A.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc2527c42e8249605E(ptr noalias noundef nonnull align 4 %A.0, i64 noundef range(i64 0, 2305843009213693952) %A.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %A.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %A.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %A.0, i64 4
  %0 = and i64 %A.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i.prol = load i32, ptr %A.0, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %A.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %A.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %A.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %A.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %A.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %A.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !23
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2626, !noalias !2627, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %A.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %A.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2651, !noalias !2652, !noundef !23
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2653, !noalias !2654, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %A.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2630, !noalias !2635, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %A.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h015727d101d269d9E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2655
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !2661
  %b.i.i6 = icmp samesign ult i64 %B.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb7.i.i7, !prof !2611

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit"
  %b1.i.i8 = icmp samesign ult i64 %B.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !2611

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hfed4a3b6b12b08f1E(ptr noalias noundef nonnull align 4 %B.0, i64 noundef range(i64 0, 2305843009213693952) %B.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
  %v_end.idx.i.i.i11 = shl nuw nsw i64 %B.1, 2
  %v_end.i.i.i12 = getelementptr inbounds nuw i8, ptr %B.0, i64 %v_end.idx.i.i.i11
  %tail.sroa.0.01.i.i.i13 = getelementptr inbounds nuw i8, ptr %B.0, i64 4
  %8 = and i64 %B.1, 1
  %lcmp.mod49.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod49.not.not, label %bb5.i.i.i14.prol, label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol:                                 ; preds = %bb9.i.i10
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i17.prol = load i32, ptr %B.0, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i18.prol = load i32, ptr %tail.sroa.0.01.i.i.i13, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i19.prol = icmp slt i32 %_4.i.i.i.i.i.i17.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i.i.i.i.i19.prol, label %bb4.i.i.i.i22.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol

bb4.i.i.i.i22.prol:                               ; preds = %bb5.i.i.i14.prol, %bb7.i.i.i.i26.prol
  %9 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i26.prol ], [ %_4.i.i.i.i.i.i17.prol, %bb5.i.i.i14.prol ]
  %gap_guard.sroa.5.0.i.i.i.i23.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %tail.sroa.0.01.i.i.i13, %bb5.i.i.i14.prol ]
  %sift.sroa.0.0.i.i.i.i24.prol = phi ptr [ %10, %bb7.i.i.i.i26.prol ], [ %B.0, %bb5.i.i.i14.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i23.prol, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.prol, %B.0
  br i1 %_18.i.i.i.i25.prol, label %bb10.i.i.i.i28.prol, label %bb7.i.i.i.i26.prol

bb7.i.i.i.i26.prol:                               ; preds = %bb4.i.i.i.i22.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %10, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i18.prol
  br i1 %_0.i3.i.i.i.i27.prol, label %bb4.i.i.i.i22.prol, label %bb10.i.i.i.i28.prol

bb10.i.i.i.i28.prol:                              ; preds = %bb7.i.i.i.i26.prol, %bb4.i.i.i.i22.prol
  %sift.sroa.0.0.i.lcssa.i.i.i29.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i24.prol, %bb7.i.i.i.i26.prol ], [ %B.0, %bb4.i.i.i.i22.prol ]
  store i32 %_5.i.i.i.i.i.i18.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i29.prol, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i28.prol, %bb5.i.i.i14.prol
  %tail.sroa.0.0.i.i.i20.prol = getelementptr inbounds nuw i8, ptr %B.0, i64 8
  br label %bb5.i.i.i14.prol.loopexit

bb5.i.i.i14.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol, %bb9.i.i10
  %tail.sroa.0.04.i.i.i15.unr = phi ptr [ %tail.sroa.0.01.i.i.i13, %bb9.i.i10 ], [ %tail.sroa.0.0.i.i.i20.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i16.unr = phi ptr [ %B.0, %bb9.i.i10 ], [ %tail.sroa.0.01.i.i.i13, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.prol ]
  %11 = icmp eq i64 %B.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb5.i.i.i14

bb5.i.i.i14:                                      ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i20.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i15.unr, %bb5.i.i.i14.prol.loopexit ]
  %v.0.pn3.i.i.i16 = phi ptr [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i16.unr, %bb5.i.i.i14.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i17 = load i32, ptr %v.0.pn3.i.i.i16, align 4, !alias.scope !2673, !noalias !2676, !noundef !23
  %_5.i.i.i.i.i.i18 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2677, !noalias !2678, !noundef !23
  %_0.i.i.i.i.i19 = icmp slt i32 %_4.i.i.i.i.i.i17, %_5.i.i.i.i.i.i18
  br i1 %_0.i.i.i.i.i19, label %bb4.i.i.i.i22, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i

bb4.i.i.i.i22:                                    ; preds = %bb5.i.i.i14, %bb7.i.i.i.i26
  %12 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i26 ], [ %_4.i.i.i.i.i.i17, %bb5.i.i.i14 ]
  %gap_guard.sroa.5.0.i.i.i.i23 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %tail.sroa.0.04.i.i.i15, %bb5.i.i.i14 ]
  %sift.sroa.0.0.i.i.i.i24 = phi ptr [ %13, %bb7.i.i.i.i26 ], [ %v.0.pn3.i.i.i16, %bb5.i.i.i14 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i23, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24, %B.0
  br i1 %_18.i.i.i.i25, label %bb10.i.i.i.i28, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb4.i.i.i.i22
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %13, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27 = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i18
  br i1 %_0.i3.i.i.i.i27, label %bb4.i.i.i.i22, label %bb10.i.i.i.i28

bb10.i.i.i.i28:                                   ; preds = %bb7.i.i.i.i26, %bb4.i.i.i.i22
  %sift.sroa.0.0.i.lcssa.i.i.i29 = phi ptr [ %sift.sroa.0.0.i.i.i.i24, %bb7.i.i.i.i26 ], [ %B.0, %bb4.i.i.i.i22 ]
  store i32 %_5.i.i.i.i.i.i18, ptr %sift.sroa.0.0.i.lcssa.i.i.i29, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i: ; preds = %bb10.i.i.i.i28, %bb5.i.i.i14
  %tail.sroa.0.0.i.i.i20 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_4.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.04.i.i.i15, align 4, !alias.scope !2702, !noalias !2703, !noundef !23
  %_5.i.i.i.i.i.i18.1 = load i32, ptr %tail.sroa.0.0.i.i.i20, align 4, !alias.scope !2704, !noalias !2705, !noundef !23
  %_0.i.i.i.i.i19.1 = icmp slt i32 %_4.i.i.i.i.i.i17.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i.i.i.i.i19.1, label %bb4.i.i.i.i22.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1

bb4.i.i.i.i22.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i, %bb7.i.i.i.i26.1
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i26.1 ], [ %_4.i.i.i.i.i.i17.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i23.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.0.i.i.i20, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i24.1 = phi ptr [ %15, %bb7.i.i.i.i26.1 ], [ %tail.sroa.0.04.i.i.i15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i23.1, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i25.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i24.1, %B.0
  br i1 %_18.i.i.i.i25.1, label %bb10.i.i.i.i28.1, label %bb7.i.i.i.i26.1

bb7.i.i.i.i26.1:                                  ; preds = %bb4.i.i.i.i22.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i24.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %15, align 4, !alias.scope !2681, !noalias !2686, !noundef !23
  %_0.i3.i.i.i.i27.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i18.1
  br i1 %_0.i3.i.i.i.i27.1, label %bb4.i.i.i.i22.1, label %bb10.i.i.i.i28.1

bb10.i.i.i.i28.1:                                 ; preds = %bb7.i.i.i.i26.1, %bb4.i.i.i.i22.1
  %sift.sroa.0.0.i.lcssa.i.i.i29.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i24.1, %bb7.i.i.i.i26.1 ], [ %B.0, %bb4.i.i.i.i22.1 ]
  store i32 %_5.i.i.i.i.i.i18.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i29.1, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i28.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i
  %tail.sroa.0.0.i.i.i20.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i15, i64 8
  %_11.not.i.i.i21.1 = icmp eq ptr %tail.sroa.0.0.i.i.i20.1, %v_end.i.i.i12
  br i1 %_11.not.i.i.i21.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit", label %bb5.i.i.i14

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit": ; preds = %bb5.i.i.i14.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h15c0e430fef2f522E.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE.exit", %bb10.i.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !2655
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_1933 = icmp sgt i32 %n, 0
  br i1 %_1933, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %16 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb6

bb7:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE.exit" ], [ %21, %bb5 ]
  ret i32 %result.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader, %bb5
  %indvars.iv = phi i64 [ 0, %bb6.preheader ], [ %indvars.iv.next, %bb5 ]
  %result.sroa.0.035 = phi i32 [ 0, %bb6.preheader ], [ %21, %bb5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %A.1
  br i1 %exitcond.not, label %panic, label %bb4

bb4:                                              ; preds = %bb6
  %17 = xor i64 %indvars.iv, -1
  %18 = add nsw i64 %16, %17
  %_18 = icmp ugt i64 %B.1, %18
  br i1 %_18, label %bb5, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %A.1, i64 noundef %A.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_390ea9071b49ed4ab4959f8c81801f2f) #18
  unreachable

bb5:                                              ; preds = %bb4
  %19 = getelementptr inbounds nuw i32, ptr %A.0, i64 %indvars.iv
  %_9 = load i32, ptr %19, align 4, !noundef !23
  %20 = getelementptr inbounds nuw i32, ptr %B.0, i64 %18
  %_13 = load i32, ptr %20, align 4, !noundef !23
  %_8 = mul i32 %_13, %_9
  %21 = add i32 %_8, %result.sroa.0.035
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %bb7, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %18, i64 noundef %B.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3a0728a11c48e5aa548d60738b00786f) #18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2706
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2712
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc1c2a334d7d9cd91E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2729, !noalias !2732, !noundef !23
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2733, !noalias !2734, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2737, !noalias !2744, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2729, !noalias !2732, !noundef !23
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2733, !noalias !2734, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2737, !noalias !2744, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2765, !noalias !2766, !noundef !23
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2767, !noalias !2768, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2737, !noalias !2744, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hc6676223f144befbE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2706
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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!10 = distinct !{!10, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
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
!29 = distinct !{!29, !30, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!30 = distinct !{!30, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!31 = distinct !{!31, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!32 = distinct !{!32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!33 = !{!34, !35, !36}
!34 = distinct !{!34, !28, !"cmpfunc: %a"}
!35 = distinct !{!35, !30, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!36 = distinct !{!36, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!44 = distinct !{!44, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E: %c"}
!47 = distinct !{!47, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E"}
!48 = !{!49}
!49 = distinct !{!49, !44, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!50 = !{!43, !38}
!51 = !{!49, !41, !46}
!52 = !{!49, !41}
!53 = !{!43, !38, !46}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!56 = distinct !{!56, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!57 = distinct !{!57, !58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!58 = distinct !{!58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!59 = !{!60, !61}
!60 = distinct !{!60, !56, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!61 = distinct !{!61, !58, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!64 = distinct !{!64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!69 = distinct !{!69, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE: %c"}
!72 = distinct !{!72, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE"}
!73 = !{!74}
!74 = distinct !{!74, !69, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!75 = !{!74, !66}
!76 = !{!68, !63, !71}
!77 = !{!68, !63}
!78 = !{!74, !66, !71}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!81 = distinct !{!81, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!82 = distinct !{!82, !83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!83 = distinct !{!83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!84 = !{!85, !86}
!85 = distinct !{!85, !81, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!86 = distinct !{!86, !83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!94 = distinct !{!94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!97 = !{!96, !91}
!98 = !{!93, !88}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!106 = distinct !{!106, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!109 = !{!108, !103}
!110 = !{!105, !100}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!113 = distinct !{!113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!118 = distinct !{!118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!121 = !{!120, !115}
!122 = !{!117, !112}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!125 = distinct !{!125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!130 = distinct !{!130, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!133 = !{!132, !127}
!134 = !{!129, !124}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!137 = distinct !{!137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!142 = distinct !{!142, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!145 = !{!144, !139}
!146 = !{!141, !136}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!149 = distinct !{!149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!154 = distinct !{!154, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!157 = !{!156, !151}
!158 = !{!153, !148}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!161 = distinct !{!161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!166 = distinct !{!166, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!169 = !{!168, !163}
!170 = !{!165, !160}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!173 = distinct !{!173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!178 = distinct !{!178, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!181 = !{!180, !175}
!182 = !{!177, !172}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!185 = distinct !{!185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!190 = distinct !{!190, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!193 = !{!192, !187}
!194 = !{!189, !184}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!197 = distinct !{!197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!202 = distinct !{!202, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!205 = !{!204, !199}
!206 = !{!201, !196}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E: %v.0"}
!209 = distinct !{!209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E"}
!210 = !{!211, !213, !208}
!211 = distinct !{!211, !212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %_0"}
!212 = distinct !{!212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE"}
!213 = distinct !{!213, !212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %is_less"}
!214 = !{!215, !217, !208}
!215 = distinct !{!215, !216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %_0"}
!216 = distinct !{!216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E"}
!217 = distinct !{!217, !216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %is_less"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It1"}
!220 = distinct !{!220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It1"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It1"}
!225 = distinct !{!225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!226 = !{!211}
!227 = !{!228}
!228 = distinct !{!228, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It1"}
!229 = !{!228, !222, !208}
!230 = !{!224, !219, !211}
!231 = !{!224, !219, !208}
!232 = !{!228, !222, !211}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It1"}
!235 = distinct !{!235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It1"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It1"}
!240 = distinct !{!240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!241 = !{!215}
!242 = !{!243}
!243 = distinct !{!243, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It1"}
!244 = !{!243, !237, !208}
!245 = !{!239, !234, !215}
!246 = !{!239, !234, !208}
!247 = !{!243, !237, !215}
!248 = !{!249}
!249 = distinct !{!249, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It2"}
!250 = !{!251}
!251 = distinct !{!251, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It2"}
!252 = !{!253}
!253 = distinct !{!253, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It2"}
!254 = !{!255}
!255 = distinct !{!255, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It2"}
!256 = !{!255, !251, !208}
!257 = !{!253, !249, !211}
!258 = !{!253, !249, !208}
!259 = !{!255, !251, !211}
!260 = !{!261}
!261 = distinct !{!261, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It2"}
!262 = !{!263}
!263 = distinct !{!263, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It2"}
!264 = !{!265}
!265 = distinct !{!265, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It2"}
!266 = !{!267}
!267 = distinct !{!267, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It2"}
!268 = !{!267, !263, !208}
!269 = !{!265, !261, !215}
!270 = !{!265, !261, !208}
!271 = !{!267, !263, !215}
!272 = !{!273}
!273 = distinct !{!273, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It3"}
!274 = !{!275}
!275 = distinct !{!275, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It3"}
!276 = !{!277}
!277 = distinct !{!277, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It3"}
!278 = !{!279}
!279 = distinct !{!279, !225, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It3"}
!280 = !{!279, !275, !208}
!281 = !{!277, !273, !211}
!282 = !{!277, !273, !208}
!283 = !{!279, !275, !211}
!284 = !{!285}
!285 = distinct !{!285, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It3"}
!286 = !{!287}
!287 = distinct !{!287, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It3"}
!288 = !{!289}
!289 = distinct !{!289, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It3"}
!290 = !{!291}
!291 = distinct !{!291, !240, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It3"}
!292 = !{!291, !287, !208}
!293 = !{!289, !285, !215}
!294 = !{!289, !285, !208}
!295 = !{!291, !287, !215}
!296 = !{!"branch_weights", i32 4001, i32 4000000}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!299 = distinct !{!299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!304 = distinct !{!304, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"cmpfunc: %a"}
!309 = distinct !{!309, !"cmpfunc"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"cmpfunc: %b"}
!312 = !{!308, !303, !298}
!313 = !{!311, !306, !301}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!316 = distinct !{!316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!321 = distinct !{!321, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"cmpfunc: %a"}
!326 = distinct !{!326, !"cmpfunc"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"cmpfunc: %b"}
!329 = !{!325, !320, !315}
!330 = !{!328, !323, !318}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!333 = distinct !{!333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!334 = !{!335}
!335 = distinct !{!335, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!338 = distinct !{!338, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"cmpfunc: %a"}
!343 = distinct !{!343, !"cmpfunc"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"cmpfunc: %b"}
!346 = !{!342, !337, !332}
!347 = !{!345, !340, !335}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!350 = distinct !{!350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!351 = !{!352}
!352 = distinct !{!352, !350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!355 = distinct !{!355, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"cmpfunc: %a"}
!360 = distinct !{!360, !"cmpfunc"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"cmpfunc: %b"}
!363 = !{!359, !354, !349}
!364 = !{!362, !357, !352}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!367 = distinct !{!367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!368 = !{!369}
!369 = distinct !{!369, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!372 = distinct !{!372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"cmpfunc: %a"}
!377 = distinct !{!377, !"cmpfunc"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"cmpfunc: %b"}
!380 = !{!376, !371, !366}
!381 = !{!379, !374, !369}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!384 = distinct !{!384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!385 = !{!386}
!386 = distinct !{!386, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!389 = distinct !{!389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"cmpfunc: %a"}
!394 = distinct !{!394, !"cmpfunc"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"cmpfunc: %b"}
!397 = !{!393, !388, !383}
!398 = !{!396, !391, !386}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!401 = distinct !{!401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!406 = distinct !{!406, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"cmpfunc: %a"}
!411 = distinct !{!411, !"cmpfunc"}
!412 = !{!413}
!413 = distinct !{!413, !411, !"cmpfunc: %b"}
!414 = !{!410, !405, !400}
!415 = !{!413, !408, !403}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!418 = distinct !{!418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!423 = distinct !{!423, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!426 = !{!427}
!427 = distinct !{!427, !428, !"cmpfunc: %a"}
!428 = distinct !{!428, !"cmpfunc"}
!429 = !{!430}
!430 = distinct !{!430, !428, !"cmpfunc: %b"}
!431 = !{!427, !422, !417}
!432 = !{!430, !425, !420}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!435 = distinct !{!435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!440 = distinct !{!440, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"cmpfunc: %a"}
!445 = distinct !{!445, !"cmpfunc"}
!446 = !{!447}
!447 = distinct !{!447, !445, !"cmpfunc: %b"}
!448 = !{!444, !439, !434}
!449 = !{!447, !442, !437}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!452 = distinct !{!452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!455 = !{!456}
!456 = distinct !{!456, !457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!457 = distinct !{!457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!458 = !{!459}
!459 = distinct !{!459, !457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"cmpfunc: %a"}
!462 = distinct !{!462, !"cmpfunc"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"cmpfunc: %b"}
!465 = !{!461, !456, !451}
!466 = !{!464, !459, !454}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E: %v.0"}
!469 = distinct !{!469, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E"}
!470 = !{!471, !473, !475, !468}
!471 = distinct !{!471, !472, !"cmpfunc: %b"}
!472 = distinct !{!472, !"cmpfunc"}
!473 = distinct !{!473, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!474 = distinct !{!474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!475 = distinct !{!475, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!476 = distinct !{!476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!477 = !{!478, !479, !480, !481}
!478 = distinct !{!478, !472, !"cmpfunc: %a"}
!479 = distinct !{!479, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!480 = distinct !{!480, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!481 = distinct !{!481, !482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %_0"}
!482 = distinct !{!482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE"}
!483 = !{!481, !484, !468}
!484 = distinct !{!484, !482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %is_less"}
!485 = !{!486, !488, !490, !468}
!486 = distinct !{!486, !487, !"cmpfunc: %b"}
!487 = distinct !{!487, !"cmpfunc"}
!488 = distinct !{!488, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!489 = distinct !{!489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!490 = distinct !{!490, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!491 = distinct !{!491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!492 = !{!493, !494, !495, !496}
!493 = distinct !{!493, !487, !"cmpfunc: %a"}
!494 = distinct !{!494, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!495 = distinct !{!495, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!496 = distinct !{!496, !497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %_0"}
!497 = distinct !{!497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E"}
!498 = !{!496, !499, !468}
!499 = distinct !{!499, !497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %is_less"}
!500 = !{!501}
!501 = distinct !{!501, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It1"}
!502 = !{!503}
!503 = distinct !{!503, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It1"}
!504 = !{!505}
!505 = distinct !{!505, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It1"}
!506 = !{!481}
!507 = !{!508}
!508 = distinct !{!508, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It1"}
!509 = !{!510}
!510 = distinct !{!510, !472, !"cmpfunc: %a:It1"}
!511 = !{!512}
!512 = distinct !{!512, !472, !"cmpfunc: %b:It1"}
!513 = !{!510, !505, !501, !468}
!514 = !{!512, !508, !503, !481}
!515 = !{!512, !508, !503, !468}
!516 = !{!510, !505, !501, !481}
!517 = !{!518}
!518 = distinct !{!518, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It1"}
!519 = !{!520}
!520 = distinct !{!520, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It1"}
!521 = !{!522}
!522 = distinct !{!522, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It1"}
!523 = !{!496}
!524 = !{!525}
!525 = distinct !{!525, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It1"}
!526 = !{!527}
!527 = distinct !{!527, !487, !"cmpfunc: %a:It1"}
!528 = !{!529}
!529 = distinct !{!529, !487, !"cmpfunc: %b:It1"}
!530 = !{!527, !522, !518, !468}
!531 = !{!529, !525, !520, !496}
!532 = !{!529, !525, !520, !468}
!533 = !{!527, !522, !518, !496}
!534 = !{!535}
!535 = distinct !{!535, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It2"}
!536 = !{!537}
!537 = distinct !{!537, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It2"}
!538 = !{!539}
!539 = distinct !{!539, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It2"}
!540 = !{!541}
!541 = distinct !{!541, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It2"}
!542 = !{!543}
!543 = distinct !{!543, !472, !"cmpfunc: %a:It2"}
!544 = !{!545}
!545 = distinct !{!545, !472, !"cmpfunc: %b:It2"}
!546 = !{!543, !539, !535, !468}
!547 = !{!545, !541, !537, !481}
!548 = !{!545, !541, !537, !468}
!549 = !{!543, !539, !535, !481}
!550 = !{!551}
!551 = distinct !{!551, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It2"}
!552 = !{!553}
!553 = distinct !{!553, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It2"}
!554 = !{!555}
!555 = distinct !{!555, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It2"}
!556 = !{!557}
!557 = distinct !{!557, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It2"}
!558 = !{!559}
!559 = distinct !{!559, !487, !"cmpfunc: %a:It2"}
!560 = !{!561}
!561 = distinct !{!561, !487, !"cmpfunc: %b:It2"}
!562 = !{!559, !555, !551, !468}
!563 = !{!561, !557, !553, !496}
!564 = !{!561, !557, !553, !468}
!565 = !{!559, !555, !551, !496}
!566 = !{!567}
!567 = distinct !{!567, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It3"}
!568 = !{!569}
!569 = distinct !{!569, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It3"}
!570 = !{!571}
!571 = distinct !{!571, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It3"}
!572 = !{!573}
!573 = distinct !{!573, !474, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It3"}
!574 = !{!575}
!575 = distinct !{!575, !472, !"cmpfunc: %a:It3"}
!576 = !{!577}
!577 = distinct !{!577, !472, !"cmpfunc: %b:It3"}
!578 = !{!575, !571, !567, !468}
!579 = !{!577, !573, !569, !481}
!580 = !{!577, !573, !569, !468}
!581 = !{!575, !571, !567, !481}
!582 = !{!583}
!583 = distinct !{!583, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It3"}
!584 = !{!585}
!585 = distinct !{!585, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It3"}
!586 = !{!587}
!587 = distinct !{!587, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It3"}
!588 = !{!589}
!589 = distinct !{!589, !489, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It3"}
!590 = !{!591}
!591 = distinct !{!591, !487, !"cmpfunc: %a:It3"}
!592 = !{!593}
!593 = distinct !{!593, !487, !"cmpfunc: %b:It3"}
!594 = !{!591, !587, !583, !468}
!595 = !{!593, !589, !585, !496}
!596 = !{!593, !589, !585, !468}
!597 = !{!591, !587, !583, !496}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!600 = distinct !{!600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!605 = distinct !{!605, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!608 = !{!604, !599}
!609 = !{!607, !602}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!612 = distinct !{!612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!617 = distinct !{!617, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!620 = !{!616, !611}
!621 = !{!619, !614}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!624 = distinct !{!624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!629 = distinct !{!629, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!630 = !{!631}
!631 = distinct !{!631, !629, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!632 = !{!628, !623}
!633 = !{!631, !626}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!636 = distinct !{!636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!637 = !{!638}
!638 = distinct !{!638, !636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!641 = distinct !{!641, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!642 = !{!643}
!643 = distinct !{!643, !641, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!644 = !{!640, !635}
!645 = !{!643, !638}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!648 = distinct !{!648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!649 = !{!650}
!650 = distinct !{!650, !648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!653 = distinct !{!653, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!656 = !{!652, !647}
!657 = !{!655, !650}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!660 = distinct !{!660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!661 = !{!662}
!662 = distinct !{!662, !660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!665 = distinct !{!665, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!668 = !{!664, !659}
!669 = !{!667, !662}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!672 = distinct !{!672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!677 = distinct !{!677, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!678 = !{!679}
!679 = distinct !{!679, !677, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!680 = !{!676, !671}
!681 = !{!679, !674}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!684 = distinct !{!684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!685 = !{!686}
!686 = distinct !{!686, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!689 = distinct !{!689, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!692 = !{!688, !683}
!693 = !{!691, !686}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!696 = distinct !{!696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!701 = distinct !{!701, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!704 = !{!700, !695}
!705 = !{!703, !698}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!708 = distinct !{!708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!713 = distinct !{!713, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!716 = !{!712, !707}
!717 = !{!715, !710}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E: %v.0"}
!720 = distinct !{!720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E"}
!721 = !{!722, !724, !719}
!722 = distinct !{!722, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %_0"}
!723 = distinct !{!723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE"}
!724 = distinct !{!724, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %is_less"}
!725 = !{!726, !728, !719}
!726 = distinct !{!726, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %_0"}
!727 = distinct !{!727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E"}
!728 = distinct !{!728, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %is_less"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It1"}
!731 = distinct !{!731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!732 = !{!733}
!733 = distinct !{!733, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It1"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It1"}
!736 = distinct !{!736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!737 = !{!722}
!738 = !{!739}
!739 = distinct !{!739, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It1"}
!740 = !{!735, !730, !719}
!741 = !{!739, !733, !722}
!742 = !{!739, !733, !719}
!743 = !{!735, !730, !722}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It1"}
!746 = distinct !{!746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It1"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It1"}
!751 = distinct !{!751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!752 = !{!726}
!753 = !{!754}
!754 = distinct !{!754, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It1"}
!755 = !{!750, !745, !719}
!756 = !{!754, !748, !726}
!757 = !{!754, !748, !719}
!758 = !{!750, !745, !726}
!759 = !{!760}
!760 = distinct !{!760, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It2"}
!761 = !{!762}
!762 = distinct !{!762, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It2"}
!763 = !{!764}
!764 = distinct !{!764, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It2"}
!765 = !{!766}
!766 = distinct !{!766, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It2"}
!767 = !{!764, !760, !719}
!768 = !{!766, !762, !722}
!769 = !{!766, !762, !719}
!770 = !{!764, !760, !722}
!771 = !{!772}
!772 = distinct !{!772, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It2"}
!773 = !{!774}
!774 = distinct !{!774, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It2"}
!775 = !{!776}
!776 = distinct !{!776, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It2"}
!777 = !{!778}
!778 = distinct !{!778, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It2"}
!779 = !{!776, !772, !719}
!780 = !{!778, !774, !726}
!781 = !{!778, !774, !719}
!782 = !{!776, !772, !726}
!783 = !{!784}
!784 = distinct !{!784, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It3"}
!785 = !{!786}
!786 = distinct !{!786, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It3"}
!787 = !{!788}
!788 = distinct !{!788, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It3"}
!789 = !{!790}
!790 = distinct !{!790, !736, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It3"}
!791 = !{!788, !784, !719}
!792 = !{!790, !786, !722}
!793 = !{!790, !786, !719}
!794 = !{!788, !784, !722}
!795 = !{!796}
!796 = distinct !{!796, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It3"}
!797 = !{!798}
!798 = distinct !{!798, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It3"}
!799 = !{!800}
!800 = distinct !{!800, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It3"}
!801 = !{!802}
!802 = distinct !{!802, !751, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It3"}
!803 = !{!800, !796, !719}
!804 = !{!802, !798, !726}
!805 = !{!802, !798, !719}
!806 = !{!800, !796, !726}
!807 = !{!"branch_weights", i32 2002, i32 2000}
!808 = !{!809, !811}
!809 = distinct !{!809, !810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E: %_0"}
!810 = distinct !{!810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E"}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!812 = distinct !{!812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!813 = !{!814, !816, !818, !820}
!814 = distinct !{!814, !815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!815 = distinct !{!815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!816 = distinct !{!816, !817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!817 = distinct !{!817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!818 = distinct !{!818, !819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!819 = distinct !{!819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!820 = distinct !{!820, !821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!821 = distinct !{!821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!822 = !{!823, !825, !827, !829}
!823 = distinct !{!823, !824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!824 = distinct !{!824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!825 = distinct !{!825, !826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!826 = distinct !{!826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!829 = distinct !{!829, !830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!830 = distinct !{!830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!831 = !{!832, !834}
!832 = distinct !{!832, !833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E: %_0"}
!833 = distinct !{!833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E"}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!835 = distinct !{!835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!836 = !{!837, !839, !841, !843}
!837 = distinct !{!837, !838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!838 = distinct !{!838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!839 = distinct !{!839, !840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!840 = distinct !{!840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!841 = distinct !{!841, !842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!842 = distinct !{!842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!843 = distinct !{!843, !844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!844 = distinct !{!844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!845 = !{!846, !848, !850, !852}
!846 = distinct !{!846, !847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!847 = distinct !{!847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!848 = distinct !{!848, !849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!849 = distinct !{!849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!850 = distinct !{!850, !851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!851 = distinct !{!851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!852 = distinct !{!852, !853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!853 = distinct !{!853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E: %_0"}
!856 = distinct !{!856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd92f67bf371e3203E"}
!857 = distinct !{!857, !858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE: %_0"}
!858 = distinct !{!858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7de731c70d377fdaE"}
!859 = !{!860, !862, !864, !866}
!860 = distinct !{!860, !861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!861 = distinct !{!861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!862 = distinct !{!862, !863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!863 = distinct !{!863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!864 = distinct !{!864, !865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!865 = distinct !{!865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!866 = distinct !{!866, !867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!867 = distinct !{!867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!868 = !{!869, !871, !873, !875}
!869 = distinct !{!869, !870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE: %self"}
!870 = distinct !{!870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h23cf297d6ceae1adE"}
!871 = distinct !{!871, !872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E: %self"}
!872 = distinct !{!872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h641d366fcc8a94c8E"}
!873 = distinct !{!873, !874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E: %_1"}
!874 = distinct !{!874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc80f1a5a2fa390e8E"}
!875 = distinct !{!875, !876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E: %_1"}
!876 = distinct !{!876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h082a8f43935d7484E"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!884 = distinct !{!884, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE: %scratch.0"}
!887 = distinct !{!887, !"_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE"}
!888 = !{!889}
!889 = distinct !{!889, !884, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!890 = !{!883, !878}
!891 = !{!889, !881, !886}
!892 = !{!889, !881}
!893 = !{!883, !878, !886}
!894 = !{!895, !897}
!895 = distinct !{!895, !896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!896 = distinct !{!896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!897 = distinct !{!897, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!898 = distinct !{!898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!899 = !{!900, !901, !886}
!900 = distinct !{!900, !896, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!901 = distinct !{!901, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!902 = !{!903, !905}
!903 = distinct !{!903, !904, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!904 = distinct !{!904, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!905 = distinct !{!905, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!906 = distinct !{!906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!907 = !{!908, !909, !886}
!908 = distinct !{!908, !904, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!909 = distinct !{!909, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!912 = distinct !{!912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!913 = !{!886, !914}
!914 = distinct !{!914, !887, !"_ZN4core5slice4sort6stable5drift10create_run17hd33b9f57390fdc8dE: %is_less"}
!915 = !{!916}
!916 = distinct !{!916, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!917 = !{!911, !918}
!918 = distinct !{!918, !919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!919 = distinct !{!919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!920 = !{!916, !886, !914}
!921 = !{!916, !918}
!922 = !{!911, !886, !914}
!923 = distinct !{!923, !924, !925}
!924 = !{!"llvm.loop.isvectorized", i32 1}
!925 = !{!"llvm.loop.unroll.runtime.disable"}
!926 = distinct !{!926, !925, !924}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E: %v.0"}
!929 = distinct !{!929, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"_ZN4core5slice4sort6stable5merge5merge17hc8f5ab673d6171f4E: %scratch.0"}
!932 = !{!928, !931}
!933 = !{!934}
!934 = distinct !{!934, !935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!935 = distinct !{!935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!936 = !{!937}
!937 = distinct !{!937, !935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!940 = distinct !{!940, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!943 = !{!939, !934, !931}
!944 = !{!942, !937, !945, !928}
!945 = distinct !{!945, !946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE: %self"}
!946 = distinct !{!946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h363b9f705244397dE"}
!947 = !{!942, !937, !928}
!948 = !{!939, !934, !945, !931}
!949 = !{!945, !931}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!957 = distinct !{!957, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!960 = !{!956, !951, !928}
!961 = !{!959, !954, !962, !931}
!962 = distinct !{!962, !963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E: %self"}
!963 = distinct !{!963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e05882775aa1d01E"}
!964 = !{!959, !954, !931}
!965 = !{!956, !951, !962, !928}
!966 = !{!962, !931}
!967 = !{!968, !970}
!968 = distinct !{!968, !969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!969 = distinct !{!969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!970 = distinct !{!970, !971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!971 = distinct !{!971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!974 = distinct !{!974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!979 = distinct !{!979, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E: %scratch.0"}
!982 = distinct !{!982, !"_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E"}
!983 = !{!984}
!984 = distinct !{!984, !979, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!985 = !{!984, !976}
!986 = !{!978, !973, !981}
!987 = !{!978, !973}
!988 = !{!984, !976, !981}
!989 = !{!990, !992}
!990 = distinct !{!990, !991, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!991 = distinct !{!991, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!992 = distinct !{!992, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!993 = distinct !{!993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!994 = !{!995, !996, !981}
!995 = distinct !{!995, !991, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!996 = distinct !{!996, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!997 = !{!998, !1000}
!998 = distinct !{!998, !999, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!999 = distinct !{!999, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1000 = distinct !{!1000, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1001 = distinct !{!1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1002 = !{!1003, !1004, !981}
!1003 = distinct !{!1003, !999, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1004 = distinct !{!1004, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!1007 = distinct !{!1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!1008 = !{!981, !1009}
!1009 = distinct !{!1009, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h1a94200383c64518E: %is_less"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!1012 = !{!1006, !1013}
!1013 = distinct !{!1013, !1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!1014 = distinct !{!1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!1015 = !{!1011, !981, !1009}
!1016 = !{!1011, !1013}
!1017 = !{!1006, !981, !1009}
!1018 = distinct !{!1018, !924, !925}
!1019 = distinct !{!1019, !925, !924}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE: %v.0"}
!1022 = distinct !{!1022, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h6b597ed079bf809dE: %scratch.0"}
!1025 = !{!1021, !1024}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1028 = distinct !{!1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1033 = distinct !{!1033, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1036 = !{!1035, !1030, !1021}
!1037 = !{!1032, !1027, !1038, !1024}
!1038 = distinct !{!1038, !1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E: %self"}
!1039 = distinct !{!1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha9e9e16e84e82e48E"}
!1040 = !{!1032, !1027, !1024}
!1041 = !{!1035, !1030, !1038, !1021}
!1042 = !{!1038, !1024}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1045 = distinct !{!1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1050 = distinct !{!1050, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1053 = !{!1052, !1047, !1024}
!1054 = !{!1049, !1044, !1055, !1021}
!1055 = distinct !{!1055, !1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE: %self"}
!1056 = distinct !{!1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h5d6cab68f5e2a1efE"}
!1057 = !{!1049, !1044, !1021}
!1058 = !{!1052, !1047, !1055, !1024}
!1059 = !{!1055, !1024}
!1060 = !{!1061, !1063}
!1061 = distinct !{!1061, !1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!1062 = distinct !{!1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!1064 = distinct !{!1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1067 = distinct !{!1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E: %scratch.0"}
!1075 = distinct !{!1075, !"_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"cmpfunc: %a"}
!1080 = distinct !{!1080, !"cmpfunc"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"cmpfunc: %b"}
!1083 = !{!1079, !1071, !1066}
!1084 = !{!1082, !1077, !1069, !1074}
!1085 = !{!1082, !1077, !1069}
!1086 = !{!1079, !1071, !1066, !1074}
!1087 = !{!1088, !1090, !1092}
!1088 = distinct !{!1088, !1089, !"cmpfunc: %a"}
!1089 = distinct !{!1089, !"cmpfunc"}
!1090 = distinct !{!1090, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1091 = distinct !{!1091, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1093 = distinct !{!1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1094 = !{!1095, !1096, !1097, !1074}
!1095 = distinct !{!1095, !1089, !"cmpfunc: %b"}
!1096 = distinct !{!1096, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1097 = distinct !{!1097, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1098 = !{!1099, !1101, !1103}
!1099 = distinct !{!1099, !1100, !"cmpfunc: %a"}
!1100 = distinct !{!1100, !"cmpfunc"}
!1101 = distinct !{!1101, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1102 = distinct !{!1102, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1103 = distinct !{!1103, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1104 = distinct !{!1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1105 = !{!1106, !1107, !1108, !1074}
!1106 = distinct !{!1106, !1100, !"cmpfunc: %b"}
!1107 = distinct !{!1107, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1108 = distinct !{!1108, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %a.0"}
!1111 = distinct !{!1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE"}
!1112 = !{!1074, !1113}
!1113 = distinct !{!1113, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17h1aab1ba13b3cf416E: %is_less"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he7f17bebe9f6f8feE: %b.0"}
!1116 = !{!1110, !1117}
!1117 = distinct !{!1117, !1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E: %self.0"}
!1118 = distinct !{!1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4dae73ef30231e60E"}
!1119 = !{!1115, !1074, !1113}
!1120 = !{!1115, !1117}
!1121 = !{!1110, !1074, !1113}
!1122 = distinct !{!1122, !924, !925}
!1123 = distinct !{!1123, !925, !924}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE: %v.0"}
!1126 = distinct !{!1126, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN4core5slice4sort6stable5merge5merge17hf8a6f4db6ffeb9bbE: %scratch.0"}
!1129 = !{!1125, !1128}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1132 = distinct !{!1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1137 = distinct !{!1137, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"cmpfunc: %a"}
!1142 = distinct !{!1142, !"cmpfunc"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"cmpfunc: %b"}
!1145 = !{!1141, !1136, !1131, !1128}
!1146 = !{!1144, !1139, !1134, !1147, !1125}
!1147 = distinct !{!1147, !1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE: %self"}
!1148 = distinct !{!1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf90c3224030b417bE"}
!1149 = !{!1144, !1139, !1134, !1125}
!1150 = !{!1141, !1136, !1131, !1147, !1128}
!1151 = !{!1147, !1128}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!1154 = distinct !{!1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!1159 = distinct !{!1159, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"cmpfunc: %a"}
!1164 = distinct !{!1164, !"cmpfunc"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"cmpfunc: %b"}
!1167 = !{!1163, !1158, !1153, !1125}
!1168 = !{!1166, !1161, !1156, !1169, !1128}
!1169 = distinct !{!1169, !1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E: %self"}
!1170 = distinct !{!1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17he615947d36a50cc6E"}
!1171 = !{!1166, !1161, !1156, !1128}
!1172 = !{!1163, !1158, !1153, !1169, !1125}
!1173 = !{!1169, !1128}
!1174 = !{!1175, !1177}
!1175 = distinct !{!1175, !1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E: %self"}
!1176 = distinct !{!1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h055111308bf9f0b6E"}
!1177 = distinct !{!1177, !1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E: %_1"}
!1178 = distinct !{!1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hd5c3128595c2a192E"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE: %v.0"}
!1181 = distinct !{!1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE: %scratch.0"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1191 = distinct !{!1191, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1194 = !{!1190, !1185, !1180}
!1195 = !{!1193, !1188, !1183, !1196}
!1196 = distinct !{!1196, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7cd6f4c97e68381fE: %is_less"}
!1197 = !{!1193, !1188, !1180}
!1198 = !{!1190, !1185, !1183, !1196}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1201 = distinct !{!1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1206 = distinct !{!1206, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1209 = !{!1205, !1200, !1180}
!1210 = !{!1208, !1203, !1183, !1196}
!1211 = !{!1208, !1203, !1180}
!1212 = !{!1205, !1200, !1183, !1196}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1215 = distinct !{!1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1220 = distinct !{!1220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1223 = !{!1219, !1214, !1180}
!1224 = !{!1222, !1217, !1183, !1196}
!1225 = !{!1222, !1217, !1180}
!1226 = !{!1219, !1214, !1183, !1196}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1229 = distinct !{!1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1234 = distinct !{!1234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1237 = !{!1233, !1228, !1180}
!1238 = !{!1236, !1231, !1183, !1196}
!1239 = !{!1236, !1231, !1180}
!1240 = !{!1233, !1228, !1183, !1196}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1243 = distinct !{!1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1248 = distinct !{!1248, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1248, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1251 = !{!1247, !1242, !1180}
!1252 = !{!1250, !1245, !1183, !1196}
!1253 = !{!1250, !1245, !1180}
!1254 = !{!1247, !1242, !1183, !1196}
!1255 = !{!1180, !1196}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1258 = distinct !{!1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1263 = distinct !{!1263, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1266 = !{!1262, !1257, !1180}
!1267 = !{!1265, !1260, !1183, !1196}
!1268 = !{!1265, !1260, !1180}
!1269 = !{!1262, !1257, !1183, !1196}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1272 = distinct !{!1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1277 = distinct !{!1277, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1280 = !{!1276, !1271, !1180}
!1281 = !{!1279, !1274, !1183, !1196}
!1282 = !{!1279, !1274, !1180}
!1283 = !{!1276, !1271, !1183, !1196}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1286 = distinct !{!1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1291 = distinct !{!1291, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1294 = !{!1290, !1285, !1180}
!1295 = !{!1293, !1288, !1183, !1196}
!1296 = !{!1293, !1288, !1180}
!1297 = !{!1290, !1285, !1183, !1196}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1300 = distinct !{!1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1305 = distinct !{!1305, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1308 = !{!1304, !1299, !1180}
!1309 = !{!1307, !1302, !1183, !1196}
!1310 = !{!1307, !1302, !1180}
!1311 = !{!1304, !1299, !1183, !1196}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1314 = distinct !{!1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1319 = distinct !{!1319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1322 = !{!1318, !1313, !1180}
!1323 = !{!1321, !1316, !1183, !1196}
!1324 = !{!1321, !1316, !1180}
!1325 = !{!1318, !1313, !1183, !1196}
!1326 = !{!1183, !1196}
!1327 = !{!1328, !1330, !1183}
!1328 = distinct !{!1328, !1329, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1329 = distinct !{!1329, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1330 = distinct !{!1330, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1331 = distinct !{!1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1332 = !{!1333, !1334, !1180, !1196}
!1333 = distinct !{!1333, !1329, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1334 = distinct !{!1334, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1335 = !{!1336, !1338, !1183}
!1336 = distinct !{!1336, !1337, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1337 = distinct !{!1337, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1338 = distinct !{!1338, !1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1339 = distinct !{!1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1340 = !{!1341, !1342, !1180, !1196}
!1341 = distinct !{!1341, !1337, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1342 = distinct !{!1342, !1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1343 = !{!1344, !1346, !1180, !1196}
!1344 = distinct !{!1344, !1345, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1345 = distinct !{!1345, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1346 = distinct !{!1346, !1347, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1347 = distinct !{!1347, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E: %v.0"}
!1350 = distinct !{!1350, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h0080c53fa88ef910E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1353 = distinct !{!1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1358 = distinct !{!1358, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %_0"}
!1361 = distinct !{!1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1358, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1364 = !{!1357, !1352, !1349, !1183}
!1365 = !{!1363, !1355, !1360, !1180, !1196}
!1366 = !{!1363, !1355, !1349, !1183}
!1367 = !{!1357, !1352, !1360, !1180, !1196}
!1368 = !{!1360, !1369, !1349, !1183, !1196}
!1369 = distinct !{!1369, !1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf8233e01bdea738aE: %is_less"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1372 = distinct !{!1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1377 = distinct !{!1377, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %_0"}
!1380 = distinct !{!1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1377, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1383 = !{!1376, !1371, !1349, !1183}
!1384 = !{!1382, !1374, !1379, !1180, !1196}
!1385 = !{!1382, !1374, !1349, !1183}
!1386 = !{!1376, !1371, !1379, !1180, !1196}
!1387 = !{!1379, !1388, !1349, !1183, !1196}
!1388 = distinct !{!1388, !1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0ed95813a38bd558E: %is_less"}
!1389 = !{!1349, !1183}
!1390 = !{!1349, !1183, !1196}
!1391 = !{!1180, !1183, !1196}
!1392 = !{!1180, !1183}
!1393 = !{!1394, !1396, !1196}
!1394 = distinct !{!1394, !1395, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1395 = distinct !{!1395, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1396 = distinct !{!1396, !1397, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1397 = distinct !{!1397, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1400 = distinct !{!1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1405 = distinct !{!1405, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E: %c"}
!1408 = distinct !{!1408, !"_ZN4core5slice4sort6shared5pivot7median317h2f6df566d1b64d82E"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1405, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1411 = !{!1404, !1399, !1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E: %v.0"}
!1413 = distinct !{!1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E"}
!1414 = !{!1410, !1402, !1407, !1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd5a4a3f7e899d159E: %is_less"}
!1416 = !{!1410, !1402, !1412}
!1417 = !{!1404, !1399, !1407, !1415}
!1418 = !{!1419, !1421, !1412}
!1419 = distinct !{!1419, !1420, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1420 = distinct !{!1420, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1421 = distinct !{!1421, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1422 = distinct !{!1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1423 = !{!1424, !1425, !1415}
!1424 = distinct !{!1424, !1420, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1425 = distinct !{!1425, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1426 = !{!1427, !1429}
!1427 = distinct !{!1427, !1428, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1428 = distinct !{!1428, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1429 = distinct !{!1429, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1430 = distinct !{!1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1431 = !{!1432, !1433}
!1432 = distinct !{!1432, !1428, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1433 = distinct !{!1433, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h81f5758e343580d8E: %v.0"}
!1436 = distinct !{!1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h81f5758e343580d8E"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h81f5758e343580d8E: %scratch.0"}
!1439 = !{!1440, !1442, !1435}
!1440 = distinct !{!1440, !1441, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1441 = distinct !{!1441, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1442 = distinct !{!1442, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1443 = distinct !{!1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1444 = !{!1445, !1446, !1438}
!1445 = distinct !{!1445, !1441, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1446 = distinct !{!1446, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1447 = !{!1446}
!1448 = !{!1442}
!1449 = !{!1445}
!1450 = !{!1440}
!1451 = !{!1445, !1446, !1435}
!1452 = !{!1440, !1442, !1438}
!1453 = !{!1454, !1435}
!1454 = distinct !{!1454, !1455, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1455 = distinct !{!1455, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1456 = !{!1457, !1459, !1435}
!1457 = distinct !{!1457, !1458, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1458 = distinct !{!1458, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1459 = distinct !{!1459, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1460 = distinct !{!1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1461 = !{!1462, !1463, !1438}
!1462 = distinct !{!1462, !1458, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1463 = distinct !{!1463, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1464 = !{!1465, !1435}
!1465 = distinct !{!1465, !1466, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1466 = distinct !{!1466, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1467 = !{!1468, !1470, !1435}
!1468 = distinct !{!1468, !1469, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1469 = distinct !{!1469, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1470 = distinct !{!1470, !1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1471 = distinct !{!1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1472 = !{!1473, !1474, !1438}
!1473 = distinct !{!1473, !1469, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1474 = distinct !{!1474, !1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1475 = !{!1476, !1435}
!1476 = distinct !{!1476, !1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1477 = distinct !{!1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1478 = !{!1479, !1481, !1435}
!1479 = distinct !{!1479, !1480, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1480 = distinct !{!1480, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1481 = distinct !{!1481, !1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1482 = distinct !{!1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1483 = !{!1484, !1485, !1438}
!1484 = distinct !{!1484, !1480, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1485 = distinct !{!1485, !1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1486 = !{!1487, !1435}
!1487 = distinct !{!1487, !1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1488 = distinct !{!1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1489 = !{!1490, !1492, !1435}
!1490 = distinct !{!1490, !1491, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1491 = distinct !{!1491, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1492 = distinct !{!1492, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1493 = distinct !{!1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1494 = !{!1495, !1496, !1438}
!1495 = distinct !{!1495, !1491, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1496 = distinct !{!1496, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1497 = !{!1496}
!1498 = !{!1492}
!1499 = !{!1495}
!1500 = !{!1490}
!1501 = !{!1495, !1496, !1435}
!1502 = !{!1490, !1492, !1438}
!1503 = !{!1504, !1435}
!1504 = distinct !{!1504, !1505, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1505 = distinct !{!1505, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1506 = !{!1507, !1438}
!1507 = distinct !{!1507, !1508, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1508 = distinct !{!1508, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1509 = !{!1507, !1435}
!1510 = !{!1435, !1438}
!1511 = distinct !{!1511, !924, !925}
!1512 = distinct !{!1512, !925, !924}
!1513 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1514 = !{!1515, !1517}
!1515 = distinct !{!1515, !1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!1516 = distinct !{!1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!1517 = distinct !{!1517, !1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E: %v.0"}
!1520 = distinct !{!1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a8623b1895d52a4E: %scratch.0"}
!1523 = !{!1524, !1526, !1528, !1519}
!1524 = distinct !{!1524, !1525, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1525 = distinct !{!1525, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1526 = distinct !{!1526, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1527 = distinct !{!1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1528 = distinct !{!1528, !1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!1529 = distinct !{!1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!1530 = !{!1531, !1532, !1533, !1522}
!1531 = distinct !{!1531, !1525, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1532 = distinct !{!1532, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1533 = distinct !{!1533, !1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!1534 = !{!1533}
!1535 = !{!1528}
!1536 = !{!1526}
!1537 = !{!1532}
!1538 = !{!1524}
!1539 = !{!1531}
!1540 = !{!1531, !1532, !1533, !1519}
!1541 = !{!1524, !1526, !1528, !1522}
!1542 = !{!1543, !1519}
!1543 = distinct !{!1543, !1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1544 = distinct !{!1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1545 = !{!1546, !1548, !1550, !1519}
!1546 = distinct !{!1546, !1547, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1547 = distinct !{!1547, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1548 = distinct !{!1548, !1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1549 = distinct !{!1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1550 = distinct !{!1550, !1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!1551 = distinct !{!1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!1552 = !{!1553, !1554, !1555, !1522}
!1553 = distinct !{!1553, !1547, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1554 = distinct !{!1554, !1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1555 = distinct !{!1555, !1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!1556 = !{!1557, !1519}
!1557 = distinct !{!1557, !1558, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1558 = distinct !{!1558, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1559 = !{!1560, !1562, !1564, !1519}
!1560 = distinct !{!1560, !1561, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1561 = distinct !{!1561, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1562 = distinct !{!1562, !1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1563 = distinct !{!1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1564 = distinct !{!1564, !1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!1565 = distinct !{!1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!1566 = !{!1567, !1568, !1569, !1522}
!1567 = distinct !{!1567, !1561, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1568 = distinct !{!1568, !1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1569 = distinct !{!1569, !1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!1570 = !{!1571, !1519}
!1571 = distinct !{!1571, !1572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1572 = distinct !{!1572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1573 = !{!1574, !1576, !1578, !1519}
!1574 = distinct !{!1574, !1575, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1575 = distinct !{!1575, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1576 = distinct !{!1576, !1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1577 = distinct !{!1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1578 = distinct !{!1578, !1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!1579 = distinct !{!1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!1580 = !{!1581, !1582, !1583, !1522}
!1581 = distinct !{!1581, !1575, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1582 = distinct !{!1582, !1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1583 = distinct !{!1583, !1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!1584 = !{!1585, !1519}
!1585 = distinct !{!1585, !1586, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1586 = distinct !{!1586, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1587 = !{!1588, !1590, !1592, !1519}
!1588 = distinct !{!1588, !1589, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!1589 = distinct !{!1589, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!1590 = distinct !{!1590, !1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!1591 = distinct !{!1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!1592 = distinct !{!1592, !1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %b"}
!1593 = distinct !{!1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E"}
!1594 = !{!1595, !1596, !1597, !1522}
!1595 = distinct !{!1595, !1589, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!1596 = distinct !{!1596, !1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!1597 = distinct !{!1597, !1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0f36de7726ef0892E: %a"}
!1598 = !{!1597}
!1599 = !{!1592}
!1600 = !{!1590}
!1601 = !{!1596}
!1602 = !{!1588}
!1603 = !{!1595}
!1604 = !{!1595, !1596, !1597, !1519}
!1605 = !{!1588, !1590, !1592, !1522}
!1606 = !{!1607, !1519}
!1607 = distinct !{!1607, !1608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1608 = distinct !{!1608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1609 = !{!1610, !1522}
!1610 = distinct !{!1610, !1611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1611 = distinct !{!1611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1612 = !{!1610, !1519}
!1613 = !{!1519, !1522}
!1614 = distinct !{!1614, !924, !925}
!1615 = distinct !{!1615, !925, !924}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E: %v.0"}
!1618 = distinct !{!1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E: %scratch.0"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1623 = distinct !{!1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1628, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1628 = distinct !{!1628, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1629 = !{!1630}
!1630 = distinct !{!1630, !1628, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1631 = !{!1630, !1625, !1617}
!1632 = !{!1627, !1622, !1620, !1633}
!1633 = distinct !{!1633, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h14cbe1fb2943f832E: %is_less"}
!1634 = !{!1627, !1622, !1617}
!1635 = !{!1630, !1625, !1620, !1633}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1638 = distinct !{!1638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1643, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1643 = distinct !{!1643, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1644 = !{!1645}
!1645 = distinct !{!1645, !1643, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1646 = !{!1645, !1640, !1617}
!1647 = !{!1642, !1637, !1620, !1633}
!1648 = !{!1642, !1637, !1617}
!1649 = !{!1645, !1640, !1620, !1633}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1652 = distinct !{!1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1657 = distinct !{!1657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1660 = !{!1659, !1654, !1617}
!1661 = !{!1656, !1651, !1620, !1633}
!1662 = !{!1656, !1651, !1617}
!1663 = !{!1659, !1654, !1620, !1633}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1666 = distinct !{!1666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1669 = !{!1670}
!1670 = distinct !{!1670, !1671, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1671 = distinct !{!1671, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1671, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1674 = !{!1673, !1668, !1617}
!1675 = !{!1670, !1665, !1620, !1633}
!1676 = !{!1670, !1665, !1617}
!1677 = !{!1673, !1668, !1620, !1633}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1680 = distinct !{!1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1685 = distinct !{!1685, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1685, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1688 = !{!1687, !1682, !1617}
!1689 = !{!1684, !1679, !1620, !1633}
!1690 = !{!1684, !1679, !1617}
!1691 = !{!1687, !1682, !1620, !1633}
!1692 = !{!1617, !1633}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1695 = distinct !{!1695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1696 = !{!1697}
!1697 = distinct !{!1697, !1695, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1698 = !{!1699}
!1699 = distinct !{!1699, !1700, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1700 = distinct !{!1700, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1700, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1703 = !{!1702, !1697, !1617}
!1704 = !{!1699, !1694, !1620, !1633}
!1705 = !{!1699, !1694, !1617}
!1706 = !{!1702, !1697, !1620, !1633}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1709 = distinct !{!1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1714 = distinct !{!1714, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1715 = !{!1716}
!1716 = distinct !{!1716, !1714, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1717 = !{!1716, !1711, !1617}
!1718 = !{!1713, !1708, !1620, !1633}
!1719 = !{!1713, !1708, !1617}
!1720 = !{!1716, !1711, !1620, !1633}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1723 = distinct !{!1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1728, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1728 = distinct !{!1728, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1728, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1731 = !{!1730, !1725, !1617}
!1732 = !{!1727, !1722, !1620, !1633}
!1733 = !{!1727, !1722, !1617}
!1734 = !{!1730, !1725, !1620, !1633}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1737 = distinct !{!1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1742, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1742 = distinct !{!1742, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1743 = !{!1744}
!1744 = distinct !{!1744, !1742, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1745 = !{!1744, !1739, !1617}
!1746 = !{!1741, !1736, !1620, !1633}
!1747 = !{!1741, !1736, !1617}
!1748 = !{!1744, !1739, !1620, !1633}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1751 = distinct !{!1751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1751, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1756 = distinct !{!1756, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1756, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1759 = !{!1758, !1753, !1617}
!1760 = !{!1755, !1750, !1620, !1633}
!1761 = !{!1755, !1750, !1617}
!1762 = !{!1758, !1753, !1620, !1633}
!1763 = !{!1620, !1633}
!1764 = !{!1765, !1767, !1620}
!1765 = distinct !{!1765, !1766, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1766 = distinct !{!1766, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1767 = distinct !{!1767, !1768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1768 = distinct !{!1768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1769 = !{!1770, !1771, !1617, !1633}
!1770 = distinct !{!1770, !1766, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1771 = distinct !{!1771, !1768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1772 = !{!1773, !1775, !1620}
!1773 = distinct !{!1773, !1774, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1774 = distinct !{!1774, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1775 = distinct !{!1775, !1776, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1776 = distinct !{!1776, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1777 = !{!1778, !1779, !1617, !1633}
!1778 = distinct !{!1778, !1774, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1779 = distinct !{!1779, !1776, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1780 = !{!1781, !1783, !1617, !1633}
!1781 = distinct !{!1781, !1782, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1782 = distinct !{!1782, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1783 = distinct !{!1783, !1784, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1784 = distinct !{!1784, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E: %v.0"}
!1787 = distinct !{!1787, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb2c7fe19e617a0b1E"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1790 = distinct !{!1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1795, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1795 = distinct !{!1795, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %_0"}
!1798 = distinct !{!1798, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1795, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1801 = !{!1800, !1792, !1786, !1620}
!1802 = !{!1794, !1789, !1797, !1617, !1633}
!1803 = !{!1794, !1789, !1786, !1620}
!1804 = !{!1800, !1792, !1797, !1617, !1633}
!1805 = !{!1797, !1806, !1786, !1620, !1633}
!1806 = distinct !{!1806, !1798, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hef4e82533fef63afE: %is_less"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1809 = distinct !{!1809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1810 = !{!1811}
!1811 = distinct !{!1811, !1809, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1814, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1814 = distinct !{!1814, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1815 = !{!1816}
!1816 = distinct !{!1816, !1817, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %_0"}
!1817 = distinct !{!1817, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E"}
!1818 = !{!1819}
!1819 = distinct !{!1819, !1814, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1820 = !{!1819, !1811, !1786, !1620}
!1821 = !{!1813, !1808, !1816, !1617, !1633}
!1822 = !{!1813, !1808, !1786, !1620}
!1823 = !{!1819, !1811, !1816, !1617, !1633}
!1824 = !{!1816, !1825, !1786, !1620, !1633}
!1825 = distinct !{!1825, !1817, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h810b6b6e10d79927E: %is_less"}
!1826 = !{!1786, !1620}
!1827 = !{!1786, !1620, !1633}
!1828 = !{!1617, !1620, !1633}
!1829 = !{!1617, !1620}
!1830 = !{!1831, !1833, !1633}
!1831 = distinct !{!1831, !1832, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!1832 = distinct !{!1832, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!1833 = distinct !{!1833, !1834, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!1834 = distinct !{!1834, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!1835 = !{!1836}
!1836 = distinct !{!1836, !1837, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1837 = distinct !{!1837, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1837, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1840 = !{!1841}
!1841 = distinct !{!1841, !1842, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1842 = distinct !{!1842, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE: %c"}
!1845 = distinct !{!1845, !"_ZN4core5slice4sort6shared5pivot7median317h482d85f9176177ceE"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1842, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1848 = !{!1847, !1839, !1849}
!1849 = distinct !{!1849, !1850, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E: %v.0"}
!1850 = distinct !{!1850, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E"}
!1851 = !{!1841, !1836, !1844, !1852}
!1852 = distinct !{!1852, !1850, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h4e4242e99c968518E: %is_less"}
!1853 = !{!1841, !1836, !1849}
!1854 = !{!1847, !1839, !1844, !1852}
!1855 = !{!1856, !1858, !1849}
!1856 = distinct !{!1856, !1857, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1857 = distinct !{!1857, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1858 = distinct !{!1858, !1859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1859 = distinct !{!1859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1860 = !{!1861, !1862, !1852}
!1861 = distinct !{!1861, !1857, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1862 = distinct !{!1862, !1859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1863 = !{!1864, !1866}
!1864 = distinct !{!1864, !1865, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1865 = distinct !{!1865, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1866 = distinct !{!1866, !1867, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1867 = distinct !{!1867, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1868 = !{!1869, !1870}
!1869 = distinct !{!1869, !1865, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1870 = distinct !{!1870, !1867, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1873, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0dbffb0b826718d6E: %v.0"}
!1873 = distinct !{!1873, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0dbffb0b826718d6E"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1873, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0dbffb0b826718d6E: %scratch.0"}
!1876 = !{!1877, !1879, !1872}
!1877 = distinct !{!1877, !1878, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1878 = distinct !{!1878, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1879 = distinct !{!1879, !1880, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1880 = distinct !{!1880, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1881 = !{!1882, !1883, !1875}
!1882 = distinct !{!1882, !1878, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1883 = distinct !{!1883, !1880, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1884 = !{!1883}
!1885 = !{!1879}
!1886 = !{!1882}
!1887 = !{!1877}
!1888 = !{!1882, !1883, !1872}
!1889 = !{!1877, !1879, !1875}
!1890 = !{!1891, !1872}
!1891 = distinct !{!1891, !1892, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1892 = distinct !{!1892, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1893 = !{!1894, !1896, !1872}
!1894 = distinct !{!1894, !1895, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1895 = distinct !{!1895, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1896 = distinct !{!1896, !1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1897 = distinct !{!1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1898 = !{!1899, !1900, !1875}
!1899 = distinct !{!1899, !1895, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1900 = distinct !{!1900, !1897, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1901 = !{!1902, !1872}
!1902 = distinct !{!1902, !1903, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1903 = distinct !{!1903, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1904 = !{!1905, !1907, !1872}
!1905 = distinct !{!1905, !1906, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1906 = distinct !{!1906, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1907 = distinct !{!1907, !1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1908 = distinct !{!1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1909 = !{!1910, !1911, !1875}
!1910 = distinct !{!1910, !1906, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1911 = distinct !{!1911, !1908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1912 = !{!1913, !1872}
!1913 = distinct !{!1913, !1914, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1914 = distinct !{!1914, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1915 = !{!1916, !1918, !1872}
!1916 = distinct !{!1916, !1917, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1917 = distinct !{!1917, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1918 = distinct !{!1918, !1919, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1919 = distinct !{!1919, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1920 = !{!1921, !1922, !1875}
!1921 = distinct !{!1921, !1917, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1922 = distinct !{!1922, !1919, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1923 = !{!1924, !1872}
!1924 = distinct !{!1924, !1925, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1925 = distinct !{!1925, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1926 = !{!1927, !1929, !1872}
!1927 = distinct !{!1927, !1928, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1928 = distinct !{!1928, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1929 = distinct !{!1929, !1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1930 = distinct !{!1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1931 = !{!1932, !1933, !1875}
!1932 = distinct !{!1932, !1928, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1933 = distinct !{!1933, !1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1934 = !{!1933}
!1935 = !{!1929}
!1936 = !{!1932}
!1937 = !{!1927}
!1938 = !{!1932, !1933, !1872}
!1939 = !{!1927, !1929, !1875}
!1940 = !{!1941, !1872}
!1941 = distinct !{!1941, !1942, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1942 = distinct !{!1942, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1943 = !{!1944, !1875}
!1944 = distinct !{!1944, !1945, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1945 = distinct !{!1945, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1946 = !{!1944, !1872}
!1947 = !{!1872, !1875}
!1948 = distinct !{!1948, !924, !925}
!1949 = distinct !{!1949, !925, !924}
!1950 = !{!1951, !1953}
!1951 = distinct !{!1951, !1952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!1952 = distinct !{!1952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!1953 = distinct !{!1953, !1952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!1954 = !{!1955}
!1955 = distinct !{!1955, !1956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE: %v.0"}
!1956 = distinct !{!1956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE"}
!1957 = !{!1958}
!1958 = distinct !{!1958, !1956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3db2cf15a18317ffE: %scratch.0"}
!1959 = !{!1960, !1962, !1964, !1955}
!1960 = distinct !{!1960, !1961, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1961 = distinct !{!1961, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1962 = distinct !{!1962, !1963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1963 = distinct !{!1963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1964 = distinct !{!1964, !1965, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!1965 = distinct !{!1965, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!1966 = !{!1967, !1968, !1969, !1958}
!1967 = distinct !{!1967, !1961, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1968 = distinct !{!1968, !1963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1969 = distinct !{!1969, !1965, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!1970 = !{!1969}
!1971 = !{!1964}
!1972 = !{!1962}
!1973 = !{!1968}
!1974 = !{!1960}
!1975 = !{!1967}
!1976 = !{!1967, !1968, !1969, !1955}
!1977 = !{!1960, !1962, !1964, !1958}
!1978 = !{!1979, !1955}
!1979 = distinct !{!1979, !1980, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1980 = distinct !{!1980, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1981 = !{!1982, !1984, !1986, !1955}
!1982 = distinct !{!1982, !1983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1983 = distinct !{!1983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1984 = distinct !{!1984, !1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1985 = distinct !{!1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!1986 = distinct !{!1986, !1987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!1987 = distinct !{!1987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!1988 = !{!1989, !1990, !1991, !1958}
!1989 = distinct !{!1989, !1983, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!1990 = distinct !{!1990, !1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!1991 = distinct !{!1991, !1987, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!1992 = !{!1993, !1955}
!1993 = distinct !{!1993, !1994, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!1994 = distinct !{!1994, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!1995 = !{!1996, !1998, !2000, !1955}
!1996 = distinct !{!1996, !1997, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!1997 = distinct !{!1997, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!1998 = distinct !{!1998, !1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!1999 = distinct !{!1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2000 = distinct !{!2000, !2001, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!2001 = distinct !{!2001, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!2002 = !{!2003, !2004, !2005, !1958}
!2003 = distinct !{!2003, !1997, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2004 = distinct !{!2004, !1999, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2005 = distinct !{!2005, !2001, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!2006 = !{!2007, !1955}
!2007 = distinct !{!2007, !2008, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2008 = distinct !{!2008, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2009 = !{!2010, !2012, !2014, !1955}
!2010 = distinct !{!2010, !2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2011 = distinct !{!2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2012 = distinct !{!2012, !2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2013 = distinct !{!2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2014 = distinct !{!2014, !2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!2015 = distinct !{!2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!2016 = !{!2017, !2018, !2019, !1958}
!2017 = distinct !{!2017, !2011, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2018 = distinct !{!2018, !2013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2019 = distinct !{!2019, !2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!2020 = !{!2021, !1955}
!2021 = distinct !{!2021, !2022, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2022 = distinct !{!2022, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2023 = !{!2024, !2026, !2028, !1955}
!2024 = distinct !{!2024, !2025, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2025 = distinct !{!2025, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2026 = distinct !{!2026, !2027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2027 = distinct !{!2027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2028 = distinct !{!2028, !2029, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %b"}
!2029 = distinct !{!2029, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E"}
!2030 = !{!2031, !2032, !2033, !1958}
!2031 = distinct !{!2031, !2025, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2032 = distinct !{!2032, !2027, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2033 = distinct !{!2033, !2029, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hee1f0c4e6e6b8ca8E: %a"}
!2034 = !{!2033}
!2035 = !{!2028}
!2036 = !{!2026}
!2037 = !{!2032}
!2038 = !{!2024}
!2039 = !{!2031}
!2040 = !{!2031, !2032, !2033, !1955}
!2041 = !{!2024, !2026, !2028, !1958}
!2042 = !{!2043, !1955}
!2043 = distinct !{!2043, !2044, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2044 = distinct !{!2044, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2045 = !{!2046, !1958}
!2046 = distinct !{!2046, !2047, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2047 = distinct !{!2047, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2048 = !{!2046, !1955}
!2049 = !{!1955, !1958}
!2050 = distinct !{!2050, !924, !925}
!2051 = distinct !{!2051, !925, !924}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E: %v.0"}
!2054 = distinct !{!2054, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E"}
!2055 = !{!2056}
!2056 = distinct !{!2056, !2054, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E: %scratch.0"}
!2057 = !{!2058}
!2058 = distinct !{!2058, !2059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2059 = distinct !{!2059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2059, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2064, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2064 = distinct !{!2064, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2064, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2069, !"cmpfunc: %a"}
!2069 = distinct !{!2069, !"cmpfunc"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2069, !"cmpfunc: %b"}
!2072 = !{!2068, !2063, !2058, !2053}
!2073 = !{!2071, !2066, !2061, !2056, !2074}
!2074 = distinct !{!2074, !2054, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h9952e723b8cfae81E: %is_less"}
!2075 = !{!2071, !2066, !2061, !2053}
!2076 = !{!2068, !2063, !2058, !2056, !2074}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2079 = distinct !{!2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2079, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2082 = !{!2083}
!2083 = distinct !{!2083, !2084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2084 = distinct !{!2084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2085 = !{!2086}
!2086 = distinct !{!2086, !2084, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"cmpfunc: %a"}
!2089 = distinct !{!2089, !"cmpfunc"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2089, !"cmpfunc: %b"}
!2092 = !{!2088, !2083, !2078, !2053}
!2093 = !{!2091, !2086, !2081, !2056, !2074}
!2094 = !{!2091, !2086, !2081, !2053}
!2095 = !{!2088, !2083, !2078, !2056, !2074}
!2096 = !{!2097}
!2097 = distinct !{!2097, !2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2098 = distinct !{!2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2099 = !{!2100}
!2100 = distinct !{!2100, !2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2103 = distinct !{!2103, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2103, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2108, !"cmpfunc: %a"}
!2108 = distinct !{!2108, !"cmpfunc"}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2108, !"cmpfunc: %b"}
!2111 = !{!2107, !2102, !2097, !2053}
!2112 = !{!2110, !2105, !2100, !2056, !2074}
!2113 = !{!2110, !2105, !2100, !2053}
!2114 = !{!2107, !2102, !2097, !2056, !2074}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2117 = distinct !{!2117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2118 = !{!2119}
!2119 = distinct !{!2119, !2117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2122, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2122 = distinct !{!2122, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2122, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2125 = !{!2126}
!2126 = distinct !{!2126, !2127, !"cmpfunc: %a"}
!2127 = distinct !{!2127, !"cmpfunc"}
!2128 = !{!2129}
!2129 = distinct !{!2129, !2127, !"cmpfunc: %b"}
!2130 = !{!2126, !2121, !2116, !2053}
!2131 = !{!2129, !2124, !2119, !2056, !2074}
!2132 = !{!2129, !2124, !2119, !2053}
!2133 = !{!2126, !2121, !2116, !2056, !2074}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2136 = distinct !{!2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2136, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2141 = distinct !{!2141, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2142 = !{!2143}
!2143 = distinct !{!2143, !2141, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2146, !"cmpfunc: %a"}
!2146 = distinct !{!2146, !"cmpfunc"}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2146, !"cmpfunc: %b"}
!2149 = !{!2145, !2140, !2135, !2053}
!2150 = !{!2148, !2143, !2138, !2056, !2074}
!2151 = !{!2148, !2143, !2138, !2053}
!2152 = !{!2145, !2140, !2135, !2056, !2074}
!2153 = !{!2053, !2074}
!2154 = !{!2155}
!2155 = distinct !{!2155, !2156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2156 = distinct !{!2156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2157 = !{!2158}
!2158 = distinct !{!2158, !2156, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2161 = distinct !{!2161, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2161, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2164 = !{!2165}
!2165 = distinct !{!2165, !2166, !"cmpfunc: %a"}
!2166 = distinct !{!2166, !"cmpfunc"}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2166, !"cmpfunc: %b"}
!2169 = !{!2165, !2160, !2155, !2053}
!2170 = !{!2168, !2163, !2158, !2056, !2074}
!2171 = !{!2168, !2163, !2158, !2053}
!2172 = !{!2165, !2160, !2155, !2056, !2074}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2175 = distinct !{!2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2176 = !{!2177}
!2177 = distinct !{!2177, !2175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2180, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2180 = distinct !{!2180, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2181 = !{!2182}
!2182 = distinct !{!2182, !2180, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2185, !"cmpfunc: %a"}
!2185 = distinct !{!2185, !"cmpfunc"}
!2186 = !{!2187}
!2187 = distinct !{!2187, !2185, !"cmpfunc: %b"}
!2188 = !{!2184, !2179, !2174, !2053}
!2189 = !{!2187, !2182, !2177, !2056, !2074}
!2190 = !{!2187, !2182, !2177, !2053}
!2191 = !{!2184, !2179, !2174, !2056, !2074}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2194 = distinct !{!2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2199 = distinct !{!2199, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2199, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2204, !"cmpfunc: %a"}
!2204 = distinct !{!2204, !"cmpfunc"}
!2205 = !{!2206}
!2206 = distinct !{!2206, !2204, !"cmpfunc: %b"}
!2207 = !{!2203, !2198, !2193, !2053}
!2208 = !{!2206, !2201, !2196, !2056, !2074}
!2209 = !{!2206, !2201, !2196, !2053}
!2210 = !{!2203, !2198, !2193, !2056, !2074}
!2211 = !{!2212}
!2212 = distinct !{!2212, !2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2213 = distinct !{!2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2218, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2218 = distinct !{!2218, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2219 = !{!2220}
!2220 = distinct !{!2220, !2218, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2223, !"cmpfunc: %a"}
!2223 = distinct !{!2223, !"cmpfunc"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2223, !"cmpfunc: %b"}
!2226 = !{!2222, !2217, !2212, !2053}
!2227 = !{!2225, !2220, !2215, !2056, !2074}
!2228 = !{!2225, !2220, !2215, !2053}
!2229 = !{!2222, !2217, !2212, !2056, !2074}
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2232 = distinct !{!2232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2233 = !{!2234}
!2234 = distinct !{!2234, !2232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2235 = !{!2236}
!2236 = distinct !{!2236, !2237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2237 = distinct !{!2237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2238 = !{!2239}
!2239 = distinct !{!2239, !2237, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2240 = !{!2241}
!2241 = distinct !{!2241, !2242, !"cmpfunc: %a"}
!2242 = distinct !{!2242, !"cmpfunc"}
!2243 = !{!2244}
!2244 = distinct !{!2244, !2242, !"cmpfunc: %b"}
!2245 = !{!2241, !2236, !2231, !2053}
!2246 = !{!2244, !2239, !2234, !2056, !2074}
!2247 = !{!2244, !2239, !2234, !2053}
!2248 = !{!2241, !2236, !2231, !2056, !2074}
!2249 = !{!2056, !2074}
!2250 = !{!2251, !2253, !2255, !2056}
!2251 = distinct !{!2251, !2252, !"cmpfunc: %b"}
!2252 = distinct !{!2252, !"cmpfunc"}
!2253 = distinct !{!2253, !2254, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2254 = distinct !{!2254, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2255 = distinct !{!2255, !2256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2256 = distinct !{!2256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2257 = !{!2258, !2259, !2260, !2053, !2074}
!2258 = distinct !{!2258, !2252, !"cmpfunc: %a"}
!2259 = distinct !{!2259, !2254, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2260 = distinct !{!2260, !2256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2261 = !{!2262, !2264, !2266, !2056}
!2262 = distinct !{!2262, !2263, !"cmpfunc: %b"}
!2263 = distinct !{!2263, !"cmpfunc"}
!2264 = distinct !{!2264, !2265, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2265 = distinct !{!2265, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2266 = distinct !{!2266, !2267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2267 = distinct !{!2267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2268 = !{!2269, !2270, !2271, !2053, !2074}
!2269 = distinct !{!2269, !2263, !"cmpfunc: %a"}
!2270 = distinct !{!2270, !2265, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2271 = distinct !{!2271, !2267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2272 = !{!2273, !2275, !2053, !2074}
!2273 = distinct !{!2273, !2274, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2274 = distinct !{!2274, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2275 = distinct !{!2275, !2276, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2276 = distinct !{!2276, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2279, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E: %v.0"}
!2279 = distinct !{!2279, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20d44b09344b27b9E"}
!2280 = !{!2281}
!2281 = distinct !{!2281, !2282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2282 = distinct !{!2282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2283 = !{!2284}
!2284 = distinct !{!2284, !2282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2285 = !{!2286}
!2286 = distinct !{!2286, !2287, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2287 = distinct !{!2287, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2288 = !{!2289}
!2289 = distinct !{!2289, !2290, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %_0"}
!2290 = distinct !{!2290, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2287, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2293 = !{!2294}
!2294 = distinct !{!2294, !2295, !"cmpfunc: %a"}
!2295 = distinct !{!2295, !"cmpfunc"}
!2296 = !{!2297}
!2297 = distinct !{!2297, !2295, !"cmpfunc: %b"}
!2298 = !{!2294, !2286, !2281, !2278, !2056}
!2299 = !{!2297, !2292, !2284, !2289, !2053, !2074}
!2300 = !{!2297, !2292, !2284, !2278, !2056}
!2301 = !{!2294, !2286, !2281, !2289, !2053, !2074}
!2302 = !{!2289, !2303, !2278, !2056, !2074}
!2303 = distinct !{!2303, !2290, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h91e9fbfcb7395abbE: %is_less"}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2306 = distinct !{!2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2307 = !{!2308}
!2308 = distinct !{!2308, !2306, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2311, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2311 = distinct !{!2311, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2312 = !{!2313}
!2313 = distinct !{!2313, !2314, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %_0"}
!2314 = distinct !{!2314, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E"}
!2315 = !{!2316}
!2316 = distinct !{!2316, !2311, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"cmpfunc: %a"}
!2319 = distinct !{!2319, !"cmpfunc"}
!2320 = !{!2321}
!2321 = distinct !{!2321, !2319, !"cmpfunc: %b"}
!2322 = !{!2318, !2310, !2305, !2278, !2056}
!2323 = !{!2321, !2316, !2308, !2313, !2053, !2074}
!2324 = !{!2321, !2316, !2308, !2278, !2056}
!2325 = !{!2318, !2310, !2305, !2313, !2053, !2074}
!2326 = !{!2313, !2327, !2278, !2056, !2074}
!2327 = distinct !{!2327, !2314, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hd6884556f3f6ddf9E: %is_less"}
!2328 = !{!2278, !2056}
!2329 = !{!2278, !2056, !2074}
!2330 = !{!2053, !2056, !2074}
!2331 = !{!2053, !2056}
!2332 = !{!2333, !2335, !2074}
!2333 = distinct !{!2333, !2334, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2334 = distinct !{!2334, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2335 = distinct !{!2335, !2336, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2336 = distinct !{!2336, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2337 = !{!2338}
!2338 = distinct !{!2338, !2339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2339 = distinct !{!2339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2340 = !{!2341}
!2341 = distinct !{!2341, !2339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2344, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2344 = distinct !{!2344, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE: %c"}
!2347 = distinct !{!2347, !"_ZN4core5slice4sort6shared5pivot7median317hb56037310bd5778cE"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2344, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2350 = !{!2351}
!2351 = distinct !{!2351, !2352, !"cmpfunc: %a"}
!2352 = distinct !{!2352, !"cmpfunc"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2352, !"cmpfunc: %b"}
!2355 = !{!2351, !2343, !2338, !2356}
!2356 = distinct !{!2356, !2357, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE: %v.0"}
!2357 = distinct !{!2357, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE"}
!2358 = !{!2354, !2349, !2341, !2346, !2359}
!2359 = distinct !{!2359, !2357, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h36d95660f833780eE: %is_less"}
!2360 = !{!2354, !2349, !2341, !2356}
!2361 = !{!2351, !2343, !2338, !2346, !2359}
!2362 = !{!2363, !2365, !2367, !2356}
!2363 = distinct !{!2363, !2364, !"cmpfunc: %b"}
!2364 = distinct !{!2364, !"cmpfunc"}
!2365 = distinct !{!2365, !2366, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2366 = distinct !{!2366, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2367 = distinct !{!2367, !2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2368 = distinct !{!2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2369 = !{!2370, !2371, !2372, !2359}
!2370 = distinct !{!2370, !2364, !"cmpfunc: %a"}
!2371 = distinct !{!2371, !2366, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2372 = distinct !{!2372, !2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2373 = !{!2374, !2376, !2378}
!2374 = distinct !{!2374, !2375, !"cmpfunc: %a"}
!2375 = distinct !{!2375, !"cmpfunc"}
!2376 = distinct !{!2376, !2377, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2377 = distinct !{!2377, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2378 = distinct !{!2378, !2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2379 = distinct !{!2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2380 = !{!2381, !2382, !2383}
!2381 = distinct !{!2381, !2375, !"cmpfunc: %b"}
!2382 = distinct !{!2382, !2377, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2383 = distinct !{!2383, !2379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2384 = !{!2385}
!2385 = distinct !{!2385, !2386, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h065fd2052a4ec0b0E: %v.0"}
!2386 = distinct !{!2386, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h065fd2052a4ec0b0E"}
!2387 = !{!2388}
!2388 = distinct !{!2388, !2386, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h065fd2052a4ec0b0E: %scratch.0"}
!2389 = !{!2390, !2392, !2394, !2385}
!2390 = distinct !{!2390, !2391, !"cmpfunc: %b"}
!2391 = distinct !{!2391, !"cmpfunc"}
!2392 = distinct !{!2392, !2393, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2393 = distinct !{!2393, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2394 = distinct !{!2394, !2395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2395 = distinct !{!2395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2396 = !{!2397, !2398, !2399, !2388}
!2397 = distinct !{!2397, !2391, !"cmpfunc: %a"}
!2398 = distinct !{!2398, !2393, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2399 = distinct !{!2399, !2395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2400 = !{!2399}
!2401 = !{!2394}
!2402 = !{!2398}
!2403 = !{!2392}
!2404 = !{!2397}
!2405 = !{!2390}
!2406 = !{!2397, !2398, !2399, !2385}
!2407 = !{!2390, !2392, !2394, !2388}
!2408 = !{!2409, !2385}
!2409 = distinct !{!2409, !2410, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2410 = distinct !{!2410, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2411 = !{!2412, !2414, !2416, !2385}
!2412 = distinct !{!2412, !2413, !"cmpfunc: %a"}
!2413 = distinct !{!2413, !"cmpfunc"}
!2414 = distinct !{!2414, !2415, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2415 = distinct !{!2415, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2416 = distinct !{!2416, !2417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2417 = distinct !{!2417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2418 = !{!2419, !2420, !2421, !2388}
!2419 = distinct !{!2419, !2413, !"cmpfunc: %b"}
!2420 = distinct !{!2420, !2415, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2421 = distinct !{!2421, !2417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2422 = !{!2423, !2385}
!2423 = distinct !{!2423, !2424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2424 = distinct !{!2424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2425 = !{!2426, !2428, !2430, !2385}
!2426 = distinct !{!2426, !2427, !"cmpfunc: %a"}
!2427 = distinct !{!2427, !"cmpfunc"}
!2428 = distinct !{!2428, !2429, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2429 = distinct !{!2429, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2430 = distinct !{!2430, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2431 = distinct !{!2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2432 = !{!2433, !2434, !2435, !2388}
!2433 = distinct !{!2433, !2427, !"cmpfunc: %b"}
!2434 = distinct !{!2434, !2429, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2435 = distinct !{!2435, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2436 = !{!2437, !2385}
!2437 = distinct !{!2437, !2438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2438 = distinct !{!2438, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2439 = !{!2440, !2442, !2444, !2385}
!2440 = distinct !{!2440, !2441, !"cmpfunc: %a"}
!2441 = distinct !{!2441, !"cmpfunc"}
!2442 = distinct !{!2442, !2443, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2443 = distinct !{!2443, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2444 = distinct !{!2444, !2445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2445 = distinct !{!2445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2446 = !{!2447, !2448, !2449, !2388}
!2447 = distinct !{!2447, !2441, !"cmpfunc: %b"}
!2448 = distinct !{!2448, !2443, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2449 = distinct !{!2449, !2445, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2450 = !{!2451, !2385}
!2451 = distinct !{!2451, !2452, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2452 = distinct !{!2452, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2453 = !{!2454, !2456, !2458, !2385}
!2454 = distinct !{!2454, !2455, !"cmpfunc: %b"}
!2455 = distinct !{!2455, !"cmpfunc"}
!2456 = distinct !{!2456, !2457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2457 = distinct !{!2457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2458 = distinct !{!2458, !2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2459 = distinct !{!2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2460 = !{!2461, !2462, !2463, !2388}
!2461 = distinct !{!2461, !2455, !"cmpfunc: %a"}
!2462 = distinct !{!2462, !2457, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2463 = distinct !{!2463, !2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2464 = !{!2463}
!2465 = !{!2458}
!2466 = !{!2462}
!2467 = !{!2456}
!2468 = !{!2461}
!2469 = !{!2454}
!2470 = !{!2461, !2462, !2463, !2385}
!2471 = !{!2454, !2456, !2458, !2388}
!2472 = !{!2473, !2385}
!2473 = distinct !{!2473, !2474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2474 = distinct !{!2474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2475 = !{!2476, !2388}
!2476 = distinct !{!2476, !2477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2477 = distinct !{!2477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2478 = !{!2476, !2385}
!2479 = !{!2385, !2388}
!2480 = distinct !{!2480, !924, !925}
!2481 = distinct !{!2481, !925, !924}
!2482 = !{!2483, !2485}
!2483 = distinct !{!2483, !2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %pair"}
!2484 = distinct !{!2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E"}
!2485 = distinct !{!2485, !2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h513c8f26ff9a42d4E: %self.0"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2488, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E: %v.0"}
!2488 = distinct !{!2488, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2488, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1b24ecd3afa90372E: %scratch.0"}
!2491 = !{!2492, !2494, !2496, !2498, !2487}
!2492 = distinct !{!2492, !2493, !"cmpfunc: %a"}
!2493 = distinct !{!2493, !"cmpfunc"}
!2494 = distinct !{!2494, !2495, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2495 = distinct !{!2495, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2496 = distinct !{!2496, !2497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2497 = distinct !{!2497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2498 = distinct !{!2498, !2499, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!2499 = distinct !{!2499, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!2500 = !{!2501, !2502, !2503, !2504, !2490}
!2501 = distinct !{!2501, !2493, !"cmpfunc: %b"}
!2502 = distinct !{!2502, !2495, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2503 = distinct !{!2503, !2497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2504 = distinct !{!2504, !2499, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!2505 = !{!2504}
!2506 = !{!2498}
!2507 = !{!2496}
!2508 = !{!2503}
!2509 = !{!2494}
!2510 = !{!2502}
!2511 = !{!2492}
!2512 = !{!2501}
!2513 = !{!2501, !2502, !2503, !2504, !2487}
!2514 = !{!2492, !2494, !2496, !2498, !2490}
!2515 = !{!2516, !2487}
!2516 = distinct !{!2516, !2517, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2517 = distinct !{!2517, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2518 = !{!2519, !2521, !2523, !2525, !2487}
!2519 = distinct !{!2519, !2520, !"cmpfunc: %b"}
!2520 = distinct !{!2520, !"cmpfunc"}
!2521 = distinct !{!2521, !2522, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2522 = distinct !{!2522, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2523 = distinct !{!2523, !2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2524 = distinct !{!2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2525 = distinct !{!2525, !2526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!2526 = distinct !{!2526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!2527 = !{!2528, !2529, !2530, !2531, !2490}
!2528 = distinct !{!2528, !2520, !"cmpfunc: %a"}
!2529 = distinct !{!2529, !2522, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2530 = distinct !{!2530, !2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2531 = distinct !{!2531, !2526, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!2532 = !{!2533, !2487}
!2533 = distinct !{!2533, !2534, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2534 = distinct !{!2534, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2535 = !{!2536, !2538, !2540, !2542, !2487}
!2536 = distinct !{!2536, !2537, !"cmpfunc: %b"}
!2537 = distinct !{!2537, !"cmpfunc"}
!2538 = distinct !{!2538, !2539, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2539 = distinct !{!2539, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2540 = distinct !{!2540, !2541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2541 = distinct !{!2541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2542 = distinct !{!2542, !2543, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!2543 = distinct !{!2543, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!2544 = !{!2545, !2546, !2547, !2548, !2490}
!2545 = distinct !{!2545, !2537, !"cmpfunc: %a"}
!2546 = distinct !{!2546, !2539, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2547 = distinct !{!2547, !2541, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2548 = distinct !{!2548, !2543, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!2549 = !{!2550, !2487}
!2550 = distinct !{!2550, !2551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2551 = distinct !{!2551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2552 = !{!2553, !2555, !2557, !2559, !2487}
!2553 = distinct !{!2553, !2554, !"cmpfunc: %b"}
!2554 = distinct !{!2554, !"cmpfunc"}
!2555 = distinct !{!2555, !2556, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2556 = distinct !{!2556, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2557 = distinct !{!2557, !2558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2558 = distinct !{!2558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2559 = distinct !{!2559, !2560, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!2560 = distinct !{!2560, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!2561 = !{!2562, !2563, !2564, !2565, !2490}
!2562 = distinct !{!2562, !2554, !"cmpfunc: %a"}
!2563 = distinct !{!2563, !2556, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2564 = distinct !{!2564, !2558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2565 = distinct !{!2565, !2560, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!2566 = !{!2567, !2487}
!2567 = distinct !{!2567, !2568, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2568 = distinct !{!2568, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2569 = !{!2570, !2572, !2574, !2576, !2487}
!2570 = distinct !{!2570, !2571, !"cmpfunc: %a"}
!2571 = distinct !{!2571, !"cmpfunc"}
!2572 = distinct !{!2572, !2573, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2573 = distinct !{!2573, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2574 = distinct !{!2574, !2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2575 = distinct !{!2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2576 = distinct !{!2576, !2577, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %b"}
!2577 = distinct !{!2577, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E"}
!2578 = !{!2579, !2580, !2581, !2582, !2490}
!2579 = distinct !{!2579, !2571, !"cmpfunc: %b"}
!2580 = distinct !{!2580, !2573, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2581 = distinct !{!2581, !2575, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2582 = distinct !{!2582, !2577, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h417c2dc37497ce28E: %a"}
!2583 = !{!2582}
!2584 = !{!2576}
!2585 = !{!2574}
!2586 = !{!2581}
!2587 = !{!2572}
!2588 = !{!2580}
!2589 = !{!2570}
!2590 = !{!2579}
!2591 = !{!2579, !2580, !2581, !2582, !2487}
!2592 = !{!2570, !2572, !2574, !2576, !2490}
!2593 = !{!2594, !2487}
!2594 = distinct !{!2594, !2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2595 = distinct !{!2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2596 = !{!2597, !2490}
!2597 = distinct !{!2597, !2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E: %self"}
!2598 = distinct !{!2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h36871ebedc736ba8E"}
!2599 = !{!2597, !2487}
!2600 = !{!2487, !2490}
!2601 = distinct !{!2601, !924, !925}
!2602 = distinct !{!2602, !925, !924}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE: %self.0"}
!2605 = distinct !{!2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE"}
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE: %v.0"}
!2608 = distinct !{!2608, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE"}
!2609 = !{!2607, !2610, !2604}
!2610 = distinct !{!2610, !2608, !"_ZN5alloc5slice11stable_sort17h6c6d41174ef9517fE: argument 1"}
!2611 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2614 = distinct !{!2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2615 = !{!2616}
!2616 = distinct !{!2616, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2617 = !{!2618}
!2618 = distinct !{!2618, !2619, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2619 = distinct !{!2619, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2620 = !{!2621}
!2621 = distinct !{!2621, !2619, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2622 = !{!2618, !2613, !2623, !2607, !2604}
!2623 = distinct !{!2623, !2624, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he4589bf084543de7E: %v.0"}
!2624 = distinct !{!2624, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he4589bf084543de7E"}
!2625 = !{!2621, !2616, !2610}
!2626 = !{!2621, !2616, !2623, !2607, !2604}
!2627 = !{!2618, !2613, !2610}
!2628 = !{!2623, !2607, !2604}
!2629 = !{!2610}
!2630 = !{!2631, !2633, !2623, !2607, !2604}
!2631 = distinct !{!2631, !2632, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b"}
!2632 = distinct !{!2632, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E"}
!2633 = distinct !{!2633, !2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b"}
!2634 = distinct !{!2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E"}
!2635 = !{!2636, !2637, !2610}
!2636 = distinct !{!2636, !2632, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a"}
!2637 = distinct !{!2637, !2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a"}
!2638 = !{!2639, !2641, !2610}
!2639 = distinct !{!2639, !2640, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2640 = distinct !{!2640, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2641 = distinct !{!2641, !2642, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2642 = distinct !{!2642, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2643 = !{!2644}
!2644 = distinct !{!2644, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %a:It1"}
!2645 = !{!2646}
!2646 = distinct !{!2646, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h80baf29ae8b9a310E: %b:It1"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2619, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %a:It1"}
!2649 = !{!2650}
!2650 = distinct !{!2650, !2619, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h4b4a1329fc9b4a60E: %b:It1"}
!2651 = !{!2648, !2644, !2623, !2607, !2604}
!2652 = !{!2650, !2646, !2610}
!2653 = !{!2650, !2646, !2623, !2607, !2604}
!2654 = !{!2648, !2644, !2610}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE: %self.0"}
!2657 = distinct !{!2657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE"}
!2658 = !{!2659}
!2659 = distinct !{!2659, !2660, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE: %v.0"}
!2660 = distinct !{!2660, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE"}
!2661 = !{!2659, !2662, !2656}
!2662 = distinct !{!2662, !2660, !"_ZN5alloc5slice11stable_sort17haae257c3311487ecE: argument 1"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2665 = distinct !{!2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2666 = !{!2667}
!2667 = distinct !{!2667, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2670 = distinct !{!2670, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2671 = !{!2672}
!2672 = distinct !{!2672, !2670, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2673 = !{!2672, !2667, !2674, !2659, !2656}
!2674 = distinct !{!2674, !2675, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5478c093f613346bE: %v.0"}
!2675 = distinct !{!2675, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5478c093f613346bE"}
!2676 = !{!2669, !2664, !2662}
!2677 = !{!2669, !2664, !2674, !2659, !2656}
!2678 = !{!2672, !2667, !2662}
!2679 = !{!2674, !2659, !2656}
!2680 = !{!2662}
!2681 = !{!2682, !2684, !2674, !2659, !2656}
!2682 = distinct !{!2682, !2683, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b"}
!2683 = distinct !{!2683, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E"}
!2684 = distinct !{!2684, !2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b"}
!2685 = distinct !{!2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE"}
!2686 = !{!2687, !2688, !2662}
!2687 = distinct !{!2687, !2683, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a"}
!2688 = distinct !{!2688, !2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a"}
!2689 = !{!2690, !2692, !2662}
!2690 = distinct !{!2690, !2691, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2691 = distinct !{!2691, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2692 = distinct !{!2692, !2693, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2693 = distinct !{!2693, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %a:It1"}
!2696 = !{!2697}
!2697 = distinct !{!2697, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17haba95c30591f417aE: %b:It1"}
!2698 = !{!2699}
!2699 = distinct !{!2699, !2670, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %a:It1"}
!2700 = !{!2701}
!2701 = distinct !{!2701, !2670, !"_ZN57MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hd5678a24f6351751E: %b:It1"}
!2702 = !{!2701, !2697, !2674, !2659, !2656}
!2703 = !{!2699, !2695, !2662}
!2704 = !{!2699, !2695, !2674, !2659, !2656}
!2705 = !{!2701, !2697, !2662}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE: %self.0"}
!2708 = distinct !{!2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h93d6e09a000023efE"}
!2709 = !{!2710}
!2710 = distinct !{!2710, !2711, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E: %v.0"}
!2711 = distinct !{!2711, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E"}
!2712 = !{!2710, !2713, !2707}
!2713 = distinct !{!2713, !2711, !"_ZN5alloc5slice11stable_sort17he5d2ed59e4ce0224E: argument 1"}
!2714 = !{!2715}
!2715 = distinct !{!2715, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2716 = distinct !{!2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2717 = !{!2718}
!2718 = distinct !{!2718, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2719 = !{!2720}
!2720 = distinct !{!2720, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2721 = distinct !{!2721, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2722 = !{!2723}
!2723 = distinct !{!2723, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2724 = !{!2725}
!2725 = distinct !{!2725, !2726, !"cmpfunc: %a"}
!2726 = distinct !{!2726, !"cmpfunc"}
!2727 = !{!2728}
!2728 = distinct !{!2728, !2726, !"cmpfunc: %b"}
!2729 = !{!2725, !2720, !2715, !2730, !2710, !2707}
!2730 = distinct !{!2730, !2731, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf239ca8a44a6c18fE: %v.0"}
!2731 = distinct !{!2731, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf239ca8a44a6c18fE"}
!2732 = !{!2728, !2723, !2718, !2713}
!2733 = !{!2728, !2723, !2718, !2730, !2710, !2707}
!2734 = !{!2725, !2720, !2715, !2713}
!2735 = !{!2730, !2710, !2707}
!2736 = !{!2713}
!2737 = !{!2738, !2740, !2742, !2730, !2710, !2707}
!2738 = distinct !{!2738, !2739, !"cmpfunc: %b"}
!2739 = distinct !{!2739, !"cmpfunc"}
!2740 = distinct !{!2740, !2741, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1"}
!2741 = distinct !{!2741, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE"}
!2742 = distinct !{!2742, !2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b"}
!2743 = distinct !{!2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E"}
!2744 = !{!2745, !2746, !2747, !2713}
!2745 = distinct !{!2745, !2739, !"cmpfunc: %a"}
!2746 = distinct !{!2746, !2741, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0"}
!2747 = distinct !{!2747, !2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a"}
!2748 = !{!2749, !2751, !2713}
!2749 = distinct !{!2749, !2750, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E: %self"}
!2750 = distinct !{!2750, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde6839f994e7a0b2E"}
!2751 = distinct !{!2751, !2752, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE: %_1"}
!2752 = distinct !{!2752, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h17561d5dce03561dE"}
!2753 = !{!2754}
!2754 = distinct !{!2754, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %a:It1"}
!2755 = !{!2756}
!2756 = distinct !{!2756, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h14cdd7df3ed43a73E: %b:It1"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 0:It1"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hf759571e8306e32eE: argument 1:It1"}
!2761 = !{!2762}
!2762 = distinct !{!2762, !2726, !"cmpfunc: %a:It1"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2726, !"cmpfunc: %b:It1"}
!2765 = !{!2762, !2758, !2754, !2730, !2710, !2707}
!2766 = !{!2764, !2760, !2756, !2713}
!2767 = !{!2764, !2760, !2756, !2730, !2710, !2707}
!2768 = !{!2762, !2758, !2754, !2713}
