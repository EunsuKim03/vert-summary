; ModuleID = 'SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.40d71ffee48ff486-cgu.0'
source_filename = "SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.40d71ffee48ff486-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_bec5dbf4ea533e8e32c92f0cf94b4c55 = private unnamed_addr constant [183 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit.rs\00", align 1
@alloc_8ff914f1831e33925cf29190c60b0739 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00&\00\00\00\09\00\00\00" }>, align 8
@alloc_743f2cefaccb6d94c89870124217d1ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@alloc_e63ffa31ad6e0404fd60d280d854c254 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\1B\00\00\00\1A\00\00\00" }>, align 8
@alloc_82fa06a248ba2287581da2665aa4e248 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bec5dbf4ea533e8e32c92f0cf94b4c55, [16 x i8] c"\B6\00\00\00\00\00\00\00\19\00\00\00\1B\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40), !noalias !37
  %_4.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !42, !noalias !43, !noundef !18
  %_5.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !44, !noalias !45, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i, %_5.i.i
  %_4.i.i5 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !46, !noalias !51, !noundef !18
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
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !noalias !62
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !72, !noalias !73, !noundef !18
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !74, !noalias !75, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !76, !noalias !83, !noundef !18
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !102, !noalias !103, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !103, !noalias !102, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !119, !noalias !120, !noundef !18
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !120, !noalias !119, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !136, !noalias !137, !noundef !18
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !137, !noalias !136, !noundef !18
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !153, !noalias !154, !noundef !18
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !154, !noalias !153, !noundef !18
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !170, !noalias !171, !noundef !18
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !171, !noalias !170, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !187, !noalias !188, !noundef !18
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !188, !noalias !187, !noundef !18
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !204, !noalias !205, !noundef !18
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !205, !noalias !204, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !221, !noalias !222, !noundef !18
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !222, !noalias !221, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !238, !noalias !239, !noundef !18
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !239, !noalias !238, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !255, !noalias !256, !noundef !18
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !256, !noalias !255, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !260, !noalias !267, !noundef !18
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !273
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !275, !noalias !282, !noundef !18
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !288
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !296
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !303, !noalias !304, !noundef !18
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !305, !noalias !306, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !273
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318), !noalias !313
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !320, !noalias !321, !noundef !18
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !322, !noalias !323, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !288
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !296
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !336, !noalias !337, !noundef !18
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !338, !noalias !339, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !273
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350), !noalias !313
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !352, !noalias !353, !noundef !18
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !354, !noalias !355, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !288
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !noalias !296
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !368, !noalias !369, !noundef !18
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !370, !noalias !371, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !273
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380), !noalias !313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382), !noalias !313
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !384, !noalias !385, !noundef !18
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !386, !noalias !387, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !288
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E.exit, !prof !388

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21, !noalias !257
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !399, !noalias !400, !noundef !18
  %_5.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !400, !noalias !399, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %_4.i.i7.i = load i32, ptr %_14.i, align 4, !alias.scope !411, !noalias !412, !noundef !18
  %_5.i.i8.i = load i32, ptr %_12.i, align 4, !alias.scope !412, !noalias !411, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %_4.i.i10.i = load i32, ptr %a.i, align 4, !alias.scope !423, !noalias !424, !noundef !18
  %_5.i.i11.i = load i32, ptr %c.i, align 4, !alias.scope !424, !noalias !423, !noundef !18
  %_0.i12.i = icmp slt i32 %_4.i.i10.i, %_5.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %_4.i.i13.i = load i32, ptr %b.i, align 4, !alias.scope !435, !noalias !436, !noundef !18
  %_5.i.i14.i = load i32, ptr %d.i, align 4, !alias.scope !436, !noalias !435, !noundef !18
  %_0.i15.i = icmp slt i32 %_4.i.i13.i, %_5.i.i14.i
  %0 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i, i32 %_5.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %_4.i.i16.i = load i32, ptr %2, align 4, !alias.scope !447, !noalias !448, !noundef !18
  %_5.i.i17.i = load i32, ptr %4, align 4, !alias.scope !448, !noalias !447, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %_4.i.i.i2 = load i32, ptr %_9, align 4, !alias.scope !459, !noalias !460, !noundef !18
  %_5.i.i.i3 = load i32, ptr %_7.i1, align 4, !alias.scope !460, !noalias !459, !noundef !18
  %_0.i.i4 = icmp slt i32 %_4.i.i.i2, %_5.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %_4.i.i7.i7 = load i32, ptr %_14.i6, align 4, !alias.scope !471, !noalias !472, !noundef !18
  %_5.i.i8.i8 = load i32, ptr %_12.i5, align 4, !alias.scope !472, !noalias !471, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %_4.i.i10.i19 = load i32, ptr %a.i11, align 4, !alias.scope !483, !noalias !484, !noundef !18
  %_5.i.i11.i20 = load i32, ptr %c.i16, align 4, !alias.scope !484, !noalias !483, !noundef !18
  %_0.i12.i21 = icmp slt i32 %_4.i.i10.i19, %_5.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %_4.i.i13.i22 = load i32, ptr %b.i14, align 4, !alias.scope !495, !noalias !496, !noundef !18
  %_5.i.i14.i23 = load i32, ptr %d.i18, align 4, !alias.scope !496, !noalias !495, !noundef !18
  %_0.i15.i24 = icmp slt i32 %_4.i.i13.i22, %_5.i.i14.i23
  %9 = tail call i32 @llvm.smax.i32(i32 %_4.i.i10.i19, i32 %_5.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %_4.i.i16.i25 = load i32, ptr %11, align 4, !alias.scope !507, !noalias !508, !noundef !18
  %_5.i.i17.i26 = load i32, ptr %13, align 4, !alias.scope !508, !noalias !507, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i38 = icmp slt i32 %0, %9
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smax.i32(i32 %0, i32 %9)
  store i32 %19, ptr %dst, align 4, !noalias !512
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i21.i = icmp slt i32 %8, %17
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smin.i32(i32 %8, i32 %17)
  store i32 %20, ptr %18, align 4, !noalias !516
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525), !noalias !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !528
  %_4.i.i.i36.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !531, !noalias !532, !noundef !18
  %_5.i.i.i37.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !533, !noalias !534, !noundef !18
  %_0.i.i38.1 = icmp slt i32 %_4.i.i.i36.1, %_5.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.1, i32 %_5.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !512
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544), !noalias !543
  %_4.i.i19.i.1 = load i32, ptr %22, align 4, !alias.scope !546, !noalias !547, !noundef !18
  %_5.i.i20.i.1 = load i32, ptr %21, align 4, !alias.scope !548, !noalias !549, !noundef !18
  %_0.i21.i.1 = icmp slt i32 %_4.i.i19.i.1, %_5.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.1, i32 %_5.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !516
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !528
  %_4.i.i.i36.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !558, !noalias !559, !noundef !18
  %_5.i.i.i37.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !560, !noalias !561, !noundef !18
  %_0.i.i38.2 = icmp slt i32 %_4.i.i.i36.2, %_5.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.2, i32 %_5.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !512
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !543
  %_4.i.i19.i.2 = load i32, ptr %27, align 4, !alias.scope !570, !noalias !571, !noundef !18
  %_5.i.i20.i.2 = load i32, ptr %26, align 4, !alias.scope !572, !noalias !573, !noundef !18
  %_0.i21.i.2 = icmp slt i32 %_4.i.i19.i.2, %_5.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.2, i32 %_5.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !516
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !528
  %_4.i.i.i36.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !582, !noalias !583, !noundef !18
  %_5.i.i.i37.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !584, !noalias !585, !noundef !18
  %_0.i.i38.3 = icmp slt i32 %_4.i.i.i36.3, %_5.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_4.i.i.i36.3, i32 %_5.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !512
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !543
  %_4.i.i19.i.3 = load i32, ptr %32, align 4, !alias.scope !594, !noalias !595, !noundef !18
  %_5.i.i20.i.3 = load i32, ptr %31, align 4, !alias.scope !596, !noalias !597, !noundef !18
  %_0.i21.i.3 = icmp slt i32 %_4.i.i19.i.3, %_5.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smin.i32(i32 %_4.i.i19.i.3, i32 %_5.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !516
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E.exit, !prof !388

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21, !noalias !509
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %_3.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !608, !noalias !609, !noundef !18
  %_4.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !609, !noalias !608, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %_3.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !620, !noalias !621, !noundef !18
  %_4.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !621, !noalias !620, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %_3.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !632, !noalias !633, !noundef !18
  %_4.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !633, !noalias !632, !noundef !18
  %_0.i.i12.i = icmp slt i32 %_3.i.i10.i, %_4.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %_3.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !644, !noalias !645, !noundef !18
  %_4.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !645, !noalias !644, !noundef !18
  %_0.i.i15.i = icmp slt i32 %_3.i.i13.i, %_4.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i, i32 %_4.i.i11.i)
  %1 = select i1 %_0.i.i15.i, ptr %c.i, ptr %b.i, !unpredictable !18
  %2 = select i1 %_0.i.i12.i, ptr %a.i, ptr %1, !unpredictable !18
  %3 = select i1 %_0.i.i12.i, ptr %b.i, ptr %c.i, !unpredictable !18
  %4 = select i1 %_0.i.i15.i, ptr %d.i, ptr %3, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %_3.i.i16.i = load i32, ptr %4, align 4, !alias.scope !656, !noalias !657, !noundef !18
  %_4.i.i17.i = load i32, ptr %2, align 4, !alias.scope !657, !noalias !656, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %_3.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !668, !noalias !669, !noundef !18
  %_4.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !669, !noalias !668, !noundef !18
  %_0.i.i.i4 = icmp slt i32 %_3.i.i.i2, %_4.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %_3.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !680, !noalias !681, !noundef !18
  %_4.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !681, !noalias !680, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %_3.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !692, !noalias !693, !noundef !18
  %_4.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !693, !noalias !692, !noundef !18
  %_0.i.i12.i21 = icmp slt i32 %_3.i.i10.i19, %_4.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %_3.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !704, !noalias !705, !noundef !18
  %_4.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !705, !noalias !704, !noundef !18
  %_0.i.i15.i24 = icmp slt i32 %_3.i.i13.i22, %_4.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i10.i19, i32 %_4.i.i11.i20)
  %10 = select i1 %_0.i.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !18
  %11 = select i1 %_0.i.i12.i21, ptr %a.i11, ptr %10, !unpredictable !18
  %12 = select i1 %_0.i.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !18
  %13 = select i1 %_0.i.i15.i24, ptr %d.i18, ptr %12, !unpredictable !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %_3.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !716, !noalias !717, !noundef !18
  %_4.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !717, !noalias !716, !noundef !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_0.i.i.i38 = icmp slt i32 %9, %0
  %is_l.i18.i = xor i1 %_0.i.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %0)
  store i32 %19, ptr %dst, align 4, !noalias !721
  %count.i.i = zext i1 %_0.i.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i.i21.i = icmp slt i32 %17, %8
  %is_l.i.i = xor i1 %_0.i.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %8)
  store i32 %20, ptr %18, align 4, !noalias !725
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !737
  %_3.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !18
  %_4.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !742, !noalias !743, !noundef !18
  %_0.i.i.i38.1 = icmp slt i32 %_3.i.i.i36.1, %_4.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.1, i32 %_4.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !721
  %count.i.i.1 = zext i1 %_0.i.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !752
  %_3.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !755, !noalias !756, !noundef !18
  %_4.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !757, !noalias !758, !noundef !18
  %_0.i.i21.i.1 = icmp slt i32 %_3.i.i19.i.1, %_4.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.1, i32 %_4.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !725
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765), !noalias !737
  %_3.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !767, !noalias !768, !noundef !18
  %_4.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !769, !noalias !770, !noundef !18
  %_0.i.i.i38.2 = icmp slt i32 %_3.i.i.i36.2, %_4.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.2, i32 %_4.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !721
  %count.i.i.2 = zext i1 %_0.i.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !752
  %_3.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !779, !noalias !780, !noundef !18
  %_4.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !781, !noalias !782, !noundef !18
  %_0.i.i21.i.2 = icmp slt i32 %_3.i.i19.i.2, %_4.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.2, i32 %_4.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !725
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787), !noalias !737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !737
  %_3.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !791, !noalias !792, !noundef !18
  %_4.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !793, !noalias !794, !noundef !18
  %_0.i.i.i38.3 = icmp slt i32 %_3.i.i.i36.3, %_4.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i36.3, i32 %_4.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !721
  %count.i.i.3 = zext i1 %_0.i.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !752
  %_3.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !803, !noalias !804, !noundef !18
  %_4.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !805, !noalias !806, !noundef !18
  %_0.i.i21.i.3 = icmp slt i32 %_3.i.i19.i.3, %_4.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i19.i.3, i32 %_4.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !725
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E.exit, !prof !388

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21, !noalias !718
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !807

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !808
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !808
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #23
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !813
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !822
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17ha694f70898fb4a9bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !807

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !831
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !831
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #23
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !836
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !845
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !807

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !854
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !854
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #23
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !859
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !868
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i, %bb30
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
  %_3.i.i62 = load i32, ptr %_28.i.i, align 4, !alias.scope !890, !noalias !891, !noundef !18
  %_4.i.i63 = load i32, ptr %_82, align 4, !alias.scope !892, !noalias !893, !noundef !18
  %_0.i.i64 = icmp slt i32 %_3.i.i62, %_4.i.i63
  %_10.i.i79.not = icmp eq i64 %new_len, 2
  br i1 %_0.i.i64, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i60 = phi i32 [ %_3.i.i59, %bb15.i.i ], [ %_3.i.i62, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_3.i.i59 = load i32, ptr %2, align 4, !alias.scope !894, !noalias !899, !noundef !18
  %_0.i.i61 = icmp slt i32 %_3.i.i59, %_4.i.i60
  br i1 %_0.i.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_3.i.i, %bb7.i.i ], [ %_3.i.i62, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_3.i.i = load i32, ptr %4, align 4, !alias.scope !902, !noalias !907, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i, %_4.i.i58
  br i1 %_0.i.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i
  br i1 %_0.i.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #24
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !noalias !913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915), !noalias !913
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h77a59066f907bc4fE.exit.i.thread101 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #24
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit, label %bb5.i45

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
  %_3.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !943, !noalias !944, !noundef !18
  %_4.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !947, !noalias !948, !noundef !18
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !927, !noalias !949
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %_3.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !960, !noalias !961, !noundef !18
  %_4.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !964, !noalias !965, !noundef !18
  %_0.i.i.i14.i = icmp slt i32 %_3.i.i.i12.i, %_4.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i12.i, i32 %_4.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !927, !noalias !966
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !932, !noalias !967
  br label %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit

_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #24
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hb64b89a4654ce28fE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %is_less) #24
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i, %bb30
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
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i59 = phi i32 [ %_5.i.i60, %bb15.i.i ], [ %_5.i.i63, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i77 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i77
  %_5.i.i60 = load i32, ptr %2, align 4, !alias.scope !989, !noalias !994, !noundef !18
  %_0.i61 = icmp slt i32 %_4.i.i59, %_5.i.i60
  br i1 %_0.i61, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i77, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i58 = phi i32 [ %_5.i.i, %bb7.i.i ], [ %_5.i.i63, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i80 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i80
  %_5.i.i = load i32, ptr %4, align 4, !alias.scope !997, !noalias !1002, !noundef !18
  %_0.i = icmp slt i32 %_4.i.i58, %_5.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i80, 1
  %exitcond93.not = icmp eq i64 %5, %new_len
  br i1 %exitcond93.not, label %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i80, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i77, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i104, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i98, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i
  br i1 %_0.i64, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7073 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread ], [ %_0.sroa.0.0.i.i99107111, %middle.block ], [ %_0.sroa.0.0.i.i99107111, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7073, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !noalias !1008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !1008
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101, %bb14.i
  %half_len2.i112 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101 ]
  %_0.sroa.0.0.i.i99107111 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h155c8bb2595bdea5E.exit.i.thread101 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit
  %stack_len.sroa.0.185 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
  %prev_run.sroa.0.184 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
  %count = add i64 %stack_len.sroa.0.185, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.184, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.185, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.184, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit, label %bb5.i45

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
  br label %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit

_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1ad6dacbade269c8E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i, %bb30
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
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !1087, !noalias !1094, !noundef !18
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !1098, !noalias !1105, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109), !noalias !1112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1112
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h124e83b0ef875817E.exit.i.thread100 ]
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

_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !18
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit, label %bb5.i45

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
  br label %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit

