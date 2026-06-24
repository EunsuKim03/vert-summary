; ModuleID = 'DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_emit.16e9337abc8eb415-cgu.0'
source_filename = "DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_emit.16e9337abc8eb415-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"alloc::vec::Vec<i32>" = type { %"alloc::raw_vec::RawVec<i32>", i64 }
%"alloc::raw_vec::RawVec<i32>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<i32>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<i32>" = type {}

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_b36327cb5bb21dd9bab3d26dafffa2f0 = private unnamed_addr constant [163 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_emit.rs\00", align 1
@alloc_bcb49e920a3ba87d9e484cc33a98c524 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00(\00\00\00\05\00\00\00" }>, align 8
@alloc_5554d71ab0281b044ddf3f976bc7046b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00(\00\00\00\08\00\00\00" }>, align 8
@alloc_b56f14a803ebf901c777b26987ed4eed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00\1F\00\00\00\0D\00\00\00" }>, align 8
@alloc_70f436f01bd9ac7c881a80a7ceeab435 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00\1F\00\00\00\19\00\00\00" }>, align 8
@alloc_d0443c52d7b59269158243a571eac4b5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\00%\00\00\00" }>, align 8
@alloc_239f04e72e439d78c92b38a8baf4dab2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\005\00\00\00" }>, align 8
@alloc_7548566ae303f2ff03f66129afdc3ba3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\00E\00\00\00" }>, align 8
@alloc_2ae73ff7fcc4835fbf62e7ff24662534 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\00T\00\00\00" }>, align 8
@alloc_5a9b383c70a7b1dd16c6463a41b1abb9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\00h\00\00\00" }>, align 8
@alloc_6c3e1fd742bed77b62979487ae24177f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00!\00\00\00x\00\00\00" }>, align 8
@alloc_46107255d94b854bcb82862ca3370e87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00\22\00\00\00$\00\00\00" }>, align 8
@alloc_2d43b99c8c45744d9d7977b95c4474e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b36327cb5bb21dd9bab3d26dafffa2f0, [16 x i8] c"\A2\00\00\00\00\00\00\00\1A\00\00\00\15\00\00\00" }>, align 8

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_5.i = load ptr, ptr %0, align 8, !alias.scope !3, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !3, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %_711.i.i = icmp eq i64 %len.i, 0
  br i1 %_711.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i"
  %_3.sroa.0.012.i.i = phi i64 [ %2, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i" ], [ 0, %start ]
  %_6.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i, i64 %_3.sroa.0.012.i.i
  %2 = add nuw i64 %_3.sroa.0.012.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %_6.i.i, align 8, !range !22, !alias.scope !23, !noalias !26, !noundef !6
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb5.i.i
  %3 = shl nuw i64 %self1.i.i.i.i1.i.i.i, 2
  %4 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 8
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %4, align 8, !alias.scope !23, !noalias !26, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !28
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i": ; preds = %bb2.i.i.i3.i.i.i, %bb5.i.i
  %_7.i.i = icmp eq i64 %2, %len.i
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb4:                                              ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i", %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %self1.i.i.i.i1 = load i64, ptr %_1, align 8, !range !22, !alias.scope !38, !noalias !41, !noundef !6
  %_6.i.i.i.i2 = icmp eq i64 %self1.i.i.i.i1, 0
  br i1 %_6.i.i.i.i2, label %"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E.exit5", label %bb2.i.i.i3

bb2.i.i.i3:                                       ; preds = %bb4
  %5 = mul nuw i64 %self1.i.i.i.i1, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !43
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E.exit5"

"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E.exit5": ; preds = %bb4, %bb2.i.i.i3
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h39ae29a30d7c6261E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h39ae29a30d7c6261E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h39ae29a30d7c6261E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h39ae29a30d7c6261E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57), !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60), !noalias !52
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !62, !noalias !63, !noundef !6
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !64, !noalias !65, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !66, !noalias !73, !noundef !6
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha099827525931b0aE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !92, !noalias !93, !noundef !6
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !93, !noalias !92, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !109, !noalias !110, !noundef !6
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !110, !noalias !109, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !126, !noalias !127, !noundef !6
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !127, !noalias !126, !noundef !6
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !143, !noalias !144, !noundef !6
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !144, !noalias !143, !noundef !6
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !6
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !6
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !6
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !160, !noalias !161, !noundef !6
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !161, !noalias !160, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !177, !noalias !178, !noundef !6
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !178, !noalias !177, !noundef !6
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !194, !noalias !195, !noundef !6
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !195, !noalias !194, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !211, !noalias !212, !noundef !6
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !212, !noalias !211, !noundef !6
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !228, !noalias !229, !noundef !6
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !229, !noalias !228, !noundef !6
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !6
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !6
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !6
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !245, !noalias !246, !noundef !6
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !246, !noalias !245, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !250, !noalias !257, !noundef !6
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !263
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !265, !noalias !272, !noundef !6
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !278
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !286
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !293, !noalias !294, !noundef !6
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !295, !noalias !296, !noundef !6
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !263
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308), !noalias !303
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !310, !noalias !311, !noundef !6
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !312, !noalias !313, !noundef !6
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !278
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324), !noalias !286
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !326, !noalias !327, !noundef !6
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !328, !noalias !329, !noundef !6
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !263
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !303
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !342, !noalias !343, !noundef !6
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !344, !noalias !345, !noundef !6
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !278
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354), !noalias !286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356), !noalias !286
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !358, !noalias !359, !noundef !6
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !360, !noalias !361, !noundef !6
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !263
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370), !noalias !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372), !noalias !303
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !374, !noalias !375, !noundef !6
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !376, !noalias !377, !noundef !6
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !278
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E.exit, !prof !378

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20, !noalias !247
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h2957bf3bf66e0ab7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb3.i.i.i, !prof !379

bb3.i.i.i:                                        ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !380
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !380
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
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit12", label %bb11

bb8:                                              ; preds = %bb3.i.i.i, %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %bb3.i.i.i ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %bb3.i.i.i ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %bb3.i.i.i ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h57b02fef3713aefdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !385
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !394
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h57b02fef3713aefdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408), !noalias !411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414), !noalias !411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416), !noalias !411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419), !noalias !411
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !421, !noalias !422, !noundef !6
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !423, !noalias !424, !noundef !6
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !425, !noalias !432, !noundef !6
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !436, !noalias !443, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447), !noalias !450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452), !noalias !450
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h02d0453a56b1271aE.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !454, !noalias !457
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !454, !noalias !457
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !458, !noalias !459
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !458, !noalias !459
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !454, !noalias !457
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !454, !noalias !457
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !458, !noalias !459
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !458, !noalias !459
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !460

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !454, !noalias !457, !noundef !6
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !458, !noalias !459
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !454, !noalias !457
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !458, !noalias !459
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !463

_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !6
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !6
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !469
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !485, !noalias !486, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !489, !noalias !490, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !464, !noalias !491
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !507, !noalias !508, !noundef !6
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !511, !noalias !512, !noundef !6
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !464, !noalias !513
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !469, !noalias !514
  br label %_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit

