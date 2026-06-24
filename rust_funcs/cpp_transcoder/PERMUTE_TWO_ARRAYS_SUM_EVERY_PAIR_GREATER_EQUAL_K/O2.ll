; ModuleID = 'PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit.f2e1b4c96b1d55d7-cgu.0'
source_filename = "PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit.f2e1b4c96b1d55d7-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_7e1de6ad3782490ed62324b02fba856d = private unnamed_addr constant [153 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K/PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit.rs\00", align 1
@alloc_1a2ee0b019ed70f55536196ba492661d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7e1de6ad3782490ed62324b02fba856d, [16 x i8] c"\98\00\00\00\00\00\00\00\1D\00\00\00\0C\00\00\00" }>, align 8
@alloc_6eb7515f2e20320b75b916ddc6ae64cb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7e1de6ad3782490ed62324b02fba856d, [16 x i8] c"\98\00\00\00\00\00\00\00\1D\00\00\00\1C\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h082e3d9dc15f512aE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h082e3d9dc15f512aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h082e3d9dc15f512aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h082e3d9dc15f512aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8), !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14), !noalias !11
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !16, !noalias !17, !noundef !18
  %_5.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !19, !noalias !20, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_4.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !21, !noalias !26, !noundef !18
  %_0.i7 = icmp slt i32 %_4.i.i5, %_5.i.i
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i5, %_4.i.i
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbeaf212df3f34503E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbeaf212df3f34503E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbeaf212df3f34503E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbeaf212df3f34503E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdfaee4ad4dd5a0d6E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdfaee4ad4dd5a0d6E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdfaee4ad4dd5a0d6E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdfaee4ad4dd5a0d6E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !70
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73), !noalias !70
  %_4.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !75, !noalias !76, !noundef !18
  %_5.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !77, !noalias !78, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_5.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !79, !noalias !84, !noundef !18
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h69e6755d974671c6E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %_4.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !97, !noalias !98, !noundef !18
  %_5.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !98, !noalias !97, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %_4.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !109, !noalias !110, !noundef !18
  %_5.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !110, !noalias !109, !noundef !18
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
  %_4.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !121, !noalias !122, !noundef !18
  %_5.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !122, !noalias !121, !noundef !18
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %_4.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !133, !noalias !134, !noundef !18
  %_5.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !134, !noalias !133, !noundef !18
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %_4.i.i16.i = load i32, ptr %4, align 4, !alias.scope !145, !noalias !146, !noundef !18
  %_5.i.i17.i = load i32, ptr %2, align 4, !alias.scope !146, !noalias !145, !noundef !18
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
  %_4.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !157, !noalias !158, !noundef !18
  %_5.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !158, !noalias !157, !noundef !18
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %_4.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !169, !noalias !170, !noundef !18
  %_5.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !170, !noalias !169, !noundef !18
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
  %_4.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !181, !noalias !182, !noundef !18
  %_5.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !182, !noalias !181, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %_4.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !193, !noalias !194, !noundef !18
  %_5.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !194, !noalias !193, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %_4.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !205, !noalias !206, !noundef !18
  %_5.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !206, !noalias !205, !noundef !18
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
  %_0.i.i38 = icmp slt i32 %9, %0
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %0)
  store i32 %19, ptr %dst, align 4, !noalias !210
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %17, %8
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %8)
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
  %_4.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !229, !noalias !230, !noundef !18
  %_5.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !231, !noalias !232, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
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
  %_4.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !244, !noalias !245, !noundef !18
  %_5.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !246, !noalias !247, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
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
  %_4.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !256, !noalias !257, !noundef !18
  %_5.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !258, !noalias !259, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
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
  %_4.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !268, !noalias !269, !noundef !18
  %_5.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !270, !noalias !271, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
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
  %_4.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !280, !noalias !281, !noundef !18
  %_5.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !282, !noalias !283, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !210
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288), !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290), !noalias !241
  %_4.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !292, !noalias !293, !noundef !18
  %_5.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !294, !noalias !295, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !207
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90445a78fdd9552cE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !312, !noalias !313, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !313, !noalias !312, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !329, !noalias !330, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !330, !noalias !329, !noundef !18
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
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !346, !noalias !347, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !347, !noalias !346, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !363, !noalias !364, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !364, !noalias !363, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !380, !noalias !381, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !381, !noalias !380, !noundef !18
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
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !397, !noalias !398, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !398, !noalias !397, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !414, !noalias !415, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !415, !noalias !414, !noundef !18
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
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !431, !noalias !432, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !432, !noalias !431, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !448, !noalias !449, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !449, !noalias !448, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !465, !noalias !466, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !466, !noalias !465, !noundef !18
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
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !470, !noalias !477, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !483
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !485, !noalias !492, !noundef !18
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
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !513, !noalias !514, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !515, !noalias !516, !noundef !18
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
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !530, !noalias !531, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !532, !noalias !533, !noundef !18
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
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !546, !noalias !547, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !548, !noalias !549, !noundef !18
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
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !562, !noalias !563, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !564, !noalias !565, !noundef !18
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
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !578, !noalias !579, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !580, !noalias !581, !noundef !18
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
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !594, !noalias !595, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !596, !noalias !597, !noundef !18
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !467
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hd6eb7b969baaff3eE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !608, !noalias !609, !noundef !18
  %_5.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !609, !noalias !608, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %_4.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !620, !noalias !621, !noundef !18
  %_5.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !621, !noalias !620, !noundef !18
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
  %_4.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !632, !noalias !633, !noundef !18
  %_5.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !633, !noalias !632, !noundef !18
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %_4.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !644, !noalias !645, !noundef !18
  %_5.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !645, !noalias !644, !noundef !18
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %_4.i.i16.i = load i32, ptr %2, align 4, !alias.scope !656, !noalias !657, !noundef !18
  %_5.i.i17.i = load i32, ptr %4, align 4, !alias.scope !657, !noalias !656, !noundef !18
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
  %_4.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !668, !noalias !669, !noundef !18
  %_5.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !669, !noalias !668, !noundef !18
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %_4.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !680, !noalias !681, !noundef !18
  %_5.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !681, !noalias !680, !noundef !18
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
  %_4.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !692, !noalias !693, !noundef !18
  %_5.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !693, !noalias !692, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %_4.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !704, !noalias !705, !noundef !18
  %_5.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !705, !noalias !704, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %_4.i.i16.i25 = load i32, ptr %11, align 4, !alias.scope !716, !noalias !717, !noundef !18
  %_5.i.i17.i26 = load i32, ptr %13, align 4, !alias.scope !717, !noalias !716, !noundef !18
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
  %_0.i.i38 = icmp slt i32 %0, %9
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smax.i32(i32 %0, i32 %9)
  store i32 %19, ptr %dst, align 4, !noalias !721
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %8, %17
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smin.i32(i32 %8, i32 %17)
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
  %_4.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !18
  %_5.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !742, !noalias !743, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
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
  %_4.i.i19.i.1 = load i32, ptr %22, align 4, !alias.scope !755, !noalias !756, !noundef !18
  %_5.i.i20.i.1 = load i32, ptr %21, align 4, !alias.scope !757, !noalias !758, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
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
  %_4.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !767, !noalias !768, !noundef !18
  %_5.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !769, !noalias !770, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
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
  %_4.i.i19.i.2 = load i32, ptr %27, align 4, !alias.scope !779, !noalias !780, !noundef !18
  %_5.i.i20.i.2 = load i32, ptr %26, align 4, !alias.scope !781, !noalias !782, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
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
  %_4.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !791, !noalias !792, !noundef !18
  %_5.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !793, !noalias !794, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !721
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !752
  %_4.i.i19.i.3 = load i32, ptr %32, align 4, !alias.scope !803, !noalias !804, !noundef !18
  %_5.i.i20.i.3 = load i32, ptr %31, align 4, !alias.scope !805, !noalias !806, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE.exit, !prof !296

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #18, !noalias !718
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h06065741614b238eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd4106f71c3a4e3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17h175e6ee4efc703fbE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd82a71d3e52a1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hc07f07e0b0c1b466E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc899f5e6c41a82d6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd4106f71c3a4e3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i, %bb30
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
  %_4.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !890, !noalias !891, !noundef !18
  %_5.i.i63 = load i32, ptr %_82, align 4, !alias.scope !892, !noalias !893, !noundef !18
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_5.i.i60 = phi i32 [ %_4.i.i59, %bb15.i.i ], [ %_4.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_4.i.i59 = load i32, ptr %2, align 4, !alias.scope !894, !noalias !899, !noundef !18
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_5.i.i = phi i32 [ %_4.i.i58, %bb7.i.i ], [ %_4.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_4.i.i58 = load i32, ptr %4, align 4, !alias.scope !902, !noalias !907, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !noalias !913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915), !noalias !913
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h896138c6c7ebef1fE.exit.i.thread101 ]
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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !917, !noalias !920, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !921, !noalias !922
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !917, !noalias !920
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !921, !noalias !922
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !926

_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit, label %bb5.i45

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
  %_4.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !943, !noalias !944, !noundef !18
  %_5.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !947, !noalias !948, !noundef !18
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
  %_4.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !960, !noalias !961, !noundef !18
  %_5.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !964, !noalias !965, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit

_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h64199cca55c93c94E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd82a71d3e52a1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i, %bb30
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
  %_4.i.i62 = load i32, ptr %_82, align 4, !alias.scope !985, !noalias !986, !noundef !18
  %_5.i.i63 = load i32, ptr %_28.i.i, align 4, !alias.scope !987, !noalias !988, !noundef !18
  %_0.i64 = icmp slt i32 %_4.i.i62, %_5.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i59 = phi i32 [ %_5.i.i60, %bb15.i.i ], [ %_5.i.i63, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_5.i.i60 = load i32, ptr %2, align 4, !alias.scope !989, !noalias !994, !noundef !18
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_5.i.i, %bb7.i.i ], [ %_5.i.i63, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_5.i.i = load i32, ptr %4, align 4, !alias.scope !997, !noalias !1002, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !1008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !1008
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h23ad91019d2fead9E.exit.i.thread101 ]
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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !1012, !noalias !1015, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !1016, !noalias !1017
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !1012, !noalias !1015
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !1016, !noalias !1017
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i112
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1019

_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit, label %bb5.i45

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
  %_4.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !1036, !noalias !1037, !noundef !18
  %_5.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !1040, !noalias !1041, !noundef !18
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
  %_4.i.i.i12.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1053, !noalias !1054, !noundef !18
  %_5.i.i.i13.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1057, !noalias !1058, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit

_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h781032d45b6bd8f7E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc899f5e6c41a82d6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i, %bb30
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
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !1083, !noalias !1084, !noundef !18
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !1085, !noalias !1086, !noundef !18
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !1087, !noalias !1094, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !1098, !noalias !1105, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1112
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6601a5dee2e85668E.exit.i.thread100 ]
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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !1116, !noalias !1119, !noundef !18
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !1120, !noalias !1121
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !1116, !noalias !1119
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !1120, !noalias !1121
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !1123

_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit, label %bb5.i45

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
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !1145, !noalias !1146, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !1149, !noalias !1150, !noundef !18
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
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1167, !noalias !1168, !noundef !18
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1171, !noalias !1172, !noundef !18
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
  br label %_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit

_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h13cfe01f006f9e9aE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90445a78fdd9552cE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h90445a78fdd9552cE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1199, !noalias !1200, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1202, !noalias !1203, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1219, !noalias !1220, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1221, !noalias !1222, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1238, !noalias !1239, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1240, !noalias !1241, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1257, !noalias !1258, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1259, !noalias !1260, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1276, !noalias !1277, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1278, !noalias !1279, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1182, !noalias !1280
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1182, !noalias !1280
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1182, !noalias !1280
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1182, !noalias !1280
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1296, !noalias !1297, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1298, !noalias !1299, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1315, !noalias !1316, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1317, !noalias !1318, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1334, !noalias !1335, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1336, !noalias !1337, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1353, !noalias !1354, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1355, !noalias !1356, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1372, !noalias !1373, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1374, !noalias !1375, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1182, !noalias !1280
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1182, !noalias !1280
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1182, !noalias !1280
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1182, !noalias !1280
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1179, !noalias !1376
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1182, !noalias !1280
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1179, !noalias !1376
  store i32 %25, ptr %24, align 4, !alias.scope !1182, !noalias !1280
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1179, !noalias !1376
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1182, !noalias !1280
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1377, !noalias !1384, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1182, !noalias !1280
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1388, !noalias !1395, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1182, !noalias !1399
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412), !noalias !1415
  call void @llvm.experimental.noalias.scope.decl(metadata !1418), !noalias !1415
  call void @llvm.experimental.noalias.scope.decl(metadata !1420), !noalias !1415
  call void @llvm.experimental.noalias.scope.decl(metadata !1423), !noalias !1415
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1425, !noalias !1426, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1427, !noalias !1428, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1179, !noalias !1429
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1442), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1444), !noalias !1439
  call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1439
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1449, !noalias !1450, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1451, !noalias !1452, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1179, !noalias !1453
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1455, !noalias !1280
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1179, !noalias !1456
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
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1457

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1458, !noalias !1459
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1179, !noalias !1376
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1182, !noalias !1280
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1377, !noalias !1384, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1182, !noalias !1280
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1388, !noalias !1395, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1182, !noalias !1399
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbeaf212df3f34503E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1472
  call void @llvm.experimental.noalias.scope.decl(metadata !1475), !noalias !1472
  call void @llvm.experimental.noalias.scope.decl(metadata !1477), !noalias !1472
  call void @llvm.experimental.noalias.scope.decl(metadata !1480), !noalias !1472
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1482, !noalias !1485, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1487, !noalias !1488, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1489, !noalias !1496, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc899f5e6c41a82d6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1500, !noalias !1507, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1516, !noalias !1523, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1533, !noalias !1534, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1514, !noalias !1535
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1538, !noalias !1545, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1514, !noalias !1549
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1552, !noalias !1559, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1514, !noalias !1563
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1566, !noalias !1573, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1514, !noalias !1577
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1580, !noalias !1587, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1597, !noalias !1598, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1514, !noalias !1599
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1511, !noalias !1602
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1514, !noalias !1605
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1606
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1514, !noalias !1511
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1514, !noalias !1511
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1511, !noalias !1514
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1511, !noalias !1514
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1607

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1514, !noalias !1511
  store i32 %78, ptr %75, align 4, !alias.scope !1511, !noalias !1514
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1608

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", !prof !1609

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !1610
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h570f5ad850217a04E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1619, !noalias !1628, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1641, !noalias !1642, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1617, !noalias !1643
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1646, !noalias !1655, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1617, !noalias !1660
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1663, !noalias !1672, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1617, !noalias !1677
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1680, !noalias !1689, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1617, !noalias !1694
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1697, !noalias !1706, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1719, !noalias !1720, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1617, !noalias !1721
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1614, !noalias !1724
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1617, !noalias !1727
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1728
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1617, !noalias !1614
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1617, !noalias !1614
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1614, !noalias !1617
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1614, !noalias !1617
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1617, !noalias !1614
  store i32 %108, ptr %105, align 4, !alias.scope !1614, !noalias !1617
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E.exit, label %bb42.i66, !llvm.loop !1730