_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h2a4188fa1e0d1432E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h255880ea39b1decaE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1194, !noalias !1195, !noundef !18
  %_5.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1197, !noalias !1198, !noundef !18
  %_0.i.i.i = icmp slt i32 %_4.i.i.i.i, %_5.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %_4.i.i7.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1209, !noalias !1210, !noundef !18
  %_5.i.i8.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1211, !noalias !1212, !noundef !18
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
  %_4.i.i10.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1223, !noalias !1224, !noundef !18
  %_5.i.i11.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1225, !noalias !1226, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_4.i.i10.i.i, %_5.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %_4.i.i13.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1237, !noalias !1238, !noundef !18
  %_5.i.i14.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1239, !noalias !1240, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_4.i.i13.i.i, %_5.i.i14.i.i
  %5 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i.i, i32 %_5.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %_4.i.i16.i.i = load i32, ptr %7, align 4, !alias.scope !1251, !noalias !1252, !noundef !18
  %_5.i.i17.i.i = load i32, ptr %9, align 4, !alias.scope !1253, !noalias !1254, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1182, !noalias !1255
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1182, !noalias !1255
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i.i, i32 %_5.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1182, !noalias !1255
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i.i, i32 %_5.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1182, !noalias !1255
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %_4.i.i.i14.i = load i32, ptr %_27.i, align 4, !alias.scope !1266, !noalias !1267, !noundef !18
  %_5.i.i.i15.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1268, !noalias !1269, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_4.i.i.i14.i, %_5.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %_4.i.i7.i19.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1280, !noalias !1281, !noundef !18
  %_5.i.i8.i20.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1282, !noalias !1283, !noundef !18
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
  %_4.i.i10.i31.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1294, !noalias !1295, !noundef !18
  %_5.i.i11.i32.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1296, !noalias !1297, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_4.i.i10.i31.i, %_5.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %_4.i.i13.i34.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1308, !noalias !1309, !noundef !18
  %_5.i.i14.i35.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1310, !noalias !1311, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_4.i.i13.i34.i, %_5.i.i14.i35.i
  %14 = call i32 @llvm.smax.i32(i32 %_4.i.i10.i31.i, i32 %_5.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %_4.i.i16.i37.i = load i32, ptr %16, align 4, !alias.scope !1322, !noalias !1323, !noundef !18
  %_5.i.i17.i38.i = load i32, ptr %18, align 4, !alias.scope !1324, !noalias !1325, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1182, !noalias !1255
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smax.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1182, !noalias !1255
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smin.i32(i32 %_4.i.i16.i37.i, i32 %_5.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1182, !noalias !1255
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smin.i32(i32 %_4.i.i13.i34.i, i32 %_5.i.i14.i35.i)
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

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1179, !noalias !1326
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1182, !noalias !1255
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i54.1.i = load i32, ptr %28, align 4, !alias.scope !1327, !noalias !1332, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %_4.i.i.i54.1.i, %27
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i1.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i54.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1182, !noalias !1255
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i1.i.1.i = load i32, ptr %30, align 4, !alias.scope !1335, !noalias !1340, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %_4.i.i1.i.1.i, %27
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1182, !noalias !1343
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.1.i, %bb16.loopexit.i
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
  %_4.i.i.i48.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1364, !noalias !1365, !noundef !18
  %_5.i.i.i49.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1366, !noalias !1367, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_4.i.i.i48.i, %_5.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smax.i32(i32 %_4.i.i.i48.i, i32 %_5.i.i.i49.i)
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
  %_4.i.i19.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1383, !noalias !1384, !noundef !18
  %_5.i.i20.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1385, !noalias !1386, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_4.i.i19.i.i, %_5.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smin.i32(i32 %_4.i.i19.i.i, i32 %_5.i.i20.i.i)
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !388

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1391

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1392, !noalias !1393
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1179, !noalias !1326
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1182, !noalias !1255
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i54.i = load i32, ptr %45, align 4, !alias.scope !1327, !noalias !1332, !noundef !18
  %_0.i.i56.i = icmp slt i32 %_4.i.i.i54.i, %44
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i1.i.i, %bb7.i.i ], [ %_4.i.i.i54.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1182, !noalias !1255
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i1.i.i = load i32, ptr %47, align 4, !alias.scope !1335, !noalias !1340, !noundef !18
  %_0.i3.i.i = icmp slt i32 %_4.i.i1.i.i, %44
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1182, !noalias !1343
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h4eb298279879bc83E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403), !noalias !1406
  call void @llvm.experimental.noalias.scope.decl(metadata !1409), !noalias !1406
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1411, !noalias !1414, !noundef !18
  %_5.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1416, !noalias !1417, !noundef !18
  %_0.i.i = icmp slt i32 %_4.i.i.i, %_5.i.i.i
  %_4.i.i5.i = load i32, ptr %c.i, align 4, !alias.scope !1418, !noalias !1423, !noundef !18
  %_0.i7.i = icmp slt i32 %_4.i.i5.i, %_5.i.i.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i5.i, %_4.i.i.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17ha593dbca80ad6c8bE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_5.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1426, !noalias !1431, !noundef !18
  %_0.i = icmp slt i32 %value, %_5.i.i
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !388

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
  %_4.i.i.i29 = load i32, ptr %src, align 4, !alias.scope !1439, !noalias !1444, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %_5.i.i.i30 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1451, !noalias !1452, !noundef !18
  %_0.i.i31 = icmp slt i32 %_4.i.i.i29, %_5.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_5.i.i.i30, ptr %dst.i.i, align 4, !alias.scope !1437, !noalias !1453
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_5.i.i26.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1456, !noalias !1461, !noundef !18
  %_0.i27.i = icmp slt i32 %_4.i.i.i29, %_5.i.i26.i
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_5.i.i26.i, ptr %dst.i31.i, align 4, !alias.scope !1437, !noalias !1464
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_5.i.i36.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1467, !noalias !1472, !noundef !18
  %_0.i37.i = icmp slt i32 %_4.i.i.i29, %_5.i.i36.i
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_5.i.i36.i, ptr %dst.i41.i, align 4, !alias.scope !1437, !noalias !1475
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_5.i.i46.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1478, !noalias !1483, !noundef !18
  %_0.i47.i = icmp slt i32 %_4.i.i.i29, %_5.i.i46.i
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_5.i.i46.i, ptr %dst.i51.i, align 4, !alias.scope !1437, !noalias !1486
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
  %_4.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1489, !noalias !1494, !noundef !18
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
  %_5.i.i56.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1501, !noalias !1502, !noundef !18
  %_0.i57.i = icmp slt i32 %_4.i.i55.i, %_5.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_5.i.i56.i, ptr %dst.i61.i, align 4, !alias.scope !1437, !noalias !1503
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
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #21, !noalias !1514
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5044c4346e1f75cdE(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !388

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
  %_5.i.i.i.i83 = load i32, ptr %src, align 4, !alias.scope !1523, !noalias !1530, !noundef !18
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
  %_4.i.i.i.i82 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1540, !noalias !1541, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_4.i.i.i.i82, %_5.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i82, ptr %dst.i.i86, align 4, !alias.scope !1521, !noalias !1542
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i25.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1545, !noalias !1552, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_4.i.i.i25.i, %_5.i.i.i.i83
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i25.i, ptr %dst.i31.i90, align 4, !alias.scope !1521, !noalias !1556
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i35.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1559, !noalias !1566, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_4.i.i.i35.i, %_5.i.i.i.i83
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i35.i, ptr %dst.i41.i94, align 4, !alias.scope !1521, !noalias !1570
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i45.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1573, !noalias !1580, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_4.i.i.i45.i, %_5.i.i.i.i83
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i45.i, ptr %dst.i51.i98, align 4, !alias.scope !1521, !noalias !1584
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
  %_5.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1587, !noalias !1594, !noundef !18
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
  %_4.i.i.i55.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1604, !noalias !1605, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_4.i.i.i55.i, %_5.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i55.i, ptr %dst.i61.i74, align 4, !alias.scope !1521, !noalias !1606
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
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E.exit, label %bb42.i66.preheader

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
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E.exit, label %bb42.i66, !llvm.loop !1615

_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #21
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h1a69eb4d54096915E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1636, !noalias !1637, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1639, !noalias !1640, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1656, !noalias !1657, !noundef !18
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1658, !noalias !1659, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1675, !noalias !1676, !noundef !18
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1677, !noalias !1678, !noundef !18
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1694, !noalias !1695, !noundef !18
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1696, !noalias !1697, !noundef !18
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1713, !noalias !1714, !noundef !18
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1715, !noalias !1716, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1619, !noalias !1717
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1619, !noalias !1717
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1619, !noalias !1717
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1619, !noalias !1717
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1733, !noalias !1734, !noundef !18
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1735, !noalias !1736, !noundef !18
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1752, !noalias !1753, !noundef !18
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1754, !noalias !1755, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1771, !noalias !1772, !noundef !18
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1773, !noalias !1774, !noundef !18
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1790, !noalias !1791, !noundef !18
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1792, !noalias !1793, !noundef !18
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1809, !noalias !1810, !noundef !18
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1811, !noalias !1812, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1619, !noalias !1717
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1619, !noalias !1717
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1619, !noalias !1717
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1619, !noalias !1717
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1616, !noalias !1813
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1619, !noalias !1717
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1616, !noalias !1813
  store i32 %25, ptr %24, align 4, !alias.scope !1619, !noalias !1717
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1616, !noalias !1813
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1619, !noalias !1717
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1814, !noalias !1821, !noundef !18
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1619, !noalias !1717
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1825, !noalias !1832, !noundef !18
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1619, !noalias !1836
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.experimental.noalias.scope.decl(metadata !1849), !noalias !1852
  call void @llvm.experimental.noalias.scope.decl(metadata !1855), !noalias !1852
  call void @llvm.experimental.noalias.scope.decl(metadata !1857), !noalias !1852
  call void @llvm.experimental.noalias.scope.decl(metadata !1860), !noalias !1852
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1862, !noalias !1863, !noundef !18
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1864, !noalias !1865, !noundef !18
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1616, !noalias !1866
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873), !noalias !1876
  call void @llvm.experimental.noalias.scope.decl(metadata !1879), !noalias !1876
  call void @llvm.experimental.noalias.scope.decl(metadata !1881), !noalias !1876
  call void @llvm.experimental.noalias.scope.decl(metadata !1884), !noalias !1876
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1886, !noalias !1887, !noundef !18
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1888, !noalias !1889, !noundef !18
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1616, !noalias !1890
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1892, !noalias !1717
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1616, !noalias !1893
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !388

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1894

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1895, !noalias !1896
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1616, !noalias !1813
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1619, !noalias !1717
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1814, !noalias !1821, !noundef !18
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1619, !noalias !1717
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1825, !noalias !1832, !noundef !18
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1619, !noalias !1836
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hea3a42a0dab9fd42E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906), !noalias !1909
  call void @llvm.experimental.noalias.scope.decl(metadata !1912), !noalias !1909
  call void @llvm.experimental.noalias.scope.decl(metadata !1914), !noalias !1909
  call void @llvm.experimental.noalias.scope.decl(metadata !1917), !noalias !1909
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1919, !noalias !1922, !noundef !18
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1924, !noalias !1925, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1926, !noalias !1933, !noundef !18
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc1bafe4491ced97cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1937, !noalias !1944, !noundef !18
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !388

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1953, !noalias !1960, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1970, !noalias !1971, !noundef !18
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1951, !noalias !1972
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1975, !noalias !1982, !noundef !18
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1951, !noalias !1986
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1989, !noalias !1996, !noundef !18
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1951, !noalias !2000
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2003, !noalias !2010, !noundef !18
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1951, !noalias !2014
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2017, !noalias !2024, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2034, !noalias !2035, !noundef !18
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1951, !noalias !2036
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1948, !noalias !2039
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1951, !noalias !2042
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !2043
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1951, !noalias !1948
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1951, !noalias !1948
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1948, !noalias !1951
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1948, !noalias !1951
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !2044

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1951, !noalias !1948
  store i32 %78, ptr %75, align 4, !alias.scope !1948, !noalias !1951
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !2045

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #21, !noalias !2046
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9aec59da33363236E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !388

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2055, !noalias !2064, !noundef !18
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2077, !noalias !2078, !noundef !18
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2053, !noalias !2079
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2082, !noalias !2091, !noundef !18
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2053, !noalias !2096
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2099, !noalias !2108, !noundef !18
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2053, !noalias !2113
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2116, !noalias !2125, !noundef !18
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2053, !noalias !2130
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2133, !noalias !2142, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2155, !noalias !2156, !noundef !18
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2053, !noalias !2157
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !2050, !noalias !2160
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !2053, !noalias !2163
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !2053, !noalias !2050
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !2053, !noalias !2050
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !2050, !noalias !2053
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !2050, !noalias !2053
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !2165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !2053, !noalias !2050
  store i32 %108, ptr %105, align 4, !alias.scope !2050, !noalias !2053
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE.exit, label %bb42.i66, !llvm.loop !2166

_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #21
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit" ], [ %_63.i63, %bb28 ]
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed1b2dd2691580f6E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %_3.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !2182, !noalias !2183, !noundef !18
  %_4.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !2185, !noalias !2186, !noundef !18
  %_0.i.i.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %_3.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !2197, !noalias !2198, !noundef !18
  %_4.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !2199, !noalias !2200, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  %_3.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !2211, !noalias !2212, !noundef !18
  %_4.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !2213, !noalias !2214, !noundef !18
  %_0.i.i12.i.i = icmp slt i32 %_3.i.i10.i.i, %_4.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  %_3.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !2225, !noalias !2226, !noundef !18
  %_4.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !2227, !noalias !2228, !noundef !18
  %_0.i.i15.i.i = icmp slt i32 %_3.i.i13.i.i, %_4.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i.i, i32 %_4.i.i11.i.i)
  %6 = select i1 %_0.i.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !18
  %7 = select i1 %_0.i.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !18
  %8 = select i1 %_0.i.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !18
  %9 = select i1 %_0.i.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %_3.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !2239, !noalias !2240, !noundef !18
  %_4.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !2241, !noalias !2242, !noundef !18
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !2170, !noalias !2243
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !2170, !noalias !2243
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i.i, i32 %_4.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !2170, !noalias !2243
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i.i, i32 %_4.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !2170, !noalias !2243
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %_3.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !2254, !noalias !2255, !noundef !18
  %_4.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !2256, !noalias !2257, !noundef !18
  %_0.i.i.i16.i = icmp slt i32 %_3.i.i.i14.i, %_4.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %_3.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !2268, !noalias !2269, !noundef !18
  %_4.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !2270, !noalias !2271, !noundef !18
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %_3.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !2282, !noalias !2283, !noundef !18
  %_4.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !2284, !noalias !2285, !noundef !18
  %_0.i.i12.i33.i = icmp slt i32 %_3.i.i10.i31.i, %_4.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %_3.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !2296, !noalias !2297, !noundef !18
  %_4.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !2298, !noalias !2299, !noundef !18
  %_0.i.i15.i36.i = icmp slt i32 %_3.i.i13.i34.i, %_4.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i10.i31.i, i32 %_4.i.i11.i32.i)
  %15 = select i1 %_0.i.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !18
  %16 = select i1 %_0.i.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !18
  %17 = select i1 %_0.i.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !18
  %18 = select i1 %_0.i.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %_3.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !2310, !noalias !2311, !noundef !18
  %_4.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !2312, !noalias !2313, !noundef !18
  store i32 %14, ptr %_28.i, align 4, !alias.scope !2170, !noalias !2243
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !2170, !noalias !2243
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i16.i37.i, i32 %_4.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !2170, !noalias !2243
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i13.i34.i, i32 %_4.i.i14.i35.i)
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

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !2167, !noalias !2314
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !2170, !noalias !2243
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !2315, !noalias !2320, !noundef !18
  %_0.i.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i55.1.i
  br i1 %_0.i.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !2170, !noalias !2243
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !2323, !noalias !2328, !noundef !18
  %_0.i.i3.i.1.i = icmp slt i32 %27, %_4.i.i2.i.1.i
  br i1 %_0.i.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !2170, !noalias !2331
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.1.i, %bb16.loopexit.i
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
  %_3.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !2352, !noalias !2353, !noundef !18
  %_4.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !2354, !noalias !2355, !noundef !18
  %_0.i.i.i50.i = icmp slt i32 %_3.i.i.i48.i, %_4.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i48.i, i32 %_4.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !2167, !noalias !2356
  %count.i.i.i = zext i1 %_0.i.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363), !noalias !2366
  call void @llvm.experimental.noalias.scope.decl(metadata !2369), !noalias !2366
  %_3.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !2371, !noalias !2372, !noundef !18
  %_4.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !2373, !noalias !2374, !noundef !18
  %_0.i.i21.i.i = icmp slt i32 %_3.i.i19.i.i, %_4.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i19.i.i, i32 %_4.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !2167, !noalias !2375
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !388

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #21
          to label %.noexc.i unwind label %cleanup2.i, !noalias !2379

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !2380, !noalias !2381
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !2167, !noalias !2314
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !2170, !noalias !2243
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !2315, !noalias !2320, !noundef !18
  %_0.i.i.i56.i = icmp slt i32 %44, %_4.i.i.i55.i
  br i1 %_0.i.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !2170, !noalias !2243
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !2323, !noalias !2328, !noundef !18
  %_0.i.i3.i.i = icmp slt i32 %44, %_4.i.i2.i.i
  br i1 %_0.i.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !2170, !noalias !2331
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h1ce51c4676e833ebE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  call void @llvm.experimental.noalias.scope.decl(metadata !2391), !noalias !2394
  call void @llvm.experimental.noalias.scope.decl(metadata !2397), !noalias !2394
  %_3.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !2399, !noalias !2402, !noundef !18
  %_4.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2404, !noalias !2405, !noundef !18
  %_0.i.i.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2406, !noalias !2411, !noundef !18
  %_0.i.i7.i = icmp slt i32 %_3.i.i.i, %_4.i.i6.i
  %49 = xor i1 %_0.i.i.i, %_0.i.i7.i
  %_0.i.i10.i = icmp slt i32 %_4.i.i.i, %_4.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i.i, %_0.i.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h14735f6cb5cc5f1fE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
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
  %_3.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !2414, !noalias !2419, !noundef !18
  %_0.i.i = icmp slt i32 %_3.i.i, %value
  br i1 %_0.i.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !388

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
  %_4.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !2427, !noalias !2432, !noundef !18
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %_3.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !2439, !noalias !2440, !noundef !18
  %_0.i.i.i31 = icmp slt i32 %_3.i.i.i29, %_4.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !2425, !noalias !2441
  %_8.i.i = zext i1 %_0.i.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !2444, !noalias !2449, !noundef !18
  %_0.i.i27.i = icmp slt i32 %_3.i.i25.i, %_4.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !2425, !noalias !2452
  %_8.i33.i = zext i1 %_0.i.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !2455, !noalias !2460, !noundef !18
  %_0.i.i37.i = icmp slt i32 %_3.i.i35.i, %_4.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !2425, !noalias !2463
  %_8.i43.i = zext i1 %_0.i.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !2466, !noalias !2471, !noundef !18
  %_0.i.i47.i = icmp slt i32 %_3.i.i45.i, %_4.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !2425, !noalias !2474
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
  %_4.i.i56.i = load i32, ptr %src, align 4, !alias.scope !2477, !noalias !2482, !noundef !18
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
  %_3.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !2489, !noalias !2490, !noundef !18
  %_0.i.i57.i = icmp slt i32 %_3.i.i55.i, %_4.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !2425, !noalias !2491
  %_8.i63.i = zext i1 %_0.i.i57.i to i64
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
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit", !prof !1513

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #21, !noalias !2501
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfff12f3f04ab5087E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !388

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
  %_3.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !2510, !noalias !2517, !noundef !18
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
  %_4.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !2527, !noalias !2528, !noundef !18
  %_0.i.i.i.i84 = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !2508, !noalias !2529
  %_8.i.i87 = zext i1 %_0.i.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !2532, !noalias !2539, !noundef !18
  %_0.i.i.i27.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !2508, !noalias !2543
  %_8.i33.i91 = zext i1 %_0.i.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !2546, !noalias !2553, !noundef !18
  %_0.i.i.i37.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !2508, !noalias !2557
  %_8.i43.i95 = zext i1 %_0.i.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !2560, !noalias !2567, !noundef !18
  %_0.i.i.i47.i = icmp sge i32 %_3.i.i.i.i82, %_4.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !2508, !noalias !2571
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
  %_3.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !2574, !noalias !2581, !noundef !18
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
  %_4.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !2591, !noalias !2592, !noundef !18
  %_0.i.i.i57.i = icmp sge i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !2508, !noalias !2593
  %_8.i63.i75 = zext i1 %_0.i.i.i57.i to i64
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
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E.exit, label %bb42.i66.preheader

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
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E.exit, label %bb42.i66, !llvm.loop !2602

_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1513

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #21
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef align 8 captures(none) dereferenceable(16) %self) unnamed_addr #3 {
start:
  %self1 = load i64, ptr %self, align 8, !range !2603, !noundef !18
; call alloc::raw_vec::RawVecInner<A>::grow_amortized
  %0 = tail call fastcc { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hb65d1670829b1ddfE"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %self1)
  %1 = extractvalue { i64, i64 } %0, 0
  %.not = icmp eq i64 %1, -9223372036854775807
  br i1 %.not, label %bb3, label %bb2, !prof !2604

bb2:                                              ; preds = %start
  %2 = extractvalue { i64, i64 } %0, 1
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %1, i64 %2) #23
  unreachable

bb3:                                              ; preds = %start
  ret void
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h0a8a6050b8d9f22cE"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #4 {
start:
  %_21.0.i = shl i64 %cap, 2
  %_21.1.i = icmp ugt i64 %cap, 4611686018427387903
  %_26.i = icmp ugt i64 %_21.0.i, 9223372036854775804
  %or.cond.i = or i1 %_21.1.i, %_26.i
  br i1 %or.cond.i, label %bb8, label %bb11, !prof !807

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !2603, !alias.scope !2605, !noalias !2608, !noundef !18
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %bb3