_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17ha8ec246242766c2aE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha099827525931b0aE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17ha099827525931b0aE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !539, !noalias !540, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !542, !noalias !543, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !559, !noalias !560, !noundef !6
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !561, !noalias !562, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !578, !noalias !579, !noundef !6
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !580, !noalias !581, !noundef !6
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !597, !noalias !598, !noundef !6
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !599, !noalias !600, !noundef !6
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !6
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !6
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !6
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !616, !noalias !617, !noundef !6
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !618, !noalias !619, !noundef !6
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !522, !noalias !620
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !522, !noalias !620
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !522, !noalias !620
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !522, !noalias !620
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !636, !noalias !637, !noundef !6
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !638, !noalias !639, !noundef !6
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !655, !noalias !656, !noundef !6
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !657, !noalias !658, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !674, !noalias !675, !noundef !6
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !676, !noalias !677, !noundef !6
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !693, !noalias !694, !noundef !6
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !695, !noalias !696, !noundef !6
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !6
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !6
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !6
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !712, !noalias !713, !noundef !6
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !714, !noalias !715, !noundef !6
  store i32 %14, ptr %_28.i, align 4, !alias.scope !522, !noalias !620
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !522, !noalias !620
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !522, !noalias !620
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !522, !noalias !620
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !519, !noalias !716
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !522, !noalias !620
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !519, !noalias !716
  store i32 %25, ptr %24, align 4, !alias.scope !522, !noalias !620
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !519, !noalias !716
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !522, !noalias !620
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !717, !noalias !724, !noundef !6
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !522, !noalias !620
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !728, !noalias !735, !noundef !6
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !522, !noalias !739
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !760), !noalias !755
  call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !755
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !765, !noalias !766, !noundef !6
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !767, !noalias !768, !noundef !6
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !519, !noalias !769
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !776), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !784), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !787), !noalias !779
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !789, !noalias !790, !noundef !6
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !791, !noalias !792, !noundef !6
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !519, !noalias !793
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !795, !noalias !620
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !519, !noalias !796
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !378

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20
          to label %.noexc.i unwind label %cleanup2.i, !noalias !797

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !798, !noalias !799
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !519, !noalias !716
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !522, !noalias !620
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !717, !noalias !724, !noundef !6
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !522, !noalias !620
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !728, !noalias !735, !noundef !6
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !522, !noalias !739
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h39ae29a30d7c6261E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !809), !noalias !812
  call void @llvm.experimental.noalias.scope.decl(metadata !815), !noalias !812
  call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !812
  call void @llvm.experimental.noalias.scope.decl(metadata !820), !noalias !812
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !822, !noalias !825, !noundef !6
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !827, !noalias !828, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !829, !noalias !836, !noundef !6
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h57b02fef3713aefdE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !6
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !840, !noalias !847, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !378

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !856, !noalias !863, !noundef !6
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !873, !noalias !874, !noundef !6
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !854, !noalias !875
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !878, !noalias !885, !noundef !6
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !854, !noalias !889
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !892, !noalias !899, !noundef !6
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !854, !noalias !903
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !906, !noalias !913, !noundef !6
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !854, !noalias !917
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !920, !noalias !927, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !937, !noalias !938, !noundef !6
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !854, !noalias !939
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !851, !noalias !942
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !854, !noalias !945
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !946
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !854, !noalias !851
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !854, !noalias !851
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !851, !noalias !854
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !851, !noalias !854
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !947

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
  %78 = load i32, ptr %77, align 4, !alias.scope !854, !noalias !851
  store i32 %78, ptr %75, align 4, !alias.scope !851, !noalias !854
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !948

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit", !prof !949

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #20, !noalias !950
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3535c69c4815cc99E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !378

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !959, !noalias !968, !noundef !6
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !981, !noalias !982, !noundef !6
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !957, !noalias !983
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !986, !noalias !995, !noundef !6
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !957, !noalias !1000
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1003, !noalias !1012, !noundef !6
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !957, !noalias !1017
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1020, !noalias !1029, !noundef !6
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !957, !noalias !1034
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1037, !noalias !1046, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1059, !noalias !1060, !noundef !6
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !957, !noalias !1061
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !954, !noalias !1064
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !957, !noalias !1067
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1068
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !957, !noalias !954
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !957, !noalias !954
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !954, !noalias !957
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !954, !noalias !957
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1069

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !957, !noalias !954
  store i32 %108, ptr %105, align 4, !alias.scope !954, !noalias !957
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E.exit, label %bb42.i66, !llvm.loop !1070