_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1609

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hd6eb7b969baaff3eE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hd6eb7b969baaff3eE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1746, !noalias !1747, !noundef !18
  %_5.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1749, !noalias !1750, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %_4.i.i7.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1761, !noalias !1762, !noundef !18
  %_5.i.i8.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1763, !noalias !1764, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %_4.i.i10.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1775, !noalias !1776, !noundef !18
  %_5.i.i11.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1777, !noalias !1778, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  %_4.i.i13.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1789, !noalias !1790, !noundef !18
  %_5.i.i14.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1791, !noalias !1792, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %_4.i.i16.i.i = load i32, ptr %7, align 4, !alias.scope !1803, !noalias !1804, !noundef !18
  %_5.i.i17.i.i = load i32, ptr %9, align 4, !alias.scope !1805, !noalias !1806, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1734, !noalias !1807
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1734, !noalias !1807
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1734, !noalias !1807
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1734, !noalias !1807
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %_4.i.i.i14.i = load i32, ptr %_27.i, align 4, !alias.scope !1818, !noalias !1819, !noundef !18
  %_5.i.i.i15.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1820, !noalias !1821, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %_4.i.i7.i19.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1832, !noalias !1833, !noundef !18
  %_5.i.i8.i20.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %_4.i.i10.i31.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1846, !noalias !1847, !noundef !18
  %_5.i.i11.i32.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1848, !noalias !1849, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  %_4.i.i13.i34.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !18
  %_5.i.i14.i35.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1862, !noalias !1863, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %_4.i.i16.i37.i = load i32, ptr %16, align 4, !alias.scope !1874, !noalias !1875, !noundef !18
  %_5.i.i17.i38.i = load i32, ptr %18, align 4, !alias.scope !1876, !noalias !1877, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1734, !noalias !1807
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1734, !noalias !1807
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1734, !noalias !1807
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1734, !noalias !1807
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1731, !noalias !1878
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1734, !noalias !1807
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1731, !noalias !1878
  store i32 %25, ptr %24, align 4, !alias.scope !1734, !noalias !1807
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1731, !noalias !1878
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1734, !noalias !1807
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i54.1.i = load i32, ptr %28, align 4, !alias.scope !1879, !noalias !1884, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %_4.i.i.i54.1.i, %27
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i1.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i54.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1734, !noalias !1807
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i1.i.1.i = load i32, ptr %30, align 4, !alias.scope !1887, !noalias !1892, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %_4.i.i1.i.1.i, %27
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1734, !noalias !1895
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908), !noalias !1911
  call void @llvm.experimental.noalias.scope.decl(metadata !1914), !noalias !1911
  %_4.i.i.i48.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1916, !noalias !1917, !noundef !18
  %_5.i.i.i49.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1918, !noalias !1919, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smax.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1731, !noalias !1920
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927), !noalias !1930
  call void @llvm.experimental.noalias.scope.decl(metadata !1933), !noalias !1930
  %_4.i.i19.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1935, !noalias !1936, !noundef !18
  %_5.i.i20.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1937, !noalias !1938, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smin.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1731, !noalias !1939
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1941, !noalias !1807
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1731, !noalias !1942
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
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1943

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1944, !noalias !1945
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1731, !noalias !1878
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1734, !noalias !1807
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i54.i = load i32, ptr %45, align 4, !alias.scope !1879, !noalias !1884, !noundef !18
  %_0.i.i56.i = icmp slt i32 %_4.i.i.i54.i, %44
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i1.i.i, %bb7.i.i ], [ %_4.i.i.i54.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1734, !noalias !1807
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i1.i.i = load i32, ptr %47, align 4, !alias.scope !1887, !noalias !1892, !noundef !18
  %_0.i3.i.i = icmp slt i32 %_4.i.i1.i.i, %44
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1734, !noalias !1895
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h082e3d9dc15f512aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  call void @llvm.experimental.noalias.scope.decl(metadata !1955), !noalias !1958
  call void @llvm.experimental.noalias.scope.decl(metadata !1961), !noalias !1958
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1963, !noalias !1966, !noundef !18
  %_5.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1968, !noalias !1969, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_4.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !1970, !noalias !1975, !noundef !18
  %_0.i7.i = icmp slt i32 %_4.i.i5.i, %_5.i.i.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i5.i, %_4.i.i.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd82a71d3e52a1fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_5.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1978, !noalias !1983, !noundef !18
  %_0.i = icmp slt i32 %value, %_5.i.i
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
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
  %_4.i.i.i29 = load i32, ptr %src, align 4, !alias.scope !1991, !noalias !1996, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %_5.i.i.i30 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2003, !noalias !2004, !noundef !18
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_5.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1989, !noalias !2005
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_5.i.i26.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2008, !noalias !2013, !noundef !18
  %_0.i27.i = icmp slt i32 %_4.i.i.i29, %_5.i.i26.i
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_5.i.i26.i, ptr %dst.i31.i, align 4, !alias.scope !1989, !noalias !2016
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_5.i.i36.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2019, !noalias !2024, !noundef !18
  %_0.i37.i = icmp slt i32 %_4.i.i.i29, %_5.i.i36.i
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_5.i.i36.i, ptr %dst.i41.i, align 4, !alias.scope !1989, !noalias !2027
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_5.i.i46.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2030, !noalias !2035, !noundef !18
  %_0.i47.i = icmp slt i32 %_4.i.i.i29, %_5.i.i46.i
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_5.i.i46.i, ptr %dst.i51.i, align 4, !alias.scope !1989, !noalias !2038
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
  %_4.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2041, !noalias !2046, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %_5.i.i56.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2053, !noalias !2054, !noundef !18
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_5.i.i56.i, ptr %dst.i61.i, align 4, !alias.scope !1989, !noalias !2055
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1986, !noalias !2058
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1989, !noalias !2061
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2062
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1989, !noalias !1986
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1989, !noalias !1986
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1986, !noalias !1989
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1986, !noalias !1989
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2063

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1989, !noalias !1986
  store i32 %78, ptr %75, align 4, !alias.scope !1986, !noalias !1989
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2064

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", !prof !1609

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !2065
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7fff4b76627d33c3E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
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
  %_5.i.i.i.i83 = load i32, ptr %src, align 4, !alias.scope !2074, !noalias !2081, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %_4.i.i.i.i82 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2091, !noalias !2092, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i82, ptr %dst.i.i86, align 4, !alias.scope !2072, !noalias !2093
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i25.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2096, !noalias !2103, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i25.i, %_5.i.i.i.i83
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i25.i, ptr %dst.i31.i90, align 4, !alias.scope !2072, !noalias !2107
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i35.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2110, !noalias !2117, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i35.i, %_5.i.i.i.i83
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i35.i, ptr %dst.i41.i94, align 4, !alias.scope !2072, !noalias !2121
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i45.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2124, !noalias !2131, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i45.i, %_5.i.i.i.i83
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i45.i, ptr %dst.i51.i98, align 4, !alias.scope !2072, !noalias !2135
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
  %_5.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2138, !noalias !2145, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %_4.i.i.i55.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2155, !noalias !2156, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i55.i, ptr %dst.i61.i74, align 4, !alias.scope !2072, !noalias !2157
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2069, !noalias !2160
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2072, !noalias !2163
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !2164
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2072, !noalias !2069
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2072, !noalias !2069
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2069, !noalias !2072
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2069, !noalias !2072
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2072, !noalias !2069
  store i32 %108, ptr %105, align 4, !alias.scope !2069, !noalias !2072
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE.exit, label %bb42.i66, !llvm.loop !2166

_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1609

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #18
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h69e6755d974671c6E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h69e6755d974671c6E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %_4.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !2182, !noalias !2183, !noundef !18
  %_5.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !2185, !noalias !2186, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %_4.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !2197, !noalias !2198, !noundef !18
  %_5.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !2199, !noalias !2200, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  %_4.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !2211, !noalias !2212, !noundef !18
  %_5.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !2213, !noalias !2214, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  %_4.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !2225, !noalias !2226, !noundef !18
  %_5.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !2227, !noalias !2228, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %_4.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !2239, !noalias !2240, !noundef !18
  %_5.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !2241, !noalias !2242, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !2170, !noalias !2243
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !2170, !noalias !2243
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !2170, !noalias !2243
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !2170, !noalias !2243
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %_4.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !2254, !noalias !2255, !noundef !18
  %_5.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !2256, !noalias !2257, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %_4.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !2268, !noalias !2269, !noundef !18
  %_5.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !2270, !noalias !2271, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %_4.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !2282, !noalias !2283, !noundef !18
  %_5.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !2284, !noalias !2285, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %_4.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !2296, !noalias !2297, !noundef !18
  %_5.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !2298, !noalias !2299, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %_4.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !2310, !noalias !2311, !noundef !18
  %_5.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !2312, !noalias !2313, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !2170, !noalias !2243
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !2170, !noalias !2243
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !2170, !noalias !2243
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !2170, !noalias !2243
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !2167, !noalias !2314
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !2170, !noalias !2243
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !2167, !noalias !2314
  store i32 %25, ptr %24, align 4, !alias.scope !2170, !noalias !2243
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !2167, !noalias !2314
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !2170, !noalias !2243
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_5.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !2315, !noalias !2320, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_5.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_5.i.i2.i.1.i, %bb7.i.1.i ], [ %_5.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !2170, !noalias !2243
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_5.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !2323, !noalias !2328, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_5.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !2170, !noalias !2331
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2336)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2344), !noalias !2347
  call void @llvm.experimental.noalias.scope.decl(metadata !2350), !noalias !2347
  %_4.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !2352, !noalias !2353, !noundef !18
  %_5.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !2354, !noalias !2355, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !2167, !noalias !2356
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363), !noalias !2366
  call void @llvm.experimental.noalias.scope.decl(metadata !2369), !noalias !2366
  %_4.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !2371, !noalias !2372, !noundef !18
  %_5.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !2373, !noalias !2374, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !2167, !noalias !2375
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !2377, !noalias !2243
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !2167, !noalias !2378
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
          to label %.noexc.i unwind label %cleanup2.i, !noalias !2379

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !2380, !noalias !2381
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !2167, !noalias !2314
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !2170, !noalias !2243
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_5.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !2315, !noalias !2320, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_5.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_5.i.i2.i.i, %bb7.i.i ], [ %_5.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !2170, !noalias !2243
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_5.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !2323, !noalias !2328, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_5.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !2170, !noalias !2331
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdfaee4ad4dd5a0d6E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  call void @llvm.experimental.noalias.scope.decl(metadata !2391), !noalias !2394
  call void @llvm.experimental.noalias.scope.decl(metadata !2397), !noalias !2394
  %_4.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !2399, !noalias !2402, !noundef !18
  %_5.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2404, !noalias !2405, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_5.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2406, !noalias !2411, !noundef !18
  %_0.i7.i = icmp slt i32 %_4.i.i.i, %_5.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_5.i.i.i, %_5.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hbdd4106f71c3a4e3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_4.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !2414, !noalias !2419, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
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
  %_5.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !2427, !noalias !2432, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %_4.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2439, !noalias !2440, !noundef !18
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_4.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !2425, !noalias !2441
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_4.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2444, !noalias !2449, !noundef !18
  %_0.i27.i = icmp slt i32 %_4.i.i25.i, %_5.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_4.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !2425, !noalias !2452
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_4.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2455, !noalias !2460, !noundef !18
  %_0.i37.i = icmp slt i32 %_4.i.i35.i, %_5.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_4.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !2425, !noalias !2463
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_4.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2466, !noalias !2471, !noundef !18
  %_0.i47.i = icmp slt i32 %_4.i.i45.i, %_5.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_4.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !2425, !noalias !2474
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
  %_5.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2477, !noalias !2482, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %_4.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2489, !noalias !2490, !noundef !18
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_4.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !2425, !noalias !2491
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !2422, !noalias !2494
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !2425, !noalias !2497
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2498
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !2425, !noalias !2422
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !2425, !noalias !2422
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !2422, !noalias !2425
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !2422, !noalias !2425
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2499

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
  %78 = load i32, ptr %77, align 4, !alias.scope !2425, !noalias !2422
  store i32 %78, ptr %75, align 4, !alias.scope !2422, !noalias !2425
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2500

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit", !prof !1609

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #18, !noalias !2501
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfd6fce442f5e73f0E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
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
  %_4.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2510, !noalias !2517, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  %_5.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2527, !noalias !2528, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_5.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2508, !noalias !2529
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_5.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2532, !noalias !2539, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_5.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2508, !noalias !2543
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_5.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2546, !noalias !2553, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_5.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2508, !noalias !2557
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_5.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2560, !noalias !2567, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_5.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2508, !noalias !2571
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
  %_4.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2574, !noalias !2581, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  %_5.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2591, !noalias !2592, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_5.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2508, !noalias !2593
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2505, !noalias !2596
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2508, !noalias !2599
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2508, !noalias !2505
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2508, !noalias !2505
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2505, !noalias !2508
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2505, !noalias !2508
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2508, !noalias !2505
  store i32 %108, ptr %105, align 4, !alias.scope !2505, !noalias !2508
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E.exit, label %bb42.i66, !llvm.loop !2602

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1609

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E.exit
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
define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i3 = alloca [0 x i8], align 1
  %is_less.i.i4 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  store ptr %compare.i3, ptr %is_less.i.i, align 8, !noalias !2609
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h06065741614b238eE(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %0 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !2626, !noalias !2627, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %a.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %a.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %a.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %a.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2622, !noalias !2625, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2626, !noalias !2627, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %a.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %a.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2651, !noalias !2652, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2653, !noalias !2654, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2628, !noalias !2629
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %a.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2630, !noalias !2635, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %a.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2628, !noalias !2638
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h549ae1c5c9209dffE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2603
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i3)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !2655
  store ptr %compare.i3, ptr %is_less.i.i4, align 8, !noalias !2661
  %b.i.i5 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb7.i.i6, !prof !2611

bb7.i.i6:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit"
  %b1.i.i7 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i7, label %bb9.i.i9, label %bb10.i.i8, !prof !2611

bb10.i.i8:                                        ; preds = %bb7.i.i6
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h175e6ee4efc703fbE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i4)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"

bb9.i.i9:                                         ; preds = %bb7.i.i6
  %v_end.idx.i.i.i10 = shl nuw nsw i64 %b.1, 2
  %v_end.i.i.i11 = getelementptr inbounds nuw i8, ptr %b.0, i64 %v_end.idx.i.i.i10
  %tail.sroa.0.01.i.i.i12 = getelementptr inbounds nuw i8, ptr %b.0, i64 4
  %8 = and i64 %b.1, 1
  %lcmp.mod35.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod35.not.not, label %bb5.i.i.i13.prol, label %bb5.i.i.i13.prol.loopexit

bb5.i.i.i13.prol:                                 ; preds = %bb9.i.i9
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i16.prol = load i32, ptr %b.0, align 4, !alias.scope !2673, !noalias !2676, !noundef !18
  %_5.i.i.i.i.i.i17.prol = load i32, ptr %tail.sroa.0.01.i.i.i12, align 4, !alias.scope !2677, !noalias !2678, !noundef !18
  %_0.i.i.i.i.i18.prol = icmp slt i32 %_4.i.i.i.i.i.i16.prol, %_5.i.i.i.i.i.i17.prol
  br i1 %_0.i.i.i.i.i18.prol, label %bb4.i.i.i.i21.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol

bb4.i.i.i.i21.prol:                               ; preds = %bb5.i.i.i13.prol, %bb7.i.i.i.i25.prol
  %9 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i25.prol ], [ %_4.i.i.i.i.i.i16.prol, %bb5.i.i.i13.prol ]
  %gap_guard.sroa.5.0.i.i.i.i22.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i23.prol, %bb7.i.i.i.i25.prol ], [ %tail.sroa.0.01.i.i.i12, %bb5.i.i.i13.prol ]
  %sift.sroa.0.0.i.i.i.i23.prol = phi ptr [ %10, %bb7.i.i.i.i25.prol ], [ %b.0, %bb5.i.i.i13.prol ]
  store i32 %9, ptr %gap_guard.sroa.5.0.i.i.i.i22.prol, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i23.prol, %b.0
  br i1 %_18.i.i.i.i24.prol, label %bb10.i.i.i.i27.prol, label %bb7.i.i.i.i25.prol

bb7.i.i.i.i25.prol:                               ; preds = %bb4.i.i.i.i21.prol
  %10 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %10, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i17.prol
  br i1 %_0.i3.i.i.i.i26.prol, label %bb4.i.i.i.i21.prol, label %bb10.i.i.i.i27.prol

bb10.i.i.i.i27.prol:                              ; preds = %bb7.i.i.i.i25.prol, %bb4.i.i.i.i21.prol
  %sift.sroa.0.0.i.lcssa.i.i.i28.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i23.prol, %bb7.i.i.i.i25.prol ], [ %b.0, %bb4.i.i.i.i21.prol ]
  store i32 %_5.i.i.i.i.i.i17.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i28.prol, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i27.prol, %bb5.i.i.i13.prol
  %tail.sroa.0.0.i.i.i19.prol = getelementptr inbounds nuw i8, ptr %b.0, i64 8
  br label %bb5.i.i.i13.prol.loopexit