bb3:                                              ; preds = %bb11
  %0 = shl nuw i64 %self1.i, 2
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %1, align 8, !alias.scope !2605, !noalias !2608, !nonnull !18, !noundef !18
  %cond.i.i = icmp uge i64 %_21.0.i, %0
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %raw_ptr.i.i = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr noundef nonnull %self3.i, i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef %_21.0.i) #22
  br label %bb7

bb5:                                              ; preds = %bb11
  %2 = icmp eq i64 %_21.0.i, 0
  br i1 %2, label %bb16, label %bb4.i.i14

bb4.i.i14:                                        ; preds = %bb5
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
; call __rustc::__rust_alloc
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %bb7

bb7:                                              ; preds = %bb4.i.i14, %bb3
  %raw_ptr.i.i.pn = phi ptr [ %raw_ptr.i.i, %bb3 ], [ %3, %bb4.i.i14 ]
  %4 = icmp eq ptr %raw_ptr.i.i.pn, null
  br i1 %4, label %bb15, label %bb16

bb15:                                             ; preds = %bb7
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 4, ptr %5, align 8
  br label %bb8

bb16:                                             ; preds = %bb5, %bb7
  %raw_ptr.i.i.pn25 = phi ptr [ %raw_ptr.i.i.pn, %bb7 ], [ inttoptr (i64 4 to ptr), %bb5 ]
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %raw_ptr.i.i.pn25, ptr %6, align 8
  br label %bb8

bb8:                                              ; preds = %start, %bb16, %bb15
  %.sink27 = phi i64 [ 16, %bb16 ], [ 16, %bb15 ], [ 8, %start ]
  %_21.0.i.sink = phi i64 [ %_21.0.i, %bb16 ], [ %_21.0.i, %bb15 ], [ 0, %start ]
  %.sink = phi i64 [ 0, %bb16 ], [ 1, %bb15 ], [ 1, %start ]
  %7 = getelementptr inbounds nuw i8, ptr %_0, i64 %.sink27
  store i64 %_21.0.i.sink, ptr %7, align 8
  store i64 %.sink, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVecInner<A>::grow_amortized
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hb65d1670829b1ddfE"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %self, i64 noundef range(i64 0, -9223372036854775808) %len) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %self3 = alloca [24 x i8], align 8
  %_26.0 = add nuw i64 %len, 1
  %self5 = load i64, ptr %self, align 8, !range !2603, !noundef !18
  %v16 = shl nuw i64 %self5, 1
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0, i64 %v16)
  %_0.sroa.0.0.i15 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3)
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h0a8a6050b8d9f22cE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %self, i64 noundef %_0.sroa.0.0.i15)
  %_37 = load i64, ptr %self3, align 8, !range !2610, !noundef !18
  %0 = trunc nuw i64 %_37 to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3, i64 8
  br i1 %0, label %bb18, label %bb19

bb18:                                             ; preds = %start
  %e.0 = load i64, ptr %1, align 8, !range !2611, !noundef !18
  %2 = getelementptr inbounds nuw i8, ptr %self3, i64 16
  %e.1 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3)
  br label %bb6

bb19:                                             ; preds = %start
  %v.0 = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3)
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 8
  store ptr %v.0, ptr %3, align 8
  %4 = icmp sgt i64 %_0.sroa.0.0.i15, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15, ptr %self, align 8
  br label %bb6

bb6:                                              ; preds = %bb18, %bb19
  %_0.sroa.5.0 = phi i64 [ %e.1, %bb18 ], [ undef, %bb19 ]
  %_0.sroa.0.0 = phi i64 [ %e.0, %bb18 ], [ -9223372036854775807, %bb19 ]
  %5 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0, 0
  %6 = insertvalue { i64, i64 } %5, i64 %_0.sroa.5.0, 1
  ret { i64, i64 } %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #5 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !18
  %_4 = load i32, ptr %b, align 4, !noundef !18
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %odd_arr = alloca [24 x i8], align 8
  %even_arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %even_arr)
  store i64 0, ptr %even_arr, align 8
  %0 = getelementptr inbounds nuw i8, ptr %even_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %even_arr, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %odd_arr)
  store i64 0, ptr %odd_arr, align 8
  %2 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %odd_arr, i64 16
  store i64 0, ptr %3, align 8
  %_3948 = icmp sgt i32 %n, 0
  br i1 %_3948, label %bb17.preheader, label %bb24.thread

bb24.thread:                                      ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2612
  br label %bb7

bb17.preheader:                                   ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb17

bb18:                                             ; preds = %bb6
  %_48.pre = load ptr, ptr %0, align 8
  %_47.pre = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  %b.i = icmp samesign ult i64 %_47.pre, 2
  br i1 %b.i, label %bb24, label %bb7.i, !prof !2615

bb7.i:                                            ; preds = %bb18
  %b1.i = icmp samesign ult i64 %_47.pre, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !2604

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h12fba252b83c9bb7E(ptr noalias noundef nonnull align 4 %_48.pre, i64 noundef range(i64 0, 2305843009213693952) %_47.pre, ptr noalias noundef nonnull align 1 %compare.i)
          to label %bb24 unwind label %cleanup.loopexit.split-lp

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %_47.pre, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %_48.pre, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %_48.pre, i64 4
  %4 = and i64 %_47.pre, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !2626, !noalias !2631, !noundef !18
  %_4.i.i.i.i.i.prol = load i32, ptr %_48.pre, align 4, !alias.scope !2632, !noalias !2633, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %5 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %6, %bb7.i.i.i.prol ], [ %_48.pre, %bb5.i.i.prol ]
  store i32 %5, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !2634
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %_48.pre
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %6 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %6, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %_48.pre, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %_48.pre, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %_48.pre, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.prol ]
  %7 = icmp eq i64 %_47.pre, 2
  br i1 %7, label %bb24.loopexit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !2626, !noalias !2631, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !2632, !noalias !2633, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %8 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %9, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %8, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !2634
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %_48.pre
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %9 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %9, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %_48.pre, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !2656, !noalias !2657, !noundef !18
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !2658, !noalias !2659, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i, %bb7.i.i.i.1
  %10 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %11, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i ]
  store i32 %10, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !2634
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %_48.pre
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %11, align 4, !alias.scope !2635, !noalias !2640, !noundef !18
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %_48.pre, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !2634, !noalias !2643
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %bb24.loopexit, label %bb5.i.i

bb17:                                             ; preds = %bb17.preheader, %bb6
  %_15.i64 = phi ptr [ inttoptr (i64 4 to ptr), %bb17.preheader ], [ %_15.i65, %bb6 ]
  %len.i = phi i64 [ 0, %bb17.preheader ], [ %len.i63, %bb6 ]
  %indvars.iv = phi i64 [ 0, %bb17.preheader ], [ %indvars.iv.next, %bb6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_871 = and i64 %indvars.iv, 1
  %_7 = icmp eq i64 %_871, 0
  %_13 = icmp samesign ugt i64 %arr.1, %indvars.iv
  br i1 %_7, label %bb2, label %bb4

cleanup.loopexit:                                 ; preds = %bb1.i, %bb1.i43
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic6.invoke, %bb10.i, %bb10.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  %self1.i.i.i.i1.i = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2672, !noalias !2675, !noundef !18
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb15, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %12 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !2672, !noalias !2675, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2677
  br label %bb15

bb24.loopexit:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h88144fb88437f7a9E.exit.i.i.1, %bb5.i.i.prol.loopexit
  %_54.pre = load i64, ptr %3, align 8
  br label %bb24

bb24:                                             ; preds = %bb24.loopexit, %bb18, %bb10.i
  %_54 = phi i64 [ %_54.pre, %bb24.loopexit ], [ %len.i63, %bb18 ], [ %len.i63, %bb10.i ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_55 = load ptr, ptr %2, align 8, !nonnull !18, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2678
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2683
  %b.i.i = icmp samesign ult i64 %_54, 2
  br i1 %b.i.i, label %bb7, label %bb7.i.i, !prof !2615

bb7.i.i:                                          ; preds = %bb24
  %b1.i.i = icmp samesign ult i64 %_54, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2604

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17haeaae89998e12910E(ptr noalias noundef nonnull align 4 %_55, i64 noundef range(i64 0, 2305843009213693952) %_54, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
          to label %bb7 unwind label %cleanup.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %_54, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %_55, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %_55, i64 4
  %13 = and i64 %_54, 1
  %lcmp.mod109.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod109.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %_55, align 4, !alias.scope !2695, !noalias !2698, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2699, !noalias !2700, !noundef !18
  %_0.i.i.i.i.i20.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i20.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %14 = phi i32 [ %_4.i.i1.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %15, %bb7.i.i.i.i.prol ], [ %_55, %bb5.i.i.i.prol ]
  store i32 %14, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %_55
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %15 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i1.i.i.i.i.prol = load i32, ptr %15, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i1.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_55, %bb4.i.i.i.i.prol ]
  store i32 %_5.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %_55, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %_55, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.prol ]
  %16 = icmp eq i64 %_54, 2
  br i1 %16, label %bb7, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %_4.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2695, !noalias !2698, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2699, !noalias !2700, !noundef !18
  %_0.i.i.i.i.i20 = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i20, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %17 = phi i32 [ %_4.i.i1.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %18, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %17, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %_55
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %18 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i1.i.i.i.i = load i32, ptr %18, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i1.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %_55, %bb4.i.i.i.i ]
  store i32 %_5.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2724, !noalias !2725, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2726, !noalias !2727, !noundef !18
  %_0.i.i.i.i.i20.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i20.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i, %bb7.i.i.i.i.1
  %19 = phi i32 [ %_4.i.i1.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %20, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i ]
  store i32 %19, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2701, !noalias !2702
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %_55
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %20 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i1.i.i.i.i.1 = load i32, ptr %20, align 4, !alias.scope !2703, !noalias !2708, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i1.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_55, %bb4.i.i.i.i.1 ]
  store i32 %_5.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2701, !noalias !2711
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %bb7, label %bb5.i.i.i

bb7:                                              ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0eb996dc453a227bE.exit.i.i.i.1, %bb24.thread, %bb24, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2678
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %iter3 = load i64, ptr %1, align 8, !noundef !18
  %_57 = icmp ult i64 %iter3, 2305843009213693952
  call void @llvm.assume(i1 %_57)
  %_5850.not = icmp eq i64 %iter3, 0
  br i1 %_5850.not, label %bb26, label %bb27.lr.ph

bb27.lr.ph:                                       ; preds = %bb7
  %_64 = load ptr, ptr %0, align 8, !nonnull !18
  %21 = add nsw i64 %iter3, -1
  %umin = call i64 @llvm.umin.i64(i64 %arr.1, i64 %21)
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %bb27.preheader, label %vector.ph

bb27.preheader:                                   ; preds = %vector.body, %bb27.lr.ph
  %i.sroa.0.052.ph = phi i64 [ 0, %bb27.lr.ph ], [ %n.vec, %vector.body ]
  br label %bb27

vector.ph:                                        ; preds = %bb27.lr.ph
  %22 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %22, 7
  %23 = icmp eq i64 %n.mod.vf, 0
  %24 = select i1 %23, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %22, %24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %25 = getelementptr inbounds nuw i32, ptr %_64, i64 %index
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %wide.load = load <4 x i32>, ptr %25, align 4
  %wide.load88 = load <4 x i32>, ptr %26, align 4
  %27 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <4 x i32> %wide.load, ptr %27, align 4
  store <4 x i32> %wide.load88, ptr %28, align 4
  %index.next = add nuw i64 %index, 8
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %bb27.preheader, label %vector.body, !llvm.loop !2728

bb26:                                             ; preds = %bb9, %bb7
  %iter4 = load i64, ptr %3, align 8, !noundef !18
  %_67 = icmp ult i64 %iter4, 2305843009213693952
  call void @llvm.assume(i1 %_67)
  %_6853.not = icmp eq i64 %iter4, 0
  br i1 %_6853.not, label %bb29, label %bb30.lr.ph

bb30.lr.ph:                                       ; preds = %bb26
  %_74 = load ptr, ptr %2, align 8, !nonnull !18
  %30 = call i64 @llvm.usub.sat.i64(i64 %arr.1, i64 %iter3)
  %31 = add nsw i64 %iter4, -1
  %umin89 = call i64 @llvm.umin.i64(i64 %30, i64 %31)
  %min.iters.check91 = icmp samesign ult i64 %umin89, 8
  br i1 %min.iters.check91, label %bb30.preheader, label %vector.ph92

bb30.preheader:                                   ; preds = %vector.body95, %bb30.lr.ph
  %i.sroa.0.155.ph = phi i64 [ %iter3, %bb30.lr.ph ], [ %35, %vector.body95 ]
  %iter2.sroa.0.054.ph = phi i64 [ 0, %bb30.lr.ph ], [ %n.vec94, %vector.body95 ]
  br label %bb30

vector.ph92:                                      ; preds = %bb30.lr.ph
  %32 = add nuw nsw i64 %umin89, 1
  %n.mod.vf93 = and i64 %32, 7
  %33 = icmp eq i64 %n.mod.vf93, 0
  %34 = select i1 %33, i64 8, i64 %n.mod.vf93
  %n.vec94 = sub nsw i64 %32, %34
  %35 = add i64 %iter3, %n.vec94
  %36 = getelementptr i32, ptr %arr.0, i64 %iter3
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph92
  %index96 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body95 ]
  %37 = getelementptr inbounds nuw i32, ptr %_74, i64 %index96
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %wide.load97 = load <4 x i32>, ptr %37, align 4
  %wide.load98 = load <4 x i32>, ptr %38, align 4
  %39 = getelementptr i32, ptr %36, i64 %index96
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16
  store <4 x i32> %wide.load97, ptr %39, align 4
  store <4 x i32> %wide.load98, ptr %40, align 4
  %index.next99 = add nuw i64 %index96, 8
  %41 = icmp eq i64 %index.next99, %n.vec94
  br i1 %41, label %bb30.preheader, label %vector.body95, !llvm.loop !2729

bb29:                                             ; preds = %bb11, %bb26
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %self1.i.i.i.i1.i22 = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2742, !noalias !2745, !noundef !18
  %_6.i.i.i.i2.i23 = icmp eq i64 %self1.i.i.i.i1.i22, 0
  br i1 %_6.i.i.i.i2.i23, label %bb12, label %bb2.i.i.i3.i24

bb2.i.i.i3.i24:                                   ; preds = %bb29
  %42 = shl nuw i64 %self1.i.i.i.i1.i22, 2
  %self3.i.i.i.i4.i25 = load ptr, ptr %2, align 8, !alias.scope !2742, !noalias !2745, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i25, i64 noundef %42, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2747
  br label %bb12

bb15:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %self1.i.i.i.i1.i27 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2760, !noalias !2763, !noundef !18
  %_6.i.i.i.i2.i28 = icmp eq i64 %self1.i.i.i.i1.i27, 0
  br i1 %_6.i.i.i.i2.i28, label %bb16, label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb15
  %43 = shl nuw i64 %self1.i.i.i.i1.i27, 2
  %self3.i.i.i.i4.i30 = load ptr, ptr %0, align 8, !alias.scope !2760, !noalias !2763, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i30, i64 noundef %43, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2765
  br label %bb16

bb12:                                             ; preds = %bb2.i.i.i3.i24, %bb29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %odd_arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %self1.i.i.i.i1.i32 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2778, !noalias !2781, !noundef !18
  %_6.i.i.i.i2.i33 = icmp eq i64 %self1.i.i.i.i1.i32, 0
  br i1 %_6.i.i.i.i2.i33, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36", label %bb2.i.i.i3.i34

bb2.i.i.i3.i34:                                   ; preds = %bb12
  %44 = shl nuw i64 %self1.i.i.i.i1.i32, 2
  %self3.i.i.i.i4.i35 = load ptr, ptr %0, align 8, !alias.scope !2778, !noalias !2781, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i35, i64 noundef %44, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !2783
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E.exit36": ; preds = %bb12, %bb2.i.i.i3.i34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %even_arr)
  ret void

bb30:                                             ; preds = %bb30.preheader, %bb11
  %i.sroa.0.155 = phi i64 [ %47, %bb11 ], [ %i.sroa.0.155.ph, %bb30.preheader ]
  %iter2.sroa.0.054 = phi i64 [ %45, %bb11 ], [ %iter2.sroa.0.054.ph, %bb30.preheader ]
  %_38 = icmp samesign ult i64 %i.sroa.0.155, %arr.1
  br i1 %_38, label %bb11, label %panic6.invoke

bb11:                                             ; preds = %bb30
  %45 = add nuw nsw i64 %iter2.sroa.0.054, 1
  %_35 = getelementptr inbounds nuw i32, ptr %_74, i64 %iter2.sroa.0.054
  %_34 = load i32, ptr %_35, align 4, !noundef !18
  %46 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.155
  store i32 %_34, ptr %46, align 4
  %47 = add nuw nsw i64 %i.sroa.0.155, 1
  %exitcond61.not = icmp eq i64 %45, %iter4
  br i1 %exitcond61.not, label %bb29, label %bb30, !llvm.loop !2784

panic6.invoke:                                    ; preds = %bb2, %bb4, %bb27, %bb30
  %48 = phi i64 [ %i.sroa.0.155, %bb30 ], [ %arr.1, %bb27 ], [ %indvars.iv, %bb4 ], [ %indvars.iv, %bb2 ]
  %49 = phi ptr [ @alloc_8ff914f1831e33925cf29190c60b0739, %bb30 ], [ @alloc_743f2cefaccb6d94c89870124217d1ff, %bb27 ], [ @alloc_82fa06a248ba2287581da2665aa4e248, %bb2 ], [ @alloc_e63ffa31ad6e0404fd60d280d854c254, %bb4 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %48, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %49) #23
          to label %panic6.cont unwind label %cleanup.loopexit.split-lp

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb27:                                             ; preds = %bb27.preheader, %bb9
  %i.sroa.0.052 = phi i64 [ %50, %bb9 ], [ %i.sroa.0.052.ph, %bb27.preheader ]
  %exitcond59.not = icmp eq i64 %i.sroa.0.052, %arr.1
  br i1 %exitcond59.not, label %panic6.invoke, label %bb9

bb9:                                              ; preds = %bb27
  %50 = add nuw nsw i64 %i.sroa.0.052, 1
  %_27 = getelementptr inbounds nuw i32, ptr %_64, i64 %i.sroa.0.052
  %_26 = load i32, ptr %_27, align 4, !noundef !18
  %51 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.052
  store i32 %_26, ptr %51, align 4
  %exitcond60.not = icmp eq i64 %50, %iter3
  br i1 %exitcond60.not, label %bb26, label %bb27, !llvm.loop !2785

bb4:                                              ; preds = %bb17
  br i1 %_13, label %bb5, label %panic6.invoke

bb2:                                              ; preds = %bb17
  br i1 %_13, label %bb3, label %panic6.invoke

bb5:                                              ; preds = %bb4
  %52 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_15 = load i32, ptr %52, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %self1.i = load i64, ptr %odd_arr, align 8, !range !2603, !alias.scope !2786, !noundef !18
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"

bb1.i:                                            ; preds = %bb5
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %odd_arr)
          to label %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge" unwind label %cleanup.loopexit