_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !949

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #20
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #4 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !6
  %_4 = load i32, ptr %b, align 4, !noundef !6
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %p = alloca [8 x i8], align 8
  store i64 %0, ptr %p, align 8
  %_5 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nuw nsw i64 %_5, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %3 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_5, ptr %v.i, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %3, ptr %5, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214", label %bb3.i.i.i.i.i.i

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214": ; preds = %bb1.i.i
  store i64 %_5, ptr %3, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i216, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i217, align 8, !noalias !1087
  br label %panic.sink.split

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i33
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i33 ], [ %3, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i33 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %9, %bb3.i3.i33 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1088
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1088
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i.i.i.i, label %bb3.i3.i33

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1098

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread": ; preds = %bb17.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1099
  br label %panic.sink.split

bb3.i3.i33:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %7, ptr nonnull readonly align 4 %1, i64 %_21.0.i.i.i, i1 false), !noalias !1102
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1098
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %7, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %9 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_5
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %6, align 8, !alias.scope !1084, !noalias !1103
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1108
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i34, %bb2.i.i.i3.i, %cleanup1.body.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %10, %cleanup1.body.i ], [ %11, %bb2.i.i.i3.i.i ], [ %lpad.phi233, %bb2.i.i.i3.i ], [ %lpad.phi233, %bb4.i34 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1117
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit": ; preds = %bb3.i3.i33
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %1, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_56123 = icmp sgt i32 %n, 1
  br i1 %_56123, label %bb3.preheader, label %bb37

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit"
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3

bb5.preheader:                                    ; preds = %bb31
  %_75131.not = icmp eq i32 %n, 2
  br i1 %_75131.not, label %bb37, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %bb5.preheader
  %_16 = add nuw i32 %n, 1
  %12 = add nsw i32 %n, -2
  br label %bb6

bb3:                                              ; preds = %bb3.preheader, %bb31
  %indvars.iv194 = phi i64 [ 1, %bb3.preheader ], [ %indvars.iv.next195, %bb31 ]
  %_10 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %indvars.iv194
  %13 = getelementptr inbounds nuw i8, ptr %_10, i64 16
  %_71 = load i64, ptr %13, align 8, !noundef !6
  %_74 = icmp ugt i64 %_71, %indvars.iv194
  br i1 %_74, label %bb31, label %panic20.invoke

bb5.loopexit:                                     ; preds = %bb8.loopexit, %bb6
  %_75 = icmp slt i32 %iter1.sroa.0.1134, %n
  %14 = zext i1 %_75 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1134, %14
  %indvars.iv.next203 = add nuw nsw i32 %indvars.iv202, 1
  %exitcond206.not = icmp eq i32 %indvars.iv202, %12
  br i1 %exitcond206.not, label %bb37, label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb5.loopexit
  %indvars.iv202 = phi i32 [ 1, %bb6.lr.ph ], [ %indvars.iv.next203, %bb5.loopexit ]
  %iter1.sroa.0.1134 = phi i32 [ 3, %bb6.lr.ph ], [ %iter1.sroa.0.1, %bb5.loopexit ]
  %iter1.sroa.0.0133 = phi i32 [ 2, %bb6.lr.ph ], [ %iter1.sroa.0.1134, %bb5.loopexit ]
  %iter4 = sub i32 %_16, %iter1.sroa.0.0133
  %invariant.op = add nsw i32 %iter1.sroa.0.0133, -1
  %_87127 = icmp sgt i32 %iter4, 1
  br i1 %_87127, label %bb9, label %bb5.loopexit

bb37:                                             ; preds = %bb5.loopexit, %bb5.preheader, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit"
  %_55 = add nsw i64 %_5, -1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %_156 = load i64, ptr %15, align 8, !noundef !6
  %_159 = icmp ult i64 %_55, %_156
  br i1 %_159, label %bb58, label %panic6.invoke

panic.sink.split:                                 ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214"
  %_21.0.i.i.i.i6165213222242.ph = phi i64 [ %_21.0.i.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214" ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread" ]
  %_4.sroa.10.0.i.i69210223241.ph = phi ptr [ %3, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214" ], [ inttoptr (i64 8 to ptr), %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread" ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bcb49e920a3ba87d9e484cc33a98c524) #21
          to label %unreachable unwind label %cleanup

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic20.invoke, %panic.sink.split
  %_21.0.i.i.i.i6165212.ph224 = phi i64 [ %_21.0.i.i.i.i6165213222242.ph, %panic.sink.split ], [ %_21.0.i.i.i.i, %panic20.invoke ]
  %_4.sroa.10.0.i.i69211.ph225 = phi ptr [ %_4.sroa.10.0.i.i69210223241.ph, %panic.sink.split ], [ %3, %panic20.invoke ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  br i1 %_8.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %lpad.phi233 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %_4.sroa.10.0.i.i69211231 = phi ptr [ %3, %cleanup.thread ], [ %_4.sroa.10.0.i.i69211.ph225, %cleanup ]
  %_21.0.i.i.i.i6165212229 = phi i64 [ %_21.0.i.i.i.i, %cleanup.thread ], [ %_21.0.i.i.i.i6165212.ph224, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %16, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i69211231, i64 %_3.sroa.0.012.i.i.i
  %16 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1141, !noalias !1144, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %17 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %18 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %18, align 8, !alias.scope !1141, !noalias !1144, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1150
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %16, %_5
  br i1 %_7.i.i.i, label %bb4.i34, label %bb5.i.i.i

bb4.i34:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i34
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i69211231, i64 noundef %_21.0.i.i.i.i6165212229, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1151
  br label %common.resume

unreachable:                                      ; preds = %panic.sink.split
  unreachable

bb58:                                             ; preds = %bb37
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %_157 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw i32, ptr %_157, i64 %_55
  %_0 = load i32, ptr %_53, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  br label %bb5.i.i.i38

bb5.i.i.i38:                                      ; preds = %bb58, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"
  %_3.sroa.0.012.i.i.i39 = phi i64 [ %20, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45" ], [ 0, %bb58 ]
  %_6.i.i.i40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %_3.sroa.0.012.i.i.i39
  %20 = add nuw i64 %_3.sroa.0.012.i.i.i39, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %self1.i.i.i.i1.i.i.i.i41 = load i64, ptr %_6.i.i.i40, align 8, !range !22, !alias.scope !1173, !noalias !1176, !noundef !6
  %_6.i.i.i.i2.i.i.i.i42 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i41, 0
  br i1 %_6.i.i.i.i2.i.i.i.i42, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45", label %bb2.i.i.i3.i.i.i.i43

bb2.i.i.i3.i.i.i.i43:                             ; preds = %bb5.i.i.i38
  %21 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i41, 2
  %22 = getelementptr inbounds nuw i8, ptr %_6.i.i.i40, i64 8
  %self3.i.i.i.i4.i.i.i.i44 = load ptr, ptr %22, align 8, !alias.scope !1173, !noalias !1176, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i44, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1182
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45": ; preds = %bb2.i.i.i3.i.i.i.i43, %bb5.i.i.i38
  %_7.i.i.i46 = icmp eq i64 %20, %_5
  br i1 %_7.i.i.i46, label %bb4.i47, label %bb5.i.i.i38

bb4.i47:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  ret i32 %_0

bb8.loopexit:                                     ; preds = %bb19, %bb44
  %_87 = icmp slt i32 %iter2.sroa.0.1130, %iter4
  %23 = zext i1 %_87 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1130, %23
  br i1 %_87, label %bb9, label %bb5.loopexit

bb9:                                              ; preds = %bb6, %bb8.loopexit
  %iter2.sroa.0.1130 = phi i32 [ %iter2.sroa.0.1, %bb8.loopexit ], [ 2, %bb6 ]
  %iter2.sroa.0.0129 = phi i32 [ %iter2.sroa.0.1130, %bb8.loopexit ], [ 1, %bb6 ]
  %_20 = add nuw i32 %iter2.sroa.0.0129, %iter1.sroa.0.0133
  %j.reass = add i32 %iter2.sroa.0.0129, %invariant.op
  %_23 = zext i32 %iter2.sroa.0.0129 to i64
  %_99 = icmp ugt i32 %n, %iter2.sroa.0.0129
  br i1 %_99, label %bb43, label %panic20.invoke

bb43:                                             ; preds = %bb9
  %_22 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %_23
  %_24 = sext i32 %j.reass to i64
  %24 = getelementptr inbounds nuw i8, ptr %_22, i64 16
  %_102 = load i64, ptr %24, align 8, !noundef !6
  %_105 = icmp ugt i64 %_102, %_24
  br i1 %_105, label %bb44, label %panic6.invoke

bb44:                                             ; preds = %bb43
  %25 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %_103 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_21 = getelementptr inbounds nuw i32, ptr %_103, i64 %_24
  store i32 2147483647, ptr %_21, align 4
  %_106125 = icmp slt i32 %iter2.sroa.0.0129, %j.reass
  br i1 %_106125, label %bb50.lr.ph, label %bb8.loopexit

bb50.lr.ph:                                       ; preds = %bb44
  %_41 = add nsw i64 %_23, -1
  %_42 = icmp samesign ult i32 %iter2.sroa.0.0129, 3
  %_46 = icmp ugt i32 %_20, 2
  %26 = getelementptr inbounds nuw i32, ptr %p, i64 %_41
  %27 = getelementptr inbounds nuw i32, ptr %p, i64 %_24
  %umax = tail call i32 @llvm.umax.i32(i32 %iter2.sroa.0.0129, i32 2)
  %wide.trip.count200 = zext i32 %umax to i64
  %28 = add i32 %indvars.iv202, %iter2.sroa.0.0129
  %wide.trip.count204 = zext i32 %28 to i64
  br label %bb50

panic6.invoke:                                    ; preds = %bb43, %bb37
  %29 = phi i64 [ %_55, %bb37 ], [ %_24, %bb43 ]
  %30 = phi i64 [ %_156, %bb37 ], [ %_102, %bb43 ]
  %31 = phi ptr [ @alloc_5554d71ab0281b044ddf3f976bc7046b, %bb37 ], [ @alloc_70f436f01bd9ac7c881a80a7ceeab435, %bb43 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %29, i64 noundef %30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb50:                                             ; preds = %bb50.lr.ph, %bb19
  %indvars.iv = phi i64 [ %_23, %bb50.lr.ph ], [ %indvars.iv.next, %bb19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_120 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_119 = load i64, ptr %24, align 8, !noundef !6
  %_122 = icmp ugt i64 %_119, %indvars.iv
  br i1 %_122, label %bb51, label %panic20.invoke

bb51:                                             ; preds = %bb50
  %_31 = getelementptr inbounds nuw i32, ptr %_120, i64 %indvars.iv
  %_30 = load i32, ptr %_31, align 4, !noundef !6
  %_127 = icmp ult i64 %indvars.iv.next, %_5
  br i1 %_127, label %bb52, label %panic20.invoke

bb52:                                             ; preds = %bb51
  %_36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %indvars.iv.next
  %32 = getelementptr inbounds nuw i8, ptr %_36, i64 16
  %_129 = load i64, ptr %32, align 8, !noundef !6
  %_132 = icmp ugt i64 %_129, %_24
  br i1 %_132, label %bb53, label %panic20.invoke

bb53:                                             ; preds = %bb52
  %33 = getelementptr inbounds nuw i8, ptr %_36, i64 8
  %_130 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_130, i64 %_24
  %_34 = load i32, ptr %_35, align 4, !noundef !6
  %_29 = add i32 %_34, %_30
  br i1 %_42, label %bb14, label %panic20.invoke

bb14:                                             ; preds = %bb53
  %exitcond201.not = icmp eq i64 %indvars.iv, %wide.trip.count200
  %brmerge = select i1 %exitcond201.not, i1 true, i1 %_46
  br i1 %brmerge, label %panic20.invoke.loopexit.split.loop.exit366, label %bb16

bb16:                                             ; preds = %bb14
  %_40 = load i32, ptr %26, align 4, !noundef !6
  %34 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %_43 = load i32, ptr %34, align 4, !noundef !6
  %_39 = mul i32 %_43, %_40
  %_45 = load i32, ptr %27, align 4, !noundef !6
  %_38 = mul i32 %_39, %_45
  %q = add i32 %_29, %_38
  %_142 = icmp ugt i64 %_119, %_24
  br i1 %_142, label %bb55, label %panic20.invoke

bb55:                                             ; preds = %bb16
  %_49 = getelementptr inbounds nuw i32, ptr %_120, i64 %_24
  %_48 = load i32, ptr %_49, align 4, !noundef !6
  %_47 = icmp slt i32 %q, %_48
  br i1 %_47, label %bb57, label %bb19

bb19:                                             ; preds = %bb55, %bb57
  %exitcond205.not = icmp eq i64 %indvars.iv.next, %wide.trip.count204
  br i1 %exitcond205.not, label %bb8.loopexit, label %bb50

bb57:                                             ; preds = %bb55
  store i32 %q, ptr %_49, align 4
  br label %bb19

bb31:                                             ; preds = %bb3
  %35 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %_72 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_9 = getelementptr inbounds nuw i32, ptr %_72, i64 %indvars.iv194
  store i32 0, ptr %_9, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond.not, label %bb5.preheader, label %bb3

panic20.invoke.loopexit.split.loop.exit366:       ; preds = %bb14
  %wide.trip.count200.mux.le = select i1 %exitcond201.not, i64 %wide.trip.count200, i64 %_24
  %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le = select i1 %exitcond201.not, ptr @alloc_5a9b383c70a7b1dd16c6463a41b1abb9, ptr @alloc_6c3e1fd742bed77b62979487ae24177f
  br label %panic20.invoke

panic20.invoke:                                   ; preds = %bb3, %bb9, %panic20.invoke.loopexit.split.loop.exit366, %bb50, %bb51, %bb52, %bb53, %bb16
  %36 = phi i64 [ %wide.trip.count200.mux.le, %panic20.invoke.loopexit.split.loop.exit366 ], [ %indvars.iv, %bb50 ], [ %indvars.iv.next, %bb51 ], [ %_24, %bb52 ], [ %_41, %bb53 ], [ 1, %bb16 ], [ %_23, %bb9 ], [ %indvars.iv194, %bb3 ]
  %37 = phi i64 [ 2, %panic20.invoke.loopexit.split.loop.exit366 ], [ %_119, %bb50 ], [ %_5, %bb51 ], [ %_129, %bb52 ], [ 2, %bb53 ], [ 1, %bb16 ], [ %_5, %bb9 ], [ %_71, %bb3 ]
  %38 = phi ptr [ %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le, %panic20.invoke.loopexit.split.loop.exit366 ], [ @alloc_d0443c52d7b59269158243a571eac4b5, %bb50 ], [ @alloc_239f04e72e439d78c92b38a8baf4dab2, %bb51 ], [ @alloc_7548566ae303f2ff03f66129afdc3ba3, %bb52 ], [ @alloc_2ae73ff7fcc4835fbf62e7ff24662534, %bb53 ], [ @alloc_46107255d94b854bcb82862ca3370e87, %bb16 ], [ @alloc_b56f14a803ebf901c777b26987ed4eed, %bb9 ], [ @alloc_2d43b99c8c45744d9d7977b95c4474e2, %bb3 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #21
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #5 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #5 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #5 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1190
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1196
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E.exit", label %bb7.i.i, !prof !1198

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1198

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h2957bf3bf66e0ab7E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1214, !noalias !1217, !noundef !6
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1218, !noalias !1219, !noundef !6
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1220, !noalias !1221
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1222, !noalias !1229, !noundef !6
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1220, !noalias !1233
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1214, !noalias !1217, !noundef !6
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1218, !noalias !1219, !noundef !6
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1220, !noalias !1221
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1222, !noalias !1229, !noundef !6
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1220, !noalias !1233
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1250, !noalias !1251, !noundef !6
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1252, !noalias !1253, !noundef !6
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1220, !noalias !1221
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1222, !noalias !1229, !noundef !6
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1220, !noalias !1233
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6be039fc7a5c1a39E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1190
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

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
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
!4 = distinct !{!4, !5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E: %self"}
!5 = distinct !{!5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E: %_1.0"}
!9 = distinct !{!9, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!12 = distinct !{!12, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!15 = distinct !{!15, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!18 = distinct !{!18, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!21 = distinct !{!21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!22 = !{i64 0, i64 -9223372036854775808}
!23 = !{!24, !20, !17, !14, !11, !8}
!24 = distinct !{!24, !25, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %self"}
!25 = distinct !{!25, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E"}
!26 = !{!27, !4}
!27 = distinct !{!27, !25, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %_0"}
!28 = !{!20, !17, !14, !11, !8, !4}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E: %_1"}
!31 = distinct !{!31, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E: %self"}
!34 = distinct !{!34, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!37 = distinct !{!37, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!38 = !{!39, !36, !33, !30}
!39 = distinct !{!39, !40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %self"}
!40 = distinct !{!40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %_0"}
!43 = !{!36, !33, !30}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!46 = distinct !{!46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!51 = distinct !{!51, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4core5slice4sort6shared5pivot7median317h4a0d8a95d7ed18ccE: %c"}
!54 = distinct !{!54, !"_ZN4core5slice4sort6shared5pivot7median317h4a0d8a95d7ed18ccE"}
!55 = !{!56}
!56 = distinct !{!56, !51, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"cmpfunc: %a"}
!59 = distinct !{!59, !"cmpfunc"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"cmpfunc: %b"}
!62 = !{!58, !50, !45}
!63 = !{!61, !56, !48, !53}
!64 = !{!61, !56, !48}
!65 = !{!58, !50, !45, !53}
!66 = !{!67, !69, !71}
!67 = distinct !{!67, !68, !"cmpfunc: %b"}
!68 = distinct !{!68, !"cmpfunc"}
!69 = distinct !{!69, !70, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!70 = distinct !{!70, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!71 = distinct !{!71, !72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!72 = distinct !{!72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!73 = !{!74, !75, !76}
!74 = distinct !{!74, !68, !"cmpfunc: %a"}
!75 = distinct !{!75, !70, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!76 = distinct !{!76, !72, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!79 = distinct !{!79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!84 = distinct !{!84, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!85 = !{!86}
!86 = distinct !{!86, !84, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"cmpfunc: %a"}
!89 = distinct !{!89, !"cmpfunc"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"cmpfunc: %b"}
!92 = !{!88, !83, !78}
!93 = !{!91, !86, !81}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!96 = distinct !{!96, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!101 = distinct !{!101, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"cmpfunc: %a"}
!106 = distinct !{!106, !"cmpfunc"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"cmpfunc: %b"}
!109 = !{!105, !100, !95}
!110 = !{!108, !103, !98}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!113 = distinct !{!113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!118 = distinct !{!118, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"cmpfunc: %a"}
!123 = distinct !{!123, !"cmpfunc"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"cmpfunc: %b"}
!126 = !{!122, !117, !112}
!127 = !{!125, !120, !115}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!130 = distinct !{!130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!135 = distinct !{!135, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"cmpfunc: %a"}
!140 = distinct !{!140, !"cmpfunc"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"cmpfunc: %b"}
!143 = !{!139, !134, !129}
!144 = !{!142, !137, !132}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!147 = distinct !{!147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!152 = distinct !{!152, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"cmpfunc: %a"}
!157 = distinct !{!157, !"cmpfunc"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"cmpfunc: %b"}
!160 = !{!156, !151, !146}
!161 = !{!159, !154, !149}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!164 = distinct !{!164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!169 = distinct !{!169, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"cmpfunc: %a"}
!174 = distinct !{!174, !"cmpfunc"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"cmpfunc: %b"}
!177 = !{!173, !168, !163}
!178 = !{!176, !171, !166}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!181 = distinct !{!181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!186 = distinct !{!186, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"cmpfunc: %a"}
!191 = distinct !{!191, !"cmpfunc"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"cmpfunc: %b"}
!194 = !{!190, !185, !180}
!195 = !{!193, !188, !183}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!198 = distinct !{!198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!203 = distinct !{!203, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"cmpfunc: %a"}
!208 = distinct !{!208, !"cmpfunc"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"cmpfunc: %b"}
!211 = !{!207, !202, !197}
!212 = !{!210, !205, !200}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!215 = distinct !{!215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!216 = !{!217}
!217 = distinct !{!217, !215, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!220 = distinct !{!220, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"cmpfunc: %a"}
!225 = distinct !{!225, !"cmpfunc"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"cmpfunc: %b"}
!228 = !{!224, !219, !214}
!229 = !{!227, !222, !217}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!232 = distinct !{!232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!233 = !{!234}
!234 = distinct !{!234, !232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!237 = distinct !{!237, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"cmpfunc: %a"}
!242 = distinct !{!242, !"cmpfunc"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"cmpfunc: %b"}
!245 = !{!241, !236, !231}
!246 = !{!244, !239, !234}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E: %v.0"}
!249 = distinct !{!249, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E"}
!250 = !{!251, !253, !255, !248}
!251 = distinct !{!251, !252, !"cmpfunc: %b"}
!252 = distinct !{!252, !"cmpfunc"}
!253 = distinct !{!253, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!254 = distinct !{!254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!255 = distinct !{!255, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!256 = distinct !{!256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!257 = !{!258, !259, !260, !261}
!258 = distinct !{!258, !252, !"cmpfunc: %a"}
!259 = distinct !{!259, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!260 = distinct !{!260, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!261 = distinct !{!261, !262, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E: %_0"}
!262 = distinct !{!262, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E"}
!263 = !{!261, !264, !248}
!264 = distinct !{!264, !262, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E: %is_less"}
!265 = !{!266, !268, !270, !248}
!266 = distinct !{!266, !267, !"cmpfunc: %b"}
!267 = distinct !{!267, !"cmpfunc"}
!268 = distinct !{!268, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!269 = distinct !{!269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!270 = distinct !{!270, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!271 = distinct !{!271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!272 = !{!273, !274, !275, !276}
!273 = distinct !{!273, !267, !"cmpfunc: %a"}
!274 = distinct !{!274, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!275 = distinct !{!275, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!276 = distinct !{!276, !277, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E: %_0"}
!277 = distinct !{!277, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E"}
!278 = !{!276, !279, !248}
!279 = distinct !{!279, !277, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E: %is_less"}
!280 = !{!281}
!281 = distinct !{!281, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It1"}
!282 = !{!283}
!283 = distinct !{!283, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It1"}
!284 = !{!285}
!285 = distinct !{!285, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It1"}
!286 = !{!261}
!287 = !{!288}
!288 = distinct !{!288, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It1"}
!289 = !{!290}
!290 = distinct !{!290, !252, !"cmpfunc: %a:It1"}
!291 = !{!292}
!292 = distinct !{!292, !252, !"cmpfunc: %b:It1"}
!293 = !{!290, !285, !281, !248}
!294 = !{!292, !288, !283, !261}
!295 = !{!292, !288, !283, !248}
!296 = !{!290, !285, !281, !261}
!297 = !{!298}
!298 = distinct !{!298, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It1"}
!299 = !{!300}
!300 = distinct !{!300, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It1"}
!301 = !{!302}
!302 = distinct !{!302, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It1"}
!303 = !{!276}
!304 = !{!305}
!305 = distinct !{!305, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It1"}
!306 = !{!307}
!307 = distinct !{!307, !267, !"cmpfunc: %a:It1"}
!308 = !{!309}
!309 = distinct !{!309, !267, !"cmpfunc: %b:It1"}
!310 = !{!307, !302, !298, !248}
!311 = !{!309, !305, !300, !276}
!312 = !{!309, !305, !300, !248}
!313 = !{!307, !302, !298, !276}
!314 = !{!315}
!315 = distinct !{!315, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It2"}
!316 = !{!317}
!317 = distinct !{!317, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It2"}
!318 = !{!319}
!319 = distinct !{!319, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It2"}
!320 = !{!321}
!321 = distinct !{!321, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It2"}
!322 = !{!323}
!323 = distinct !{!323, !252, !"cmpfunc: %a:It2"}
!324 = !{!325}
!325 = distinct !{!325, !252, !"cmpfunc: %b:It2"}
!326 = !{!323, !319, !315, !248}
!327 = !{!325, !321, !317, !261}
!328 = !{!325, !321, !317, !248}
!329 = !{!323, !319, !315, !261}
!330 = !{!331}
!331 = distinct !{!331, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It2"}
!332 = !{!333}
!333 = distinct !{!333, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It2"}
!334 = !{!335}
!335 = distinct !{!335, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It2"}
!336 = !{!337}
!337 = distinct !{!337, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It2"}
!338 = !{!339}
!339 = distinct !{!339, !267, !"cmpfunc: %a:It2"}
!340 = !{!341}
!341 = distinct !{!341, !267, !"cmpfunc: %b:It2"}
!342 = !{!339, !335, !331, !248}
!343 = !{!341, !337, !333, !276}
!344 = !{!341, !337, !333, !248}
!345 = !{!339, !335, !331, !276}
!346 = !{!347}
!347 = distinct !{!347, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It3"}
!348 = !{!349}
!349 = distinct !{!349, !256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It3"}
!350 = !{!351}
!351 = distinct !{!351, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It3"}
!352 = !{!353}
!353 = distinct !{!353, !254, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It3"}
!354 = !{!355}
!355 = distinct !{!355, !252, !"cmpfunc: %a:It3"}
!356 = !{!357}
!357 = distinct !{!357, !252, !"cmpfunc: %b:It3"}
!358 = !{!355, !351, !347, !248}
!359 = !{!357, !353, !349, !261}
!360 = !{!357, !353, !349, !248}
!361 = !{!355, !351, !347, !261}
!362 = !{!363}
!363 = distinct !{!363, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It3"}
!364 = !{!365}
!365 = distinct !{!365, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It3"}
!366 = !{!367}
!367 = distinct !{!367, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It3"}
!368 = !{!369}
!369 = distinct !{!369, !269, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It3"}
!370 = !{!371}
!371 = distinct !{!371, !267, !"cmpfunc: %a:It3"}
!372 = !{!373}
!373 = distinct !{!373, !267, !"cmpfunc: %b:It3"}
!374 = !{!371, !367, !363, !248}
!375 = !{!373, !369, !365, !276}
!376 = !{!373, !369, !365, !248}
!377 = !{!371, !367, !363, !276}
!378 = !{!"branch_weights", i32 4001, i32 4000000}
!379 = !{!"branch_weights", i32 2002, i32 2000}
!380 = !{!381, !383}
!381 = distinct !{!381, !382, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E: %_0"}
!382 = distinct !{!382, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E"}
!383 = distinct !{!383, !384, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h3d1868c0b33a422cE: %_0"}
!384 = distinct !{!384, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h3d1868c0b33a422cE"}
!385 = !{!386, !388, !390, !392}
!386 = distinct !{!386, !387, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!387 = distinct !{!387, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!388 = distinct !{!388, !389, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!389 = distinct !{!389, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!390 = distinct !{!390, !391, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!391 = distinct !{!391, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!392 = distinct !{!392, !393, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!393 = distinct !{!393, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!394 = !{!395, !397, !399, !401}
!395 = distinct !{!395, !396, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!396 = distinct !{!396, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!397 = distinct !{!397, !398, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!398 = distinct !{!398, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!399 = distinct !{!399, !400, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!400 = distinct !{!400, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!401 = distinct !{!401, !402, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!402 = distinct !{!402, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!405 = distinct !{!405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!410 = distinct !{!410, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE: %scratch.0"}
!413 = distinct !{!413, !"_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE"}
!414 = !{!415}
!415 = distinct !{!415, !410, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"cmpfunc: %a"}
!418 = distinct !{!418, !"cmpfunc"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"cmpfunc: %b"}
!421 = !{!417, !409, !404}
!422 = !{!420, !415, !407, !412}
!423 = !{!420, !415, !407}
!424 = !{!417, !409, !404, !412}
!425 = !{!426, !428, !430}
!426 = distinct !{!426, !427, !"cmpfunc: %a"}
!427 = distinct !{!427, !"cmpfunc"}
!428 = distinct !{!428, !429, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!429 = distinct !{!429, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!430 = distinct !{!430, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!431 = distinct !{!431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!432 = !{!433, !434, !435, !412}
!433 = distinct !{!433, !427, !"cmpfunc: %b"}
!434 = distinct !{!434, !429, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!435 = distinct !{!435, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!436 = !{!437, !439, !441}
!437 = distinct !{!437, !438, !"cmpfunc: %a"}
!438 = distinct !{!438, !"cmpfunc"}
!439 = distinct !{!439, !440, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!440 = distinct !{!440, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!441 = distinct !{!441, !442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!442 = distinct !{!442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!443 = !{!444, !445, !446, !412}
!444 = distinct !{!444, !438, !"cmpfunc: %b"}
!445 = distinct !{!445, !440, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!446 = distinct !{!446, !442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hd6eaeef0c6376971E: %a.0"}
!449 = distinct !{!449, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hd6eaeef0c6376971E"}
!450 = !{!412, !451}
!451 = distinct !{!451, !413, !"_ZN4core5slice4sort6stable5drift10create_run17h245d02ff96e206aaE: %is_less"}
!452 = !{!453}
!453 = distinct !{!453, !449, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hd6eaeef0c6376971E: %b.0"}
!454 = !{!448, !455}
!455 = distinct !{!455, !456, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2fc1fd220fdedc5E: %self.0"}
!456 = distinct !{!456, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2fc1fd220fdedc5E"}
!457 = !{!453, !412, !451}
!458 = !{!453, !455}
!459 = !{!448, !412, !451}
!460 = distinct !{!460, !461, !462}
!461 = !{!"llvm.loop.isvectorized", i32 1}
!462 = !{!"llvm.loop.unroll.runtime.disable"}
!463 = distinct !{!463, !462, !461}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E: %v.0"}
!466 = distinct !{!466, !"_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"_ZN4core5slice4sort6stable5merge5merge17hd1eb17bb41c73d10E: %scratch.0"}
!469 = !{!465, !468}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!472 = distinct !{!472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!473 = !{!474}
!474 = distinct !{!474, !472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!477 = distinct !{!477, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"cmpfunc: %a"}
!482 = distinct !{!482, !"cmpfunc"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"cmpfunc: %b"}
!485 = !{!481, !476, !471, !468}
!486 = !{!484, !479, !474, !487, !465}
!487 = distinct !{!487, !488, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf20c6e25729ad099E: %self"}
!488 = distinct !{!488, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf20c6e25729ad099E"}
!489 = !{!484, !479, !474, !465}
!490 = !{!481, !476, !471, !487, !468}
!491 = !{!487, !468}
!492 = !{!493}
!493 = distinct !{!493, !494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!494 = distinct !{!494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!499 = distinct !{!499, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"cmpfunc: %a"}
!504 = distinct !{!504, !"cmpfunc"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"cmpfunc: %b"}
!507 = !{!503, !498, !493, !465}
!508 = !{!506, !501, !496, !509, !468}
!509 = distinct !{!509, !510, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h633fffe927b40c87E: %self"}
!510 = distinct !{!510, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h633fffe927b40c87E"}
!511 = !{!506, !501, !496, !468}
!512 = !{!503, !498, !493, !509, !465}
!513 = !{!509, !468}
!514 = !{!515, !517}
!515 = distinct !{!515, !516, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c50f96e74c5501eE: %self"}
!516 = distinct !{!516, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c50f96e74c5501eE"}
!517 = distinct !{!517, !518, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc41b5fc6d5876ec6E: %_1"}
!518 = distinct !{!518, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc41b5fc6d5876ec6E"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h96667a988e80e130E: %v.0"}
!521 = distinct !{!521, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h96667a988e80e130E"}
!522 = !{!523}
!523 = distinct !{!523, !521, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h96667a988e80e130E: %scratch.0"}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!526 = distinct !{!526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!531 = distinct !{!531, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!532 = !{!533}
!533 = distinct !{!533, !531, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!534 = !{!535}
!535 = distinct !{!535, !536, !"cmpfunc: %a"}
!536 = distinct !{!536, !"cmpfunc"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"cmpfunc: %b"}
!539 = !{!535, !530, !525, !520}
!540 = !{!538, !533, !528, !523, !541}
!541 = distinct !{!541, !521, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h96667a988e80e130E: %is_less"}
!542 = !{!538, !533, !528, !520}
!543 = !{!535, !530, !525, !523, !541}
!544 = !{!545}
!545 = distinct !{!545, !546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!546 = distinct !{!546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!547 = !{!548}
!548 = distinct !{!548, !546, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!551 = distinct !{!551, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"cmpfunc: %a"}
!556 = distinct !{!556, !"cmpfunc"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"cmpfunc: %b"}
!559 = !{!555, !550, !545, !520}
!560 = !{!558, !553, !548, !523, !541}
!561 = !{!558, !553, !548, !520}
!562 = !{!555, !550, !545, !523, !541}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!565 = distinct !{!565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!570 = distinct !{!570, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"cmpfunc: %a"}
!575 = distinct !{!575, !"cmpfunc"}
!576 = !{!577}
!577 = distinct !{!577, !575, !"cmpfunc: %b"}
!578 = !{!574, !569, !564, !520}
!579 = !{!577, !572, !567, !523, !541}
!580 = !{!577, !572, !567, !520}
!581 = !{!574, !569, !564, !523, !541}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!584 = distinct !{!584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!589 = distinct !{!589, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"cmpfunc: %a"}
!594 = distinct !{!594, !"cmpfunc"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"cmpfunc: %b"}
!597 = !{!593, !588, !583, !520}
!598 = !{!596, !591, !586, !523, !541}
!599 = !{!596, !591, !586, !520}
!600 = !{!593, !588, !583, !523, !541}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!603 = distinct !{!603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!604 = !{!605}
!605 = distinct !{!605, !603, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!606 = !{!607}
!607 = distinct !{!607, !608, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!608 = distinct !{!608, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!609 = !{!610}
!610 = distinct !{!610, !608, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!611 = !{!612}
!612 = distinct !{!612, !613, !"cmpfunc: %a"}
!613 = distinct !{!613, !"cmpfunc"}
!614 = !{!615}
!615 = distinct !{!615, !613, !"cmpfunc: %b"}
!616 = !{!612, !607, !602, !520}
!617 = !{!615, !610, !605, !523, !541}
!618 = !{!615, !610, !605, !520}
!619 = !{!612, !607, !602, !523, !541}
!620 = !{!520, !541}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!623 = distinct !{!623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!624 = !{!625}
!625 = distinct !{!625, !623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!628 = distinct !{!628, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"cmpfunc: %a"}
!633 = distinct !{!633, !"cmpfunc"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"cmpfunc: %b"}
!636 = !{!632, !627, !622, !520}
!637 = !{!635, !630, !625, !523, !541}
!638 = !{!635, !630, !625, !520}
!639 = !{!632, !627, !622, !523, !541}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!642 = distinct !{!642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!643 = !{!644}
!644 = distinct !{!644, !642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!647 = distinct !{!647, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"cmpfunc: %a"}
!652 = distinct !{!652, !"cmpfunc"}
!653 = !{!654}
!654 = distinct !{!654, !652, !"cmpfunc: %b"}
!655 = !{!651, !646, !641, !520}
!656 = !{!654, !649, !644, !523, !541}
!657 = !{!654, !649, !644, !520}
!658 = !{!651, !646, !641, !523, !541}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!661 = distinct !{!661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!666 = distinct !{!666, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!669 = !{!670}
!670 = distinct !{!670, !671, !"cmpfunc: %a"}
!671 = distinct !{!671, !"cmpfunc"}
!672 = !{!673}
!673 = distinct !{!673, !671, !"cmpfunc: %b"}
!674 = !{!670, !665, !660, !520}
!675 = !{!673, !668, !663, !523, !541}
!676 = !{!673, !668, !663, !520}
!677 = !{!670, !665, !660, !523, !541}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!680 = distinct !{!680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!681 = !{!682}
!682 = distinct !{!682, !680, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!683 = !{!684}
!684 = distinct !{!684, !685, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!685 = distinct !{!685, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!686 = !{!687}
!687 = distinct !{!687, !685, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"cmpfunc: %a"}
!690 = distinct !{!690, !"cmpfunc"}
!691 = !{!692}
!692 = distinct !{!692, !690, !"cmpfunc: %b"}
!693 = !{!689, !684, !679, !520}
!694 = !{!692, !687, !682, !523, !541}
!695 = !{!692, !687, !682, !520}
!696 = !{!689, !684, !679, !523, !541}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!699 = distinct !{!699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!700 = !{!701}
!701 = distinct !{!701, !699, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!704 = distinct !{!704, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!705 = !{!706}
!706 = distinct !{!706, !704, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"cmpfunc: %a"}
!709 = distinct !{!709, !"cmpfunc"}
!710 = !{!711}
!711 = distinct !{!711, !709, !"cmpfunc: %b"}
!712 = !{!708, !703, !698, !520}
!713 = !{!711, !706, !701, !523, !541}
!714 = !{!711, !706, !701, !520}
!715 = !{!708, !703, !698, !523, !541}
!716 = !{!523, !541}
!717 = !{!718, !720, !722, !523}
!718 = distinct !{!718, !719, !"cmpfunc: %b"}
!719 = distinct !{!719, !"cmpfunc"}
!720 = distinct !{!720, !721, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!721 = distinct !{!721, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!722 = distinct !{!722, !723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!723 = distinct !{!723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!724 = !{!725, !726, !727, !520, !541}
!725 = distinct !{!725, !719, !"cmpfunc: %a"}
!726 = distinct !{!726, !721, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!727 = distinct !{!727, !723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!728 = !{!729, !731, !733, !523}
!729 = distinct !{!729, !730, !"cmpfunc: %b"}
!730 = distinct !{!730, !"cmpfunc"}
!731 = distinct !{!731, !732, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!732 = distinct !{!732, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!733 = distinct !{!733, !734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!734 = distinct !{!734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!735 = !{!736, !737, !738, !520, !541}
!736 = distinct !{!736, !730, !"cmpfunc: %a"}
!737 = distinct !{!737, !732, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!738 = distinct !{!738, !734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!739 = !{!740, !742, !520, !541}
!740 = distinct !{!740, !741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE: %self"}
!741 = distinct !{!741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE"}
!742 = distinct !{!742, !743, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E: %_1"}
!743 = distinct !{!743, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E"}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E: %v.0"}
!746 = distinct !{!746, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hb0c503c77d4877d2E"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!749 = distinct !{!749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!750 = !{!751}
!751 = distinct !{!751, !749, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!754 = distinct !{!754, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E: %_0"}
!757 = distinct !{!757, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E"}
!758 = !{!759}
!759 = distinct !{!759, !754, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"cmpfunc: %a"}
!762 = distinct !{!762, !"cmpfunc"}
!763 = !{!764}
!764 = distinct !{!764, !762, !"cmpfunc: %b"}
!765 = !{!761, !753, !748, !745, !523}
!766 = !{!764, !759, !751, !756, !520, !541}
!767 = !{!764, !759, !751, !745, !523}
!768 = !{!761, !753, !748, !756, !520, !541}
!769 = !{!756, !770, !745, !523, !541}
!770 = distinct !{!770, !757, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h3053c23657ef8804E: %is_less"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!773 = distinct !{!773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!774 = !{!775}
!775 = distinct !{!775, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!778 = distinct !{!778, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E: %_0"}
!781 = distinct !{!781, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E"}
!782 = !{!783}
!783 = distinct !{!783, !778, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"cmpfunc: %a"}
!786 = distinct !{!786, !"cmpfunc"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"cmpfunc: %b"}
!789 = !{!785, !777, !772, !745, !523}
!790 = !{!788, !783, !775, !780, !520, !541}
!791 = !{!788, !783, !775, !745, !523}
!792 = !{!785, !777, !772, !780, !520, !541}
!793 = !{!780, !794, !745, !523, !541}
!794 = distinct !{!794, !781, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h92bc45827546da89E: %is_less"}
!795 = !{!745, !523}
!796 = !{!745, !523, !541}
!797 = !{!520, !523, !541}
!798 = !{!520, !523}
!799 = !{!800, !802, !541}
!800 = distinct !{!800, !801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE: %self"}
!801 = distinct !{!801, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE"}
!802 = distinct !{!802, !803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E: %_1"}
!803 = distinct !{!803, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!806 = distinct !{!806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!807 = !{!808}
!808 = distinct !{!808, !806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!811 = distinct !{!811, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_ZN4core5slice4sort6shared5pivot7median317h4a0d8a95d7ed18ccE: %c"}
!814 = distinct !{!814, !"_ZN4core5slice4sort6shared5pivot7median317h4a0d8a95d7ed18ccE"}
!815 = !{!816}
!816 = distinct !{!816, !811, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!817 = !{!818}
!818 = distinct !{!818, !819, !"cmpfunc: %a"}
!819 = distinct !{!819, !"cmpfunc"}
!820 = !{!821}
!821 = distinct !{!821, !819, !"cmpfunc: %b"}
!822 = !{!818, !810, !805, !823}
!823 = distinct !{!823, !824, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h8f559d223ae7a6d8E: %v.0"}
!824 = distinct !{!824, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h8f559d223ae7a6d8E"}
!825 = !{!821, !816, !808, !813, !826}
!826 = distinct !{!826, !824, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h8f559d223ae7a6d8E: %is_less"}
!827 = !{!821, !816, !808, !823}
!828 = !{!818, !810, !805, !813, !826}
!829 = !{!830, !832, !834, !823}
!830 = distinct !{!830, !831, !"cmpfunc: %b"}
!831 = distinct !{!831, !"cmpfunc"}
!832 = distinct !{!832, !833, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!833 = distinct !{!833, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!834 = distinct !{!834, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!835 = distinct !{!835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!836 = !{!837, !838, !839, !826}
!837 = distinct !{!837, !831, !"cmpfunc: %a"}
!838 = distinct !{!838, !833, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!839 = distinct !{!839, !835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!840 = !{!841, !843, !845}
!841 = distinct !{!841, !842, !"cmpfunc: %a"}
!842 = distinct !{!842, !"cmpfunc"}
!843 = distinct !{!843, !844, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!844 = distinct !{!844, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!845 = distinct !{!845, !846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!846 = distinct !{!846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!847 = !{!848, !849, !850}
!848 = distinct !{!848, !842, !"cmpfunc: %b"}
!849 = distinct !{!849, !844, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!850 = distinct !{!850, !846, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!851 = !{!852}
!852 = distinct !{!852, !853, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb31f83f38cc20b33E: %v.0"}
!853 = distinct !{!853, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb31f83f38cc20b33E"}
!854 = !{!855}
!855 = distinct !{!855, !853, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb31f83f38cc20b33E: %scratch.0"}
!856 = !{!857, !859, !861, !852}
!857 = distinct !{!857, !858, !"cmpfunc: %b"}
!858 = distinct !{!858, !"cmpfunc"}
!859 = distinct !{!859, !860, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!860 = distinct !{!860, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!861 = distinct !{!861, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!862 = distinct !{!862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!863 = !{!864, !865, !866, !855}
!864 = distinct !{!864, !858, !"cmpfunc: %a"}
!865 = distinct !{!865, !860, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!866 = distinct !{!866, !862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!867 = !{!866}
!868 = !{!861}
!869 = !{!865}
!870 = !{!859}
!871 = !{!864}
!872 = !{!857}
!873 = !{!864, !865, !866, !852}
!874 = !{!857, !859, !861, !855}
!875 = !{!876, !852}
!876 = distinct !{!876, !877, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!877 = distinct !{!877, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!878 = !{!879, !881, !883, !852}
!879 = distinct !{!879, !880, !"cmpfunc: %a"}
!880 = distinct !{!880, !"cmpfunc"}
!881 = distinct !{!881, !882, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!882 = distinct !{!882, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!883 = distinct !{!883, !884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!884 = distinct !{!884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!885 = !{!886, !887, !888, !855}
!886 = distinct !{!886, !880, !"cmpfunc: %b"}
!887 = distinct !{!887, !882, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!888 = distinct !{!888, !884, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!889 = !{!890, !852}
!890 = distinct !{!890, !891, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!891 = distinct !{!891, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!892 = !{!893, !895, !897, !852}
!893 = distinct !{!893, !894, !"cmpfunc: %a"}
!894 = distinct !{!894, !"cmpfunc"}
!895 = distinct !{!895, !896, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!896 = distinct !{!896, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!897 = distinct !{!897, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!898 = distinct !{!898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!899 = !{!900, !901, !902, !855}
!900 = distinct !{!900, !894, !"cmpfunc: %b"}
!901 = distinct !{!901, !896, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!902 = distinct !{!902, !898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!903 = !{!904, !852}
!904 = distinct !{!904, !905, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!905 = distinct !{!905, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!906 = !{!907, !909, !911, !852}
!907 = distinct !{!907, !908, !"cmpfunc: %a"}
!908 = distinct !{!908, !"cmpfunc"}
!909 = distinct !{!909, !910, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!910 = distinct !{!910, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!911 = distinct !{!911, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!912 = distinct !{!912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!913 = !{!914, !915, !916, !855}
!914 = distinct !{!914, !908, !"cmpfunc: %b"}
!915 = distinct !{!915, !910, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!916 = distinct !{!916, !912, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!917 = !{!918, !852}
!918 = distinct !{!918, !919, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!919 = distinct !{!919, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!920 = !{!921, !923, !925, !852}
!921 = distinct !{!921, !922, !"cmpfunc: %b"}
!922 = distinct !{!922, !"cmpfunc"}
!923 = distinct !{!923, !924, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!924 = distinct !{!924, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!925 = distinct !{!925, !926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!926 = distinct !{!926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!927 = !{!928, !929, !930, !855}
!928 = distinct !{!928, !922, !"cmpfunc: %a"}
!929 = distinct !{!929, !924, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!930 = distinct !{!930, !926, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!931 = !{!930}
!932 = !{!925}
!933 = !{!929}
!934 = !{!923}
!935 = !{!928}
!936 = !{!921}
!937 = !{!928, !929, !930, !852}
!938 = !{!921, !923, !925, !855}
!939 = !{!940, !852}
!940 = distinct !{!940, !941, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!941 = distinct !{!941, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!942 = !{!943, !855}
!943 = distinct !{!943, !944, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!944 = distinct !{!944, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!945 = !{!943, !852}
!946 = !{!852, !855}
!947 = distinct !{!947, !461, !462}
!948 = distinct !{!948, !462, !461}
!949 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!950 = !{!951, !953}
!951 = distinct !{!951, !952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE: %pair"}
!952 = distinct !{!952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE"}
!953 = distinct !{!953, !952, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hf0301420b549921dE: %self.0"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E: %v.0"}
!956 = distinct !{!956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E"}
!957 = !{!958}
!958 = distinct !{!958, !956, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h9bd8ad148c7d3781E: %scratch.0"}
!959 = !{!960, !962, !964, !966, !955}
!960 = distinct !{!960, !961, !"cmpfunc: %a"}
!961 = distinct !{!961, !"cmpfunc"}
!962 = distinct !{!962, !963, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!963 = distinct !{!963, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!964 = distinct !{!964, !965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!965 = distinct !{!965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!966 = distinct !{!966, !967, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %b"}
!967 = distinct !{!967, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE"}
!968 = !{!969, !970, !971, !972, !958}
!969 = distinct !{!969, !961, !"cmpfunc: %b"}
!970 = distinct !{!970, !963, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!971 = distinct !{!971, !965, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!972 = distinct !{!972, !967, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %a"}
!973 = !{!972}
!974 = !{!966}
!975 = !{!964}
!976 = !{!971}
!977 = !{!962}
!978 = !{!970}
!979 = !{!960}
!980 = !{!969}
!981 = !{!969, !970, !971, !972, !955}
!982 = !{!960, !962, !964, !966, !958}
!983 = !{!984, !955}
!984 = distinct !{!984, !985, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!985 = distinct !{!985, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!986 = !{!987, !989, !991, !993, !955}
!987 = distinct !{!987, !988, !"cmpfunc: %b"}
!988 = distinct !{!988, !"cmpfunc"}
!989 = distinct !{!989, !990, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!990 = distinct !{!990, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!991 = distinct !{!991, !992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!992 = distinct !{!992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!993 = distinct !{!993, !994, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %a"}
!994 = distinct !{!994, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE"}
!995 = !{!996, !997, !998, !999, !958}
!996 = distinct !{!996, !988, !"cmpfunc: %a"}
!997 = distinct !{!997, !990, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!998 = distinct !{!998, !992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!999 = distinct !{!999, !994, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %b"}
!1000 = !{!1001, !955}
!1001 = distinct !{!1001, !1002, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!1002 = distinct !{!1002, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!1003 = !{!1004, !1006, !1008, !1010, !955}
!1004 = distinct !{!1004, !1005, !"cmpfunc: %b"}
!1005 = distinct !{!1005, !"cmpfunc"}
!1006 = distinct !{!1006, !1007, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!1007 = distinct !{!1007, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!1008 = distinct !{!1008, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!1009 = distinct !{!1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!1010 = distinct !{!1010, !1011, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %a"}
!1011 = distinct !{!1011, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE"}
!1012 = !{!1013, !1014, !1015, !1016, !958}
!1013 = distinct !{!1013, !1005, !"cmpfunc: %a"}
!1014 = distinct !{!1014, !1007, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!1015 = distinct !{!1015, !1009, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!1016 = distinct !{!1016, !1011, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %b"}
!1017 = !{!1018, !955}
!1018 = distinct !{!1018, !1019, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!1019 = distinct !{!1019, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!1020 = !{!1021, !1023, !1025, !1027, !955}
!1021 = distinct !{!1021, !1022, !"cmpfunc: %b"}
!1022 = distinct !{!1022, !"cmpfunc"}
!1023 = distinct !{!1023, !1024, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!1024 = distinct !{!1024, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!1025 = distinct !{!1025, !1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!1026 = distinct !{!1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!1027 = distinct !{!1027, !1028, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %a"}
!1028 = distinct !{!1028, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE"}
!1029 = !{!1030, !1031, !1032, !1033, !958}
!1030 = distinct !{!1030, !1022, !"cmpfunc: %a"}
!1031 = distinct !{!1031, !1024, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!1032 = distinct !{!1032, !1026, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!1033 = distinct !{!1033, !1028, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %b"}
!1034 = !{!1035, !955}
!1035 = distinct !{!1035, !1036, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!1036 = distinct !{!1036, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!1037 = !{!1038, !1040, !1042, !1044, !955}
!1038 = distinct !{!1038, !1039, !"cmpfunc: %a"}
!1039 = distinct !{!1039, !"cmpfunc"}
!1040 = distinct !{!1040, !1041, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!1041 = distinct !{!1041, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!1042 = distinct !{!1042, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!1043 = distinct !{!1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!1044 = distinct !{!1044, !1045, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %b"}
!1045 = distinct !{!1045, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE"}
!1046 = !{!1047, !1048, !1049, !1050, !958}
!1047 = distinct !{!1047, !1039, !"cmpfunc: %b"}
!1048 = distinct !{!1048, !1041, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!1049 = distinct !{!1049, !1043, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!1050 = distinct !{!1050, !1045, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h8b08f0c36e49f75bE: %a"}
!1051 = !{!1050}
!1052 = !{!1044}
!1053 = !{!1042}
!1054 = !{!1049}
!1055 = !{!1040}
!1056 = !{!1048}
!1057 = !{!1038}
!1058 = !{!1047}
!1059 = !{!1047, !1048, !1049, !1050, !955}
!1060 = !{!1038, !1040, !1042, !1044, !958}
!1061 = !{!1062, !955}
!1062 = distinct !{!1062, !1063, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!1063 = distinct !{!1063, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!1064 = !{!1065, !958}
!1065 = distinct !{!1065, !1066, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE: %self"}
!1066 = distinct !{!1066, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h521b2a8d17470f5fE"}
!1067 = !{!1065, !955}
!1068 = !{!955, !958}
!1069 = distinct !{!1069, !461, !462}
!1070 = distinct !{!1070, !462, !461}
!1071 = !{!1072, !1074}
!1072 = distinct !{!1072, !1073, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E: %_0"}
!1073 = distinct !{!1073, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E"}
!1074 = distinct !{!1074, !1075, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h1845632fd69279d8E: %_0"}
!1075 = distinct !{!1075, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h1845632fd69279d8E"}
!1076 = !{!1074}
!1077 = !{!1078, !1080}
!1078 = distinct !{!1078, !1079, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE: %_0"}
!1079 = distinct !{!1079, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE"}
!1080 = distinct !{!1080, !1079, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE: %elem"}
!1081 = !{!1082, !1078, !1080}
!1082 = distinct !{!1082, !1083, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E: %_0"}
!1083 = distinct !{!1083, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h429eb1d344294356E: %self"}
!1086 = distinct !{!1086, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h429eb1d344294356E"}
!1087 = !{!1085, !1078, !1080}
!1088 = !{!1089, !1091, !1093, !1094, !1096, !1085, !1097, !1078, !1080}
!1089 = distinct !{!1089, !1090, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E: %_0"}
!1090 = distinct !{!1090, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8ab3bbc20f0d8694E"}
!1091 = distinct !{!1091, !1092, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h6a873c9ae06019dbE: %v"}
!1092 = distinct !{!1092, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h6a873c9ae06019dbE"}
!1093 = distinct !{!1093, !1092, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h6a873c9ae06019dbE: %s.0"}
!1094 = distinct !{!1094, !1095, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b4b96499af7fea2E: %_0"}
!1095 = distinct !{!1095, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b4b96499af7fea2E"}
!1096 = distinct !{!1096, !1095, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b4b96499af7fea2E: %self"}
!1097 = distinct !{!1097, !1086, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h429eb1d344294356E: %value"}
!1098 = !{!1085, !1097, !1078, !1080}
!1099 = !{!1100, !1101}
!1100 = distinct !{!1100, !1079, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE: %_0:thread"}
!1101 = distinct !{!1101, !1079, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE: %elem:thread"}
!1102 = !{!1091, !1094, !1096, !1085, !1097, !1078, !1080}
!1103 = !{!1104, !1106, !1097, !1078, !1080}
!1104 = distinct !{!1104, !1105, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1105 = distinct !{!1105, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1106 = distinct !{!1106, !1107, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hd83f4dc6128afd28E: %_1"}
!1107 = distinct !{!1107, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hd83f4dc6128afd28E"}
!1108 = !{!1109, !1111, !1113, !1115, !1085, !1097, !1078, !1080}
!1109 = distinct !{!1109, !1110, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1110 = distinct !{!1110, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1111 = distinct !{!1111, !1112, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!1112 = distinct !{!1112, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!1113 = distinct !{!1113, !1114, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!1114 = distinct !{!1114, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!1115 = distinct !{!1115, !1116, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!1116 = distinct !{!1116, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!1117 = !{!1118, !1120, !1122, !1124, !1078, !1080}
!1118 = distinct !{!1118, !1119, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1119 = distinct !{!1119, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1120 = distinct !{!1120, !1121, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!1121 = distinct !{!1121, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!1122 = distinct !{!1122, !1123, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!1123 = distinct !{!1123, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!1124 = distinct !{!1124, !1125, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!1125 = distinct !{!1125, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1128, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E: %_1.0"}
!1128 = distinct !{!1128, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1131, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!1131 = distinct !{!1131, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1134, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!1134 = distinct !{!1134, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!1137 = distinct !{!1137, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1140, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1140 = distinct !{!1140, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1141 = !{!1142, !1139, !1136, !1133, !1130, !1127}
!1142 = distinct !{!1142, !1143, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %self"}
!1143 = distinct !{!1143, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E"}
!1144 = !{!1145, !1146, !1148}
!1145 = distinct !{!1145, !1143, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %_0"}
!1146 = distinct !{!1146, !1147, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E: %self"}
!1147 = distinct !{!1147, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E"}
!1148 = distinct !{!1148, !1149, !"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE: %_1"}
!1149 = distinct !{!1149, !"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"}
!1150 = !{!1139, !1136, !1133, !1130, !1127, !1146, !1148}
!1151 = !{!1152, !1154, !1156, !1148}
!1152 = distinct !{!1152, !1153, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1153 = distinct !{!1153, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1154 = distinct !{!1154, !1155, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E: %self"}
!1155 = distinct !{!1155, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E"}
!1156 = distinct !{!1156, !1157, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E: %_1"}
!1157 = distinct !{!1157, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E: %_1.0"}
!1160 = distinct !{!1160, !"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h03f3600fdd230fd3E"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE: %_1"}
!1163 = distinct !{!1163, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E: %_1"}
!1166 = distinct !{!1166, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1bdbb88dc01fef98E"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E: %self"}
!1169 = distinct !{!1169, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7a10261f756ad495E"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1172, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1172 = distinct !{!1172, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1173 = !{!1174, !1171, !1168, !1165, !1162, !1159}
!1174 = distinct !{!1174, !1175, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %self"}
!1175 = distinct !{!1175, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E"}
!1176 = !{!1177, !1178, !1180}
!1177 = distinct !{!1177, !1175, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h707d215c11f53f61E: %_0"}
!1178 = distinct !{!1178, !1179, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E: %self"}
!1179 = distinct !{!1179, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc68b91c815a81324E"}
!1180 = distinct !{!1180, !1181, !"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE: %_1"}
!1181 = distinct !{!1181, !"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"}
!1182 = !{!1171, !1168, !1165, !1162, !1159, !1178, !1180}
!1183 = !{!1184, !1186, !1188, !1180}
!1184 = distinct !{!1184, !1185, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE: %self"}
!1185 = distinct !{!1185, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hff5965fbe6485fbdE"}
!1186 = distinct !{!1186, !1187, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E: %self"}
!1187 = distinct !{!1187, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7721a93127c7af9E"}
!1188 = distinct !{!1188, !1189, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E: %_1"}
!1189 = distinct !{!1189, !"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28b697c49b7bfa27E"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E: %self.0"}
!1192 = distinct !{!1192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb6591657d53a8bb6E"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"_ZN5alloc5slice11stable_sort17h6ee3465df93719dfE: %v.0"}
!1195 = distinct !{!1195, !"_ZN5alloc5slice11stable_sort17h6ee3465df93719dfE"}
!1196 = !{!1194, !1197, !1191}
!1197 = distinct !{!1197, !1195, !"_ZN5alloc5slice11stable_sort17h6ee3465df93719dfE: argument 1"}
!1198 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!1201 = distinct !{!1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1206, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!1206 = distinct !{!1206, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1206, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"cmpfunc: %a"}
!1211 = distinct !{!1211, !"cmpfunc"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1211, !"cmpfunc: %b"}
!1214 = !{!1210, !1205, !1200, !1215, !1194, !1191}
!1215 = distinct !{!1215, !1216, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1810921c282cb37cE: %v.0"}
!1216 = distinct !{!1216, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1810921c282cb37cE"}
!1217 = !{!1213, !1208, !1203, !1197}
!1218 = !{!1213, !1208, !1203, !1215, !1194, !1191}
!1219 = !{!1210, !1205, !1200, !1197}
!1220 = !{!1215, !1194, !1191}
!1221 = !{!1197}
!1222 = !{!1223, !1225, !1227, !1215, !1194, !1191}
!1223 = distinct !{!1223, !1224, !"cmpfunc: %b"}
!1224 = distinct !{!1224, !"cmpfunc"}
!1225 = distinct !{!1225, !1226, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1"}
!1226 = distinct !{!1226, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E"}
!1227 = distinct !{!1227, !1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b"}
!1228 = distinct !{!1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E"}
!1229 = !{!1230, !1231, !1232, !1197}
!1230 = distinct !{!1230, !1224, !"cmpfunc: %a"}
!1231 = distinct !{!1231, !1226, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0"}
!1232 = distinct !{!1232, !1228, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a"}
!1233 = !{!1234, !1236, !1197}
!1234 = distinct !{!1234, !1235, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE: %self"}
!1235 = distinct !{!1235, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7332ef126b5c6ecE"}
!1236 = distinct !{!1236, !1237, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E: %_1"}
!1237 = distinct !{!1237, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17haa68918600dcabb8E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %a:It1"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h397abe0cc30dc529E: %b:It1"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1206, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 0:It1"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1206, !"_ZN4core3ops8function5FnMut8call_mut17hccda709ebe351962E: argument 1:It1"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1211, !"cmpfunc: %a:It1"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1211, !"cmpfunc: %b:It1"}
!1250 = !{!1247, !1243, !1239, !1215, !1194, !1191}
!1251 = !{!1249, !1245, !1241, !1197}
!1252 = !{!1249, !1245, !1241, !1215, !1194, !1191}
!1253 = !{!1247, !1243, !1239, !1197}