bb5.i.i.i13.prol.loopexit:                        ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol, %bb9.i.i9
  %tail.sroa.0.04.i.i.i14.unr = phi ptr [ %tail.sroa.0.01.i.i.i12, %bb9.i.i9 ], [ %tail.sroa.0.0.i.i.i19.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i15.unr = phi ptr [ %b.0, %bb9.i.i9 ], [ %tail.sroa.0.01.i.i.i12, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.prol ]
  %11 = icmp eq i64 %b.1, 2
  br i1 %11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb5.i.i.i13

bb5.i.i.i13:                                      ; preds = %bb5.i.i.i13.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i14 = phi ptr [ %tail.sroa.0.0.i.i.i19.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i14.unr, %bb5.i.i.i13.prol.loopexit ]
  %v.0.pn3.i.i.i15 = phi ptr [ %tail.sroa.0.0.i.i.i19, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i15.unr, %bb5.i.i.i13.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %_4.i.i.i.i.i.i16 = load i32, ptr %v.0.pn3.i.i.i15, align 4, !alias.scope !2673, !noalias !2676, !noundef !18
  %_5.i.i.i.i.i.i17 = load i32, ptr %tail.sroa.0.04.i.i.i14, align 4, !alias.scope !2677, !noalias !2678, !noundef !18
  %_0.i.i.i.i.i18 = icmp slt i32 %_4.i.i.i.i.i.i16, %_5.i.i.i.i.i.i17
  br i1 %_0.i.i.i.i.i18, label %bb4.i.i.i.i21, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i

bb4.i.i.i.i21:                                    ; preds = %bb5.i.i.i13, %bb7.i.i.i.i25
  %12 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i25 ], [ %_4.i.i.i.i.i.i16, %bb5.i.i.i13 ]
  %gap_guard.sroa.5.0.i.i.i.i22 = phi ptr [ %sift.sroa.0.0.i.i.i.i23, %bb7.i.i.i.i25 ], [ %tail.sroa.0.04.i.i.i14, %bb5.i.i.i13 ]
  %sift.sroa.0.0.i.i.i.i23 = phi ptr [ %13, %bb7.i.i.i.i25 ], [ %v.0.pn3.i.i.i15, %bb5.i.i.i13 ]
  store i32 %12, ptr %gap_guard.sroa.5.0.i.i.i.i22, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24 = icmp eq ptr %sift.sroa.0.0.i.i.i.i23, %b.0
  br i1 %_18.i.i.i.i24, label %bb10.i.i.i.i27, label %bb7.i.i.i.i25

bb7.i.i.i.i25:                                    ; preds = %bb4.i.i.i.i21
  %13 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %13, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26 = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i17
  br i1 %_0.i3.i.i.i.i26, label %bb4.i.i.i.i21, label %bb10.i.i.i.i27

bb10.i.i.i.i27:                                   ; preds = %bb7.i.i.i.i25, %bb4.i.i.i.i21
  %sift.sroa.0.0.i.lcssa.i.i.i28 = phi ptr [ %sift.sroa.0.0.i.i.i.i23, %bb7.i.i.i.i25 ], [ %b.0, %bb4.i.i.i.i21 ]
  store i32 %_5.i.i.i.i.i.i17, ptr %sift.sroa.0.0.i.lcssa.i.i.i28, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i: ; preds = %bb10.i.i.i.i27, %bb5.i.i.i13
  %tail.sroa.0.0.i.i.i19 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i14, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %_4.i.i.i.i.i.i16.1 = load i32, ptr %tail.sroa.0.04.i.i.i14, align 4, !alias.scope !2702, !noalias !2703, !noundef !18
  %_5.i.i.i.i.i.i17.1 = load i32, ptr %tail.sroa.0.0.i.i.i19, align 4, !alias.scope !2704, !noalias !2705, !noundef !18
  %_0.i.i.i.i.i18.1 = icmp slt i32 %_4.i.i.i.i.i.i16.1, %_5.i.i.i.i.i.i17.1
  br i1 %_0.i.i.i.i.i18.1, label %bb4.i.i.i.i21.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1

bb4.i.i.i.i21.1:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i, %bb7.i.i.i.i25.1
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i25.1 ], [ %_4.i.i.i.i.i.i16.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i22.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i23.1, %bb7.i.i.i.i25.1 ], [ %tail.sroa.0.0.i.i.i19, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i23.1 = phi ptr [ %15, %bb7.i.i.i.i25.1 ], [ %tail.sroa.0.04.i.i.i14, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i22.1, align 4, !alias.scope !2679, !noalias !2680
  %_18.i.i.i.i24.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i23.1, %b.0
  br i1 %_18.i.i.i.i24.1, label %bb10.i.i.i.i27.1, label %bb7.i.i.i.i25.1

bb7.i.i.i.i25.1:                                  ; preds = %bb4.i.i.i.i21.1
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i23.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %15, align 4, !alias.scope !2681, !noalias !2686, !noundef !18
  %_0.i3.i.i.i.i26.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i17.1
  br i1 %_0.i3.i.i.i.i26.1, label %bb4.i.i.i.i21.1, label %bb10.i.i.i.i27.1

bb10.i.i.i.i27.1:                                 ; preds = %bb7.i.i.i.i25.1, %bb4.i.i.i.i21.1
  %sift.sroa.0.0.i.lcssa.i.i.i28.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i23.1, %bb7.i.i.i.i25.1 ], [ %b.0, %bb4.i.i.i.i21.1 ]
  store i32 %_5.i.i.i.i.i.i17.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i28.1, align 4, !alias.scope !2679, !noalias !2689
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i27.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i
  %tail.sroa.0.0.i.i.i19.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i14, i64 8
  %_11.not.i.i.i20.1 = icmp eq ptr %tail.sroa.0.0.i.i.i19.1, %v_end.i.i.i11
  br i1 %_11.not.i.i.i20.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit", label %bb5.i.i.i13

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit": ; preds = %bb5.i.i.i13.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9b39e1071653ee72E.exit.i.i.i.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE.exit", %bb10.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i4), !noalias !2655
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i3)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb3

bb3:                                              ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit"
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb5 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb8, label %bb9

bb9:                                              ; preds = %bb3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv, %a.1
  br i1 %exitcond32.not, label %panic, label %bb4

bb8:                                              ; preds = %bb5, %bb3
  %_0.sroa.0.0 = phi i32 [ 1, %bb3 ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb9
  %exitcond33.not = icmp eq i64 %indvars.iv, %b.1
  br i1 %exitcond33.not, label %panic1, label %bb5

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a2ee0b019ed70f55536196ba492661d) #18
  unreachable