"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge": ; preds = %bb1.i
  %_15.i.pre = load ptr, ptr %2, align 8, !alias.scope !2786
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit": ; preds = %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge", %bb5
  %_15.i = phi ptr [ %_15.i.pre, %"bb1.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit_crit_edge" ], [ %_15.i64, %bb5 ]
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %len.i
  store i32 %_15, ptr %end.i, align 4, !noalias !2786
  %53 = add i64 %len.i, 1
  store i64 %53, ptr %3, align 8, !alias.scope !2786
  br label %bb6

bb6:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit"
  %_15.i65 = phi ptr [ %_15.i64, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" ], [ %_15.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit" ]
  %len.i63 = phi i64 [ %len.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" ], [ %53, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb18, label %bb17

bb3:                                              ; preds = %bb2
  %54 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_10 = load i32, ptr %54, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %len.i38 = load i64, ptr %1, align 8, !alias.scope !2789, !noundef !18
  %self1.i39 = load i64, ptr %even_arr, align 8, !range !2603, !alias.scope !2789, !noundef !18
  %_4.i40 = icmp eq i64 %len.i38, %self1.i39
  br i1 %_4.i40, label %bb1.i43, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45"

bb1.i43:                                          ; preds = %bb3
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h539a5665f9650300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %even_arr)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E.exit45": ; preds = %bb1.i43, %bb3
  %_15.i41 = load ptr, ptr %0, align 8, !alias.scope !2789, !nonnull !18, !noundef !18
  %end.i42 = getelementptr inbounds nuw i32, ptr %_15.i41, i64 %len.i38
  store i32 %_10, ptr %end.i42, align 4, !noalias !2789
  %55 = add i64 %len.i38, 1
  store i64 %55, ptr %1, align 8, !alias.scope !2789
  br label %bb6