bb5:                                              ; preds = %bb4
  %16 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_11 = load i32, ptr %16, align 4, !noundef !18
  %17 = getelementptr inbounds nuw i32, ptr %b.0, i64 %indvars.iv
  %_15 = load i32, ptr %17, align 4, !noundef !18
  %_10 = add i32 %_15, %_11
  %_9 = icmp slt i32 %_10, %k
  br i1 %_9, label %bb8, label %bb3

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %b.1, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6eb7515f2e20320b75b916ddc6ae64cb) #18
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
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE.exit", label %bb7.i.i, !prof !2611

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2611

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hc07f07e0b0c1b466E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE.exit"

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
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2729, !noalias !2732, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2733, !noalias !2734, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2737, !noalias !2744, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2729, !noalias !2732, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2733, !noalias !2734, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2737, !noalias !2744, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2765, !noalias !2766, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2767, !noalias !2768, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2735, !noalias !2736
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2737, !noalias !2744, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2735, !noalias !2748
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h37897399ec978c5dE.exit.i.i.i.1, %start, %bb10.i.i
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
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!10 = distinct !{!10, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h5b7103c4e7a6e636E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h5b7103c4e7a6e636E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!16 = !{!15, !7}
!17 = !{!9, !4, !12}
!18 = !{}
!19 = !{!9, !4}
!20 = !{!15, !7, !12}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!23 = distinct !{!23, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!24 = distinct !{!24, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!25 = distinct !{!25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!26 = !{!27, !28}
!27 = distinct !{!27, !23, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!28 = distinct !{!28, !25, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!31 = distinct !{!31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!36 = distinct !{!36, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core5slice4sort6shared5pivot7median317h27251eb7d7488b63E: %c"}
!39 = distinct !{!39, !"_ZN4core5slice4sort6shared5pivot7median317h27251eb7d7488b63E"}
!40 = !{!41}
!41 = distinct !{!41, !36, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
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
!54 = distinct !{!54, !55, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!55 = distinct !{!55, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!56 = distinct !{!56, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!57 = distinct !{!57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!58 = !{!59, !60, !61}
!59 = distinct !{!59, !53, !"cmpfunc: %a"}
!60 = distinct !{!60, !55, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!61 = distinct !{!61, !57, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!64 = distinct !{!64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!69 = distinct !{!69, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4core5slice4sort6shared5pivot7median317h0242c40efe540e90E: %c"}
!72 = distinct !{!72, !"_ZN4core5slice4sort6shared5pivot7median317h0242c40efe540e90E"}
!73 = !{!74}
!74 = distinct !{!74, !69, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!75 = !{!68, !63}
!76 = !{!74, !66, !71}
!77 = !{!74, !66}
!78 = !{!68, !63, !71}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!81 = distinct !{!81, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!82 = distinct !{!82, !83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!83 = distinct !{!83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!84 = !{!85, !86}
!85 = distinct !{!85, !81, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!86 = distinct !{!86, !83, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!94 = distinct !{!94, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!97 = !{!93, !88}
!98 = !{!96, !91}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!106 = distinct !{!106, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!109 = !{!105, !100}
!110 = !{!108, !103}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!113 = distinct !{!113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!118 = distinct !{!118, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!121 = !{!117, !112}
!122 = !{!120, !115}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!125 = distinct !{!125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!130 = distinct !{!130, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!133 = !{!129, !124}
!134 = !{!132, !127}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!137 = distinct !{!137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!142 = distinct !{!142, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!145 = !{!141, !136}
!146 = !{!144, !139}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!149 = distinct !{!149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!154 = distinct !{!154, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!157 = !{!153, !148}
!158 = !{!156, !151}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!161 = distinct !{!161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!166 = distinct !{!166, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!169 = !{!165, !160}
!170 = !{!168, !163}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!173 = distinct !{!173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!178 = distinct !{!178, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!181 = !{!177, !172}
!182 = !{!180, !175}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!185 = distinct !{!185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!190 = distinct !{!190, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!193 = !{!189, !184}
!194 = !{!192, !187}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!197 = distinct !{!197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!202 = distinct !{!202, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!205 = !{!201, !196}
!206 = !{!204, !199}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E: %v.0"}
!209 = distinct !{!209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E"}
!210 = !{!211, !213, !208}
!211 = distinct !{!211, !212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE: %_0"}
!212 = distinct !{!212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE"}
!213 = distinct !{!213, !212, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE: %is_less"}
!214 = !{!215, !217, !208}
!215 = distinct !{!215, !216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E: %_0"}
!216 = distinct !{!216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E"}
!217 = distinct !{!217, !216, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E: %is_less"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It1"}
!220 = distinct !{!220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It1"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It1"}
!225 = distinct !{!225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!226 = !{!211}
!227 = !{!228}
!228 = distinct !{!228, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It1"}
!229 = !{!224, !219, !208}
!230 = !{!228, !222, !211}
!231 = !{!228, !222, !208}
!232 = !{!224, !219, !211}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It1"}
!235 = distinct !{!235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It1"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It1"}
!240 = distinct !{!240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!241 = !{!215}
!242 = !{!243}
!243 = distinct !{!243, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It1"}
!244 = !{!239, !234, !208}
!245 = !{!243, !237, !215}
!246 = !{!243, !237, !208}
!247 = !{!239, !234, !215}
!248 = !{!249}
!249 = distinct !{!249, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It2"}
!250 = !{!251}
!251 = distinct !{!251, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It2"}
!252 = !{!253}
!253 = distinct !{!253, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It2"}
!254 = !{!255}
!255 = distinct !{!255, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It2"}
!256 = !{!253, !249, !208}
!257 = !{!255, !251, !211}
!258 = !{!255, !251, !208}
!259 = !{!253, !249, !211}
!260 = !{!261}
!261 = distinct !{!261, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It2"}
!262 = !{!263}
!263 = distinct !{!263, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It2"}
!264 = !{!265}
!265 = distinct !{!265, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It2"}
!266 = !{!267}
!267 = distinct !{!267, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It2"}
!268 = !{!265, !261, !208}
!269 = !{!267, !263, !215}
!270 = !{!267, !263, !208}
!271 = !{!265, !261, !215}
!272 = !{!273}
!273 = distinct !{!273, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It3"}
!274 = !{!275}
!275 = distinct !{!275, !220, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It3"}
!276 = !{!277}
!277 = distinct !{!277, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It3"}
!278 = !{!279}
!279 = distinct !{!279, !225, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It3"}
!280 = !{!277, !273, !208}
!281 = !{!279, !275, !211}
!282 = !{!279, !275, !208}
!283 = !{!277, !273, !211}
!284 = !{!285}
!285 = distinct !{!285, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It3"}
!286 = !{!287}
!287 = distinct !{!287, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It3"}
!288 = !{!289}
!289 = distinct !{!289, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It3"}
!290 = !{!291}
!291 = distinct !{!291, !240, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It3"}
!292 = !{!289, !285, !208}
!293 = !{!291, !287, !215}
!294 = !{!291, !287, !208}
!295 = !{!289, !285, !215}
!296 = !{!"branch_weights", i32 4001, i32 4000000}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!299 = distinct !{!299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!304 = distinct !{!304, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"cmpfunc: %a"}
!309 = distinct !{!309, !"cmpfunc"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"cmpfunc: %b"}
!312 = !{!308, !303, !298}
!313 = !{!311, !306, !301}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!316 = distinct !{!316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!321 = distinct !{!321, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"cmpfunc: %a"}
!326 = distinct !{!326, !"cmpfunc"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"cmpfunc: %b"}
!329 = !{!325, !320, !315}
!330 = !{!328, !323, !318}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!333 = distinct !{!333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!334 = !{!335}
!335 = distinct !{!335, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!338 = distinct !{!338, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"cmpfunc: %a"}
!343 = distinct !{!343, !"cmpfunc"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"cmpfunc: %b"}
!346 = !{!342, !337, !332}
!347 = !{!345, !340, !335}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!350 = distinct !{!350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!351 = !{!352}
!352 = distinct !{!352, !350, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!355 = distinct !{!355, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"cmpfunc: %a"}
!360 = distinct !{!360, !"cmpfunc"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"cmpfunc: %b"}
!363 = !{!359, !354, !349}
!364 = !{!362, !357, !352}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!367 = distinct !{!367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!368 = !{!369}
!369 = distinct !{!369, !367, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!372 = distinct !{!372, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"cmpfunc: %a"}
!377 = distinct !{!377, !"cmpfunc"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"cmpfunc: %b"}
!380 = !{!376, !371, !366}
!381 = !{!379, !374, !369}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!384 = distinct !{!384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!385 = !{!386}
!386 = distinct !{!386, !384, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!389 = distinct !{!389, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"cmpfunc: %a"}
!394 = distinct !{!394, !"cmpfunc"}
!395 = !{!396}
!396 = distinct !{!396, !394, !"cmpfunc: %b"}
!397 = !{!393, !388, !383}
!398 = !{!396, !391, !386}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!401 = distinct !{!401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!402 = !{!403}
!403 = distinct !{!403, !401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!406 = distinct !{!406, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"cmpfunc: %a"}
!411 = distinct !{!411, !"cmpfunc"}
!412 = !{!413}
!413 = distinct !{!413, !411, !"cmpfunc: %b"}
!414 = !{!410, !405, !400}
!415 = !{!413, !408, !403}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!418 = distinct !{!418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!423 = distinct !{!423, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!426 = !{!427}
!427 = distinct !{!427, !428, !"cmpfunc: %a"}
!428 = distinct !{!428, !"cmpfunc"}
!429 = !{!430}
!430 = distinct !{!430, !428, !"cmpfunc: %b"}
!431 = !{!427, !422, !417}
!432 = !{!430, !425, !420}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!435 = distinct !{!435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!440 = distinct !{!440, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"cmpfunc: %a"}
!445 = distinct !{!445, !"cmpfunc"}
!446 = !{!447}
!447 = distinct !{!447, !445, !"cmpfunc: %b"}
!448 = !{!444, !439, !434}
!449 = !{!447, !442, !437}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!452 = distinct !{!452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!455 = !{!456}
!456 = distinct !{!456, !457, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!457 = distinct !{!457, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!458 = !{!459}
!459 = distinct !{!459, !457, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"cmpfunc: %a"}
!462 = distinct !{!462, !"cmpfunc"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"cmpfunc: %b"}
!465 = !{!461, !456, !451}
!466 = !{!464, !459, !454}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E: %v.0"}
!469 = distinct !{!469, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E"}
!470 = !{!471, !473, !475, !468}
!471 = distinct !{!471, !472, !"cmpfunc: %b"}
!472 = distinct !{!472, !"cmpfunc"}
!473 = distinct !{!473, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!474 = distinct !{!474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!475 = distinct !{!475, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!476 = distinct !{!476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!477 = !{!478, !479, !480, !481}
!478 = distinct !{!478, !472, !"cmpfunc: %a"}
!479 = distinct !{!479, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!480 = distinct !{!480, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!481 = distinct !{!481, !482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E: %_0"}
!482 = distinct !{!482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E"}
!483 = !{!481, !484, !468}
!484 = distinct !{!484, !482, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E: %is_less"}
!485 = !{!486, !488, !490, !468}
!486 = distinct !{!486, !487, !"cmpfunc: %b"}
!487 = distinct !{!487, !"cmpfunc"}
!488 = distinct !{!488, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!489 = distinct !{!489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!490 = distinct !{!490, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!491 = distinct !{!491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!492 = !{!493, !494, !495, !496}
!493 = distinct !{!493, !487, !"cmpfunc: %a"}
!494 = distinct !{!494, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!495 = distinct !{!495, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!496 = distinct !{!496, !497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E: %_0"}
!497 = distinct !{!497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E"}
!498 = !{!496, !499, !468}
!499 = distinct !{!499, !497, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E: %is_less"}
!500 = !{!501}
!501 = distinct !{!501, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It1"}
!502 = !{!503}
!503 = distinct !{!503, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It1"}
!504 = !{!505}
!505 = distinct !{!505, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It1"}
!506 = !{!481}
!507 = !{!508}
!508 = distinct !{!508, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It1"}
!509 = !{!510}
!510 = distinct !{!510, !472, !"cmpfunc: %a:It1"}
!511 = !{!512}
!512 = distinct !{!512, !472, !"cmpfunc: %b:It1"}
!513 = !{!510, !505, !501, !468}
!514 = !{!512, !508, !503, !481}
!515 = !{!512, !508, !503, !468}
!516 = !{!510, !505, !501, !481}
!517 = !{!518}
!518 = distinct !{!518, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It1"}
!519 = !{!520}
!520 = distinct !{!520, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It1"}
!521 = !{!522}
!522 = distinct !{!522, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It1"}
!523 = !{!496}
!524 = !{!525}
!525 = distinct !{!525, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It1"}
!526 = !{!527}
!527 = distinct !{!527, !487, !"cmpfunc: %a:It1"}
!528 = !{!529}
!529 = distinct !{!529, !487, !"cmpfunc: %b:It1"}
!530 = !{!527, !522, !518, !468}
!531 = !{!529, !525, !520, !496}
!532 = !{!529, !525, !520, !468}
!533 = !{!527, !522, !518, !496}
!534 = !{!535}
!535 = distinct !{!535, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It2"}
!536 = !{!537}
!537 = distinct !{!537, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It2"}
!538 = !{!539}
!539 = distinct !{!539, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It2"}
!540 = !{!541}
!541 = distinct !{!541, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It2"}
!542 = !{!543}
!543 = distinct !{!543, !472, !"cmpfunc: %a:It2"}
!544 = !{!545}
!545 = distinct !{!545, !472, !"cmpfunc: %b:It2"}
!546 = !{!543, !539, !535, !468}
!547 = !{!545, !541, !537, !481}
!548 = !{!545, !541, !537, !468}
!549 = !{!543, !539, !535, !481}
!550 = !{!551}
!551 = distinct !{!551, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It2"}
!552 = !{!553}
!553 = distinct !{!553, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It2"}
!554 = !{!555}
!555 = distinct !{!555, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It2"}
!556 = !{!557}
!557 = distinct !{!557, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It2"}
!558 = !{!559}
!559 = distinct !{!559, !487, !"cmpfunc: %a:It2"}
!560 = !{!561}
!561 = distinct !{!561, !487, !"cmpfunc: %b:It2"}
!562 = !{!559, !555, !551, !468}
!563 = !{!561, !557, !553, !496}
!564 = !{!561, !557, !553, !468}
!565 = !{!559, !555, !551, !496}
!566 = !{!567}
!567 = distinct !{!567, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It3"}
!568 = !{!569}
!569 = distinct !{!569, !476, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It3"}
!570 = !{!571}
!571 = distinct !{!571, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It3"}
!572 = !{!573}
!573 = distinct !{!573, !474, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It3"}
!574 = !{!575}
!575 = distinct !{!575, !472, !"cmpfunc: %a:It3"}
!576 = !{!577}
!577 = distinct !{!577, !472, !"cmpfunc: %b:It3"}
!578 = !{!575, !571, !567, !468}
!579 = !{!577, !573, !569, !481}
!580 = !{!577, !573, !569, !468}
!581 = !{!575, !571, !567, !481}
!582 = !{!583}
!583 = distinct !{!583, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It3"}
!584 = !{!585}
!585 = distinct !{!585, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It3"}
!586 = !{!587}
!587 = distinct !{!587, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It3"}
!588 = !{!589}
!589 = distinct !{!589, !489, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It3"}
!590 = !{!591}
!591 = distinct !{!591, !487, !"cmpfunc: %a:It3"}
!592 = !{!593}
!593 = distinct !{!593, !487, !"cmpfunc: %b:It3"}
!594 = !{!591, !587, !583, !468}
!595 = !{!593, !589, !585, !496}
!596 = !{!593, !589, !585, !468}
!597 = !{!591, !587, !583, !496}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!600 = distinct !{!600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!605 = distinct !{!605, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!608 = !{!607, !602}
!609 = !{!604, !599}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!612 = distinct !{!612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!617 = distinct !{!617, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!620 = !{!619, !614}
!621 = !{!616, !611}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!624 = distinct !{!624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!629 = distinct !{!629, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!630 = !{!631}
!631 = distinct !{!631, !629, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!632 = !{!631, !626}
!633 = !{!628, !623}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!636 = distinct !{!636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!637 = !{!638}
!638 = distinct !{!638, !636, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!641 = distinct !{!641, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!642 = !{!643}
!643 = distinct !{!643, !641, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!644 = !{!643, !638}
!645 = !{!640, !635}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!648 = distinct !{!648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!649 = !{!650}
!650 = distinct !{!650, !648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!653 = distinct !{!653, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!656 = !{!655, !650}
!657 = !{!652, !647}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!660 = distinct !{!660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!661 = !{!662}
!662 = distinct !{!662, !660, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!665 = distinct !{!665, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!668 = !{!667, !662}
!669 = !{!664, !659}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!672 = distinct !{!672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!677 = distinct !{!677, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!678 = !{!679}
!679 = distinct !{!679, !677, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!680 = !{!679, !674}
!681 = !{!676, !671}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!684 = distinct !{!684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!685 = !{!686}
!686 = distinct !{!686, !684, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!689 = distinct !{!689, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!692 = !{!691, !686}
!693 = !{!688, !683}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!696 = distinct !{!696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!701 = distinct !{!701, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!704 = !{!703, !698}
!705 = !{!700, !695}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!708 = distinct !{!708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!713 = distinct !{!713, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!716 = !{!715, !710}
!717 = !{!712, !707}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE: %v.0"}
!720 = distinct !{!720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE"}
!721 = !{!722, !724, !719}
!722 = distinct !{!722, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E: %_0"}
!723 = distinct !{!723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E"}
!724 = distinct !{!724, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E: %is_less"}
!725 = !{!726, !728, !719}
!726 = distinct !{!726, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E: %_0"}
!727 = distinct !{!727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E"}
!728 = distinct !{!728, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E: %is_less"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It1"}
!731 = distinct !{!731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!732 = !{!733}
!733 = distinct !{!733, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It1"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It1"}
!736 = distinct !{!736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!737 = !{!722}
!738 = !{!739}
!739 = distinct !{!739, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It1"}
!740 = !{!739, !733, !719}
!741 = !{!735, !730, !722}
!742 = !{!735, !730, !719}
!743 = !{!739, !733, !722}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It1"}
!746 = distinct !{!746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It1"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It1"}
!751 = distinct !{!751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!752 = !{!726}
!753 = !{!754}
!754 = distinct !{!754, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It1"}
!755 = !{!754, !748, !719}
!756 = !{!750, !745, !726}
!757 = !{!750, !745, !719}
!758 = !{!754, !748, !726}
!759 = !{!760}
!760 = distinct !{!760, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It2"}
!761 = !{!762}
!762 = distinct !{!762, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It2"}
!763 = !{!764}
!764 = distinct !{!764, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It2"}
!765 = !{!766}
!766 = distinct !{!766, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It2"}
!767 = !{!766, !762, !719}
!768 = !{!764, !760, !722}
!769 = !{!764, !760, !719}
!770 = !{!766, !762, !722}
!771 = !{!772}
!772 = distinct !{!772, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It2"}
!773 = !{!774}
!774 = distinct !{!774, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It2"}
!775 = !{!776}
!776 = distinct !{!776, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It2"}
!777 = !{!778}
!778 = distinct !{!778, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It2"}
!779 = !{!778, !774, !719}
!780 = !{!776, !772, !726}
!781 = !{!776, !772, !719}
!782 = !{!778, !774, !726}
!783 = !{!784}
!784 = distinct !{!784, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It3"}
!785 = !{!786}
!786 = distinct !{!786, !731, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It3"}
!787 = !{!788}
!788 = distinct !{!788, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It3"}
!789 = !{!790}
!790 = distinct !{!790, !736, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It3"}
!791 = !{!790, !786, !719}
!792 = !{!788, !784, !722}
!793 = !{!788, !784, !719}
!794 = !{!790, !786, !722}
!795 = !{!796}
!796 = distinct !{!796, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It3"}
!797 = !{!798}
!798 = distinct !{!798, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It3"}
!799 = !{!800}
!800 = distinct !{!800, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It3"}
!801 = !{!802}
!802 = distinct !{!802, !751, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It3"}
!803 = !{!802, !798, !719}
!804 = !{!800, !796, !726}
!805 = !{!800, !796, !719}
!806 = !{!802, !798, !726}
!807 = !{!"branch_weights", i32 2002, i32 2000}
!808 = !{!809, !811}
!809 = distinct !{!809, !810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E: %_0"}
!810 = distinct !{!810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E"}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E: %_0"}
!812 = distinct !{!812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E"}
!813 = !{!814, !816, !818, !820}
!814 = distinct !{!814, !815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!815 = distinct !{!815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!816 = distinct !{!816, !817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!817 = distinct !{!817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!818 = distinct !{!818, !819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!819 = distinct !{!819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!820 = distinct !{!820, !821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!821 = distinct !{!821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!822 = !{!823, !825, !827, !829}
!823 = distinct !{!823, !824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!824 = distinct !{!824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!825 = distinct !{!825, !826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!826 = distinct !{!826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!829 = distinct !{!829, !830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!830 = distinct !{!830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!831 = !{!832, !834}
!832 = distinct !{!832, !833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E: %_0"}
!833 = distinct !{!833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E"}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E: %_0"}
!835 = distinct !{!835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E"}
!836 = !{!837, !839, !841, !843}
!837 = distinct !{!837, !838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!838 = distinct !{!838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!839 = distinct !{!839, !840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!840 = distinct !{!840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!841 = distinct !{!841, !842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!842 = distinct !{!842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!843 = distinct !{!843, !844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!844 = distinct !{!844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!845 = !{!846, !848, !850, !852}
!846 = distinct !{!846, !847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!847 = distinct !{!847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!848 = distinct !{!848, !849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!849 = distinct !{!849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!850 = distinct !{!850, !851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!851 = distinct !{!851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!852 = distinct !{!852, !853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!853 = distinct !{!853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E: %_0"}
!856 = distinct !{!856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd91c819c297360a3E"}
!857 = distinct !{!857, !858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E: %_0"}
!858 = distinct !{!858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59cb47dda4dcef78E"}
!859 = !{!860, !862, !864, !866}
!860 = distinct !{!860, !861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!861 = distinct !{!861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!862 = distinct !{!862, !863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!863 = distinct !{!863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!864 = distinct !{!864, !865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!865 = distinct !{!865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!866 = distinct !{!866, !867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!867 = distinct !{!867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!868 = !{!869, !871, !873, !875}
!869 = distinct !{!869, !870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E: %self"}
!870 = distinct !{!870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h59f6692672684bd5E"}
!871 = distinct !{!871, !872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E: %self"}
!872 = distinct !{!872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3daae5590c3bd441E"}
!873 = distinct !{!873, !874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E: %_1"}
!874 = distinct !{!874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h10424a2d707c8df4E"}
!875 = distinct !{!875, !876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E: %_1"}
!876 = distinct !{!876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hcf34b91718b20887E"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!884 = distinct !{!884, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E: %scratch.0"}
!887 = distinct !{!887, !"_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E"}
!888 = !{!889}
!889 = distinct !{!889, !884, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!890 = !{!883, !878}
!891 = !{!889, !881, !886}
!892 = !{!889, !881}
!893 = !{!883, !878, !886}
!894 = !{!895, !897}
!895 = distinct !{!895, !896, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!896 = distinct !{!896, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!897 = distinct !{!897, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!898 = distinct !{!898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!899 = !{!900, !901, !886}
!900 = distinct !{!900, !896, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!901 = distinct !{!901, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!902 = !{!903, !905}
!903 = distinct !{!903, !904, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!904 = distinct !{!904, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!905 = distinct !{!905, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!906 = distinct !{!906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!907 = !{!908, !909, !886}
!908 = distinct !{!908, !904, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!909 = distinct !{!909, !906, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %a.0"}
!912 = distinct !{!912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E"}
!913 = !{!886, !914}
!914 = distinct !{!914, !887, !"_ZN4core5slice4sort6stable5drift10create_run17hb64390a5abbca803E: %is_less"}
!915 = !{!916}
!916 = distinct !{!916, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %b.0"}
!917 = !{!911, !918}
!918 = distinct !{!918, !919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E: %self.0"}
!919 = distinct !{!919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E"}
!920 = !{!916, !886, !914}
!921 = !{!916, !918}
!922 = !{!911, !886, !914}
!923 = distinct !{!923, !924, !925}
!924 = !{!"llvm.loop.isvectorized", i32 1}
!925 = !{!"llvm.loop.unroll.runtime.disable"}
!926 = distinct !{!926, !925, !924}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E: %v.0"}
!929 = distinct !{!929, !"_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"_ZN4core5slice4sort6stable5merge5merge17hd6a4be9c3eefce54E: %scratch.0"}
!932 = !{!928, !931}
!933 = !{!934}
!934 = distinct !{!934, !935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!935 = distinct !{!935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!936 = !{!937}
!937 = distinct !{!937, !935, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!940 = distinct !{!940, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!943 = !{!939, !934, !931}
!944 = !{!942, !937, !945, !928}
!945 = distinct !{!945, !946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17haaa0caa485ff7a0dE: %self"}
!946 = distinct !{!946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17haaa0caa485ff7a0dE"}
!947 = !{!942, !937, !928}
!948 = !{!939, !934, !945, !931}
!949 = !{!945, !931}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!957 = distinct !{!957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!960 = !{!956, !951, !928}
!961 = !{!959, !954, !962, !931}
!962 = distinct !{!962, !963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h432235c719af1491E: %self"}
!963 = distinct !{!963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h432235c719af1491E"}
!964 = !{!959, !954, !931}
!965 = !{!956, !951, !962, !928}
!966 = !{!962, !931}
!967 = !{!968, !970}
!968 = distinct !{!968, !969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E: %self"}
!969 = distinct !{!969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E"}
!970 = distinct !{!970, !971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E: %_1"}
!971 = distinct !{!971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!974 = distinct !{!974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!979 = distinct !{!979, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E: %scratch.0"}
!982 = distinct !{!982, !"_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E"}
!983 = !{!984}
!984 = distinct !{!984, !979, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!985 = !{!984, !976}
!986 = !{!978, !973, !981}
!987 = !{!978, !973}
!988 = !{!984, !976, !981}
!989 = !{!990, !992}
!990 = distinct !{!990, !991, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!991 = distinct !{!991, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!992 = distinct !{!992, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!993 = distinct !{!993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!994 = !{!995, !996, !981}
!995 = distinct !{!995, !991, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!996 = distinct !{!996, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!997 = !{!998, !1000}
!998 = distinct !{!998, !999, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!999 = distinct !{!999, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1000 = distinct !{!1000, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1001 = distinct !{!1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1002 = !{!1003, !1004, !981}
!1003 = distinct !{!1003, !999, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1004 = distinct !{!1004, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %a.0"}
!1007 = distinct !{!1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E"}
!1008 = !{!981, !1009}
!1009 = distinct !{!1009, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h6513b56bdfb43f55E: %is_less"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %b.0"}
!1012 = !{!1006, !1013}
!1013 = distinct !{!1013, !1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E: %self.0"}
!1014 = distinct !{!1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E"}
!1015 = !{!1011, !981, !1009}
!1016 = !{!1011, !1013}
!1017 = !{!1006, !981, !1009}
!1018 = distinct !{!1018, !924, !925}
!1019 = distinct !{!1019, !925, !924}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE: %v.0"}
!1022 = distinct !{!1022, !"_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h8a576d8684df011cE: %scratch.0"}
!1025 = !{!1021, !1024}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1028 = distinct !{!1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1033 = distinct !{!1033, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1036 = !{!1035, !1030, !1021}
!1037 = !{!1032, !1027, !1038, !1024}
!1038 = distinct !{!1038, !1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hfe30f6ce86deee86E: %self"}
!1039 = distinct !{!1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hfe30f6ce86deee86E"}
!1040 = !{!1032, !1027, !1024}
!1041 = !{!1035, !1030, !1038, !1021}
!1042 = !{!1038, !1024}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1045 = distinct !{!1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1050 = distinct !{!1050, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1053 = !{!1052, !1047, !1024}
!1054 = !{!1049, !1044, !1055, !1021}
!1055 = distinct !{!1055, !1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6add81adedaa6bcaE: %self"}
!1056 = distinct !{!1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6add81adedaa6bcaE"}
!1057 = !{!1049, !1044, !1021}
!1058 = !{!1052, !1047, !1055, !1024}
!1059 = !{!1055, !1024}
!1060 = !{!1061, !1063}
!1061 = distinct !{!1061, !1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E: %self"}
!1062 = distinct !{!1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E"}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E: %_1"}
!1064 = distinct !{!1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1067 = distinct !{!1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE: %scratch.0"}
!1075 = distinct !{!1075, !"_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
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
!1090 = distinct !{!1090, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1091 = distinct !{!1091, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1093 = distinct !{!1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1094 = !{!1095, !1096, !1097, !1074}
!1095 = distinct !{!1095, !1089, !"cmpfunc: %b"}
!1096 = distinct !{!1096, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1097 = distinct !{!1097, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1098 = !{!1099, !1101, !1103}
!1099 = distinct !{!1099, !1100, !"cmpfunc: %a"}
!1100 = distinct !{!1100, !"cmpfunc"}
!1101 = distinct !{!1101, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1102 = distinct !{!1102, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1103 = distinct !{!1103, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1104 = distinct !{!1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1105 = !{!1106, !1107, !1108, !1074}
!1106 = distinct !{!1106, !1100, !"cmpfunc: %b"}
!1107 = distinct !{!1107, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1108 = distinct !{!1108, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %a.0"}
!1111 = distinct !{!1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E"}
!1112 = !{!1074, !1113}
!1113 = distinct !{!1113, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17hb4c25ac60b7293cfE: %is_less"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8feb41e4d1a07ab5E: %b.0"}
!1116 = !{!1110, !1117}
!1117 = distinct !{!1117, !1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E: %self.0"}
!1118 = distinct !{!1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ad735bc1262c09E"}
!1119 = !{!1115, !1074, !1113}
!1120 = !{!1115, !1117}
!1121 = !{!1110, !1074, !1113}
!1122 = distinct !{!1122, !924, !925}
!1123 = distinct !{!1123, !925, !924}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E: %v.0"}
!1126 = distinct !{!1126, !"_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN4core5slice4sort6stable5merge5merge17h7a35d19739bc2910E: %scratch.0"}
!1129 = !{!1125, !1128}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1132 = distinct !{!1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1137 = distinct !{!1137, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"cmpfunc: %a"}
!1142 = distinct !{!1142, !"cmpfunc"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"cmpfunc: %b"}
!1145 = !{!1141, !1136, !1131, !1128}
!1146 = !{!1144, !1139, !1134, !1147, !1125}
!1147 = distinct !{!1147, !1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h034f5b49729783a3E: %self"}
!1148 = distinct !{!1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h034f5b49729783a3E"}
!1149 = !{!1144, !1139, !1134, !1125}
!1150 = !{!1141, !1136, !1131, !1147, !1128}
!1151 = !{!1147, !1128}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1154 = distinct !{!1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1159 = distinct !{!1159, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"cmpfunc: %a"}
!1164 = distinct !{!1164, !"cmpfunc"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"cmpfunc: %b"}
!1167 = !{!1163, !1158, !1153, !1125}
!1168 = !{!1166, !1161, !1156, !1169, !1128}
!1169 = distinct !{!1169, !1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h56ee95950132c326E: %self"}
!1170 = distinct !{!1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h56ee95950132c326E"}
!1171 = !{!1166, !1161, !1156, !1128}
!1172 = !{!1163, !1158, !1153, !1169, !1125}
!1173 = !{!1169, !1128}
!1174 = !{!1175, !1177}
!1175 = distinct !{!1175, !1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E: %self"}
!1176 = distinct !{!1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3bb4c349d49ea810E"}
!1177 = distinct !{!1177, !1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E: %_1"}
!1178 = distinct !{!1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2233ab09ffa4a131E"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6587b37c286c4e41E: %v.0"}
!1181 = distinct !{!1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6587b37c286c4e41E"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6587b37c286c4e41E: %scratch.0"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1191 = distinct !{!1191, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"cmpfunc: %a"}
!1196 = distinct !{!1196, !"cmpfunc"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"cmpfunc: %b"}
!1199 = !{!1195, !1190, !1185, !1180}
!1200 = !{!1198, !1193, !1188, !1183, !1201}
!1201 = distinct !{!1201, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6587b37c286c4e41E: %is_less"}
!1202 = !{!1198, !1193, !1188, !1180}
!1203 = !{!1195, !1190, !1185, !1183, !1201}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1206 = distinct !{!1206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1211 = distinct !{!1211, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"cmpfunc: %a"}
!1216 = distinct !{!1216, !"cmpfunc"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1216, !"cmpfunc: %b"}
!1219 = !{!1215, !1210, !1205, !1180}
!1220 = !{!1218, !1213, !1208, !1183, !1201}
!1221 = !{!1218, !1213, !1208, !1180}
!1222 = !{!1215, !1210, !1205, !1183, !1201}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1225 = distinct !{!1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1230 = distinct !{!1230, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"cmpfunc: %a"}
!1235 = distinct !{!1235, !"cmpfunc"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"cmpfunc: %b"}
!1238 = !{!1234, !1229, !1224, !1180}
!1239 = !{!1237, !1232, !1227, !1183, !1201}
!1240 = !{!1237, !1232, !1227, !1180}
!1241 = !{!1234, !1229, !1224, !1183, !1201}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1244 = distinct !{!1244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1249, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1249 = distinct !{!1249, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1249, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"cmpfunc: %a"}
!1254 = distinct !{!1254, !"cmpfunc"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1254, !"cmpfunc: %b"}
!1257 = !{!1253, !1248, !1243, !1180}
!1258 = !{!1256, !1251, !1246, !1183, !1201}
!1259 = !{!1256, !1251, !1246, !1180}
!1260 = !{!1253, !1248, !1243, !1183, !1201}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1263 = distinct !{!1263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1268 = distinct !{!1268, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"cmpfunc: %a"}
!1273 = distinct !{!1273, !"cmpfunc"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1273, !"cmpfunc: %b"}
!1276 = !{!1272, !1267, !1262, !1180}
!1277 = !{!1275, !1270, !1265, !1183, !1201}
!1278 = !{!1275, !1270, !1265, !1180}
!1279 = !{!1272, !1267, !1262, !1183, !1201}
!1280 = !{!1180, !1201}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1283 = distinct !{!1283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1288 = distinct !{!1288, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"cmpfunc: %a"}
!1293 = distinct !{!1293, !"cmpfunc"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"cmpfunc: %b"}
!1296 = !{!1292, !1287, !1282, !1180}
!1297 = !{!1295, !1290, !1285, !1183, !1201}
!1298 = !{!1295, !1290, !1285, !1180}
!1299 = !{!1292, !1287, !1282, !1183, !1201}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1302 = distinct !{!1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1307 = distinct !{!1307, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"cmpfunc: %a"}
!1312 = distinct !{!1312, !"cmpfunc"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"cmpfunc: %b"}
!1315 = !{!1311, !1306, !1301, !1180}
!1316 = !{!1314, !1309, !1304, !1183, !1201}
!1317 = !{!1314, !1309, !1304, !1180}
!1318 = !{!1311, !1306, !1301, !1183, !1201}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1321 = distinct !{!1321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1326 = distinct !{!1326, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"cmpfunc: %a"}
!1331 = distinct !{!1331, !"cmpfunc"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"cmpfunc: %b"}
!1334 = !{!1330, !1325, !1320, !1180}
!1335 = !{!1333, !1328, !1323, !1183, !1201}
!1336 = !{!1333, !1328, !1323, !1180}
!1337 = !{!1330, !1325, !1320, !1183, !1201}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1340 = distinct !{!1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1340, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1345 = distinct !{!1345, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1345, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"cmpfunc: %a"}
!1350 = distinct !{!1350, !"cmpfunc"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1350, !"cmpfunc: %b"}
!1353 = !{!1349, !1344, !1339, !1180}
!1354 = !{!1352, !1347, !1342, !1183, !1201}
!1355 = !{!1352, !1347, !1342, !1180}
!1356 = !{!1349, !1344, !1339, !1183, !1201}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1359 = distinct !{!1359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1364 = distinct !{!1364, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1364, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"cmpfunc: %a"}
!1369 = distinct !{!1369, !"cmpfunc"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1369, !"cmpfunc: %b"}
!1372 = !{!1368, !1363, !1358, !1180}
!1373 = !{!1371, !1366, !1361, !1183, !1201}
!1374 = !{!1371, !1366, !1361, !1180}
!1375 = !{!1368, !1363, !1358, !1183, !1201}
!1376 = !{!1183, !1201}
!1377 = !{!1378, !1380, !1382, !1183}
!1378 = distinct !{!1378, !1379, !"cmpfunc: %b"}
!1379 = distinct !{!1379, !"cmpfunc"}
!1380 = distinct !{!1380, !1381, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1381 = distinct !{!1381, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1382 = distinct !{!1382, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1383 = distinct !{!1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1384 = !{!1385, !1386, !1387, !1180, !1201}
!1385 = distinct !{!1385, !1379, !"cmpfunc: %a"}
!1386 = distinct !{!1386, !1381, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1387 = distinct !{!1387, !1383, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1388 = !{!1389, !1391, !1393, !1183}
!1389 = distinct !{!1389, !1390, !"cmpfunc: %b"}
!1390 = distinct !{!1390, !"cmpfunc"}
!1391 = distinct !{!1391, !1392, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1392 = distinct !{!1392, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1393 = distinct !{!1393, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1394 = distinct !{!1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1395 = !{!1396, !1397, !1398, !1180, !1201}
!1396 = distinct !{!1396, !1390, !"cmpfunc: %a"}
!1397 = distinct !{!1397, !1392, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1398 = distinct !{!1398, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1399 = !{!1400, !1402, !1180, !1201}
!1400 = distinct !{!1400, !1401, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!1401 = distinct !{!1401, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!1402 = distinct !{!1402, !1403, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!1403 = distinct !{!1403, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1406, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E: %v.0"}
!1406 = distinct !{!1406, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hde4eaa07d27e1786E"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1409 = distinct !{!1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1414 = distinct !{!1414, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E: %_0"}
!1417 = distinct !{!1417, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1414, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"cmpfunc: %a"}
!1422 = distinct !{!1422, !"cmpfunc"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1422, !"cmpfunc: %b"}
!1425 = !{!1421, !1413, !1408, !1405, !1183}
!1426 = !{!1424, !1419, !1411, !1416, !1180, !1201}
!1427 = !{!1424, !1419, !1411, !1405, !1183}
!1428 = !{!1421, !1413, !1408, !1416, !1180, !1201}
!1429 = !{!1416, !1430, !1405, !1183, !1201}
!1430 = distinct !{!1430, !1417, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h11b71492abcca4f7E: %is_less"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1433 = distinct !{!1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1438 = distinct !{!1438, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E: %_0"}
!1441 = distinct !{!1441, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1438, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"cmpfunc: %a"}
!1446 = distinct !{!1446, !"cmpfunc"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1446, !"cmpfunc: %b"}
!1449 = !{!1445, !1437, !1432, !1405, !1183}
!1450 = !{!1448, !1443, !1435, !1440, !1180, !1201}
!1451 = !{!1448, !1443, !1435, !1405, !1183}
!1452 = !{!1445, !1437, !1432, !1440, !1180, !1201}
!1453 = !{!1440, !1454, !1405, !1183, !1201}
!1454 = distinct !{!1454, !1441, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h4614d19d87c0c933E: %is_less"}
!1455 = !{!1405, !1183}
!1456 = !{!1405, !1183, !1201}
!1457 = !{!1180, !1183, !1201}
!1458 = !{!1180, !1183}
!1459 = !{!1460, !1462, !1201}
!1460 = distinct !{!1460, !1461, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!1461 = distinct !{!1461, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!1462 = distinct !{!1462, !1463, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!1463 = distinct !{!1463, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1466 = distinct !{!1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1471 = distinct !{!1471, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core5slice4sort6shared5pivot7median317h27251eb7d7488b63E: %c"}
!1474 = distinct !{!1474, !"_ZN4core5slice4sort6shared5pivot7median317h27251eb7d7488b63E"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1471, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"cmpfunc: %a"}
!1479 = distinct !{!1479, !"cmpfunc"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"cmpfunc: %b"}
!1482 = !{!1478, !1470, !1465, !1483}
!1483 = distinct !{!1483, !1484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha9979616bb168de7E: %v.0"}
!1484 = distinct !{!1484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha9979616bb168de7E"}
!1485 = !{!1481, !1476, !1468, !1473, !1486}
!1486 = distinct !{!1486, !1484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha9979616bb168de7E: %is_less"}
!1487 = !{!1481, !1476, !1468, !1483}
!1488 = !{!1478, !1470, !1465, !1473, !1486}
!1489 = !{!1490, !1492, !1494, !1483}
!1490 = distinct !{!1490, !1491, !"cmpfunc: %b"}
!1491 = distinct !{!1491, !"cmpfunc"}
!1492 = distinct !{!1492, !1493, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1493 = distinct !{!1493, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1494 = distinct !{!1494, !1495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1495 = distinct !{!1495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1496 = !{!1497, !1498, !1499, !1486}
!1497 = distinct !{!1497, !1491, !"cmpfunc: %a"}
!1498 = distinct !{!1498, !1493, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1499 = distinct !{!1499, !1495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1500 = !{!1501, !1503, !1505}
!1501 = distinct !{!1501, !1502, !"cmpfunc: %a"}
!1502 = distinct !{!1502, !"cmpfunc"}
!1503 = distinct !{!1503, !1504, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1504 = distinct !{!1504, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1505 = distinct !{!1505, !1506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1506 = distinct !{!1506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1507 = !{!1508, !1509, !1510}
!1508 = distinct !{!1508, !1502, !"cmpfunc: %b"}
!1509 = distinct !{!1509, !1504, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1510 = distinct !{!1510, !1506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c5c60c1b8efda82E: %v.0"}
!1513 = distinct !{!1513, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c5c60c1b8efda82E"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1513, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h1c5c60c1b8efda82E: %scratch.0"}
!1516 = !{!1517, !1519, !1521, !1512}
!1517 = distinct !{!1517, !1518, !"cmpfunc: %b"}
!1518 = distinct !{!1518, !"cmpfunc"}
!1519 = distinct !{!1519, !1520, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1520 = distinct !{!1520, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1521 = distinct !{!1521, !1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1522 = distinct !{!1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1523 = !{!1524, !1525, !1526, !1515}
!1524 = distinct !{!1524, !1518, !"cmpfunc: %a"}
!1525 = distinct !{!1525, !1520, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1526 = distinct !{!1526, !1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1527 = !{!1526}
!1528 = !{!1521}
!1529 = !{!1525}
!1530 = !{!1519}
!1531 = !{!1524}
!1532 = !{!1517}
!1533 = !{!1524, !1525, !1526, !1512}
!1534 = !{!1517, !1519, !1521, !1515}
!1535 = !{!1536, !1512}
!1536 = distinct !{!1536, !1537, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1537 = distinct !{!1537, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1538 = !{!1539, !1541, !1543, !1512}
!1539 = distinct !{!1539, !1540, !"cmpfunc: %a"}
!1540 = distinct !{!1540, !"cmpfunc"}
!1541 = distinct !{!1541, !1542, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1542 = distinct !{!1542, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1543 = distinct !{!1543, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1544 = distinct !{!1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1545 = !{!1546, !1547, !1548, !1515}
!1546 = distinct !{!1546, !1540, !"cmpfunc: %b"}
!1547 = distinct !{!1547, !1542, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1548 = distinct !{!1548, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1549 = !{!1550, !1512}
!1550 = distinct !{!1550, !1551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1551 = distinct !{!1551, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1552 = !{!1553, !1555, !1557, !1512}
!1553 = distinct !{!1553, !1554, !"cmpfunc: %a"}
!1554 = distinct !{!1554, !"cmpfunc"}
!1555 = distinct !{!1555, !1556, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1556 = distinct !{!1556, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1557 = distinct !{!1557, !1558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1558 = distinct !{!1558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1559 = !{!1560, !1561, !1562, !1515}
!1560 = distinct !{!1560, !1554, !"cmpfunc: %b"}
!1561 = distinct !{!1561, !1556, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1562 = distinct !{!1562, !1558, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1563 = !{!1564, !1512}
!1564 = distinct !{!1564, !1565, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1565 = distinct !{!1565, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1566 = !{!1567, !1569, !1571, !1512}
!1567 = distinct !{!1567, !1568, !"cmpfunc: %a"}
!1568 = distinct !{!1568, !"cmpfunc"}
!1569 = distinct !{!1569, !1570, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1570 = distinct !{!1570, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1571 = distinct !{!1571, !1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1572 = distinct !{!1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1573 = !{!1574, !1575, !1576, !1515}
!1574 = distinct !{!1574, !1568, !"cmpfunc: %b"}
!1575 = distinct !{!1575, !1570, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1576 = distinct !{!1576, !1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1577 = !{!1578, !1512}
!1578 = distinct !{!1578, !1579, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1579 = distinct !{!1579, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1580 = !{!1581, !1583, !1585, !1512}
!1581 = distinct !{!1581, !1582, !"cmpfunc: %b"}
!1582 = distinct !{!1582, !"cmpfunc"}
!1583 = distinct !{!1583, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1584 = distinct !{!1584, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1585 = distinct !{!1585, !1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1586 = distinct !{!1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1587 = !{!1588, !1589, !1590, !1515}
!1588 = distinct !{!1588, !1582, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1590 = distinct !{!1590, !1586, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1591 = !{!1590}
!1592 = !{!1585}
!1593 = !{!1589}
!1594 = !{!1583}
!1595 = !{!1588}
!1596 = !{!1581}
!1597 = !{!1588, !1589, !1590, !1512}
!1598 = !{!1581, !1583, !1585, !1515}
!1599 = !{!1600, !1512}
!1600 = distinct !{!1600, !1601, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1601 = distinct !{!1601, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1602 = !{!1603, !1515}
!1603 = distinct !{!1603, !1604, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1604 = distinct !{!1604, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1605 = !{!1603, !1512}
!1606 = !{!1512, !1515}
!1607 = distinct !{!1607, !924, !925}
!1608 = distinct !{!1608, !925, !924}
!1609 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1610 = !{!1611, !1613}
!1611 = distinct !{!1611, !1612, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %pair"}
!1612 = distinct !{!1612, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE"}
!1613 = distinct !{!1613, !1612, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %self.0"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1616, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E: %v.0"}
!1616 = distinct !{!1616, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1616, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hbceea18216460ca6E: %scratch.0"}
!1619 = !{!1620, !1622, !1624, !1626, !1615}
!1620 = distinct !{!1620, !1621, !"cmpfunc: %a"}
!1621 = distinct !{!1621, !"cmpfunc"}
!1622 = distinct !{!1622, !1623, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1623 = distinct !{!1623, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1624 = distinct !{!1624, !1625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1625 = distinct !{!1625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1626 = distinct !{!1626, !1627, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %b"}
!1627 = distinct !{!1627, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE"}
!1628 = !{!1629, !1630, !1631, !1632, !1618}
!1629 = distinct !{!1629, !1621, !"cmpfunc: %b"}
!1630 = distinct !{!1630, !1623, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1631 = distinct !{!1631, !1625, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1632 = distinct !{!1632, !1627, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %a"}
!1633 = !{!1632}
!1634 = !{!1626}
!1635 = !{!1624}
!1636 = !{!1631}
!1637 = !{!1622}
!1638 = !{!1630}
!1639 = !{!1620}
!1640 = !{!1629}
!1641 = !{!1629, !1630, !1631, !1632, !1615}
!1642 = !{!1620, !1622, !1624, !1626, !1618}
!1643 = !{!1644, !1615}
!1644 = distinct !{!1644, !1645, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1645 = distinct !{!1645, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1646 = !{!1647, !1649, !1651, !1653, !1615}
!1647 = distinct !{!1647, !1648, !"cmpfunc: %b"}
!1648 = distinct !{!1648, !"cmpfunc"}
!1649 = distinct !{!1649, !1650, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1650 = distinct !{!1650, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1651 = distinct !{!1651, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1652 = distinct !{!1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1653 = distinct !{!1653, !1654, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %a"}
!1654 = distinct !{!1654, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE"}
!1655 = !{!1656, !1657, !1658, !1659, !1618}
!1656 = distinct !{!1656, !1648, !"cmpfunc: %a"}
!1657 = distinct !{!1657, !1650, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1658 = distinct !{!1658, !1652, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1659 = distinct !{!1659, !1654, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %b"}
!1660 = !{!1661, !1615}
!1661 = distinct !{!1661, !1662, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1662 = distinct !{!1662, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1663 = !{!1664, !1666, !1668, !1670, !1615}
!1664 = distinct !{!1664, !1665, !"cmpfunc: %b"}
!1665 = distinct !{!1665, !"cmpfunc"}
!1666 = distinct !{!1666, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1667 = distinct !{!1667, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1670 = distinct !{!1670, !1671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %a"}
!1671 = distinct !{!1671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE"}
!1672 = !{!1673, !1674, !1675, !1676, !1618}
!1673 = distinct !{!1673, !1665, !"cmpfunc: %a"}
!1674 = distinct !{!1674, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1675 = distinct !{!1675, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1676 = distinct !{!1676, !1671, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %b"}
!1677 = !{!1678, !1615}
!1678 = distinct !{!1678, !1679, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1679 = distinct !{!1679, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1680 = !{!1681, !1683, !1685, !1687, !1615}
!1681 = distinct !{!1681, !1682, !"cmpfunc: %b"}
!1682 = distinct !{!1682, !"cmpfunc"}
!1683 = distinct !{!1683, !1684, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1684 = distinct !{!1684, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1685 = distinct !{!1685, !1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1686 = distinct !{!1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1687 = distinct !{!1687, !1688, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %a"}
!1688 = distinct !{!1688, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE"}
!1689 = !{!1690, !1691, !1692, !1693, !1618}
!1690 = distinct !{!1690, !1682, !"cmpfunc: %a"}
!1691 = distinct !{!1691, !1684, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1692 = distinct !{!1692, !1686, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1693 = distinct !{!1693, !1688, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %b"}
!1694 = !{!1695, !1615}
!1695 = distinct !{!1695, !1696, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1696 = distinct !{!1696, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1697 = !{!1698, !1700, !1702, !1704, !1615}
!1698 = distinct !{!1698, !1699, !"cmpfunc: %a"}
!1699 = distinct !{!1699, !"cmpfunc"}
!1700 = distinct !{!1700, !1701, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!1701 = distinct !{!1701, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!1702 = distinct !{!1702, !1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!1703 = distinct !{!1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!1704 = distinct !{!1704, !1705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %b"}
!1705 = distinct !{!1705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE"}
!1706 = !{!1707, !1708, !1709, !1710, !1618}
!1707 = distinct !{!1707, !1699, !"cmpfunc: %b"}
!1708 = distinct !{!1708, !1701, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!1709 = distinct !{!1709, !1703, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!1710 = distinct !{!1710, !1705, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h337ab8786f8a08bbE: %a"}
!1711 = !{!1710}
!1712 = !{!1704}
!1713 = !{!1702}
!1714 = !{!1709}
!1715 = !{!1700}
!1716 = !{!1708}
!1717 = !{!1698}
!1718 = !{!1707}
!1719 = !{!1707, !1708, !1709, !1710, !1615}
!1720 = !{!1698, !1700, !1702, !1704, !1618}
!1721 = !{!1722, !1615}
!1722 = distinct !{!1722, !1723, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1723 = distinct !{!1723, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1724 = !{!1725, !1618}
!1725 = distinct !{!1725, !1726, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!1726 = distinct !{!1726, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!1727 = !{!1725, !1615}
!1728 = !{!1615, !1618}
!1729 = distinct !{!1729, !924, !925}
!1730 = distinct !{!1730, !925, !924}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1733, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h4b05c747e3217d81E: %v.0"}
!1733 = distinct !{!1733, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h4b05c747e3217d81E"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1733, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h4b05c747e3217d81E: %scratch.0"}
!1736 = !{!1737}
!1737 = distinct !{!1737, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1738 = distinct !{!1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1738, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1741 = !{!1742}
!1742 = distinct !{!1742, !1743, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1743 = distinct !{!1743, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1744 = !{!1745}
!1745 = distinct !{!1745, !1743, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1746 = !{!1745, !1740, !1732}
!1747 = !{!1742, !1737, !1735, !1748}
!1748 = distinct !{!1748, !1733, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h4b05c747e3217d81E: %is_less"}
!1749 = !{!1742, !1737, !1732}
!1750 = !{!1745, !1740, !1735, !1748}
!1751 = !{!1752}
!1752 = distinct !{!1752, !1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1753 = distinct !{!1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1753, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1758 = distinct !{!1758, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1758, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1761 = !{!1760, !1755, !1732}
!1762 = !{!1757, !1752, !1735, !1748}
!1763 = !{!1757, !1752, !1732}
!1764 = !{!1760, !1755, !1735, !1748}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1767 = distinct !{!1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1767, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1772, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1772 = distinct !{!1772, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1773 = !{!1774}
!1774 = distinct !{!1774, !1772, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1775 = !{!1774, !1769, !1732}
!1776 = !{!1771, !1766, !1735, !1748}
!1777 = !{!1771, !1766, !1732}
!1778 = !{!1774, !1769, !1735, !1748}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1781 = distinct !{!1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1786 = distinct !{!1786, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1786, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1789 = !{!1788, !1783, !1732}
!1790 = !{!1785, !1780, !1735, !1748}
!1791 = !{!1785, !1780, !1732}
!1792 = !{!1788, !1783, !1735, !1748}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1795 = distinct !{!1795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1798 = !{!1799}
!1799 = distinct !{!1799, !1800, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1800 = distinct !{!1800, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1800, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1803 = !{!1802, !1797, !1732}
!1804 = !{!1799, !1794, !1735, !1748}
!1805 = !{!1799, !1794, !1732}
!1806 = !{!1802, !1797, !1735, !1748}
!1807 = !{!1732, !1748}
!1808 = !{!1809}
!1809 = distinct !{!1809, !1810, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1810 = distinct !{!1810, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1811 = !{!1812}
!1812 = distinct !{!1812, !1810, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1813 = !{!1814}
!1814 = distinct !{!1814, !1815, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1815 = distinct !{!1815, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1815, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1818 = !{!1817, !1812, !1732}
!1819 = !{!1814, !1809, !1735, !1748}
!1820 = !{!1814, !1809, !1732}
!1821 = !{!1817, !1812, !1735, !1748}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1824 = distinct !{!1824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1825 = !{!1826}
!1826 = distinct !{!1826, !1824, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1827 = !{!1828}
!1828 = distinct !{!1828, !1829, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1829 = distinct !{!1829, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1830 = !{!1831}
!1831 = distinct !{!1831, !1829, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1832 = !{!1831, !1826, !1732}
!1833 = !{!1828, !1823, !1735, !1748}
!1834 = !{!1828, !1823, !1732}
!1835 = !{!1831, !1826, !1735, !1748}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1838 = distinct !{!1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1843 = distinct !{!1843, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1843, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1846 = !{!1845, !1840, !1732}
!1847 = !{!1842, !1837, !1735, !1748}
!1848 = !{!1842, !1837, !1732}
!1849 = !{!1845, !1840, !1735, !1748}
!1850 = !{!1851}
!1851 = distinct !{!1851, !1852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1852 = distinct !{!1852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1857, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1857 = distinct !{!1857, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1858 = !{!1859}
!1859 = distinct !{!1859, !1857, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1860 = !{!1859, !1854, !1732}
!1861 = !{!1856, !1851, !1735, !1748}
!1862 = !{!1856, !1851, !1732}
!1863 = !{!1859, !1854, !1735, !1748}
!1864 = !{!1865}
!1865 = distinct !{!1865, !1866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1866 = distinct !{!1866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1867 = !{!1868}
!1868 = distinct !{!1868, !1866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1869 = !{!1870}
!1870 = distinct !{!1870, !1871, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1871 = distinct !{!1871, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1871, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1874 = !{!1873, !1868, !1732}
!1875 = !{!1870, !1865, !1735, !1748}
!1876 = !{!1870, !1865, !1732}
!1877 = !{!1873, !1868, !1735, !1748}
!1878 = !{!1735, !1748}
!1879 = !{!1880, !1882, !1735}
!1880 = distinct !{!1880, !1881, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1881 = distinct !{!1881, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1882 = distinct !{!1882, !1883, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1883 = distinct !{!1883, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1884 = !{!1885, !1886, !1732, !1748}
!1885 = distinct !{!1885, !1881, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1886 = distinct !{!1886, !1883, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1887 = !{!1888, !1890, !1735}
!1888 = distinct !{!1888, !1889, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1889 = distinct !{!1889, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1890 = distinct !{!1890, !1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1891 = distinct !{!1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1892 = !{!1893, !1894, !1732, !1748}
!1893 = distinct !{!1893, !1889, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1894 = distinct !{!1894, !1891, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1895 = !{!1896, !1898, !1732, !1748}
!1896 = distinct !{!1896, !1897, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!1897 = distinct !{!1897, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!1898 = distinct !{!1898, !1899, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!1899 = distinct !{!1899, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!1900 = !{!1901}
!1901 = distinct !{!1901, !1902, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE: %v.0"}
!1902 = distinct !{!1902, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20e798fe82fa118bE"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1905 = distinct !{!1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1905, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1910, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1910 = distinct !{!1910, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1913, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E: %_0"}
!1913 = distinct !{!1913, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1910, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1916 = !{!1915, !1907, !1901, !1735}
!1917 = !{!1909, !1904, !1912, !1732, !1748}
!1918 = !{!1909, !1904, !1901, !1735}
!1919 = !{!1915, !1907, !1912, !1732, !1748}
!1920 = !{!1912, !1921, !1901, !1735, !1748}
!1921 = distinct !{!1921, !1913, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7851854826df1778E: %is_less"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1924 = distinct !{!1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1924, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1929, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1929 = distinct !{!1929, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1932, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E: %_0"}
!1932 = distinct !{!1932, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1929, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1935 = !{!1934, !1926, !1901, !1735}
!1936 = !{!1928, !1923, !1931, !1732, !1748}
!1937 = !{!1928, !1923, !1901, !1735}
!1938 = !{!1934, !1926, !1931, !1732, !1748}
!1939 = !{!1931, !1940, !1901, !1735, !1748}
!1940 = distinct !{!1940, !1932, !"_ZN4core5slice4sort6shared9smallsort10merge_down17he74df476eea1d476E: %is_less"}
!1941 = !{!1901, !1735}
!1942 = !{!1901, !1735, !1748}
!1943 = !{!1732, !1735, !1748}
!1944 = !{!1732, !1735}
!1945 = !{!1946, !1948, !1748}
!1946 = distinct !{!1946, !1947, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!1947 = distinct !{!1947, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!1948 = distinct !{!1948, !1949, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!1949 = distinct !{!1949, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!1950 = !{!1951}
!1951 = distinct !{!1951, !1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1952 = distinct !{!1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1957 = distinct !{!1957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN4core5slice4sort6shared5pivot7median317h5b7103c4e7a6e636E: %c"}
!1960 = distinct !{!1960, !"_ZN4core5slice4sort6shared5pivot7median317h5b7103c4e7a6e636E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1957, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1963 = !{!1962, !1954, !1964}
!1964 = distinct !{!1964, !1965, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0eaa7fc668628ab9E: %v.0"}
!1965 = distinct !{!1965, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0eaa7fc668628ab9E"}
!1966 = !{!1956, !1951, !1959, !1967}
!1967 = distinct !{!1967, !1965, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h0eaa7fc668628ab9E: %is_less"}
!1968 = !{!1956, !1951, !1964}
!1969 = !{!1962, !1954, !1959, !1967}
!1970 = !{!1971, !1973, !1964}
!1971 = distinct !{!1971, !1972, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1972 = distinct !{!1972, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1973 = distinct !{!1973, !1974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1974 = distinct !{!1974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1975 = !{!1976, !1977, !1967}
!1976 = distinct !{!1976, !1972, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1977 = distinct !{!1977, !1974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1978 = !{!1979, !1981}
!1979 = distinct !{!1979, !1980, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1980 = distinct !{!1980, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1981 = distinct !{!1981, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1982 = distinct !{!1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1983 = !{!1984, !1985}
!1984 = distinct !{!1984, !1980, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1985 = distinct !{!1985, !1982, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4a226324ca3d0f76E: %v.0"}
!1988 = distinct !{!1988, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4a226324ca3d0f76E"}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1988, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4a226324ca3d0f76E: %scratch.0"}
!1991 = !{!1992, !1994, !1987}
!1992 = distinct !{!1992, !1993, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!1993 = distinct !{!1993, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!1994 = distinct !{!1994, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!1995 = distinct !{!1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!1996 = !{!1997, !1998, !1990}
!1997 = distinct !{!1997, !1993, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!1998 = distinct !{!1998, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!1999 = !{!1998}
!2000 = !{!1994}
!2001 = !{!1997}
!2002 = !{!1992}
!2003 = !{!1997, !1998, !1987}
!2004 = !{!1992, !1994, !1990}
!2005 = !{!2006, !1987}
!2006 = distinct !{!2006, !2007, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2007 = distinct !{!2007, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2008 = !{!2009, !2011, !1987}
!2009 = distinct !{!2009, !2010, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2010 = distinct !{!2010, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2011 = distinct !{!2011, !2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2012 = distinct !{!2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2013 = !{!2014, !2015, !1990}
!2014 = distinct !{!2014, !2010, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2015 = distinct !{!2015, !2012, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2016 = !{!2017, !1987}
!2017 = distinct !{!2017, !2018, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2018 = distinct !{!2018, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2019 = !{!2020, !2022, !1987}
!2020 = distinct !{!2020, !2021, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2021 = distinct !{!2021, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2022 = distinct !{!2022, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2023 = distinct !{!2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2024 = !{!2025, !2026, !1990}
!2025 = distinct !{!2025, !2021, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2026 = distinct !{!2026, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2027 = !{!2028, !1987}
!2028 = distinct !{!2028, !2029, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2029 = distinct !{!2029, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2030 = !{!2031, !2033, !1987}
!2031 = distinct !{!2031, !2032, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2032 = distinct !{!2032, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2033 = distinct !{!2033, !2034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2034 = distinct !{!2034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2035 = !{!2036, !2037, !1990}
!2036 = distinct !{!2036, !2032, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2037 = distinct !{!2037, !2034, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2038 = !{!2039, !1987}
!2039 = distinct !{!2039, !2040, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2040 = distinct !{!2040, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2041 = !{!2042, !2044, !1987}
!2042 = distinct !{!2042, !2043, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2043 = distinct !{!2043, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2044 = distinct !{!2044, !2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2045 = distinct !{!2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2046 = !{!2047, !2048, !1990}
!2047 = distinct !{!2047, !2043, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2048 = distinct !{!2048, !2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2049 = !{!2048}
!2050 = !{!2044}
!2051 = !{!2047}
!2052 = !{!2042}
!2053 = !{!2047, !2048, !1987}
!2054 = !{!2042, !2044, !1990}
!2055 = !{!2056, !1987}
!2056 = distinct !{!2056, !2057, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2057 = distinct !{!2057, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2058 = !{!2059, !1990}
!2059 = distinct !{!2059, !2060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2060 = distinct !{!2060, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2061 = !{!2059, !1987}
!2062 = !{!1987, !1990}
!2063 = distinct !{!2063, !924, !925}
!2064 = distinct !{!2064, !925, !924}
!2065 = !{!2066, !2068}
!2066 = distinct !{!2066, !2067, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %pair"}
!2067 = distinct !{!2067, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE"}
!2068 = distinct !{!2068, !2067, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %self.0"}
!2069 = !{!2070}
!2070 = distinct !{!2070, !2071, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE: %v.0"}
!2071 = distinct !{!2071, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE"}
!2072 = !{!2073}
!2073 = distinct !{!2073, !2071, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e2c6be3eba0b7fbE: %scratch.0"}
!2074 = !{!2075, !2077, !2079, !2070}
!2075 = distinct !{!2075, !2076, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2076 = distinct !{!2076, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2077 = distinct !{!2077, !2078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2078 = distinct !{!2078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2079 = distinct !{!2079, !2080, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %b"}
!2080 = distinct !{!2080, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE"}
!2081 = !{!2082, !2083, !2084, !2073}
!2082 = distinct !{!2082, !2076, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2083 = distinct !{!2083, !2078, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2084 = distinct !{!2084, !2080, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %a"}
!2085 = !{!2084}
!2086 = !{!2079}
!2087 = !{!2077}
!2088 = !{!2083}
!2089 = !{!2075}
!2090 = !{!2082}
!2091 = !{!2082, !2083, !2084, !2070}
!2092 = !{!2075, !2077, !2079, !2073}
!2093 = !{!2094, !2070}
!2094 = distinct !{!2094, !2095, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2095 = distinct !{!2095, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2096 = !{!2097, !2099, !2101, !2070}
!2097 = distinct !{!2097, !2098, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2098 = distinct !{!2098, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2099 = distinct !{!2099, !2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2100 = distinct !{!2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2101 = distinct !{!2101, !2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %a"}
!2102 = distinct !{!2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE"}
!2103 = !{!2104, !2105, !2106, !2073}
!2104 = distinct !{!2104, !2098, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2105 = distinct !{!2105, !2100, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2106 = distinct !{!2106, !2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %b"}
!2107 = !{!2108, !2070}
!2108 = distinct !{!2108, !2109, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2109 = distinct !{!2109, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2110 = !{!2111, !2113, !2115, !2070}
!2111 = distinct !{!2111, !2112, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2112 = distinct !{!2112, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2113 = distinct !{!2113, !2114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2114 = distinct !{!2114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2115 = distinct !{!2115, !2116, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %a"}
!2116 = distinct !{!2116, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE"}
!2117 = !{!2118, !2119, !2120, !2073}
!2118 = distinct !{!2118, !2112, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2119 = distinct !{!2119, !2114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2120 = distinct !{!2120, !2116, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %b"}
!2121 = !{!2122, !2070}
!2122 = distinct !{!2122, !2123, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2123 = distinct !{!2123, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2124 = !{!2125, !2127, !2129, !2070}
!2125 = distinct !{!2125, !2126, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2126 = distinct !{!2126, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2127 = distinct !{!2127, !2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2128 = distinct !{!2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2129 = distinct !{!2129, !2130, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %a"}
!2130 = distinct !{!2130, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE"}
!2131 = !{!2132, !2133, !2134, !2073}
!2132 = distinct !{!2132, !2126, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2133 = distinct !{!2133, !2128, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2134 = distinct !{!2134, !2130, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %b"}
!2135 = !{!2136, !2070}
!2136 = distinct !{!2136, !2137, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2137 = distinct !{!2137, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2138 = !{!2139, !2141, !2143, !2070}
!2139 = distinct !{!2139, !2140, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2140 = distinct !{!2140, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2141 = distinct !{!2141, !2142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2142 = distinct !{!2142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2143 = distinct !{!2143, !2144, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %b"}
!2144 = distinct !{!2144, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE"}
!2145 = !{!2146, !2147, !2148, !2073}
!2146 = distinct !{!2146, !2140, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2147 = distinct !{!2147, !2142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2148 = distinct !{!2148, !2144, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h4f2485f9b525aa3bE: %a"}
!2149 = !{!2148}
!2150 = !{!2143}
!2151 = !{!2141}
!2152 = !{!2147}
!2153 = !{!2139}
!2154 = !{!2146}
!2155 = !{!2146, !2147, !2148, !2070}
!2156 = !{!2139, !2141, !2143, !2073}
!2157 = !{!2158, !2070}
!2158 = distinct !{!2158, !2159, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2159 = distinct !{!2159, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2160 = !{!2161, !2073}
!2161 = distinct !{!2161, !2162, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2162 = distinct !{!2162, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2163 = !{!2161, !2070}
!2164 = !{!2070, !2073}
!2165 = distinct !{!2165, !924, !925}
!2166 = distinct !{!2166, !925, !924}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8b302e9d5af87055E: %v.0"}
!2169 = distinct !{!2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8b302e9d5af87055E"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8b302e9d5af87055E: %scratch.0"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2174 = distinct !{!2174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2179 = distinct !{!2179, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2179, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2182 = !{!2178, !2173, !2168}
!2183 = !{!2181, !2176, !2171, !2184}
!2184 = distinct !{!2184, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8b302e9d5af87055E: %is_less"}
!2185 = !{!2181, !2176, !2168}
!2186 = !{!2178, !2173, !2171, !2184}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2189 = distinct !{!2189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2194 = distinct !{!2194, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2197 = !{!2193, !2188, !2168}
!2198 = !{!2196, !2191, !2171, !2184}
!2199 = !{!2196, !2191, !2168}
!2200 = !{!2193, !2188, !2171, !2184}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2203 = distinct !{!2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2208, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2208 = distinct !{!2208, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2209 = !{!2210}
!2210 = distinct !{!2210, !2208, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2211 = !{!2207, !2202, !2168}
!2212 = !{!2210, !2205, !2171, !2184}
!2213 = !{!2210, !2205, !2168}
!2214 = !{!2207, !2202, !2171, !2184}
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2217 = distinct !{!2217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2218 = !{!2219}
!2219 = distinct !{!2219, !2217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2222, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2222 = distinct !{!2222, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2222, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2225 = !{!2221, !2216, !2168}
!2226 = !{!2224, !2219, !2171, !2184}
!2227 = !{!2224, !2219, !2168}
!2228 = !{!2221, !2216, !2171, !2184}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2231 = distinct !{!2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2236 = distinct !{!2236, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2239 = !{!2235, !2230, !2168}
!2240 = !{!2238, !2233, !2171, !2184}
!2241 = !{!2238, !2233, !2168}
!2242 = !{!2235, !2230, !2171, !2184}
!2243 = !{!2168, !2184}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2246 = distinct !{!2246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2251 = distinct !{!2251, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2251, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2254 = !{!2250, !2245, !2168}
!2255 = !{!2253, !2248, !2171, !2184}
!2256 = !{!2253, !2248, !2168}
!2257 = !{!2250, !2245, !2171, !2184}
!2258 = !{!2259}
!2259 = distinct !{!2259, !2260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2260 = distinct !{!2260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2260, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2265 = distinct !{!2265, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2265, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2268 = !{!2264, !2259, !2168}
!2269 = !{!2267, !2262, !2171, !2184}
!2270 = !{!2267, !2262, !2168}
!2271 = !{!2264, !2259, !2171, !2184}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2274 = distinct !{!2274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2275 = !{!2276}
!2276 = distinct !{!2276, !2274, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2279, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2279 = distinct !{!2279, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2280 = !{!2281}
!2281 = distinct !{!2281, !2279, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2282 = !{!2278, !2273, !2168}
!2283 = !{!2281, !2276, !2171, !2184}
!2284 = !{!2281, !2276, !2168}
!2285 = !{!2278, !2273, !2171, !2184}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2288 = distinct !{!2288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2288, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2293 = distinct !{!2293, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2293, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2296 = !{!2292, !2287, !2168}
!2297 = !{!2295, !2290, !2171, !2184}
!2298 = !{!2295, !2290, !2168}
!2299 = !{!2292, !2287, !2171, !2184}
!2300 = !{!2301}
!2301 = distinct !{!2301, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2302 = distinct !{!2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2303 = !{!2304}
!2304 = distinct !{!2304, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2305 = !{!2306}
!2306 = distinct !{!2306, !2307, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2307 = distinct !{!2307, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2308 = !{!2309}
!2309 = distinct !{!2309, !2307, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2310 = !{!2306, !2301, !2168}
!2311 = !{!2309, !2304, !2171, !2184}
!2312 = !{!2309, !2304, !2168}
!2313 = !{!2306, !2301, !2171, !2184}
!2314 = !{!2171, !2184}
!2315 = !{!2316, !2318, !2171}
!2316 = distinct !{!2316, !2317, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2317 = distinct !{!2317, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2318 = distinct !{!2318, !2319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2319 = distinct !{!2319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2320 = !{!2321, !2322, !2168, !2184}
!2321 = distinct !{!2321, !2317, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2322 = distinct !{!2322, !2319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2323 = !{!2324, !2326, !2171}
!2324 = distinct !{!2324, !2325, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2325 = distinct !{!2325, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2326 = distinct !{!2326, !2327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2327 = distinct !{!2327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2328 = !{!2329, !2330, !2168, !2184}
!2329 = distinct !{!2329, !2325, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2330 = distinct !{!2330, !2327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2331 = !{!2332, !2334, !2168, !2184}
!2332 = distinct !{!2332, !2333, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!2333 = distinct !{!2333, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!2334 = distinct !{!2334, !2335, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!2335 = distinct !{!2335, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2338, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E: %v.0"}
!2338 = distinct !{!2338, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hf4316ba30c2985f0E"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2341 = distinct !{!2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2346 = distinct !{!2346, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2347 = !{!2348}
!2348 = distinct !{!2348, !2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE: %_0"}
!2349 = distinct !{!2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE"}
!2350 = !{!2351}
!2351 = distinct !{!2351, !2346, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2352 = !{!2345, !2340, !2337, !2171}
!2353 = !{!2351, !2343, !2348, !2168, !2184}
!2354 = !{!2351, !2343, !2337, !2171}
!2355 = !{!2345, !2340, !2348, !2168, !2184}
!2356 = !{!2348, !2357, !2337, !2171, !2184}
!2357 = distinct !{!2357, !2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h682fb8e3d65e786bE: %is_less"}
!2358 = !{!2359}
!2359 = distinct !{!2359, !2360, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2360 = distinct !{!2360, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2361 = !{!2362}
!2362 = distinct !{!2362, !2360, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2365 = distinct !{!2365, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2366 = !{!2367}
!2367 = distinct !{!2367, !2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E: %_0"}
!2368 = distinct !{!2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2365, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2371 = !{!2364, !2359, !2337, !2171}
!2372 = !{!2370, !2362, !2367, !2168, !2184}
!2373 = !{!2370, !2362, !2337, !2171}
!2374 = !{!2364, !2359, !2367, !2168, !2184}
!2375 = !{!2367, !2376, !2337, !2171, !2184}
!2376 = distinct !{!2376, !2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h076e72e32fe1eeb0E: %is_less"}
!2377 = !{!2337, !2171}
!2378 = !{!2337, !2171, !2184}
!2379 = !{!2168, !2171, !2184}
!2380 = !{!2168, !2171}
!2381 = !{!2382, !2384, !2184}
!2382 = distinct !{!2382, !2383, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!2383 = distinct !{!2383, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!2384 = distinct !{!2384, !2385, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!2385 = distinct !{!2385, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2388 = distinct !{!2388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2389 = !{!2390}
!2390 = distinct !{!2390, !2388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2393 = distinct !{!2393, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"_ZN4core5slice4sort6shared5pivot7median317h0242c40efe540e90E: %c"}
!2396 = distinct !{!2396, !"_ZN4core5slice4sort6shared5pivot7median317h0242c40efe540e90E"}
!2397 = !{!2398}
!2398 = distinct !{!2398, !2393, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2399 = !{!2392, !2387, !2400}
!2400 = distinct !{!2400, !2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5a92b00876a7b5fE: %v.0"}
!2401 = distinct !{!2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5a92b00876a7b5fE"}
!2402 = !{!2398, !2390, !2395, !2403}
!2403 = distinct !{!2403, !2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5a92b00876a7b5fE: %is_less"}
!2404 = !{!2398, !2390, !2400}
!2405 = !{!2392, !2387, !2395, !2403}
!2406 = !{!2407, !2409, !2400}
!2407 = distinct !{!2407, !2408, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2408 = distinct !{!2408, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2409 = distinct !{!2409, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2410 = distinct !{!2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2411 = !{!2412, !2413, !2403}
!2412 = distinct !{!2412, !2408, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2413 = distinct !{!2413, !2410, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2414 = !{!2415, !2417}
!2415 = distinct !{!2415, !2416, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2416 = distinct !{!2416, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2417 = distinct !{!2417, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2418 = distinct !{!2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2419 = !{!2420, !2421}
!2420 = distinct !{!2420, !2416, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2421 = distinct !{!2421, !2418, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2422 = !{!2423}
!2423 = distinct !{!2423, !2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hfcc87f0134575525E: %v.0"}
!2424 = distinct !{!2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hfcc87f0134575525E"}
!2425 = !{!2426}
!2426 = distinct !{!2426, !2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hfcc87f0134575525E: %scratch.0"}
!2427 = !{!2428, !2430, !2423}
!2428 = distinct !{!2428, !2429, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2429 = distinct !{!2429, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2430 = distinct !{!2430, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2431 = distinct !{!2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2432 = !{!2433, !2434, !2426}
!2433 = distinct !{!2433, !2429, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2434 = distinct !{!2434, !2431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2435 = !{!2434}
!2436 = !{!2430}
!2437 = !{!2433}
!2438 = !{!2428}
!2439 = !{!2433, !2434, !2423}
!2440 = !{!2428, !2430, !2426}
!2441 = !{!2442, !2423}
!2442 = distinct !{!2442, !2443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2443 = distinct !{!2443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2444 = !{!2445, !2447, !2423}
!2445 = distinct !{!2445, !2446, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2446 = distinct !{!2446, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2447 = distinct !{!2447, !2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2448 = distinct !{!2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2449 = !{!2450, !2451, !2426}
!2450 = distinct !{!2450, !2446, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2451 = distinct !{!2451, !2448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2452 = !{!2453, !2423}
!2453 = distinct !{!2453, !2454, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2454 = distinct !{!2454, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2455 = !{!2456, !2458, !2423}
!2456 = distinct !{!2456, !2457, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2457 = distinct !{!2457, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2458 = distinct !{!2458, !2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2459 = distinct !{!2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2460 = !{!2461, !2462, !2426}
!2461 = distinct !{!2461, !2457, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2462 = distinct !{!2462, !2459, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2463 = !{!2464, !2423}
!2464 = distinct !{!2464, !2465, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2465 = distinct !{!2465, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2466 = !{!2467, !2469, !2423}
!2467 = distinct !{!2467, !2468, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2468 = distinct !{!2468, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2469 = distinct !{!2469, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2470 = distinct !{!2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2471 = !{!2472, !2473, !2426}
!2472 = distinct !{!2472, !2468, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2473 = distinct !{!2473, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2474 = !{!2475, !2423}
!2475 = distinct !{!2475, !2476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2476 = distinct !{!2476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2477 = !{!2478, !2480, !2423}
!2478 = distinct !{!2478, !2479, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2479 = distinct !{!2479, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2480 = distinct !{!2480, !2481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2481 = distinct !{!2481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2482 = !{!2483, !2484, !2426}
!2483 = distinct !{!2483, !2479, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2484 = distinct !{!2484, !2481, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2485 = !{!2484}
!2486 = !{!2480}
!2487 = !{!2483}
!2488 = !{!2478}
!2489 = !{!2483, !2484, !2423}
!2490 = !{!2478, !2480, !2426}
!2491 = !{!2492, !2423}
!2492 = distinct !{!2492, !2493, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2493 = distinct !{!2493, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2494 = !{!2495, !2426}
!2495 = distinct !{!2495, !2496, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2496 = distinct !{!2496, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2497 = !{!2495, !2423}
!2498 = !{!2423, !2426}
!2499 = distinct !{!2499, !924, !925}
!2500 = distinct !{!2500, !925, !924}
!2501 = !{!2502, !2504}
!2502 = distinct !{!2502, !2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %pair"}
!2503 = distinct !{!2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE"}
!2504 = distinct !{!2504, !2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h29da1bdbbfc0e34bE: %self.0"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E: %v.0"}
!2507 = distinct !{!2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7a2eaf740896db72E: %scratch.0"}
!2510 = !{!2511, !2513, !2515, !2506}
!2511 = distinct !{!2511, !2512, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2512 = distinct !{!2512, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2513 = distinct !{!2513, !2514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2514 = distinct !{!2514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2515 = distinct !{!2515, !2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %b"}
!2516 = distinct !{!2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE"}
!2517 = !{!2518, !2519, !2520, !2509}
!2518 = distinct !{!2518, !2512, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2519 = distinct !{!2519, !2514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2520 = distinct !{!2520, !2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %a"}
!2521 = !{!2520}
!2522 = !{!2515}
!2523 = !{!2513}
!2524 = !{!2519}
!2525 = !{!2511}
!2526 = !{!2518}
!2527 = !{!2518, !2519, !2520, !2506}
!2528 = !{!2511, !2513, !2515, !2509}
!2529 = !{!2530, !2506}
!2530 = distinct !{!2530, !2531, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2531 = distinct !{!2531, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2532 = !{!2533, !2535, !2537, !2506}
!2533 = distinct !{!2533, !2534, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2534 = distinct !{!2534, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2535 = distinct !{!2535, !2536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2536 = distinct !{!2536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2537 = distinct !{!2537, !2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %a"}
!2538 = distinct !{!2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE"}
!2539 = !{!2540, !2541, !2542, !2509}
!2540 = distinct !{!2540, !2534, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2541 = distinct !{!2541, !2536, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2542 = distinct !{!2542, !2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %b"}
!2543 = !{!2544, !2506}
!2544 = distinct !{!2544, !2545, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2545 = distinct !{!2545, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2546 = !{!2547, !2549, !2551, !2506}
!2547 = distinct !{!2547, !2548, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2548 = distinct !{!2548, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2549 = distinct !{!2549, !2550, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2550 = distinct !{!2550, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2551 = distinct !{!2551, !2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %a"}
!2552 = distinct !{!2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE"}
!2553 = !{!2554, !2555, !2556, !2509}
!2554 = distinct !{!2554, !2548, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2555 = distinct !{!2555, !2550, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2556 = distinct !{!2556, !2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %b"}
!2557 = !{!2558, !2506}
!2558 = distinct !{!2558, !2559, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2559 = distinct !{!2559, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2560 = !{!2561, !2563, !2565, !2506}
!2561 = distinct !{!2561, !2562, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2562 = distinct !{!2562, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2563 = distinct !{!2563, !2564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2564 = distinct !{!2564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2565 = distinct !{!2565, !2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %a"}
!2566 = distinct !{!2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE"}
!2567 = !{!2568, !2569, !2570, !2509}
!2568 = distinct !{!2568, !2562, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2569 = distinct !{!2569, !2564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2570 = distinct !{!2570, !2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %b"}
!2571 = !{!2572, !2506}
!2572 = distinct !{!2572, !2573, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2573 = distinct !{!2573, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2574 = !{!2575, !2577, !2579, !2506}
!2575 = distinct !{!2575, !2576, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2576 = distinct !{!2576, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2577 = distinct !{!2577, !2578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2578 = distinct !{!2578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2579 = distinct !{!2579, !2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %b"}
!2580 = distinct !{!2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE"}
!2581 = !{!2582, !2583, !2584, !2509}
!2582 = distinct !{!2582, !2576, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2583 = distinct !{!2583, !2578, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2584 = distinct !{!2584, !2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hd7ec240f5f6b6f7bE: %a"}
!2585 = !{!2584}
!2586 = !{!2579}
!2587 = !{!2577}
!2588 = !{!2583}
!2589 = !{!2575}
!2590 = !{!2582}
!2591 = !{!2582, !2583, !2584, !2506}
!2592 = !{!2575, !2577, !2579, !2509}
!2593 = !{!2594, !2506}
!2594 = distinct !{!2594, !2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2595 = distinct !{!2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2596 = !{!2597, !2509}
!2597 = distinct !{!2597, !2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE: %self"}
!2598 = distinct !{!2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc8cff116d1cefa5cE"}
!2599 = !{!2597, !2506}
!2600 = !{!2506, !2509}
!2601 = distinct !{!2601, !924, !925}
!2602 = distinct !{!2602, !925, !924}
!2603 = !{!2604}
!2604 = distinct !{!2604, !2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE: %self.0"}
!2605 = distinct !{!2605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h12f965c5c27065caE"}
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"_ZN5alloc5slice11stable_sort17hed61052c8561e171E: %v.0"}
!2608 = distinct !{!2608, !"_ZN5alloc5slice11stable_sort17hed61052c8561e171E"}
!2609 = !{!2607, !2610, !2604}
!2610 = distinct !{!2610, !2608, !"_ZN5alloc5slice11stable_sort17hed61052c8561e171E: argument 1"}
!2611 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2614 = distinct !{!2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2615 = !{!2616}
!2616 = distinct !{!2616, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2617 = !{!2618}
!2618 = distinct !{!2618, !2619, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2619 = distinct !{!2619, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2620 = !{!2621}
!2621 = distinct !{!2621, !2619, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2622 = !{!2618, !2613, !2623, !2607, !2604}
!2623 = distinct !{!2623, !2624, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha533cb9131a33215E: %v.0"}
!2624 = distinct !{!2624, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17ha533cb9131a33215E"}
!2625 = !{!2621, !2616, !2610}
!2626 = !{!2621, !2616, !2623, !2607, !2604}
!2627 = !{!2618, !2613, !2610}
!2628 = !{!2623, !2607, !2604}
!2629 = !{!2610}
!2630 = !{!2631, !2633, !2623, !2607, !2604}
!2631 = distinct !{!2631, !2632, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b"}
!2632 = distinct !{!2632, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E"}
!2633 = distinct !{!2633, !2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b"}
!2634 = distinct !{!2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E"}
!2635 = !{!2636, !2637, !2610}
!2636 = distinct !{!2636, !2632, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a"}
!2637 = distinct !{!2637, !2634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a"}
!2638 = !{!2639, !2641, !2610}
!2639 = distinct !{!2639, !2640, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!2640 = distinct !{!2640, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!2641 = distinct !{!2641, !2642, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!2642 = distinct !{!2642, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!2643 = !{!2644}
!2644 = distinct !{!2644, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %a:It1"}
!2645 = !{!2646}
!2646 = distinct !{!2646, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h177520d2c7d1cf89E: %b:It1"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2619, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %a:It1"}
!2649 = !{!2650}
!2650 = distinct !{!2650, !2619, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h8cb518193272fd25E: %b:It1"}
!2651 = !{!2648, !2644, !2623, !2607, !2604}
!2652 = !{!2650, !2646, !2610}
!2653 = !{!2650, !2646, !2623, !2607, !2604}
!2654 = !{!2648, !2644, !2610}
!2655 = !{!2656}
!2656 = distinct !{!2656, !2657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E: %self.0"}
!2657 = distinct !{!2657, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hca5733519c4067e3E"}
!2658 = !{!2659}
!2659 = distinct !{!2659, !2660, !"_ZN5alloc5slice11stable_sort17h09b959029fb6b926E: %v.0"}
!2660 = distinct !{!2660, !"_ZN5alloc5slice11stable_sort17h09b959029fb6b926E"}
!2661 = !{!2659, !2662, !2656}
!2662 = distinct !{!2662, !2660, !"_ZN5alloc5slice11stable_sort17h09b959029fb6b926E: argument 1"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2665 = distinct !{!2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2666 = !{!2667}
!2667 = distinct !{!2667, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2670 = distinct !{!2670, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2671 = !{!2672}
!2672 = distinct !{!2672, !2670, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2673 = !{!2672, !2667, !2674, !2659, !2656}
!2674 = distinct !{!2674, !2675, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbae5b258618e419fE: %v.0"}
!2675 = distinct !{!2675, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbae5b258618e419fE"}
!2676 = !{!2669, !2664, !2662}
!2677 = !{!2669, !2664, !2674, !2659, !2656}
!2678 = !{!2672, !2667, !2662}
!2679 = !{!2674, !2659, !2656}
!2680 = !{!2662}
!2681 = !{!2682, !2684, !2674, !2659, !2656}
!2682 = distinct !{!2682, !2683, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b"}
!2683 = distinct !{!2683, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE"}
!2684 = distinct !{!2684, !2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b"}
!2685 = distinct !{!2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E"}
!2686 = !{!2687, !2688, !2662}
!2687 = distinct !{!2687, !2683, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a"}
!2688 = distinct !{!2688, !2685, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a"}
!2689 = !{!2690, !2692, !2662}
!2690 = distinct !{!2690, !2691, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!2691 = distinct !{!2691, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!2692 = distinct !{!2692, !2693, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!2693 = distinct !{!2693, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %a:It1"}
!2696 = !{!2697}
!2697 = distinct !{!2697, !2665, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0265020feb3d6ae2E: %b:It1"}
!2698 = !{!2699}
!2699 = distinct !{!2699, !2670, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %a:It1"}
!2700 = !{!2701}
!2701 = distinct !{!2701, !2670, !"_ZN54PERMUTE_TWO_ARRAYS_SUM_EVERY_PAIR_GREATER_EQUAL_K_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hfa342a473f9750faE: %b:It1"}
!2702 = !{!2701, !2697, !2674, !2659, !2656}
!2703 = !{!2699, !2695, !2662}
!2704 = !{!2699, !2695, !2674, !2659, !2656}
!2705 = !{!2701, !2697, !2662}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE: %self.0"}
!2708 = distinct !{!2708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3d7d3eaeb2658ecfE"}
!2709 = !{!2710}
!2710 = distinct !{!2710, !2711, !"_ZN5alloc5slice11stable_sort17haf886f4cdddcec30E: %v.0"}
!2711 = distinct !{!2711, !"_ZN5alloc5slice11stable_sort17haf886f4cdddcec30E"}
!2712 = !{!2710, !2713, !2707}
!2713 = distinct !{!2713, !2711, !"_ZN5alloc5slice11stable_sort17haf886f4cdddcec30E: argument 1"}
!2714 = !{!2715}
!2715 = distinct !{!2715, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!2716 = distinct !{!2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!2717 = !{!2718}
!2718 = distinct !{!2718, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!2719 = !{!2720}
!2720 = distinct !{!2720, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!2721 = distinct !{!2721, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!2722 = !{!2723}
!2723 = distinct !{!2723, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!2724 = !{!2725}
!2725 = distinct !{!2725, !2726, !"cmpfunc: %a"}
!2726 = distinct !{!2726, !"cmpfunc"}
!2727 = !{!2728}
!2728 = distinct !{!2728, !2726, !"cmpfunc: %b"}
!2729 = !{!2725, !2720, !2715, !2730, !2710, !2707}
!2730 = distinct !{!2730, !2731, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h02c6b51364d55853E: %v.0"}
!2731 = distinct !{!2731, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h02c6b51364d55853E"}
!2732 = !{!2728, !2723, !2718, !2713}
!2733 = !{!2728, !2723, !2718, !2730, !2710, !2707}
!2734 = !{!2725, !2720, !2715, !2713}
!2735 = !{!2730, !2710, !2707}
!2736 = !{!2713}
!2737 = !{!2738, !2740, !2742, !2730, !2710, !2707}
!2738 = distinct !{!2738, !2739, !"cmpfunc: %b"}
!2739 = distinct !{!2739, !"cmpfunc"}
!2740 = distinct !{!2740, !2741, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1"}
!2741 = distinct !{!2741, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E"}
!2742 = distinct !{!2742, !2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b"}
!2743 = distinct !{!2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE"}
!2744 = !{!2745, !2746, !2747, !2713}
!2745 = distinct !{!2745, !2739, !"cmpfunc: %a"}
!2746 = distinct !{!2746, !2741, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0"}
!2747 = distinct !{!2747, !2743, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a"}
!2748 = !{!2749, !2751, !2713}
!2749 = distinct !{!2749, !2750, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE: %self"}
!2750 = distinct !{!2750, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9687b5e4487db7feE"}
!2751 = distinct !{!2751, !2752, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E: %_1"}
!2752 = distinct !{!2752, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcfed3bf34a1a8c39E"}
!2753 = !{!2754}
!2754 = distinct !{!2754, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %a:It1"}
!2755 = !{!2756}
!2756 = distinct !{!2756, !2716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0b6a9f5462f4900aE: %b:It1"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 0:It1"}
!2759 = !{!2760}
!2760 = distinct !{!2760, !2721, !"_ZN4core3ops8function5FnMut8call_mut17hc1a0f02b722d68b4E: argument 1:It1"}
!2761 = !{!2762}
!2762 = distinct !{!2762, !2726, !"cmpfunc: %a:It1"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2726, !"cmpfunc: %b:It1"}
!2765 = !{!2762, !2758, !2754, !2730, !2710, !2707}
!2766 = !{!2764, !2760, !2756, !2713}
!2767 = !{!2764, !2760, !2756, !2730, !2710, !2707}
!2768 = !{!2762, !2758, !2754, !2713}