bb16:                                             ; preds = %bb2.i.i.i3.i29, %bb15
  resume { ptr, i32 } %lpad.phi
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
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2792
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2798
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit", label %bb7.i.i, !prof !2604

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2604

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha694f70898fb4a9bE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2815, !noalias !2818, !noundef !18
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2819, !noalias !2820, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2821, !noalias !2822
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2823, !noalias !2830, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2821, !noalias !2834
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2815, !noalias !2818, !noundef !18
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2819, !noalias !2820, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2821, !noalias !2822
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2823, !noalias !2830, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2821, !noalias !2834
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2851, !noalias !2852, !noundef !18
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2853, !noalias !2854, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2821, !noalias !2822
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2823, !noalias !2830, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2821, !noalias !2834
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbdce9596215cb616E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2792
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #11

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #15

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #16

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #17

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noinline noreturn }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!5 = distinct !{!5, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!10 = distinct !{!10, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE"}
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
!24 = distinct !{!24, !25, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!25 = distinct !{!25, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!26 = !{!27, !28}
!27 = distinct !{!27, !23, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!28 = distinct !{!28, !25, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!31 = distinct !{!31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!36 = distinct !{!36, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E: %c"}
!39 = distinct !{!39, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E"}
!40 = !{!41}
!41 = distinct !{!41, !36, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!42 = !{!41, !33}
!43 = !{!35, !30, !38}
!44 = !{!35, !30}
!45 = !{!41, !33, !38}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!48 = distinct !{!48, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!49 = distinct !{!49, !50, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!50 = distinct !{!50, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!51 = !{!52, !53}
!52 = distinct !{!52, !48, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!53 = distinct !{!53, !50, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!61 = distinct !{!61, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E: %c"}
!64 = distinct !{!64, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"cmpfunc: %a"}
!69 = distinct !{!69, !"cmpfunc"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"cmpfunc: %b"}
!72 = !{!68, !60, !55}
!73 = !{!71, !66, !58, !63}
!74 = !{!71, !66, !58}
!75 = !{!68, !60, !55, !63}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"cmpfunc: %b"}
!78 = distinct !{!78, !"cmpfunc"}
!79 = distinct !{!79, !80, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!80 = distinct !{!80, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!81 = distinct !{!81, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!82 = distinct !{!82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!83 = !{!84, !85, !86}
!84 = distinct !{!84, !78, !"cmpfunc: %a"}
!85 = distinct !{!85, !80, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!86 = distinct !{!86, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!89 = distinct !{!89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!94 = distinct !{!94, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"cmpfunc: %a"}
!99 = distinct !{!99, !"cmpfunc"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"cmpfunc: %b"}
!102 = !{!98, !93, !88}
!103 = !{!101, !96, !91}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!106 = distinct !{!106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!111 = distinct !{!111, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"cmpfunc: %a"}
!116 = distinct !{!116, !"cmpfunc"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"cmpfunc: %b"}
!119 = !{!115, !110, !105}
!120 = !{!118, !113, !108}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!123 = distinct !{!123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!128 = distinct !{!128, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"cmpfunc: %a"}
!133 = distinct !{!133, !"cmpfunc"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"cmpfunc: %b"}
!136 = !{!132, !127, !122}
!137 = !{!135, !130, !125}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!140 = distinct !{!140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!145 = distinct !{!145, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"cmpfunc: %a"}
!150 = distinct !{!150, !"cmpfunc"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"cmpfunc: %b"}
!153 = !{!149, !144, !139}
!154 = !{!152, !147, !142}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!157 = distinct !{!157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!162 = distinct !{!162, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"cmpfunc: %a"}
!167 = distinct !{!167, !"cmpfunc"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"cmpfunc: %b"}
!170 = !{!166, !161, !156}
!171 = !{!169, !164, !159}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!174 = distinct !{!174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!179 = distinct !{!179, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"cmpfunc: %a"}
!184 = distinct !{!184, !"cmpfunc"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"cmpfunc: %b"}
!187 = !{!183, !178, !173}
!188 = !{!186, !181, !176}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!191 = distinct !{!191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!196 = distinct !{!196, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"cmpfunc: %a"}
!201 = distinct !{!201, !"cmpfunc"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"cmpfunc: %b"}
!204 = !{!200, !195, !190}
!205 = !{!203, !198, !193}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!208 = distinct !{!208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!213 = distinct !{!213, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"cmpfunc: %a"}
!218 = distinct !{!218, !"cmpfunc"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"cmpfunc: %b"}
!221 = !{!217, !212, !207}
!222 = !{!220, !215, !210}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!225 = distinct !{!225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!230 = distinct !{!230, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"cmpfunc: %a"}
!235 = distinct !{!235, !"cmpfunc"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"cmpfunc: %b"}
!238 = !{!234, !229, !224}
!239 = !{!237, !232, !227}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!242 = distinct !{!242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!247 = distinct !{!247, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"cmpfunc: %a"}
!252 = distinct !{!252, !"cmpfunc"}
!253 = !{!254}
!254 = distinct !{!254, !252, !"cmpfunc: %b"}
!255 = !{!251, !246, !241}
!256 = !{!254, !249, !244}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E: %v.0"}
!259 = distinct !{!259, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E"}
!260 = !{!261, !263, !265, !258}
!261 = distinct !{!261, !262, !"cmpfunc: %b"}
!262 = distinct !{!262, !"cmpfunc"}
!263 = distinct !{!263, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!264 = distinct !{!264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!265 = distinct !{!265, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!266 = distinct !{!266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!267 = !{!268, !269, !270, !271}
!268 = distinct !{!268, !262, !"cmpfunc: %a"}
!269 = distinct !{!269, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!270 = distinct !{!270, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!271 = distinct !{!271, !272, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %_0"}
!272 = distinct !{!272, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E"}
!273 = !{!271, !274, !258}
!274 = distinct !{!274, !272, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %is_less"}
!275 = !{!276, !278, !280, !258}
!276 = distinct !{!276, !277, !"cmpfunc: %b"}
!277 = distinct !{!277, !"cmpfunc"}
!278 = distinct !{!278, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!279 = distinct !{!279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!280 = distinct !{!280, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!281 = distinct !{!281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!282 = !{!283, !284, !285, !286}
!283 = distinct !{!283, !277, !"cmpfunc: %a"}
!284 = distinct !{!284, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!285 = distinct !{!285, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!286 = distinct !{!286, !287, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %_0"}
!287 = distinct !{!287, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E"}
!288 = !{!286, !289, !258}
!289 = distinct !{!289, !287, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %is_less"}
!290 = !{!291}
!291 = distinct !{!291, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It1"}
!292 = !{!293}
!293 = distinct !{!293, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It1"}
!294 = !{!295}
!295 = distinct !{!295, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It1"}
!296 = !{!271}
!297 = !{!298}
!298 = distinct !{!298, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It1"}
!299 = !{!300}
!300 = distinct !{!300, !262, !"cmpfunc: %a:It1"}
!301 = !{!302}
!302 = distinct !{!302, !262, !"cmpfunc: %b:It1"}
!303 = !{!300, !295, !291, !258}
!304 = !{!302, !298, !293, !271}
!305 = !{!302, !298, !293, !258}
!306 = !{!300, !295, !291, !271}
!307 = !{!308}
!308 = distinct !{!308, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It1"}
!309 = !{!310}
!310 = distinct !{!310, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It1"}
!311 = !{!312}
!312 = distinct !{!312, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It1"}
!313 = !{!286}
!314 = !{!315}
!315 = distinct !{!315, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It1"}
!316 = !{!317}
!317 = distinct !{!317, !277, !"cmpfunc: %a:It1"}
!318 = !{!319}
!319 = distinct !{!319, !277, !"cmpfunc: %b:It1"}
!320 = !{!317, !312, !308, !258}
!321 = !{!319, !315, !310, !286}
!322 = !{!319, !315, !310, !258}
!323 = !{!317, !312, !308, !286}
!324 = !{!325}
!325 = distinct !{!325, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It2"}
!326 = !{!327}
!327 = distinct !{!327, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It2"}
!328 = !{!329}
!329 = distinct !{!329, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It2"}
!330 = !{!331}
!331 = distinct !{!331, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It2"}
!332 = !{!333}
!333 = distinct !{!333, !262, !"cmpfunc: %a:It2"}
!334 = !{!335}
!335 = distinct !{!335, !262, !"cmpfunc: %b:It2"}
!336 = !{!333, !329, !325, !258}
!337 = !{!335, !331, !327, !271}
!338 = !{!335, !331, !327, !258}
!339 = !{!333, !329, !325, !271}
!340 = !{!341}
!341 = distinct !{!341, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It2"}
!342 = !{!343}
!343 = distinct !{!343, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It2"}
!344 = !{!345}
!345 = distinct !{!345, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It2"}
!346 = !{!347}
!347 = distinct !{!347, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It2"}
!348 = !{!349}
!349 = distinct !{!349, !277, !"cmpfunc: %a:It2"}
!350 = !{!351}
!351 = distinct !{!351, !277, !"cmpfunc: %b:It2"}
!352 = !{!349, !345, !341, !258}
!353 = !{!351, !347, !343, !286}
!354 = !{!351, !347, !343, !258}
!355 = !{!349, !345, !341, !286}
!356 = !{!357}
!357 = distinct !{!357, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It3"}
!358 = !{!359}
!359 = distinct !{!359, !266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It3"}
!360 = !{!361}
!361 = distinct !{!361, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It3"}
!362 = !{!363}
!363 = distinct !{!363, !264, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It3"}
!364 = !{!365}
!365 = distinct !{!365, !262, !"cmpfunc: %a:It3"}
!366 = !{!367}
!367 = distinct !{!367, !262, !"cmpfunc: %b:It3"}
!368 = !{!365, !361, !357, !258}
!369 = !{!367, !363, !359, !271}
!370 = !{!367, !363, !359, !258}
!371 = !{!365, !361, !357, !271}
!372 = !{!373}
!373 = distinct !{!373, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It3"}
!374 = !{!375}
!375 = distinct !{!375, !281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It3"}
!376 = !{!377}
!377 = distinct !{!377, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It3"}
!378 = !{!379}
!379 = distinct !{!379, !279, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It3"}
!380 = !{!381}
!381 = distinct !{!381, !277, !"cmpfunc: %a:It3"}
!382 = !{!383}
!383 = distinct !{!383, !277, !"cmpfunc: %b:It3"}
!384 = !{!381, !377, !373, !258}
!385 = !{!383, !379, !375, !286}
!386 = !{!383, !379, !375, !258}
!387 = !{!381, !377, !373, !286}
!388 = !{!"branch_weights", i32 4001, i32 4000000}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!391 = distinct !{!391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!396 = distinct !{!396, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!399 = !{!398, !393}
!400 = !{!395, !390}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!403 = distinct !{!403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!408 = distinct !{!408, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!411 = !{!410, !405}
!412 = !{!407, !402}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!415 = distinct !{!415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!420 = distinct !{!420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!423 = !{!422, !417}
!424 = !{!419, !414}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!427 = distinct !{!427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!432 = distinct !{!432, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!435 = !{!434, !429}
!436 = !{!431, !426}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!439 = distinct !{!439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!444 = distinct !{!444, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!447 = !{!446, !441}
!448 = !{!443, !438}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!451 = distinct !{!451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!456 = distinct !{!456, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!459 = !{!458, !453}
!460 = !{!455, !450}
!461 = !{!462}
!462 = distinct !{!462, !463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!463 = distinct !{!463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!464 = !{!465}
!465 = distinct !{!465, !463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!468 = distinct !{!468, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!471 = !{!470, !465}
!472 = !{!467, !462}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!475 = distinct !{!475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!480 = distinct !{!480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!483 = !{!482, !477}
!484 = !{!479, !474}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!487 = distinct !{!487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!488 = !{!489}
!489 = distinct !{!489, !487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!492 = distinct !{!492, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!493 = !{!494}
!494 = distinct !{!494, !492, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!495 = !{!494, !489}
!496 = !{!491, !486}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!499 = distinct !{!499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!504 = distinct !{!504, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!507 = !{!506, !501}
!508 = !{!503, !498}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E: %v.0"}
!511 = distinct !{!511, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E"}
!512 = !{!513, !515, !510}
!513 = distinct !{!513, !514, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %_0"}
!514 = distinct !{!514, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE"}
!515 = distinct !{!515, !514, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %is_less"}
!516 = !{!517, !519, !510}
!517 = distinct !{!517, !518, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %_0"}
!518 = distinct !{!518, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E"}
!519 = distinct !{!519, !518, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %is_less"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It1"}
!522 = distinct !{!522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It1"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It1"}
!527 = distinct !{!527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!528 = !{!513}
!529 = !{!530}
!530 = distinct !{!530, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It1"}
!531 = !{!530, !524, !510}
!532 = !{!526, !521, !513}
!533 = !{!526, !521, !510}
!534 = !{!530, !524, !513}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It1"}
!537 = distinct !{!537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!538 = !{!539}
!539 = distinct !{!539, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It1"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It1"}
!542 = distinct !{!542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!543 = !{!517}
!544 = !{!545}
!545 = distinct !{!545, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It1"}
!546 = !{!545, !539, !510}
!547 = !{!541, !536, !517}
!548 = !{!541, !536, !510}
!549 = !{!545, !539, !517}
!550 = !{!551}
!551 = distinct !{!551, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It2"}
!552 = !{!553}
!553 = distinct !{!553, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It2"}
!554 = !{!555}
!555 = distinct !{!555, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It2"}
!556 = !{!557}
!557 = distinct !{!557, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It2"}
!558 = !{!557, !553, !510}
!559 = !{!555, !551, !513}
!560 = !{!555, !551, !510}
!561 = !{!557, !553, !513}
!562 = !{!563}
!563 = distinct !{!563, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It2"}
!564 = !{!565}
!565 = distinct !{!565, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It2"}
!566 = !{!567}
!567 = distinct !{!567, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It2"}
!568 = !{!569}
!569 = distinct !{!569, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It2"}
!570 = !{!569, !565, !510}
!571 = !{!567, !563, !517}
!572 = !{!567, !563, !510}
!573 = !{!569, !565, !517}
!574 = !{!575}
!575 = distinct !{!575, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It3"}
!576 = !{!577}
!577 = distinct !{!577, !522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It3"}
!578 = !{!579}
!579 = distinct !{!579, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It3"}
!580 = !{!581}
!581 = distinct !{!581, !527, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It3"}
!582 = !{!581, !577, !510}
!583 = !{!579, !575, !513}
!584 = !{!579, !575, !510}
!585 = !{!581, !577, !513}
!586 = !{!587}
!587 = distinct !{!587, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It3"}
!588 = !{!589}
!589 = distinct !{!589, !537, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It3"}
!590 = !{!591}
!591 = distinct !{!591, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It3"}
!592 = !{!593}
!593 = distinct !{!593, !542, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It3"}
!594 = !{!593, !589, !510}
!595 = !{!591, !587, !517}
!596 = !{!591, !587, !510}
!597 = !{!593, !589, !517}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!600 = distinct !{!600, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!605 = distinct !{!605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!608 = !{!604, !599}
!609 = !{!607, !602}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!612 = distinct !{!612, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!617 = distinct !{!617, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!620 = !{!616, !611}
!621 = !{!619, !614}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!624 = distinct !{!624, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!629 = distinct !{!629, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!630 = !{!631}
!631 = distinct !{!631, !629, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!632 = !{!628, !623}
!633 = !{!631, !626}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!636 = distinct !{!636, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!637 = !{!638}
!638 = distinct !{!638, !636, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!641 = distinct !{!641, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!642 = !{!643}
!643 = distinct !{!643, !641, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!644 = !{!640, !635}
!645 = !{!643, !638}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!648 = distinct !{!648, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!649 = !{!650}
!650 = distinct !{!650, !648, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!653 = distinct !{!653, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!656 = !{!652, !647}
!657 = !{!655, !650}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!660 = distinct !{!660, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!661 = !{!662}
!662 = distinct !{!662, !660, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!665 = distinct !{!665, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!668 = !{!664, !659}
!669 = !{!667, !662}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!672 = distinct !{!672, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!677 = distinct !{!677, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!678 = !{!679}
!679 = distinct !{!679, !677, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!680 = !{!676, !671}
!681 = !{!679, !674}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!684 = distinct !{!684, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!685 = !{!686}
!686 = distinct !{!686, !684, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!689 = distinct !{!689, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!692 = !{!688, !683}
!693 = !{!691, !686}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!696 = distinct !{!696, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!701 = distinct !{!701, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!704 = !{!700, !695}
!705 = !{!703, !698}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!708 = distinct !{!708, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!713 = distinct !{!713, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!716 = !{!712, !707}
!717 = !{!715, !710}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E: %v.0"}
!720 = distinct !{!720, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E"}
!721 = !{!722, !724, !719}
!722 = distinct !{!722, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %_0"}
!723 = distinct !{!723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E"}
!724 = distinct !{!724, !723, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %is_less"}
!725 = !{!726, !728, !719}
!726 = distinct !{!726, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %_0"}
!727 = distinct !{!727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE"}
!728 = distinct !{!728, !727, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %is_less"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It1"}
!731 = distinct !{!731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!732 = !{!733}
!733 = distinct !{!733, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It1"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!736 = distinct !{!736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!737 = !{!722}
!738 = !{!739}
!739 = distinct !{!739, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!740 = !{!735, !730, !719}
!741 = !{!739, !733, !722}
!742 = !{!739, !733, !719}
!743 = !{!735, !730, !722}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It1"}
!746 = distinct !{!746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It1"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!751 = distinct !{!751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!752 = !{!726}
!753 = !{!754}
!754 = distinct !{!754, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!755 = !{!750, !745, !719}
!756 = !{!754, !748, !726}
!757 = !{!754, !748, !719}
!758 = !{!750, !745, !726}
!759 = !{!760}
!760 = distinct !{!760, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It2"}
!761 = !{!762}
!762 = distinct !{!762, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It2"}
!763 = !{!764}
!764 = distinct !{!764, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!765 = !{!766}
!766 = distinct !{!766, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!767 = !{!764, !760, !719}
!768 = !{!766, !762, !722}
!769 = !{!766, !762, !719}
!770 = !{!764, !760, !722}
!771 = !{!772}
!772 = distinct !{!772, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It2"}
!773 = !{!774}
!774 = distinct !{!774, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It2"}
!775 = !{!776}
!776 = distinct !{!776, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It2"}
!777 = !{!778}
!778 = distinct !{!778, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It2"}
!779 = !{!776, !772, !719}
!780 = !{!778, !774, !726}
!781 = !{!778, !774, !719}
!782 = !{!776, !772, !726}
!783 = !{!784}
!784 = distinct !{!784, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It3"}
!785 = !{!786}
!786 = distinct !{!786, !731, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It3"}
!787 = !{!788}
!788 = distinct !{!788, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!789 = !{!790}
!790 = distinct !{!790, !736, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!791 = !{!788, !784, !719}
!792 = !{!790, !786, !722}
!793 = !{!790, !786, !719}
!794 = !{!788, !784, !722}
!795 = !{!796}
!796 = distinct !{!796, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It3"}
!797 = !{!798}
!798 = distinct !{!798, !746, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It3"}
!799 = !{!800}
!800 = distinct !{!800, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It3"}
!801 = !{!802}
!802 = distinct !{!802, !751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It3"}
!803 = !{!800, !796, !719}
!804 = !{!802, !798, !726}
!805 = !{!802, !798, !719}
!806 = !{!800, !796, !726}
!807 = !{!"branch_weights", i32 2002, i32 2000}
!808 = !{!809, !811}
!809 = distinct !{!809, !810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE: %_0"}
!810 = distinct !{!810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE"}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!812 = distinct !{!812, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!813 = !{!814, !816, !818, !820}
!814 = distinct !{!814, !815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!815 = distinct !{!815, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!816 = distinct !{!816, !817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!817 = distinct !{!817, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!818 = distinct !{!818, !819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!819 = distinct !{!819, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!820 = distinct !{!820, !821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!821 = distinct !{!821, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!822 = !{!823, !825, !827, !829}
!823 = distinct !{!823, !824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!824 = distinct !{!824, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!825 = distinct !{!825, !826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!826 = distinct !{!826, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!827 = distinct !{!827, !828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!828 = distinct !{!828, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!829 = distinct !{!829, !830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!830 = distinct !{!830, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!831 = !{!832, !834}
!832 = distinct !{!832, !833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE: %_0"}
!833 = distinct !{!833, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE"}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!835 = distinct !{!835, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!836 = !{!837, !839, !841, !843}
!837 = distinct !{!837, !838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!838 = distinct !{!838, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!839 = distinct !{!839, !840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!840 = distinct !{!840, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!841 = distinct !{!841, !842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!842 = distinct !{!842, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!843 = distinct !{!843, !844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!844 = distinct !{!844, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!845 = !{!846, !848, !850, !852}
!846 = distinct !{!846, !847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!847 = distinct !{!847, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!848 = distinct !{!848, !849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!849 = distinct !{!849, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!850 = distinct !{!850, !851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!851 = distinct !{!851, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!852 = distinct !{!852, !853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!853 = distinct !{!853, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!854 = !{!855, !857}
!855 = distinct !{!855, !856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE: %_0"}
!856 = distinct !{!856, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hda16b5c95f4b5f1cE"}
!857 = distinct !{!857, !858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E: %_0"}
!858 = distinct !{!858, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hd84d9ddad729a071E"}
!859 = !{!860, !862, !864, !866}
!860 = distinct !{!860, !861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!861 = distinct !{!861, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!862 = distinct !{!862, !863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!863 = distinct !{!863, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!864 = distinct !{!864, !865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!865 = distinct !{!865, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!866 = distinct !{!866, !867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!867 = distinct !{!867, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!868 = !{!869, !871, !873, !875}
!869 = distinct !{!869, !870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!870 = distinct !{!870, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!871 = distinct !{!871, !872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!872 = distinct !{!872, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!873 = distinct !{!873, !874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!874 = distinct !{!874, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!875 = distinct !{!875, !876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!876 = distinct !{!876, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!879 = distinct !{!879, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!884 = distinct !{!884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E: %scratch.0"}
!887 = distinct !{!887, !"_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E"}
!888 = !{!889}
!889 = distinct !{!889, !884, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!890 = !{!883, !878}
!891 = !{!889, !881, !886}
!892 = !{!889, !881}
!893 = !{!883, !878, !886}
!894 = !{!895, !897}
!895 = distinct !{!895, !896, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!896 = distinct !{!896, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!897 = distinct !{!897, !898, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!898 = distinct !{!898, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!899 = !{!900, !901, !886}
!900 = distinct !{!900, !896, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!901 = distinct !{!901, !898, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!902 = !{!903, !905}
!903 = distinct !{!903, !904, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!904 = distinct !{!904, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!905 = distinct !{!905, !906, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!906 = distinct !{!906, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!907 = !{!908, !909, !886}
!908 = distinct !{!908, !904, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!909 = distinct !{!909, !906, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!912 = distinct !{!912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!913 = !{!886, !914}
!914 = distinct !{!914, !887, !"_ZN4core5slice4sort6stable5drift10create_run17h53f583370023a278E: %is_less"}
!915 = !{!916}
!916 = distinct !{!916, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!917 = !{!911, !918}
!918 = distinct !{!918, !919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!919 = distinct !{!919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!920 = !{!916, !886, !914}
!921 = !{!916, !918}
!922 = !{!911, !886, !914}
!923 = distinct !{!923, !924, !925}
!924 = !{!"llvm.loop.isvectorized", i32 1}
!925 = !{!"llvm.loop.unroll.runtime.disable"}
!926 = distinct !{!926, !925, !924}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E: %v.0"}
!929 = distinct !{!929, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"_ZN4core5slice4sort6stable5merge5merge17h69089725a8784b79E: %scratch.0"}
!932 = !{!928, !931}
!933 = !{!934}
!934 = distinct !{!934, !935, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!935 = distinct !{!935, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!936 = !{!937}
!937 = distinct !{!937, !935, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!940 = distinct !{!940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!943 = !{!939, !934, !931}
!944 = !{!942, !937, !945, !928}
!945 = distinct !{!945, !946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE: %self"}
!946 = distinct !{!946, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc2d094a7b49a94caE"}
!947 = !{!942, !937, !928}
!948 = !{!939, !934, !945, !931}
!949 = !{!945, !931}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!952 = distinct !{!952, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!957 = distinct !{!957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!960 = !{!956, !951, !928}
!961 = !{!959, !954, !962, !931}
!962 = distinct !{!962, !963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE: %self"}
!963 = distinct !{!963, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h8ee448356ffb8f1eE"}
!964 = !{!959, !954, !931}
!965 = !{!956, !951, !962, !928}
!966 = !{!962, !931}
!967 = !{!968, !970}
!968 = distinct !{!968, !969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!969 = distinct !{!969, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!970 = distinct !{!970, !971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!971 = distinct !{!971, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!974 = distinct !{!974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!979 = distinct !{!979, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE: %scratch.0"}
!982 = distinct !{!982, !"_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE"}
!983 = !{!984}
!984 = distinct !{!984, !979, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!985 = !{!984, !976}
!986 = !{!978, !973, !981}
!987 = !{!978, !973}
!988 = !{!984, !976, !981}
!989 = !{!990, !992}
!990 = distinct !{!990, !991, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!991 = distinct !{!991, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!992 = distinct !{!992, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!993 = distinct !{!993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!994 = !{!995, !996, !981}
!995 = distinct !{!995, !991, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!996 = distinct !{!996, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!997 = !{!998, !1000}
!998 = distinct !{!998, !999, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!999 = distinct !{!999, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1000 = distinct !{!1000, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1001 = distinct !{!1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1002 = !{!1003, !1004, !981}
!1003 = distinct !{!1003, !999, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1004 = distinct !{!1004, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!1007 = distinct !{!1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!1008 = !{!981, !1009}
!1009 = distinct !{!1009, !982, !"_ZN4core5slice4sort6stable5drift10create_run17h2fd763a9e7ad93ceE: %is_less"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1007, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!1012 = !{!1006, !1013}
!1013 = distinct !{!1013, !1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!1014 = distinct !{!1014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!1015 = !{!1011, !981, !1009}
!1016 = !{!1011, !1013}
!1017 = !{!1006, !981, !1009}
!1018 = distinct !{!1018, !924, !925}
!1019 = distinct !{!1019, !925, !924}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE: %v.0"}
!1022 = distinct !{!1022, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core5slice4sort6stable5merge5merge17h9a634e01ee22240cE: %scratch.0"}
!1025 = !{!1021, !1024}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1028 = distinct !{!1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1033 = distinct !{!1033, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1036 = !{!1035, !1030, !1021}
!1037 = !{!1032, !1027, !1038, !1024}
!1038 = distinct !{!1038, !1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E: %self"}
!1039 = distinct !{!1039, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc6029465aba12082E"}
!1040 = !{!1032, !1027, !1024}
!1041 = !{!1035, !1030, !1038, !1021}
!1042 = !{!1038, !1024}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1045 = distinct !{!1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1050, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1050 = distinct !{!1050, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1050, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1053 = !{!1052, !1047, !1024}
!1054 = !{!1049, !1044, !1055, !1021}
!1055 = distinct !{!1055, !1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E: %self"}
!1056 = distinct !{!1056, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h1e01732d9a163077E"}
!1057 = !{!1049, !1044, !1021}
!1058 = !{!1052, !1047, !1055, !1024}
!1059 = !{!1055, !1024}
!1060 = !{!1061, !1063}
!1061 = distinct !{!1061, !1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!1062 = distinct !{!1062, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!1064 = distinct !{!1064, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1067 = distinct !{!1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1072 = distinct !{!1072, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E: %scratch.0"}
!1075 = distinct !{!1075, !"_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1072, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
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
!1090 = distinct !{!1090, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1091 = distinct !{!1091, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1093 = distinct !{!1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1094 = !{!1095, !1096, !1097, !1074}
!1095 = distinct !{!1095, !1089, !"cmpfunc: %b"}
!1096 = distinct !{!1096, !1091, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1097 = distinct !{!1097, !1093, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1098 = !{!1099, !1101, !1103}
!1099 = distinct !{!1099, !1100, !"cmpfunc: %a"}
!1100 = distinct !{!1100, !"cmpfunc"}
!1101 = distinct !{!1101, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1102 = distinct !{!1102, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1103 = distinct !{!1103, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1104 = distinct !{!1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1105 = !{!1106, !1107, !1108, !1074}
!1106 = distinct !{!1106, !1100, !"cmpfunc: %b"}
!1107 = distinct !{!1107, !1102, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1108 = distinct !{!1108, !1104, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %a.0"}
!1111 = distinct !{!1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E"}
!1112 = !{!1074, !1113}
!1113 = distinct !{!1113, !1075, !"_ZN4core5slice4sort6stable5drift10create_run17h8f873bbb0bf7cbc3E: %is_less"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1111, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc9b2c2e4c74affa1E: %b.0"}
!1116 = !{!1110, !1117}
!1117 = distinct !{!1117, !1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E: %self.0"}
!1118 = distinct !{!1118, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha4f5839b3d8bace1E"}
!1119 = !{!1115, !1074, !1113}
!1120 = !{!1115, !1117}
!1121 = !{!1110, !1074, !1113}
!1122 = distinct !{!1122, !924, !925}
!1123 = distinct !{!1123, !925, !924}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E: %v.0"}
!1126 = distinct !{!1126, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN4core5slice4sort6stable5merge5merge17h4b08aec8dd5d88b3E: %scratch.0"}
!1129 = !{!1125, !1128}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1132 = distinct !{!1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1137 = distinct !{!1137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"cmpfunc: %a"}
!1142 = distinct !{!1142, !"cmpfunc"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"cmpfunc: %b"}
!1145 = !{!1141, !1136, !1131, !1128}
!1146 = !{!1144, !1139, !1134, !1147, !1125}
!1147 = distinct !{!1147, !1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE: %self"}
!1148 = distinct !{!1148, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd7e1e29481fb767aE"}
!1149 = !{!1144, !1139, !1134, !1125}
!1150 = !{!1141, !1136, !1131, !1147, !1128}
!1151 = !{!1147, !1128}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1154 = distinct !{!1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1159 = distinct !{!1159, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"cmpfunc: %a"}
!1164 = distinct !{!1164, !"cmpfunc"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"cmpfunc: %b"}
!1167 = !{!1163, !1158, !1153, !1125}
!1168 = !{!1166, !1161, !1156, !1169, !1128}
!1169 = distinct !{!1169, !1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE: %self"}
!1170 = distinct !{!1170, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h70e5bf16439565aaE"}
!1171 = !{!1166, !1161, !1156, !1128}
!1172 = !{!1163, !1158, !1153, !1169, !1125}
!1173 = !{!1169, !1128}
!1174 = !{!1175, !1177}
!1175 = distinct !{!1175, !1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E: %self"}
!1176 = distinct !{!1176, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dd6a58a928de19E"}
!1177 = distinct !{!1177, !1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E: %_1"}
!1178 = distinct !{!1178, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hbdd8218f01040345E"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E: %v.0"}
!1181 = distinct !{!1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E: %scratch.0"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1191 = distinct !{!1191, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1194 = !{!1193, !1188, !1180}
!1195 = !{!1190, !1185, !1183, !1196}
!1196 = distinct !{!1196, !1181, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0e71d9fded928c77E: %is_less"}
!1197 = !{!1190, !1185, !1180}
!1198 = !{!1193, !1188, !1183, !1196}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1201 = distinct !{!1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1206 = distinct !{!1206, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1209 = !{!1208, !1203, !1180}
!1210 = !{!1205, !1200, !1183, !1196}
!1211 = !{!1205, !1200, !1180}
!1212 = !{!1208, !1203, !1183, !1196}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1215 = distinct !{!1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1220 = distinct !{!1220, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1223 = !{!1222, !1217, !1180}
!1224 = !{!1219, !1214, !1183, !1196}
!1225 = !{!1219, !1214, !1180}
!1226 = !{!1222, !1217, !1183, !1196}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1229 = distinct !{!1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1234 = distinct !{!1234, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1237 = !{!1236, !1231, !1180}
!1238 = !{!1233, !1228, !1183, !1196}
!1239 = !{!1233, !1228, !1180}
!1240 = !{!1236, !1231, !1183, !1196}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1243 = distinct !{!1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1248 = distinct !{!1248, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1248, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1251 = !{!1250, !1245, !1180}
!1252 = !{!1247, !1242, !1183, !1196}
!1253 = !{!1247, !1242, !1180}
!1254 = !{!1250, !1245, !1183, !1196}
!1255 = !{!1180, !1196}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1258 = distinct !{!1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1263 = distinct !{!1263, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1266 = !{!1265, !1260, !1180}
!1267 = !{!1262, !1257, !1183, !1196}
!1268 = !{!1262, !1257, !1180}
!1269 = !{!1265, !1260, !1183, !1196}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1272 = distinct !{!1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1277 = distinct !{!1277, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1280 = !{!1279, !1274, !1180}
!1281 = !{!1276, !1271, !1183, !1196}
!1282 = !{!1276, !1271, !1180}
!1283 = !{!1279, !1274, !1183, !1196}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1286 = distinct !{!1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1291 = distinct !{!1291, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1294 = !{!1293, !1288, !1180}
!1295 = !{!1290, !1285, !1183, !1196}
!1296 = !{!1290, !1285, !1180}
!1297 = !{!1293, !1288, !1183, !1196}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1300 = distinct !{!1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1305 = distinct !{!1305, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1308 = !{!1307, !1302, !1180}
!1309 = !{!1304, !1299, !1183, !1196}
!1310 = !{!1304, !1299, !1180}
!1311 = !{!1307, !1302, !1183, !1196}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1314 = distinct !{!1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1319 = distinct !{!1319, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1322 = !{!1321, !1316, !1180}
!1323 = !{!1318, !1313, !1183, !1196}
!1324 = !{!1318, !1313, !1180}
!1325 = !{!1321, !1316, !1183, !1196}
!1326 = !{!1183, !1196}
!1327 = !{!1328, !1330, !1183}
!1328 = distinct !{!1328, !1329, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1329 = distinct !{!1329, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1330 = distinct !{!1330, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1331 = distinct !{!1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1332 = !{!1333, !1334, !1180, !1196}
!1333 = distinct !{!1333, !1329, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1334 = distinct !{!1334, !1331, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1335 = !{!1336, !1338, !1183}
!1336 = distinct !{!1336, !1337, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1337 = distinct !{!1337, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1338 = distinct !{!1338, !1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1339 = distinct !{!1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1340 = !{!1341, !1342, !1180, !1196}
!1341 = distinct !{!1341, !1337, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1342 = distinct !{!1342, !1339, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1343 = !{!1344, !1346, !1180, !1196}
!1344 = distinct !{!1344, !1345, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1345 = distinct !{!1345, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1346 = distinct !{!1346, !1347, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1347 = distinct !{!1347, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E: %v.0"}
!1350 = distinct !{!1350, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h6a6205532b808d65E"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1353 = distinct !{!1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1358 = distinct !{!1358, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %_0"}
!1361 = distinct !{!1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1358, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1364 = !{!1363, !1355, !1349, !1183}
!1365 = !{!1357, !1352, !1360, !1180, !1196}
!1366 = !{!1357, !1352, !1349, !1183}
!1367 = !{!1363, !1355, !1360, !1180, !1196}
!1368 = !{!1360, !1369, !1349, !1183, !1196}
!1369 = distinct !{!1369, !1361, !"_ZN4core5slice4sort6shared9smallsort8merge_up17haf367ba93dbccd5dE: %is_less"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1372 = distinct !{!1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1377 = distinct !{!1377, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %_0"}
!1380 = distinct !{!1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1377, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1383 = !{!1382, !1374, !1349, !1183}
!1384 = !{!1376, !1371, !1379, !1180, !1196}
!1385 = !{!1376, !1371, !1349, !1183}
!1386 = !{!1382, !1374, !1379, !1180, !1196}
!1387 = !{!1379, !1388, !1349, !1183, !1196}
!1388 = distinct !{!1388, !1380, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2d4ca25c727c2459E: %is_less"}
!1389 = !{!1349, !1183}
!1390 = !{!1349, !1183, !1196}
!1391 = !{!1180, !1183, !1196}
!1392 = !{!1180, !1183}
!1393 = !{!1394, !1396, !1196}
!1394 = distinct !{!1394, !1395, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1395 = distinct !{!1395, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1396 = distinct !{!1396, !1397, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1397 = distinct !{!1397, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1400 = distinct !{!1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1400, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1405 = distinct !{!1405, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E: %c"}
!1408 = distinct !{!1408, !"_ZN4core5slice4sort6shared5pivot7median317h2b013e81b1c565a3E"}
!1409 = !{!1410}
!1410 = distinct !{!1410, !1405, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1411 = !{!1410, !1402, !1412}
!1412 = distinct !{!1412, !1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE: %v.0"}
!1413 = distinct !{!1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE"}
!1414 = !{!1404, !1399, !1407, !1415}
!1415 = distinct !{!1415, !1413, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17heb9877e236b5cd0cE: %is_less"}
!1416 = !{!1404, !1399, !1412}
!1417 = !{!1410, !1402, !1407, !1415}
!1418 = !{!1419, !1421, !1412}
!1419 = distinct !{!1419, !1420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1420 = distinct !{!1420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1421 = distinct !{!1421, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1422 = distinct !{!1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1423 = !{!1424, !1425, !1415}
!1424 = distinct !{!1424, !1420, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1425 = distinct !{!1425, !1422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1426 = !{!1427, !1429}
!1427 = distinct !{!1427, !1428, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1428 = distinct !{!1428, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1429 = distinct !{!1429, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1430 = distinct !{!1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1431 = !{!1432, !1433}
!1432 = distinct !{!1432, !1428, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1433 = distinct !{!1433, !1430, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h51f3f22bdced172eE: %v.0"}
!1436 = distinct !{!1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h51f3f22bdced172eE"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h51f3f22bdced172eE: %scratch.0"}
!1439 = !{!1440, !1442, !1435}
!1440 = distinct !{!1440, !1441, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1441 = distinct !{!1441, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1442 = distinct !{!1442, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1443 = distinct !{!1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1444 = !{!1445, !1446, !1438}
!1445 = distinct !{!1445, !1441, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1446 = distinct !{!1446, !1443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1447 = !{!1446}
!1448 = !{!1442}
!1449 = !{!1445}
!1450 = !{!1440}
!1451 = !{!1445, !1446, !1435}
!1452 = !{!1440, !1442, !1438}
!1453 = !{!1454, !1435}
!1454 = distinct !{!1454, !1455, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1455 = distinct !{!1455, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1456 = !{!1457, !1459, !1435}
!1457 = distinct !{!1457, !1458, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1458 = distinct !{!1458, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1459 = distinct !{!1459, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1460 = distinct !{!1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1461 = !{!1462, !1463, !1438}
!1462 = distinct !{!1462, !1458, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1463 = distinct !{!1463, !1460, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1464 = !{!1465, !1435}
!1465 = distinct !{!1465, !1466, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1466 = distinct !{!1466, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1467 = !{!1468, !1470, !1435}
!1468 = distinct !{!1468, !1469, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1469 = distinct !{!1469, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1470 = distinct !{!1470, !1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1471 = distinct !{!1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1472 = !{!1473, !1474, !1438}
!1473 = distinct !{!1473, !1469, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1474 = distinct !{!1474, !1471, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1475 = !{!1476, !1435}
!1476 = distinct !{!1476, !1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1477 = distinct !{!1477, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1478 = !{!1479, !1481, !1435}
!1479 = distinct !{!1479, !1480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1480 = distinct !{!1480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1481 = distinct !{!1481, !1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1482 = distinct !{!1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1483 = !{!1484, !1485, !1438}
!1484 = distinct !{!1484, !1480, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1485 = distinct !{!1485, !1482, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1486 = !{!1487, !1435}
!1487 = distinct !{!1487, !1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1488 = distinct !{!1488, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1489 = !{!1490, !1492, !1435}
!1490 = distinct !{!1490, !1491, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1491 = distinct !{!1491, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1492 = distinct !{!1492, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1493 = distinct !{!1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1494 = !{!1495, !1496, !1438}
!1495 = distinct !{!1495, !1491, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1496 = distinct !{!1496, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1497 = !{!1496}
!1498 = !{!1492}
!1499 = !{!1495}
!1500 = !{!1490}
!1501 = !{!1495, !1496, !1435}
!1502 = !{!1490, !1492, !1438}
!1503 = !{!1504, !1435}
!1504 = distinct !{!1504, !1505, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1505 = distinct !{!1505, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1506 = !{!1507, !1438}
!1507 = distinct !{!1507, !1508, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1508 = distinct !{!1508, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1509 = !{!1507, !1435}
!1510 = !{!1435, !1438}
!1511 = distinct !{!1511, !924, !925}
!1512 = distinct !{!1512, !925, !924}
!1513 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1514 = !{!1515, !1517}
!1515 = distinct !{!1515, !1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!1516 = distinct !{!1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!1517 = distinct !{!1517, !1516, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E: %v.0"}
!1520 = distinct !{!1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1520, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h04a79a87b4de8913E: %scratch.0"}
!1523 = !{!1524, !1526, !1528, !1519}
!1524 = distinct !{!1524, !1525, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1525 = distinct !{!1525, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1526 = distinct !{!1526, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1527 = distinct !{!1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1528 = distinct !{!1528, !1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!1529 = distinct !{!1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!1530 = !{!1531, !1532, !1533, !1522}
!1531 = distinct !{!1531, !1525, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1532 = distinct !{!1532, !1527, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1533 = distinct !{!1533, !1529, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!1534 = !{!1533}
!1535 = !{!1528}
!1536 = !{!1526}
!1537 = !{!1532}
!1538 = !{!1524}
!1539 = !{!1531}
!1540 = !{!1531, !1532, !1533, !1519}
!1541 = !{!1524, !1526, !1528, !1522}
!1542 = !{!1543, !1519}
!1543 = distinct !{!1543, !1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1544 = distinct !{!1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1545 = !{!1546, !1548, !1550, !1519}
!1546 = distinct !{!1546, !1547, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1547 = distinct !{!1547, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1548 = distinct !{!1548, !1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1549 = distinct !{!1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1550 = distinct !{!1550, !1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!1551 = distinct !{!1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!1552 = !{!1553, !1554, !1555, !1522}
!1553 = distinct !{!1553, !1547, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1554 = distinct !{!1554, !1549, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1555 = distinct !{!1555, !1551, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!1556 = !{!1557, !1519}
!1557 = distinct !{!1557, !1558, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1558 = distinct !{!1558, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1559 = !{!1560, !1562, !1564, !1519}
!1560 = distinct !{!1560, !1561, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1561 = distinct !{!1561, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1562 = distinct !{!1562, !1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1563 = distinct !{!1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1564 = distinct !{!1564, !1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!1565 = distinct !{!1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!1566 = !{!1567, !1568, !1569, !1522}
!1567 = distinct !{!1567, !1561, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1568 = distinct !{!1568, !1563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1569 = distinct !{!1569, !1565, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!1570 = !{!1571, !1519}
!1571 = distinct !{!1571, !1572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1572 = distinct !{!1572, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1573 = !{!1574, !1576, !1578, !1519}
!1574 = distinct !{!1574, !1575, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1575 = distinct !{!1575, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1576 = distinct !{!1576, !1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1577 = distinct !{!1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1578 = distinct !{!1578, !1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!1579 = distinct !{!1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!1580 = !{!1581, !1582, !1583, !1522}
!1581 = distinct !{!1581, !1575, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1582 = distinct !{!1582, !1577, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1583 = distinct !{!1583, !1579, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!1584 = !{!1585, !1519}
!1585 = distinct !{!1585, !1586, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1586 = distinct !{!1586, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1587 = !{!1588, !1590, !1592, !1519}
!1588 = distinct !{!1588, !1589, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!1589 = distinct !{!1589, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!1590 = distinct !{!1590, !1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!1591 = distinct !{!1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!1592 = distinct !{!1592, !1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %b"}
!1593 = distinct !{!1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E"}
!1594 = !{!1595, !1596, !1597, !1522}
!1595 = distinct !{!1595, !1589, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!1596 = distinct !{!1596, !1591, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!1597 = distinct !{!1597, !1593, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5e10846e07321fa9E: %a"}
!1598 = !{!1597}
!1599 = !{!1592}
!1600 = !{!1590}
!1601 = !{!1596}
!1602 = !{!1588}
!1603 = !{!1595}
!1604 = !{!1595, !1596, !1597, !1519}
!1605 = !{!1588, !1590, !1592, !1522}
!1606 = !{!1607, !1519}
!1607 = distinct !{!1607, !1608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1608 = distinct !{!1608, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1609 = !{!1610, !1522}
!1610 = distinct !{!1610, !1611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1611 = distinct !{!1611, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1612 = !{!1610, !1519}
!1613 = !{!1519, !1522}
!1614 = distinct !{!1614, !924, !925}
!1615 = distinct !{!1615, !925, !924}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E: %v.0"}
!1618 = distinct !{!1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E: %scratch.0"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1623 = distinct !{!1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1628, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1628 = distinct !{!1628, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1629 = !{!1630}
!1630 = distinct !{!1630, !1628, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"cmpfunc: %a"}
!1633 = distinct !{!1633, !"cmpfunc"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1633, !"cmpfunc: %b"}
!1636 = !{!1632, !1627, !1622, !1617}
!1637 = !{!1635, !1630, !1625, !1620, !1638}
!1638 = distinct !{!1638, !1618, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha6960f15295782f6E: %is_less"}
!1639 = !{!1635, !1630, !1625, !1617}
!1640 = !{!1632, !1627, !1622, !1620, !1638}
!1641 = !{!1642}
!1642 = distinct !{!1642, !1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1643 = distinct !{!1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1644 = !{!1645}
!1645 = distinct !{!1645, !1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1648, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1648 = distinct !{!1648, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1649 = !{!1650}
!1650 = distinct !{!1650, !1648, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1653, !"cmpfunc: %a"}
!1653 = distinct !{!1653, !"cmpfunc"}
!1654 = !{!1655}
!1655 = distinct !{!1655, !1653, !"cmpfunc: %b"}
!1656 = !{!1652, !1647, !1642, !1617}
!1657 = !{!1655, !1650, !1645, !1620, !1638}
!1658 = !{!1655, !1650, !1645, !1617}
!1659 = !{!1652, !1647, !1642, !1620, !1638}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1662 = distinct !{!1662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1663 = !{!1664}
!1664 = distinct !{!1664, !1662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1667 = distinct !{!1667, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"cmpfunc: %a"}
!1672 = distinct !{!1672, !"cmpfunc"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1672, !"cmpfunc: %b"}
!1675 = !{!1671, !1666, !1661, !1617}
!1676 = !{!1674, !1669, !1664, !1620, !1638}
!1677 = !{!1674, !1669, !1664, !1617}
!1678 = !{!1671, !1666, !1661, !1620, !1638}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1681 = distinct !{!1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1681, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1686, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1686 = distinct !{!1686, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1686, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"cmpfunc: %a"}
!1691 = distinct !{!1691, !"cmpfunc"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"cmpfunc: %b"}
!1694 = !{!1690, !1685, !1680, !1617}
!1695 = !{!1693, !1688, !1683, !1620, !1638}
!1696 = !{!1693, !1688, !1683, !1617}
!1697 = !{!1690, !1685, !1680, !1620, !1638}
!1698 = !{!1699}
!1699 = distinct !{!1699, !1700, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1700 = distinct !{!1700, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1700, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1703 = !{!1704}
!1704 = distinct !{!1704, !1705, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1705 = distinct !{!1705, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1705, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1710, !"cmpfunc: %a"}
!1710 = distinct !{!1710, !"cmpfunc"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1710, !"cmpfunc: %b"}
!1713 = !{!1709, !1704, !1699, !1617}
!1714 = !{!1712, !1707, !1702, !1620, !1638}
!1715 = !{!1712, !1707, !1702, !1617}
!1716 = !{!1709, !1704, !1699, !1620, !1638}
!1717 = !{!1617, !1638}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1720 = distinct !{!1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1720, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1723 = !{!1724}
!1724 = distinct !{!1724, !1725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1725 = distinct !{!1725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1725, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1730, !"cmpfunc: %a"}
!1730 = distinct !{!1730, !"cmpfunc"}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1730, !"cmpfunc: %b"}
!1733 = !{!1729, !1724, !1719, !1617}
!1734 = !{!1732, !1727, !1722, !1620, !1638}
!1735 = !{!1732, !1727, !1722, !1617}
!1736 = !{!1729, !1724, !1719, !1620, !1638}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1739 = distinct !{!1739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1740 = !{!1741}
!1741 = distinct !{!1741, !1739, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1744, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1744 = distinct !{!1744, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1744, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1749, !"cmpfunc: %a"}
!1749 = distinct !{!1749, !"cmpfunc"}
!1750 = !{!1751}
!1751 = distinct !{!1751, !1749, !"cmpfunc: %b"}
!1752 = !{!1748, !1743, !1738, !1617}
!1753 = !{!1751, !1746, !1741, !1620, !1638}
!1754 = !{!1751, !1746, !1741, !1617}
!1755 = !{!1748, !1743, !1738, !1620, !1638}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1758 = distinct !{!1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1758, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1763, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1763 = distinct !{!1763, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1763, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"cmpfunc: %a"}
!1768 = distinct !{!1768, !"cmpfunc"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1768, !"cmpfunc: %b"}
!1771 = !{!1767, !1762, !1757, !1617}
!1772 = !{!1770, !1765, !1760, !1620, !1638}
!1773 = !{!1770, !1765, !1760, !1617}
!1774 = !{!1767, !1762, !1757, !1620, !1638}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1777 = distinct !{!1777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1778 = !{!1779}
!1779 = distinct !{!1779, !1777, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1782 = distinct !{!1782, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1782, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"cmpfunc: %a"}
!1787 = distinct !{!1787, !"cmpfunc"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1787, !"cmpfunc: %b"}
!1790 = !{!1786, !1781, !1776, !1617}
!1791 = !{!1789, !1784, !1779, !1620, !1638}
!1792 = !{!1789, !1784, !1779, !1617}
!1793 = !{!1786, !1781, !1776, !1620, !1638}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1796 = distinct !{!1796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1796, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1801, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1801 = distinct !{!1801, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1801, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1806, !"cmpfunc: %a"}
!1806 = distinct !{!1806, !"cmpfunc"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1806, !"cmpfunc: %b"}
!1809 = !{!1805, !1800, !1795, !1617}
!1810 = !{!1808, !1803, !1798, !1620, !1638}
!1811 = !{!1808, !1803, !1798, !1617}
!1812 = !{!1805, !1800, !1795, !1620, !1638}
!1813 = !{!1620, !1638}
!1814 = !{!1815, !1817, !1819, !1620}
!1815 = distinct !{!1815, !1816, !"cmpfunc: %b"}
!1816 = distinct !{!1816, !"cmpfunc"}
!1817 = distinct !{!1817, !1818, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1818 = distinct !{!1818, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1819 = distinct !{!1819, !1820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1820 = distinct !{!1820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1821 = !{!1822, !1823, !1824, !1617, !1638}
!1822 = distinct !{!1822, !1816, !"cmpfunc: %a"}
!1823 = distinct !{!1823, !1818, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1824 = distinct !{!1824, !1820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1825 = !{!1826, !1828, !1830, !1620}
!1826 = distinct !{!1826, !1827, !"cmpfunc: %b"}
!1827 = distinct !{!1827, !"cmpfunc"}
!1828 = distinct !{!1828, !1829, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1829 = distinct !{!1829, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1830 = distinct !{!1830, !1831, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1831 = distinct !{!1831, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1832 = !{!1833, !1834, !1835, !1617, !1638}
!1833 = distinct !{!1833, !1827, !"cmpfunc: %a"}
!1834 = distinct !{!1834, !1829, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1835 = distinct !{!1835, !1831, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1836 = !{!1837, !1839, !1617, !1638}
!1837 = distinct !{!1837, !1838, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1838 = distinct !{!1838, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1839 = distinct !{!1839, !1840, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1840 = distinct !{!1840, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E: %v.0"}
!1843 = distinct !{!1843, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h20b3e3bb6a5920f8E"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1846 = distinct !{!1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1851, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1851 = distinct !{!1851, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1854, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %_0"}
!1854 = distinct !{!1854, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1851, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1857 = !{!1858}
!1858 = distinct !{!1858, !1859, !"cmpfunc: %a"}
!1859 = distinct !{!1859, !"cmpfunc"}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1859, !"cmpfunc: %b"}
!1862 = !{!1858, !1850, !1845, !1842, !1620}
!1863 = !{!1861, !1856, !1848, !1853, !1617, !1638}
!1864 = !{!1861, !1856, !1848, !1842, !1620}
!1865 = !{!1858, !1850, !1845, !1853, !1617, !1638}
!1866 = !{!1853, !1867, !1842, !1620, !1638}
!1867 = distinct !{!1867, !1854, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf6c59d67d5121710E: %is_less"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1870 = distinct !{!1870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1875 = distinct !{!1875, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1878, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %_0"}
!1878 = distinct !{!1878, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1875, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1883, !"cmpfunc: %a"}
!1883 = distinct !{!1883, !"cmpfunc"}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1883, !"cmpfunc: %b"}
!1886 = !{!1882, !1874, !1869, !1842, !1620}
!1887 = !{!1885, !1880, !1872, !1877, !1617, !1638}
!1888 = !{!1885, !1880, !1872, !1842, !1620}
!1889 = !{!1882, !1874, !1869, !1877, !1617, !1638}
!1890 = !{!1877, !1891, !1842, !1620, !1638}
!1891 = distinct !{!1891, !1878, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h98b383b495e68444E: %is_less"}
!1892 = !{!1842, !1620}
!1893 = !{!1842, !1620, !1638}
!1894 = !{!1617, !1620, !1638}
!1895 = !{!1617, !1620}
!1896 = !{!1897, !1899, !1638}
!1897 = distinct !{!1897, !1898, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!1898 = distinct !{!1898, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!1899 = distinct !{!1899, !1900, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!1900 = distinct !{!1900, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1903, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1903 = distinct !{!1903, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1904 = !{!1905}
!1905 = distinct !{!1905, !1903, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1908 = distinct !{!1908, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1911, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E: %c"}
!1911 = distinct !{!1911, !"_ZN4core5slice4sort6shared5pivot7median317h647a0b24113e8501E"}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1908, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1916, !"cmpfunc: %a"}
!1916 = distinct !{!1916, !"cmpfunc"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1916, !"cmpfunc: %b"}
!1919 = !{!1915, !1907, !1902, !1920}
!1920 = distinct !{!1920, !1921, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE: %v.0"}
!1921 = distinct !{!1921, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE"}
!1922 = !{!1918, !1913, !1905, !1910, !1923}
!1923 = distinct !{!1923, !1921, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h996c2f7665d5b91cE: %is_less"}
!1924 = !{!1918, !1913, !1905, !1920}
!1925 = !{!1915, !1907, !1902, !1910, !1923}
!1926 = !{!1927, !1929, !1931, !1920}
!1927 = distinct !{!1927, !1928, !"cmpfunc: %b"}
!1928 = distinct !{!1928, !"cmpfunc"}
!1929 = distinct !{!1929, !1930, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1930 = distinct !{!1930, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1931 = distinct !{!1931, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1932 = distinct !{!1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1933 = !{!1934, !1935, !1936, !1923}
!1934 = distinct !{!1934, !1928, !"cmpfunc: %a"}
!1935 = distinct !{!1935, !1930, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1936 = distinct !{!1936, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1937 = !{!1938, !1940, !1942}
!1938 = distinct !{!1938, !1939, !"cmpfunc: %a"}
!1939 = distinct !{!1939, !"cmpfunc"}
!1940 = distinct !{!1940, !1941, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1941 = distinct !{!1941, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1942 = distinct !{!1942, !1943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1943 = distinct !{!1943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1944 = !{!1945, !1946, !1947}
!1945 = distinct !{!1945, !1939, !"cmpfunc: %b"}
!1946 = distinct !{!1946, !1941, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1947 = distinct !{!1947, !1943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1950, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h50a99e889ac534c6E: %v.0"}
!1950 = distinct !{!1950, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h50a99e889ac534c6E"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1950, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h50a99e889ac534c6E: %scratch.0"}
!1953 = !{!1954, !1956, !1958, !1949}
!1954 = distinct !{!1954, !1955, !"cmpfunc: %b"}
!1955 = distinct !{!1955, !"cmpfunc"}
!1956 = distinct !{!1956, !1957, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1957 = distinct !{!1957, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1958 = distinct !{!1958, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1959 = distinct !{!1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1960 = !{!1961, !1962, !1963, !1952}
!1961 = distinct !{!1961, !1955, !"cmpfunc: %a"}
!1962 = distinct !{!1962, !1957, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1963 = distinct !{!1963, !1959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1964 = !{!1963}
!1965 = !{!1958}
!1966 = !{!1962}
!1967 = !{!1956}
!1968 = !{!1961}
!1969 = !{!1954}
!1970 = !{!1961, !1962, !1963, !1949}
!1971 = !{!1954, !1956, !1958, !1952}
!1972 = !{!1973, !1949}
!1973 = distinct !{!1973, !1974, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1974 = distinct !{!1974, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1975 = !{!1976, !1978, !1980, !1949}
!1976 = distinct !{!1976, !1977, !"cmpfunc: %a"}
!1977 = distinct !{!1977, !"cmpfunc"}
!1978 = distinct !{!1978, !1979, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1979 = distinct !{!1979, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1980 = distinct !{!1980, !1981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1981 = distinct !{!1981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1982 = !{!1983, !1984, !1985, !1952}
!1983 = distinct !{!1983, !1977, !"cmpfunc: %b"}
!1984 = distinct !{!1984, !1979, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1985 = distinct !{!1985, !1981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!1986 = !{!1987, !1949}
!1987 = distinct !{!1987, !1988, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!1988 = distinct !{!1988, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!1989 = !{!1990, !1992, !1994, !1949}
!1990 = distinct !{!1990, !1991, !"cmpfunc: %a"}
!1991 = distinct !{!1991, !"cmpfunc"}
!1992 = distinct !{!1992, !1993, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!1993 = distinct !{!1993, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!1994 = distinct !{!1994, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!1995 = distinct !{!1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!1996 = !{!1997, !1998, !1999, !1952}
!1997 = distinct !{!1997, !1991, !"cmpfunc: %b"}
!1998 = distinct !{!1998, !1993, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!1999 = distinct !{!1999, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2000 = !{!2001, !1949}
!2001 = distinct !{!2001, !2002, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2002 = distinct !{!2002, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2003 = !{!2004, !2006, !2008, !1949}
!2004 = distinct !{!2004, !2005, !"cmpfunc: %a"}
!2005 = distinct !{!2005, !"cmpfunc"}
!2006 = distinct !{!2006, !2007, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2007 = distinct !{!2007, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2008 = distinct !{!2008, !2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2009 = distinct !{!2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2010 = !{!2011, !2012, !2013, !1952}
!2011 = distinct !{!2011, !2005, !"cmpfunc: %b"}
!2012 = distinct !{!2012, !2007, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2013 = distinct !{!2013, !2009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2014 = !{!2015, !1949}
!2015 = distinct !{!2015, !2016, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2016 = distinct !{!2016, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2017 = !{!2018, !2020, !2022, !1949}
!2018 = distinct !{!2018, !2019, !"cmpfunc: %b"}
!2019 = distinct !{!2019, !"cmpfunc"}
!2020 = distinct !{!2020, !2021, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2021 = distinct !{!2021, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2022 = distinct !{!2022, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2023 = distinct !{!2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2024 = !{!2025, !2026, !2027, !1952}
!2025 = distinct !{!2025, !2019, !"cmpfunc: %a"}
!2026 = distinct !{!2026, !2021, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2027 = distinct !{!2027, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2028 = !{!2027}
!2029 = !{!2022}
!2030 = !{!2026}
!2031 = !{!2020}
!2032 = !{!2025}
!2033 = !{!2018}
!2034 = !{!2025, !2026, !2027, !1949}
!2035 = !{!2018, !2020, !2022, !1952}
!2036 = !{!2037, !1949}
!2037 = distinct !{!2037, !2038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2038 = distinct !{!2038, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2039 = !{!2040, !1952}
!2040 = distinct !{!2040, !2041, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2041 = distinct !{!2041, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2042 = !{!2040, !1949}
!2043 = !{!1949, !1952}
!2044 = distinct !{!2044, !924, !925}
!2045 = distinct !{!2045, !925, !924}
!2046 = !{!2047, !2049}
!2047 = distinct !{!2047, !2048, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!2048 = distinct !{!2048, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!2049 = distinct !{!2049, !2048, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!2050 = !{!2051}
!2051 = distinct !{!2051, !2052, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE: %v.0"}
!2052 = distinct !{!2052, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2052, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0265c539ce19b0cbE: %scratch.0"}
!2055 = !{!2056, !2058, !2060, !2062, !2051}
!2056 = distinct !{!2056, !2057, !"cmpfunc: %a"}
!2057 = distinct !{!2057, !"cmpfunc"}
!2058 = distinct !{!2058, !2059, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2059 = distinct !{!2059, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2060 = distinct !{!2060, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2061 = distinct !{!2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2062 = distinct !{!2062, !2063, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!2063 = distinct !{!2063, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!2064 = !{!2065, !2066, !2067, !2068, !2054}
!2065 = distinct !{!2065, !2057, !"cmpfunc: %b"}
!2066 = distinct !{!2066, !2059, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2067 = distinct !{!2067, !2061, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2068 = distinct !{!2068, !2063, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!2069 = !{!2068}
!2070 = !{!2062}
!2071 = !{!2060}
!2072 = !{!2067}
!2073 = !{!2058}
!2074 = !{!2066}
!2075 = !{!2056}
!2076 = !{!2065}
!2077 = !{!2065, !2066, !2067, !2068, !2051}
!2078 = !{!2056, !2058, !2060, !2062, !2054}
!2079 = !{!2080, !2051}
!2080 = distinct !{!2080, !2081, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2081 = distinct !{!2081, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2082 = !{!2083, !2085, !2087, !2089, !2051}
!2083 = distinct !{!2083, !2084, !"cmpfunc: %b"}
!2084 = distinct !{!2084, !"cmpfunc"}
!2085 = distinct !{!2085, !2086, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2086 = distinct !{!2086, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2087 = distinct !{!2087, !2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2088 = distinct !{!2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2089 = distinct !{!2089, !2090, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!2090 = distinct !{!2090, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!2091 = !{!2092, !2093, !2094, !2095, !2054}
!2092 = distinct !{!2092, !2084, !"cmpfunc: %a"}
!2093 = distinct !{!2093, !2086, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2094 = distinct !{!2094, !2088, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2095 = distinct !{!2095, !2090, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!2096 = !{!2097, !2051}
!2097 = distinct !{!2097, !2098, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2098 = distinct !{!2098, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2099 = !{!2100, !2102, !2104, !2106, !2051}
!2100 = distinct !{!2100, !2101, !"cmpfunc: %b"}
!2101 = distinct !{!2101, !"cmpfunc"}
!2102 = distinct !{!2102, !2103, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2103 = distinct !{!2103, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2104 = distinct !{!2104, !2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2105 = distinct !{!2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2106 = distinct !{!2106, !2107, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!2107 = distinct !{!2107, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!2108 = !{!2109, !2110, !2111, !2112, !2054}
!2109 = distinct !{!2109, !2101, !"cmpfunc: %a"}
!2110 = distinct !{!2110, !2103, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2111 = distinct !{!2111, !2105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2112 = distinct !{!2112, !2107, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!2113 = !{!2114, !2051}
!2114 = distinct !{!2114, !2115, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2115 = distinct !{!2115, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2116 = !{!2117, !2119, !2121, !2123, !2051}
!2117 = distinct !{!2117, !2118, !"cmpfunc: %b"}
!2118 = distinct !{!2118, !"cmpfunc"}
!2119 = distinct !{!2119, !2120, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2120 = distinct !{!2120, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2121 = distinct !{!2121, !2122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2122 = distinct !{!2122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2123 = distinct !{!2123, !2124, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!2124 = distinct !{!2124, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!2125 = !{!2126, !2127, !2128, !2129, !2054}
!2126 = distinct !{!2126, !2118, !"cmpfunc: %a"}
!2127 = distinct !{!2127, !2120, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2128 = distinct !{!2128, !2122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2129 = distinct !{!2129, !2124, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!2130 = !{!2131, !2051}
!2131 = distinct !{!2131, !2132, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2132 = distinct !{!2132, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2133 = !{!2134, !2136, !2138, !2140, !2051}
!2134 = distinct !{!2134, !2135, !"cmpfunc: %a"}
!2135 = distinct !{!2135, !"cmpfunc"}
!2136 = distinct !{!2136, !2137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2137 = distinct !{!2137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2138 = distinct !{!2138, !2139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2139 = distinct !{!2139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2140 = distinct !{!2140, !2141, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %b"}
!2141 = distinct !{!2141, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E"}
!2142 = !{!2143, !2144, !2145, !2146, !2054}
!2143 = distinct !{!2143, !2135, !"cmpfunc: %b"}
!2144 = distinct !{!2144, !2137, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2145 = distinct !{!2145, !2139, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2146 = distinct !{!2146, !2141, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hac0767eedba8f6b9E: %a"}
!2147 = !{!2146}
!2148 = !{!2140}
!2149 = !{!2138}
!2150 = !{!2145}
!2151 = !{!2136}
!2152 = !{!2144}
!2153 = !{!2134}
!2154 = !{!2143}
!2155 = !{!2143, !2144, !2145, !2146, !2051}
!2156 = !{!2134, !2136, !2138, !2140, !2054}
!2157 = !{!2158, !2051}
!2158 = distinct !{!2158, !2159, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2159 = distinct !{!2159, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2160 = !{!2161, !2054}
!2161 = distinct !{!2161, !2162, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2162 = distinct !{!2162, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2163 = !{!2161, !2051}
!2164 = !{!2051, !2054}
!2165 = distinct !{!2165, !924, !925}
!2166 = distinct !{!2166, !925, !924}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E: %v.0"}
!2169 = distinct !{!2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E: %scratch.0"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2174 = distinct !{!2174, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2174, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2179 = distinct !{!2179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2179, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2182 = !{!2178, !2173, !2168}
!2183 = !{!2181, !2176, !2171, !2184}
!2184 = distinct !{!2184, !2169, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h79f23b791a090d56E: %is_less"}
!2185 = !{!2181, !2176, !2168}
!2186 = !{!2178, !2173, !2171, !2184}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2189 = distinct !{!2189, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2189, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2194 = distinct !{!2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2197 = !{!2193, !2188, !2168}
!2198 = !{!2196, !2191, !2171, !2184}
!2199 = !{!2196, !2191, !2168}
!2200 = !{!2193, !2188, !2171, !2184}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2203, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2203 = distinct !{!2203, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2203, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2208, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2208 = distinct !{!2208, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2209 = !{!2210}
!2210 = distinct !{!2210, !2208, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2211 = !{!2207, !2202, !2168}
!2212 = !{!2210, !2205, !2171, !2184}
!2213 = !{!2210, !2205, !2168}
!2214 = !{!2207, !2202, !2171, !2184}
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2217 = distinct !{!2217, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2218 = !{!2219}
!2219 = distinct !{!2219, !2217, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2222, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2222 = distinct !{!2222, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2222, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2225 = !{!2221, !2216, !2168}
!2226 = !{!2224, !2219, !2171, !2184}
!2227 = !{!2224, !2219, !2168}
!2228 = !{!2221, !2216, !2171, !2184}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2231 = distinct !{!2231, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2236 = distinct !{!2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2239 = !{!2235, !2230, !2168}
!2240 = !{!2238, !2233, !2171, !2184}
!2241 = !{!2238, !2233, !2168}
!2242 = !{!2235, !2230, !2171, !2184}
!2243 = !{!2168, !2184}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2246 = distinct !{!2246, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2246, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2251 = distinct !{!2251, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2251, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2254 = !{!2250, !2245, !2168}
!2255 = !{!2253, !2248, !2171, !2184}
!2256 = !{!2253, !2248, !2168}
!2257 = !{!2250, !2245, !2171, !2184}
!2258 = !{!2259}
!2259 = distinct !{!2259, !2260, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2260 = distinct !{!2260, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2261 = !{!2262}
!2262 = distinct !{!2262, !2260, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2265 = distinct !{!2265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2268 = !{!2264, !2259, !2168}
!2269 = !{!2267, !2262, !2171, !2184}
!2270 = !{!2267, !2262, !2168}
!2271 = !{!2264, !2259, !2171, !2184}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2274, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2274 = distinct !{!2274, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2275 = !{!2276}
!2276 = distinct !{!2276, !2274, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2279, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2279 = distinct !{!2279, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2280 = !{!2281}
!2281 = distinct !{!2281, !2279, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2282 = !{!2278, !2273, !2168}
!2283 = !{!2281, !2276, !2171, !2184}
!2284 = !{!2281, !2276, !2168}
!2285 = !{!2278, !2273, !2171, !2184}
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2288 = distinct !{!2288, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2289 = !{!2290}
!2290 = distinct !{!2290, !2288, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2293 = distinct !{!2293, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2293, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2296 = !{!2292, !2287, !2168}
!2297 = !{!2295, !2290, !2171, !2184}
!2298 = !{!2295, !2290, !2168}
!2299 = !{!2292, !2287, !2171, !2184}
!2300 = !{!2301}
!2301 = distinct !{!2301, !2302, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2302 = distinct !{!2302, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2303 = !{!2304}
!2304 = distinct !{!2304, !2302, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2305 = !{!2306}
!2306 = distinct !{!2306, !2307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2307 = distinct !{!2307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2308 = !{!2309}
!2309 = distinct !{!2309, !2307, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2310 = !{!2306, !2301, !2168}
!2311 = !{!2309, !2304, !2171, !2184}
!2312 = !{!2309, !2304, !2168}
!2313 = !{!2306, !2301, !2171, !2184}
!2314 = !{!2171, !2184}
!2315 = !{!2316, !2318, !2171}
!2316 = distinct !{!2316, !2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2317 = distinct !{!2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2318 = distinct !{!2318, !2319, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2319 = distinct !{!2319, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2320 = !{!2321, !2322, !2168, !2184}
!2321 = distinct !{!2321, !2317, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2322 = distinct !{!2322, !2319, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2323 = !{!2324, !2326, !2171}
!2324 = distinct !{!2324, !2325, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2325 = distinct !{!2325, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2326 = distinct !{!2326, !2327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2327 = distinct !{!2327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2328 = !{!2329, !2330, !2168, !2184}
!2329 = distinct !{!2329, !2325, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2330 = distinct !{!2330, !2327, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2331 = !{!2332, !2334, !2168, !2184}
!2332 = distinct !{!2332, !2333, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2333 = distinct !{!2333, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2334 = distinct !{!2334, !2335, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2335 = distinct !{!2335, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2338, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E: %v.0"}
!2338 = distinct !{!2338, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hbffbcdf432b85e56E"}
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2341 = distinct !{!2341, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2341, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2346 = distinct !{!2346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2347 = !{!2348}
!2348 = distinct !{!2348, !2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %_0"}
!2349 = distinct !{!2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E"}
!2350 = !{!2351}
!2351 = distinct !{!2351, !2346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2352 = !{!2345, !2340, !2337, !2171}
!2353 = !{!2351, !2343, !2348, !2168, !2184}
!2354 = !{!2351, !2343, !2337, !2171}
!2355 = !{!2345, !2340, !2348, !2168, !2184}
!2356 = !{!2348, !2357, !2337, !2171, !2184}
!2357 = distinct !{!2357, !2349, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hc3d6c0fb29e37e13E: %is_less"}
!2358 = !{!2359}
!2359 = distinct !{!2359, !2360, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2360 = distinct !{!2360, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2361 = !{!2362}
!2362 = distinct !{!2362, !2360, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2365 = distinct !{!2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2366 = !{!2367}
!2367 = distinct !{!2367, !2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %_0"}
!2368 = distinct !{!2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2371 = !{!2364, !2359, !2337, !2171}
!2372 = !{!2370, !2362, !2367, !2168, !2184}
!2373 = !{!2370, !2362, !2337, !2171}
!2374 = !{!2364, !2359, !2367, !2168, !2184}
!2375 = !{!2367, !2376, !2337, !2171, !2184}
!2376 = distinct !{!2376, !2368, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hb21edeb3deaff04fE: %is_less"}
!2377 = !{!2337, !2171}
!2378 = !{!2337, !2171, !2184}
!2379 = !{!2168, !2171, !2184}
!2380 = !{!2168, !2171}
!2381 = !{!2382, !2384, !2184}
!2382 = distinct !{!2382, !2383, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2383 = distinct !{!2383, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2384 = distinct !{!2384, !2385, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2385 = distinct !{!2385, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2388 = distinct !{!2388, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2389 = !{!2390}
!2390 = distinct !{!2390, !2388, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2393 = distinct !{!2393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE: %c"}
!2396 = distinct !{!2396, !"_ZN4core5slice4sort6shared5pivot7median317h4f009974d4e0f06aE"}
!2397 = !{!2398}
!2398 = distinct !{!2398, !2393, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2399 = !{!2392, !2387, !2400}
!2400 = distinct !{!2400, !2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E: %v.0"}
!2401 = distinct !{!2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E"}
!2402 = !{!2398, !2390, !2395, !2403}
!2403 = distinct !{!2403, !2401, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h813ab89c16a98a67E: %is_less"}
!2404 = !{!2398, !2390, !2400}
!2405 = !{!2392, !2387, !2395, !2403}
!2406 = !{!2407, !2409, !2400}
!2407 = distinct !{!2407, !2408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2408 = distinct !{!2408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2409 = distinct !{!2409, !2410, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2410 = distinct !{!2410, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2411 = !{!2412, !2413, !2403}
!2412 = distinct !{!2412, !2408, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2413 = distinct !{!2413, !2410, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2414 = !{!2415, !2417}
!2415 = distinct !{!2415, !2416, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2416 = distinct !{!2416, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2417 = distinct !{!2417, !2418, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2418 = distinct !{!2418, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2419 = !{!2420, !2421}
!2420 = distinct !{!2420, !2416, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2421 = distinct !{!2421, !2418, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2422 = !{!2423}
!2423 = distinct !{!2423, !2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e17e60094598302E: %v.0"}
!2424 = distinct !{!2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e17e60094598302E"}
!2425 = !{!2426}
!2426 = distinct !{!2426, !2424, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4e17e60094598302E: %scratch.0"}
!2427 = !{!2428, !2430, !2423}
!2428 = distinct !{!2428, !2429, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2429 = distinct !{!2429, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2430 = distinct !{!2430, !2431, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2431 = distinct !{!2431, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2432 = !{!2433, !2434, !2426}
!2433 = distinct !{!2433, !2429, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2434 = distinct !{!2434, !2431, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2435 = !{!2434}
!2436 = !{!2430}
!2437 = !{!2433}
!2438 = !{!2428}
!2439 = !{!2433, !2434, !2423}
!2440 = !{!2428, !2430, !2426}
!2441 = !{!2442, !2423}
!2442 = distinct !{!2442, !2443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2443 = distinct !{!2443, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2444 = !{!2445, !2447, !2423}
!2445 = distinct !{!2445, !2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2446 = distinct !{!2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2447 = distinct !{!2447, !2448, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2448 = distinct !{!2448, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2449 = !{!2450, !2451, !2426}
!2450 = distinct !{!2450, !2446, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2451 = distinct !{!2451, !2448, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2452 = !{!2453, !2423}
!2453 = distinct !{!2453, !2454, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2454 = distinct !{!2454, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2455 = !{!2456, !2458, !2423}
!2456 = distinct !{!2456, !2457, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2457 = distinct !{!2457, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2458 = distinct !{!2458, !2459, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2459 = distinct !{!2459, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2460 = !{!2461, !2462, !2426}
!2461 = distinct !{!2461, !2457, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2462 = distinct !{!2462, !2459, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2463 = !{!2464, !2423}
!2464 = distinct !{!2464, !2465, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2465 = distinct !{!2465, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2466 = !{!2467, !2469, !2423}
!2467 = distinct !{!2467, !2468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2468 = distinct !{!2468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2469 = distinct !{!2469, !2470, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2470 = distinct !{!2470, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2471 = !{!2472, !2473, !2426}
!2472 = distinct !{!2472, !2468, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2473 = distinct !{!2473, !2470, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2474 = !{!2475, !2423}
!2475 = distinct !{!2475, !2476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2476 = distinct !{!2476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2477 = !{!2478, !2480, !2423}
!2478 = distinct !{!2478, !2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2479 = distinct !{!2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2480 = distinct !{!2480, !2481, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2481 = distinct !{!2481, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2482 = !{!2483, !2484, !2426}
!2483 = distinct !{!2483, !2479, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2484 = distinct !{!2484, !2481, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2485 = !{!2484}
!2486 = !{!2480}
!2487 = !{!2483}
!2488 = !{!2478}
!2489 = !{!2483, !2484, !2423}
!2490 = !{!2478, !2480, !2426}
!2491 = !{!2492, !2423}
!2492 = distinct !{!2492, !2493, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2493 = distinct !{!2493, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2494 = !{!2495, !2426}
!2495 = distinct !{!2495, !2496, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2496 = distinct !{!2496, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2497 = !{!2495, !2423}
!2498 = !{!2423, !2426}
!2499 = distinct !{!2499, !924, !925}
!2500 = distinct !{!2500, !925, !924}
!2501 = !{!2502, !2504}
!2502 = distinct !{!2502, !2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %pair"}
!2503 = distinct !{!2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E"}
!2504 = distinct !{!2504, !2503, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17he93afcfa093420f1E: %self.0"}
!2505 = !{!2506}
!2506 = distinct !{!2506, !2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E: %v.0"}
!2507 = distinct !{!2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E"}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2507, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h20f52de01a8b87f7E: %scratch.0"}
!2510 = !{!2511, !2513, !2515, !2506}
!2511 = distinct !{!2511, !2512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2512 = distinct !{!2512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2513 = distinct !{!2513, !2514, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2514 = distinct !{!2514, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2515 = distinct !{!2515, !2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!2516 = distinct !{!2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!2517 = !{!2518, !2519, !2520, !2509}
!2518 = distinct !{!2518, !2512, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2519 = distinct !{!2519, !2514, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2520 = distinct !{!2520, !2516, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!2521 = !{!2520}
!2522 = !{!2515}
!2523 = !{!2513}
!2524 = !{!2519}
!2525 = !{!2511}
!2526 = !{!2518}
!2527 = !{!2518, !2519, !2520, !2506}
!2528 = !{!2511, !2513, !2515, !2509}
!2529 = !{!2530, !2506}
!2530 = distinct !{!2530, !2531, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2531 = distinct !{!2531, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2532 = !{!2533, !2535, !2537, !2506}
!2533 = distinct !{!2533, !2534, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2534 = distinct !{!2534, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2535 = distinct !{!2535, !2536, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2536 = distinct !{!2536, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2537 = distinct !{!2537, !2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!2538 = distinct !{!2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!2539 = !{!2540, !2541, !2542, !2509}
!2540 = distinct !{!2540, !2534, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2541 = distinct !{!2541, !2536, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2542 = distinct !{!2542, !2538, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!2543 = !{!2544, !2506}
!2544 = distinct !{!2544, !2545, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2545 = distinct !{!2545, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2546 = !{!2547, !2549, !2551, !2506}
!2547 = distinct !{!2547, !2548, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2548 = distinct !{!2548, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2549 = distinct !{!2549, !2550, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2550 = distinct !{!2550, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2551 = distinct !{!2551, !2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!2552 = distinct !{!2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!2553 = !{!2554, !2555, !2556, !2509}
!2554 = distinct !{!2554, !2548, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2555 = distinct !{!2555, !2550, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2556 = distinct !{!2556, !2552, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!2557 = !{!2558, !2506}
!2558 = distinct !{!2558, !2559, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2559 = distinct !{!2559, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2560 = !{!2561, !2563, !2565, !2506}
!2561 = distinct !{!2561, !2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2562 = distinct !{!2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2563 = distinct !{!2563, !2564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2564 = distinct !{!2564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2565 = distinct !{!2565, !2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!2566 = distinct !{!2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!2567 = !{!2568, !2569, !2570, !2509}
!2568 = distinct !{!2568, !2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2569 = distinct !{!2569, !2564, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2570 = distinct !{!2570, !2566, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!2571 = !{!2572, !2506}
!2572 = distinct !{!2572, !2573, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2573 = distinct !{!2573, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2574 = !{!2575, !2577, !2579, !2506}
!2575 = distinct !{!2575, !2576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2576 = distinct !{!2576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2577 = distinct !{!2577, !2578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2578 = distinct !{!2578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2579 = distinct !{!2579, !2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %b"}
!2580 = distinct !{!2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E"}
!2581 = !{!2582, !2583, !2584, !2509}
!2582 = distinct !{!2582, !2576, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2583 = distinct !{!2583, !2578, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2584 = distinct !{!2584, !2580, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3b6c9869b4a6b3b4E: %a"}
!2585 = !{!2584}
!2586 = !{!2579}
!2587 = !{!2577}
!2588 = !{!2583}
!2589 = !{!2575}
!2590 = !{!2582}
!2591 = !{!2582, !2583, !2584, !2506}
!2592 = !{!2575, !2577, !2579, !2509}
!2593 = !{!2594, !2506}
!2594 = distinct !{!2594, !2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2595 = distinct !{!2595, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2596 = !{!2597, !2509}
!2597 = distinct !{!2597, !2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E: %self"}
!2598 = distinct !{!2598, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h2f18010395035c14E"}
!2599 = !{!2597, !2506}
!2600 = !{!2506, !2509}
!2601 = distinct !{!2601, !924, !925}
!2602 = distinct !{!2602, !925, !924}
!2603 = !{i64 0, i64 -9223372036854775808}
!2604 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %self"}
!2607 = distinct !{!2607, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E"}
!2608 = !{!2609}
!2609 = distinct !{!2609, !2607, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %_0"}
!2610 = !{i64 0, i64 2}
!2611 = !{i64 0, i64 -9223372036854775807}
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E: %self.0:thread"}
!2614 = distinct !{!2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E"}
!2615 = !{!"branch_weights", !"expected", i32 2145766490, i32 1717158}
!2616 = !{!2617}
!2617 = distinct !{!2617, !2618, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2618 = distinct !{!2618, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2619 = !{!2620}
!2620 = distinct !{!2620, !2618, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2621 = !{!2622}
!2622 = distinct !{!2622, !2623, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2623 = distinct !{!2623, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2624 = !{!2625}
!2625 = distinct !{!2625, !2623, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2626 = !{!2622, !2617, !2627, !2629}
!2627 = distinct !{!2627, !2628, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h21767f56d37cf932E: %v.0"}
!2628 = distinct !{!2628, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h21767f56d37cf932E"}
!2629 = distinct !{!2629, !2630, !"_ZN5alloc5slice11stable_sort17h0b1255ac27d8d38bE: %v.0"}
!2630 = distinct !{!2630, !"_ZN5alloc5slice11stable_sort17h0b1255ac27d8d38bE"}
!2631 = !{!2625, !2620}
!2632 = !{!2625, !2620, !2627, !2629}
!2633 = !{!2622, !2617}
!2634 = !{!2627, !2629}
!2635 = !{!2636, !2638, !2627, !2629}
!2636 = distinct !{!2636, !2637, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other"}
!2637 = distinct !{!2637, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E"}
!2638 = distinct !{!2638, !2639, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1"}
!2639 = distinct !{!2639, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE"}
!2640 = !{!2641, !2642}
!2641 = distinct !{!2641, !2637, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self"}
!2642 = distinct !{!2642, !2639, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0"}
!2643 = !{!2644, !2646}
!2644 = distinct !{!2644, !2645, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2645 = distinct !{!2645, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2646 = distinct !{!2646, !2647, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2647 = distinct !{!2647, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2648 = !{!2649}
!2649 = distinct !{!2649, !2618, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 0:It1"}
!2650 = !{!2651}
!2651 = distinct !{!2651, !2618, !"_ZN4core3ops8function5FnMut8call_mut17h217cab1b15ba879aE: argument 1:It1"}
!2652 = !{!2653}
!2653 = distinct !{!2653, !2623, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %self:It1"}
!2654 = !{!2655}
!2655 = distinct !{!2655, !2623, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h751a9af221d6a813E: %other:It1"}
!2656 = !{!2653, !2649, !2627, !2629}
!2657 = !{!2655, !2651}
!2658 = !{!2655, !2651, !2627, !2629}
!2659 = !{!2653, !2649}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2662, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!2662 = distinct !{!2662, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2665, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!2665 = distinct !{!2665, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!2668 = distinct !{!2668, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!2669 = !{!2670}
!2670 = distinct !{!2670, !2671, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!2671 = distinct !{!2671, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!2672 = !{!2673, !2670, !2667, !2664, !2661}
!2673 = distinct !{!2673, !2674, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %self"}
!2674 = distinct !{!2674, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E"}
!2675 = !{!2676}
!2676 = distinct !{!2676, !2674, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %_0"}
!2677 = !{!2670, !2667, !2664, !2661}
!2678 = !{!2679}
!2679 = distinct !{!2679, !2614, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbd95a3b3bba37369E: %self.0"}
!2680 = !{!2681}
!2681 = distinct !{!2681, !2682, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE: %v.0"}
!2682 = distinct !{!2682, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE"}
!2683 = !{!2681, !2684, !2679}
!2684 = distinct !{!2684, !2682, !"_ZN5alloc5slice11stable_sort17h5c731f1cab2ecbfbE: argument 1"}
!2685 = !{!2686}
!2686 = distinct !{!2686, !2687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2687 = distinct !{!2687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2688 = !{!2689}
!2689 = distinct !{!2689, !2687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2690 = !{!2691}
!2691 = distinct !{!2691, !2692, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2692 = distinct !{!2692, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2693 = !{!2694}
!2694 = distinct !{!2694, !2692, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2695 = !{!2694, !2689, !2696, !2681, !2679}
!2696 = distinct !{!2696, !2697, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66541561315623d5E: %v.0"}
!2697 = distinct !{!2697, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66541561315623d5E"}
!2698 = !{!2691, !2686, !2684}
!2699 = !{!2691, !2686, !2696, !2681, !2679}
!2700 = !{!2694, !2689, !2684}
!2701 = !{!2696, !2681, !2679}
!2702 = !{!2684}
!2703 = !{!2704, !2706, !2696, !2681, !2679}
!2704 = distinct !{!2704, !2705, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b"}
!2705 = distinct !{!2705, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE"}
!2706 = distinct !{!2706, !2707, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b"}
!2707 = distinct !{!2707, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E"}
!2708 = !{!2709, !2710, !2684}
!2709 = distinct !{!2709, !2705, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a"}
!2710 = distinct !{!2710, !2707, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a"}
!2711 = !{!2712, !2714, !2684}
!2712 = distinct !{!2712, !2713, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2713 = distinct !{!2713, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2714 = distinct !{!2714, !2715, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2715 = distinct !{!2715, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2716 = !{!2717}
!2717 = distinct !{!2717, !2687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %a:It1"}
!2718 = !{!2719}
!2719 = distinct !{!2719, !2687, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf7979ee97c8b7295E: %b:It1"}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2692, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %a:It1"}
!2722 = !{!2723}
!2723 = distinct !{!2723, !2692, !"_ZN69SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h100503dc40ebe45cE: %b:It1"}
!2724 = !{!2723, !2719, !2696, !2681, !2679}
!2725 = !{!2721, !2717, !2684}
!2726 = !{!2721, !2717, !2696, !2681, !2679}
!2727 = !{!2723, !2719, !2684}
!2728 = distinct !{!2728, !924, !925}
!2729 = distinct !{!2729, !924, !925}
!2730 = !{!2731}
!2731 = distinct !{!2731, !2732, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!2732 = distinct !{!2732, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!2733 = !{!2734}
!2734 = distinct !{!2734, !2735, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!2735 = distinct !{!2735, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!2736 = !{!2737}
!2737 = distinct !{!2737, !2738, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!2738 = distinct !{!2738, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!2739 = !{!2740}
!2740 = distinct !{!2740, !2741, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!2741 = distinct !{!2741, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!2742 = !{!2743, !2740, !2737, !2734, !2731}
!2743 = distinct !{!2743, !2744, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %self"}
!2744 = distinct !{!2744, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E"}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2744, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %_0"}
!2747 = !{!2740, !2737, !2734, !2731}
!2748 = !{!2749}
!2749 = distinct !{!2749, !2750, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!2750 = distinct !{!2750, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!2751 = !{!2752}
!2752 = distinct !{!2752, !2753, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!2753 = distinct !{!2753, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!2754 = !{!2755}
!2755 = distinct !{!2755, !2756, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!2756 = distinct !{!2756, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2759, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!2759 = distinct !{!2759, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!2760 = !{!2761, !2758, !2755, !2752, !2749}
!2761 = distinct !{!2761, !2762, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %self"}
!2762 = distinct !{!2762, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2762, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %_0"}
!2765 = !{!2758, !2755, !2752, !2749}
!2766 = !{!2767}
!2767 = distinct !{!2767, !2768, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E: %_1"}
!2768 = distinct !{!2768, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h92344b4954b76255E"}
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E: %_1"}
!2771 = distinct !{!2771, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17ha949c72eff5355c1E"}
!2772 = !{!2773}
!2773 = distinct !{!2773, !2774, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E: %self"}
!2774 = distinct !{!2774, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84b5deab40e1d999E"}
!2775 = !{!2776}
!2776 = distinct !{!2776, !2777, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE: %self"}
!2777 = distinct !{!2777, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h40313797d2ffc31fE"}
!2778 = !{!2779, !2776, !2773, !2770, !2767}
!2779 = distinct !{!2779, !2780, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %self"}
!2780 = distinct !{!2780, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E"}
!2781 = !{!2782}
!2782 = distinct !{!2782, !2780, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9f3524b9fdc78df6E: %_0"}
!2783 = !{!2776, !2773, !2770, !2767}
!2784 = distinct !{!2784, !925, !924}
!2785 = distinct !{!2785, !925, !924}
!2786 = !{!2787}
!2787 = distinct !{!2787, !2788, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E: %self"}
!2788 = distinct !{!2788, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E"}
!2789 = !{!2790}
!2790 = distinct !{!2790, !2791, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E: %self"}
!2791 = distinct !{!2791, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9caeb0fbed21bc14E"}
!2792 = !{!2793}
!2793 = distinct !{!2793, !2794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE: %self.0"}
!2794 = distinct !{!2794, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hfbfbdf1e75a1ed3fE"}
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E: %v.0"}
!2797 = distinct !{!2797, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E"}
!2798 = !{!2796, !2799, !2793}
!2799 = distinct !{!2799, !2797, !"_ZN5alloc5slice11stable_sort17h33a9d2b2e67fc2e7E: argument 1"}
!2800 = !{!2801}
!2801 = distinct !{!2801, !2802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2802 = distinct !{!2802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2803 = !{!2804}
!2804 = distinct !{!2804, !2802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2807 = distinct !{!2807, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2808 = !{!2809}
!2809 = distinct !{!2809, !2807, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2810 = !{!2811}
!2811 = distinct !{!2811, !2812, !"cmpfunc: %a"}
!2812 = distinct !{!2812, !"cmpfunc"}
!2813 = !{!2814}
!2814 = distinct !{!2814, !2812, !"cmpfunc: %b"}
!2815 = !{!2811, !2806, !2801, !2816, !2796, !2793}
!2816 = distinct !{!2816, !2817, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h57b011530579c259E: %v.0"}
!2817 = distinct !{!2817, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h57b011530579c259E"}
!2818 = !{!2814, !2809, !2804, !2799}
!2819 = !{!2814, !2809, !2804, !2816, !2796, !2793}
!2820 = !{!2811, !2806, !2801, !2799}
!2821 = !{!2816, !2796, !2793}
!2822 = !{!2799}
!2823 = !{!2824, !2826, !2828, !2816, !2796, !2793}
!2824 = distinct !{!2824, !2825, !"cmpfunc: %b"}
!2825 = distinct !{!2825, !"cmpfunc"}
!2826 = distinct !{!2826, !2827, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1"}
!2827 = distinct !{!2827, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE"}
!2828 = distinct !{!2828, !2829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b"}
!2829 = distinct !{!2829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E"}
!2830 = !{!2831, !2832, !2833, !2799}
!2831 = distinct !{!2831, !2825, !"cmpfunc: %a"}
!2832 = distinct !{!2832, !2827, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0"}
!2833 = distinct !{!2833, !2829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a"}
!2834 = !{!2835, !2837, !2799}
!2835 = distinct !{!2835, !2836, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE: %self"}
!2836 = distinct !{!2836, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf18cd3f15125de2eE"}
!2837 = distinct !{!2837, !2838, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE: %_1"}
!2838 = distinct !{!2838, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hcc1b65076c1eed9dE"}
!2839 = !{!2840}
!2840 = distinct !{!2840, !2802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %a:It1"}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4a58b94d02a5c1a6E: %b:It1"}
!2843 = !{!2844}
!2844 = distinct !{!2844, !2807, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 0:It1"}
!2845 = !{!2846}
!2846 = distinct !{!2846, !2807, !"_ZN4core3ops8function5FnMut8call_mut17hccbf221cab3558daE: argument 1:It1"}
!2847 = !{!2848}
!2848 = distinct !{!2848, !2812, !"cmpfunc: %a:It1"}
!2849 = !{!2850}
!2850 = distinct !{!2850, !2812, !"cmpfunc: %b:It1"}
!2851 = !{!2848, !2844, !2840, !2816, !2796, !2793}
!2852 = !{!2850, !2846, !2842, !2799}
!2853 = !{!2850, !2846, !2842, !2816, !2796, !2793}
!2854 = !{!2848, !2844, !2840, !2799}
