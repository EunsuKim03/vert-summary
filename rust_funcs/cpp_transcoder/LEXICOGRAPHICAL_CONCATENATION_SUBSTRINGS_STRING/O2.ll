; ModuleID = 'LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.aa11a84f957bb06-cgu.0'
source_filename = "LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.aa11a84f957bb06-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_b70df69cce52d7d76923f104d33422fb = private unnamed_addr constant [149 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs\00", align 1
@alloc_4cce44244d9639ad41a74bd16b875a27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b70df69cce52d7d76923f104d33422fb, [16 x i8] c"\94\00\00\00\00\00\00\00#\00\00\00\1A\00\00\00" }>, align 8
@alloc_04774e36529a2f0ec64e4c14b859aaab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b70df69cce52d7d76923f104d33422fb, [16 x i8] c"\94\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_5.i = load ptr, ptr %0, align 8, !alias.scope !3, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !3, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %_711.i.i = icmp eq i64 %len.i, 0
  br i1 %_711.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i"
  %_3.sroa.0.012.i.i = phi i64 [ %2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i" ], [ 0, %start ]
  %_6.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i, i64 %_3.sroa.0.012.i.i
  %2 = add nuw i64 %_3.sroa.0.012.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i, align 8, !range !25, !alias.scope !26, !noalias !29, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i
  %3 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !26, !noalias !29, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !31
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i
  %_7.i.i = icmp eq i64 %2, %len.i
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb4:                                              ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i", %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %self1.i.i.i.i1 = load i64, ptr %_1, align 8, !range !25, !alias.scope !41, !noalias !44, !noundef !6
  %_6.i.i.i.i2 = icmp eq i64 %self1.i.i.i.i1, 0
  br i1 %_6.i.i.i.i2, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E.exit5", label %bb2.i.i.i3

bb2.i.i.i3:                                       ; preds = %bb4
  %4 = mul nuw i64 %self1.i.i.i.i1, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !46
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E.exit5"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E.exit5": ; preds = %bb4, %bb2.i.i.i3
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63), !noalias !55
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !65, !noalias !66, !noundef !6
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !67, !noalias !68, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !69, !noalias !76, !noundef !6
  %_0.i7 = icmp slt i32 %_3.i.i.i, %_4.i.i.i6
  %6 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i, %_4.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %6, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %n) unnamed_addr #2 {
start:
  %_6 = icmp samesign ugt i64 %n, 7
  br i1 %_6, label %bb1, label %bb6

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw %"alloc::string::String", ptr %0, i64 %count
  %count1 = mul nuw nsw i64 %n84, 7
  %_13 = getelementptr inbounds nuw %"alloc::string::String", ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101), !noalias !88
  %6 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 8
  %_7.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !103, !noalias !104, !nonnull !6, !noundef !6
  %7 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 16
  %len1.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !103, !noalias !104, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 8
  %_14.i.i.i.i = load ptr, ptr %8, align 8, !alias.scope !105, !noalias !106, !nonnull !6, !noundef !6
  %9 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 16
  %10 = load i64, ptr %9, align 8, !alias.scope !105, !noalias !106, !noundef !6
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !107, !noalias !114
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %11, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %10
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %13 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 8
  %_14.i.i.i.i7 = load ptr, ptr %13, align 8, !alias.scope !127, !noalias !128, !nonnull !6, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 16
  %15 = load i64, ptr %14, align 8, !alias.scope !127, !noalias !128, !noundef !6
  %spec.store.select.i.i.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %15)
  %16 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i.i8), !alias.scope !133, !noalias !140
  %17 = sext i32 %16 to i64
  %_15.i.i.i.i.i.i9 = icmp eq i32 %16, 0
  %diff.i.i.i.i.i.i10 = sub nsw i64 %len1.i.i.i.i, %15
  %spec.select.i.i.i.i.i.i11 = select i1 %_15.i.i.i.i.i.i9, i64 %diff.i.i.i.i.i.i10, i64 %17
  %18 = xor i64 %spec.select.i.i.i.i.i.i11, %spec.select.i.i.i.i.i.i
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit, label %bb3.i

bb3.i:                                            ; preds = %bb6
  %spec.store.select.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %10, i64 range(i64 0, -9223372036854775808) %15)
  %20 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7, i64 %spec.store.select.i.i.i.i.i.i15), !alias.scope !141, !noalias !148
  %21 = sext i32 %20 to i64
  %_15.i.i.i.i.i.i16 = icmp eq i32 %20, 0
  %diff.i.i.i.i.i.i17 = sub nsw i64 %10, %15
  %spec.select.i.i.i.i.i.i18 = select i1 %_15.i.i.i.i.i.i16, i64 %diff.i.i.i.i.i.i17, i64 %21
  %22 = xor i64 %spec.select.i.i.i.i.i.i18, %spec.select.i.i.i.i.i.i
  %_12.i = icmp slt i64 %22, 0
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit

_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE.exit: ; preds = %bb6, %bb3.i
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %bb6 ], [ %c.b.i, %bb3.i ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 96)) %dst) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %0 = getelementptr inbounds nuw i8, ptr %v_base, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !181, !noalias !182, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %v_base, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !181, !noalias !182, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !182, !noalias !181, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !182, !noalias !181, !noundef !6
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !183, !noalias !190
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %6
  %7 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %8 = getelementptr inbounds nuw i8, ptr %v_base, i64 80
  %_7.i.i.i.i7 = load ptr, ptr %8, align 8, !alias.scope !211, !noalias !212, !nonnull !6, !noundef !6
  %9 = getelementptr inbounds nuw i8, ptr %v_base, i64 88
  %len1.i.i.i.i8 = load i64, ptr %9, align 8, !alias.scope !211, !noalias !212, !noundef !6
  %10 = getelementptr inbounds nuw i8, ptr %v_base, i64 56
  %_14.i.i.i.i9 = load ptr, ptr %10, align 8, !alias.scope !212, !noalias !211, !nonnull !6, !noundef !6
  %11 = getelementptr inbounds nuw i8, ptr %v_base, i64 64
  %12 = load i64, ptr %11, align 8, !alias.scope !212, !noalias !211, !noundef !6
  %spec.store.select.i.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i8, i64 range(i64 0, -9223372036854775808) %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i7, ptr nonnull readonly align 1 %_14.i.i.i.i9, i64 %spec.store.select.i.i.i.i.i.i10), !alias.scope !213, !noalias !220
  %14 = sext i32 %13 to i64
  %_15.i.i.i.i.i.i11 = icmp eq i32 %13, 0
  %diff.i.i.i.i.i.i12 = sub nsw i64 %len1.i.i.i.i8, %12
  %spec.select.i.i.i.i.i.i13 = select i1 %_15.i.i.i.i.i.i11, i64 %diff.i.i.i.i.i.i12, i64 %14
  %15 = icmp slt i64 %spec.select.i.i.i.i.i.i13, 0
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %a = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %spec.select.i.i.i.i.i.i.lobit
  %count2 = zext i1 %7 to i64
  %b = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count2
  %count3 = select i1 %15, i64 3, i64 2
  %c = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count3
  %count4 = select i1 %15, i64 2, i64 3
  %d = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %16 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_7.i.i.i.i14 = load ptr, ptr %16, align 8, !alias.scope !241, !noalias !242, !nonnull !6, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len1.i.i.i.i15 = load i64, ptr %17, align 8, !alias.scope !241, !noalias !242, !noundef !6
  %18 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_14.i.i.i.i16 = load ptr, ptr %18, align 8, !alias.scope !242, !noalias !241, !nonnull !6, !noundef !6
  %19 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %20 = load i64, ptr %19, align 8, !alias.scope !242, !noalias !241, !noundef !6
  %spec.store.select.i.i.i.i.i.i17 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i15, i64 range(i64 0, -9223372036854775808) %20)
  %21 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i14, ptr nonnull readonly align 1 %_14.i.i.i.i16, i64 %spec.store.select.i.i.i.i.i.i17), !alias.scope !243, !noalias !250
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i.i18 = icmp eq i32 %21, 0
  %diff.i.i.i.i.i.i19 = sub nsw i64 %len1.i.i.i.i15, %20
  %spec.select.i.i.i.i.i.i20 = select i1 %_15.i.i.i.i.i.i18, i64 %diff.i.i.i.i.i.i19, i64 %22
  %23 = icmp slt i64 %spec.select.i.i.i.i.i.i20, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %24 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %_7.i.i.i.i21 = load ptr, ptr %24, align 8, !alias.scope !271, !noalias !272, !nonnull !6, !noundef !6
  %25 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %len1.i.i.i.i22 = load i64, ptr %25, align 8, !alias.scope !271, !noalias !272, !noundef !6
  %26 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_14.i.i.i.i23 = load ptr, ptr %26, align 8, !alias.scope !272, !noalias !271, !nonnull !6, !noundef !6
  %27 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %28 = load i64, ptr %27, align 8, !alias.scope !272, !noalias !271, !noundef !6
  %spec.store.select.i.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i22, i64 range(i64 0, -9223372036854775808) %28)
  %29 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i21, ptr nonnull readonly align 1 %_14.i.i.i.i23, i64 %spec.store.select.i.i.i.i.i.i24), !alias.scope !273, !noalias !280
  %30 = sext i32 %29 to i64
  %_15.i.i.i.i.i.i25 = icmp eq i32 %29, 0
  %diff.i.i.i.i.i.i26 = sub nsw i64 %len1.i.i.i.i22, %28
  %spec.select.i.i.i.i.i.i27 = select i1 %_15.i.i.i.i.i.i25, i64 %diff.i.i.i.i.i.i26, i64 %30
  %31 = icmp slt i64 %spec.select.i.i.i.i.i.i27, 0
  %32 = select i1 %23, ptr %c, ptr %a, !unpredictable !6
  %33 = select i1 %31, ptr %b, ptr %d, !unpredictable !6
  %34 = select i1 %31, ptr %c, ptr %b, !unpredictable !6
  %35 = select i1 %23, ptr %a, ptr %34, !unpredictable !6
  %36 = select i1 %23, ptr %b, ptr %c, !unpredictable !6
  %37 = select i1 %31, ptr %d, ptr %36, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %_7.i.i.i.i28 = load ptr, ptr %38, align 8, !alias.scope !301, !noalias !302, !nonnull !6, !noundef !6
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %len1.i.i.i.i29 = load i64, ptr %39, align 8, !alias.scope !301, !noalias !302, !noundef !6
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %_14.i.i.i.i30 = load ptr, ptr %40, align 8, !alias.scope !302, !noalias !301, !nonnull !6, !noundef !6
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %42 = load i64, ptr %41, align 8, !alias.scope !302, !noalias !301, !noundef !6
  %spec.store.select.i.i.i.i.i.i31 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i29, i64 range(i64 0, -9223372036854775808) %42)
  %43 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i28, ptr nonnull readonly align 1 %_14.i.i.i.i30, i64 %spec.store.select.i.i.i.i.i.i31), !alias.scope !303, !noalias !310
  %44 = sext i32 %43 to i64
  %_15.i.i.i.i.i.i32 = icmp eq i32 %43, 0
  %diff.i.i.i.i.i.i33 = sub nsw i64 %len1.i.i.i.i29, %42
  %spec.select.i.i.i.i.i.i34 = select i1 %_15.i.i.i.i.i.i32, i64 %diff.i.i.i.i.i.i33, i64 %44
  %45 = icmp slt i64 %spec.select.i.i.i.i.i.i34, 0
  %46 = select i1 %45, ptr %37, ptr %35, !unpredictable !6
  %47 = select i1 %45, ptr %35, ptr %37, !unpredictable !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false)
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst5, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false)
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst6, ptr noundef nonnull align 8 dereferenceable(24) %47, i64 24, i1 false)
  %48 = getelementptr inbounds nuw i8, ptr %dst, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !326, !noalias !327, !noundef !6
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !327, !noalias !326, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !343, !noalias !344, !noundef !6
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !344, !noalias !343, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !360, !noalias !361, !noundef !6
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !361, !noalias !360, !noundef !6
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !377, !noalias !378, !noundef !6
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !378, !noalias !377, !noundef !6
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !6
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !6
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !6
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !394, !noalias !395, !noundef !6
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !395, !noalias !394, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !411, !noalias !412, !noundef !6
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !412, !noalias !411, !noundef !6
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !428, !noalias !429, !noundef !6
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !429, !noalias !428, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !445, !noalias !446, !noundef !6
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !446, !noalias !445, !noundef !6
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !462, !noalias !463, !noundef !6
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !463, !noalias !462, !noundef !6
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !6
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !6
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !6
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !479, !noalias !480, !noundef !6
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !480, !noalias !479, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !484, !noalias !491, !noundef !6
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !497
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !499, !noalias !506, !noundef !6
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !512
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525), !noalias !520
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !527, !noalias !528, !noundef !6
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !529, !noalias !530, !noundef !6
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !497
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542), !noalias !537
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !544, !noalias !545, !noundef !6
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !546, !noalias !547, !noundef !6
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !512
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !520
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !560, !noalias !561, !noundef !6
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !562, !noalias !563, !noundef !6
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !497
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !537
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !576, !noalias !577, !noundef !6
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !578, !noalias !579, !noundef !6
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !512
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !520
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !592, !noalias !593, !noundef !6
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !594, !noalias !595, !noundef !6
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !497
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !537
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !608, !noalias !609, !noundef !6
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !610, !noalias !611, !noundef !6
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !512
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE.exit, !prof !612

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26, !noalias !481
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = mul nuw nsw i64 %v.1, 24
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.01 = getelementptr inbounds nuw i8, ptr %v.0, i64 24
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit
  %tail.sroa.0.04 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit ], [ %tail.sroa.0.01, %bb5.preheader ]
  %v.0.pn3 = phi ptr [ %tail.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %0 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 32
  %_7.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !633, !noalias !634, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 40
  %len1.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !633, !noalias !634, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !634, !noalias !633, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !634, !noalias !633, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !635, !noalias !642
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %4
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %6
  %7 = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %7, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

bb2.i:                                            ; preds = %bb5
  %value.sroa.0.0.copyload.i = load i64, ptr %tail.sroa.0.04, align 8
  br label %bb4.i

bb4.i:                                            ; preds = %bb7.i, %bb2.i
  %gap_guard.sroa.5.0.i = phi ptr [ %tail.sroa.0.04, %bb2.i ], [ %sift.sroa.0.0.i, %bb7.i ]
  %sift.sroa.0.0.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i, i64 24, i1 false)
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb7.i

bb7.i:                                            ; preds = %bb4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %8 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i.i3.i = load ptr, ptr %8, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !noundef !6
  %9 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %10 = load i64, ptr %9, align 8, !alias.scope !655, !noalias !656, !noundef !6
  %spec.store.select.i.i.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i, i64 %spec.store.select.i.i.i.i.i.i4.i), !alias.scope !661, !noalias !668
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i.i.i5.i = icmp eq i32 %11, 0
  %diff.i.i.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i.i, %10
  %spec.select.i.i.i.i.i.i7.i = select i1 %_15.i.i.i.i.i.i5.i, i64 %diff.i.i.i.i.i.i6.i, i64 %12
  %13 = icmp slt i64 %spec.select.i.i.i.i.i.i7.i, 0
  br i1 %13, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i.lcssa, align 8, !noalias !669
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !669
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !669
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit: ; preds = %bb5, %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 24
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h4e47b3ce28504335E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !674

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !675
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, 9) 4) #25, !noalias !675
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #27
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #25, !noalias !680
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #25, !noalias !689
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 8
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 333333)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 171
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  %_21.0.i.i.i.i = mul i64 %_0.sroa.0.0.i7, 24
  %or.cond.i.i.i.i = icmp ugt i64 %v1, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !674

bb17.i.i.i:                                       ; preds = %bb4
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb6, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !698
; call __rustc::__rust_alloc
  %0 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !698
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb6

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #27
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb11, label %bb13

bb6:                                              ; preds = %bb17.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %_7.i.i = icmp samesign ule i64 %_0.sroa.0.0.i7, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %start
  %_10.i9 = phi ptr [ undef, %start ], [ %_4.sroa.10.0.i.i, %bb6 ]
  %self1.i8 = phi i64 [ undef, %start ], [ %_4.sroa.4.0.i.i, %bb6 ]
  %stack_scratch.sroa.4.0 = phi i64 [ 170, %start ], [ %_4.sroa.4.0.i.i, %bb6 ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %_4.sroa.10.0.i.i, %bb6 ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i8, 0
  %or.cond = or i1 %_15, %_6.i.i.i.i2.i
  br i1 %or.cond, label %bb10, label %bb2.i.i.i3.i

bb10:                                             ; preds = %bb2.i.i.i3.i, %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb2.i.i.i3.i:                                     ; preds = %bb9
  %3 = mul nuw i64 %self1.i8, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i9, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !703
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %2

bb13:                                             ; preds = %cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"(ptr noalias noundef align 8 dereferenceable(24) %heap_buf) #28
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %_13.not.i109 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i115 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %61, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %60, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %29, %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit ], [ 1, %bb6 ]
  %_3790 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3790, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733), !noalias !720
  %2 = getelementptr inbounds nuw i8, ptr %_82, i64 32
  %_7.i.i.i.i65 = load ptr, ptr %2, align 8, !alias.scope !735, !noalias !736, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %_82, i64 40
  %len1.i.i.i.i66 = load i64, ptr %3, align 8, !alias.scope !735, !noalias !736, !noundef !6
  %4 = getelementptr inbounds nuw i8, ptr %_82, i64 8
  %_14.i.i.i.i67 = load ptr, ptr %4, align 8, !alias.scope !737, !noalias !738, !nonnull !6, !noundef !6
  %5 = getelementptr inbounds nuw i8, ptr %_82, i64 16
  %6 = load i64, ptr %5, align 8, !alias.scope !737, !noalias !738, !noundef !6
  %spec.store.select.i.i.i.i.i.i68 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i66, i64 range(i64 0, -9223372036854775808) %6)
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i65, ptr nonnull readonly align 1 %_14.i.i.i.i67, i64 %spec.store.select.i.i.i.i.i.i68), !alias.scope !739, !noalias !746
  %8 = sext i32 %7 to i64
  %_15.i.i.i.i.i.i69 = icmp eq i32 %7, 0
  %diff.i.i.i.i.i.i70 = sub nsw i64 %len1.i.i.i.i66, %6
  %spec.select.i.i.i.i.i.i71 = select i1 %_15.i.i.i.i.i.i69, i64 %diff.i.i.i.i.i.i70, i64 %8
  %9 = icmp slt i64 %spec.select.i.i.i.i.i.i71, 0
  %_10.i.i86.not = icmp eq i64 %new_len, 2
  br i1 %9, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i86.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i86.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %10 = phi i64 [ %len1.i.i.i.i59, %bb15.i.i ], [ %len1.i.i.i.i66, %bb11.i.i.preheader ]
  %_14.i.i.i.i60 = phi ptr [ %_7.i.i.i.i58, %bb15.i.i ], [ %_7.i.i.i.i65, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i84 = phi i64 [ %17, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %11 = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %run_len.sroa.0.0.i.i84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756), !noalias !720
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %_7.i.i.i.i58 = load ptr, ptr %12, align 8, !alias.scope !759, !noalias !760, !nonnull !6, !noundef !6
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %len1.i.i.i.i59 = load i64, ptr %13, align 8, !alias.scope !759, !noalias !760, !noundef !6
  %spec.store.select.i.i.i.i.i.i61 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i59, i64 range(i64 0, -9223372036854775808) %10)
  %14 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i58, ptr nonnull readonly align 1 %_14.i.i.i.i60, i64 %spec.store.select.i.i.i.i.i.i61), !alias.scope !765, !noalias !772
  %15 = sext i32 %14 to i64
  %_15.i.i.i.i.i.i62 = icmp eq i32 %14, 0
  %diff.i.i.i.i.i.i63 = sub nsw i64 %len1.i.i.i.i59, %10
  %spec.select.i.i.i.i.i.i64 = select i1 %_15.i.i.i.i.i.i62, i64 %diff.i.i.i.i.i.i63, i64 %15
  %16 = icmp slt i64 %spec.select.i.i.i.i.i.i64, 0
  br i1 %16, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %17 = add nuw i64 %run_len.sroa.0.0.i.i84, 1
  %exitcond.not = icmp eq i64 %17, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %18 = phi i64 [ %len1.i.i.i.i, %bb7.i.i ], [ %len1.i.i.i.i66, %bb4.i.i.preheader ]
  %_14.i.i.i.i = phi ptr [ %_7.i.i.i.i, %bb7.i.i ], [ %_7.i.i.i.i65, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i87 = phi i64 [ %25, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %19 = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %run_len.sroa.0.1.i.i87
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779), !noalias !720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !720
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %_7.i.i.i.i = load ptr, ptr %20, align 8, !alias.scope !785, !noalias !786, !nonnull !6, !noundef !6
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %len1.i.i.i.i = load i64, ptr %21, align 8, !alias.scope !785, !noalias !786, !noundef !6
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %18)
  %22 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !791, !noalias !798
  %23 = sext i32 %22 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %22, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %18
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %23
  %24 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %24, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %25 = add nuw i64 %run_len.sroa.0.1.i.i87, 1
  %exitcond100.not = icmp eq i64 %25, %new_len
  br i1 %exitcond100.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i87, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i84, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i115, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i109, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i
  br i1 %9, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #29
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7780 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread ], [ %_0.sroa.0.0.i.i110118122, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7780, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804), !noalias !802
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112, %bb14.i
  %half_len2.i123 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112 ]
  %_0.sroa.0.0.i.i110118122 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha85e74fa05112b79E.exit.i.thread112 ]
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %_0.sroa.0.0.i.i110118122
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i, %bb5.preheader.i.i
  %i.sroa.0.016.i.i = phi i64 [ %27, %bb6.i.i ], [ 0, %bb5.preheader.i.i ]
  %26 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr %"alloc::string::String", ptr %end.i, i64 %26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806), !noalias !802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809), !noalias !802
  %_3.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %x.i.i, align 8, !alias.scope !811, !noalias !814
  %_4.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %y.i.i, align 8, !alias.scope !815, !noalias !816
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %x.i.i, align 8, !alias.scope !811, !noalias !814
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %y.i.i, align 8, !alias.scope !815, !noalias !816
  %_11.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 8
  %_13.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819), !noalias !802
  %_3.sroa.0.0.copyload.i.1.i.i.i.i.i.i = load i64, ptr %_11.1.i.i.i.i.i.i, align 8, !alias.scope !821, !noalias !822
  %_4.sroa.0.0.copyload.i.1.i.i.i.i.i.i = load i64, ptr %_13.1.i.i.i.i.i.i, align 8, !alias.scope !823, !noalias !824
  store i64 %_4.sroa.0.0.copyload.i.1.i.i.i.i.i.i, ptr %_11.1.i.i.i.i.i.i, align 8, !alias.scope !821, !noalias !822
  store i64 %_3.sroa.0.0.copyload.i.1.i.i.i.i.i.i, ptr %_13.1.i.i.i.i.i.i, align 8, !alias.scope !823, !noalias !824
  %_11.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 16
  %_13.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825), !noalias !802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827), !noalias !802
  %_3.sroa.0.0.copyload.i.2.i.i.i.i.i.i = load i64, ptr %_11.2.i.i.i.i.i.i, align 8, !alias.scope !829, !noalias !830
  %_4.sroa.0.0.copyload.i.2.i.i.i.i.i.i = load i64, ptr %_13.2.i.i.i.i.i.i, align 8, !alias.scope !831, !noalias !832
  store i64 %_4.sroa.0.0.copyload.i.2.i.i.i.i.i.i, ptr %_11.2.i.i.i.i.i.i, align 8, !alias.scope !829, !noalias !830
  store i64 %_3.sroa.0.0.copyload.i.2.i.i.i.i.i.i, ptr %_13.2.i.i.i.i.i.i, align 8, !alias.scope !831, !noalias !832
  %27 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %27, %half_len2.i123
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i

_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
  %_0.sroa.0.0.i40 = phi i64 [ %_26.i, %bb5.i38 ], [ %_34.i, %bb16.i43 ], [ %_36.i, %bb11.i42 ]
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %_0.sroa.0.0.i40, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %y = add i64 %_35, %factor
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %28 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %29 = trunc nuw nsw i64 %28 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit
  %stack_len.sroa.0.192 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ]
  %prev_run.sroa.0.191 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ]
  %count = add i64 %stack_len.sroa.0.192, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !6
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.191, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.192, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !6
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.191, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.191, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %30 = or i64 %left10, %prev_run.sroa.0.191
  %31 = and i64 %30, 1
  %32 = icmp ne i64 %31, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %32
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %33 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i = shl nuw nsw i32 %34, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %_50, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.191, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %35 = mul nuw nsw i64 %_0.sroa.0.0.i.i44, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scratch.0, ptr nonnull align 8 %spec.select.i, i64 %35, i1 false), !alias.scope !838
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %35
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_219.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_187.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %38, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %36 = getelementptr inbounds i8, ptr %_187.i.i, i64 -24
  %37 = getelementptr inbounds i8, ptr %_219.i.i, i64 -24
  %38 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %39 = getelementptr inbounds i8, ptr %_219.i.i, i64 -16
  %_7.i.i.i.i.i.i = load ptr, ptr %39, align 8, !alias.scope !859, !noalias !860, !nonnull !6, !noundef !6
  %40 = getelementptr inbounds i8, ptr %_219.i.i, i64 -8
  %len1.i.i.i.i.i.i = load i64, ptr %40, align 8, !alias.scope !859, !noalias !860, !noundef !6
  %41 = getelementptr inbounds i8, ptr %_187.i.i, i64 -16
  %_14.i.i.i.i.i.i = load ptr, ptr %41, align 8, !alias.scope !863, !noalias !864, !nonnull !6, !noundef !6
  %42 = getelementptr inbounds i8, ptr %_187.i.i, i64 -8
  %43 = load i64, ptr %42, align 8, !alias.scope !863, !noalias !864, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %43)
  %44 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !865, !noalias !872
  %45 = sext i32 %44 to i64
  %_15.i.i.i.i.i.i.i.i = icmp eq i32 %44, 0
  %diff.i.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i.i, %43
  %spec.select.i.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i.i, i64 %45
  %46 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i, -1
  %..i.i = select i1 %46, ptr %37, ptr %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !838, !noalias !873
  %count.i.i = zext i1 %46 to i64
  %_18.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %36, i64 %count.i.i
  %spec.select.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %_21.i.i49 = getelementptr inbounds nuw %"alloc::string::String", ptr %37, i64 %spec.select.i.i.i.i.i.i.lobit.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %_98, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i21.i, %bb3.i.i ], [ %v_mid.i, %bb5.i45 ]
  %_2059.i.i = phi ptr [ %_20.i.i, %bb3.i.i ], [ %scratch.0, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %47 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i.i, i64 8
  %_7.i.i.i.i.i12.i = load ptr, ptr %47, align 8, !alias.scope !894, !noalias !895, !nonnull !6, !noundef !6
  %48 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i.i, i64 16
  %len1.i.i.i.i.i13.i = load i64, ptr %48, align 8, !alias.scope !894, !noalias !895, !noundef !6
  %49 = getelementptr inbounds nuw i8, ptr %_2059.i.i, i64 8
  %_14.i.i.i.i.i14.i = load ptr, ptr %49, align 8, !alias.scope !898, !noalias !899, !nonnull !6, !noundef !6
  %50 = getelementptr inbounds nuw i8, ptr %_2059.i.i, i64 16
  %51 = load i64, ptr %50, align 8, !alias.scope !898, !noalias !899, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i13.i, i64 range(i64 0, -9223372036854775808) %51)
  %52 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i12.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i14.i, i64 %spec.store.select.i.i.i.i.i.i.i15.i), !alias.scope !900, !noalias !907
  %53 = sext i32 %52 to i64
  %_15.i.i.i.i.i.i.i16.i = icmp eq i32 %52, 0
  %diff.i.i.i.i.i.i.i17.i = sub nsw i64 %len1.i.i.i.i.i13.i, %51
  %spec.select.i.i.i.i.i.i.i18.i = select i1 %_15.i.i.i.i.i.i.i16.i, i64 %diff.i.i.i.i.i.i.i17.i, i64 %53
  %54 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i18.i, -1
  %src.sroa.0.0.i.i = select i1 %54, ptr %_2059.i.i, ptr %right.sroa.0.010.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511.i.i, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !838, !noalias !908
  %count.i19.i = zext i1 %54 to i64
  %_20.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059.i.i, i64 %count.i19.i
  %spec.select.i.i.i.i.i.i.lobit.i20.i = lshr i64 %spec.select.i.i.i.i.i.i.i18.i, 63
  %_23.i21.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010.i.i, i64 %spec.select.i.i.i.i.i.i.lobit.i20.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 24
  %_7.i.i = icmp ne ptr %_20.i.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i21.i, %v_end.i
  %or.cond.i22.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i22.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i.i, %bb3.i.i ]
  %55 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %56 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %57 = sub nuw i64 %55, %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %merge_state.sroa.13.0.i, ptr align 8 %merge_state.sroa.0.0.i, i64 %57, i1 false), !alias.scope !838, !noalias !909
  br label %_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit

_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %58 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %59 = trunc nuw nsw i64 %58 to i32
  %log.i51 = shl nuw nsw i32 %59, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %_37.i, i64 noundef range(i64 0, 384307168202282326) %_51, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h7498cdca0d127bebE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %60 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %61 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i53 = or i64 %v.1, 1
  %62 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i53, i1 true)
  %63 = trunc nuw nsw i64 %62 to i32
  %log.i54 = shl nuw nsw i32 %63, 1
  %limit.i55 = xor i32 %log.i54, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %is_less) #29
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919), !noalias !922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925), !noalias !922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927), !noalias !922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930), !noalias !922
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !932, !noalias !933, !noundef !6
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !934, !noalias !935, !noundef !6
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !936, !noalias !943, !noundef !6
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !947, !noalias !954, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958), !noalias !961
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963), !noalias !961
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5487a28fb4abfd8fE.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !965, !noalias !968
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !965, !noalias !968
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !969, !noalias !970
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !969, !noalias !970
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !965, !noalias !968
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !965, !noalias !968
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !969, !noalias !970
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !969, !noalias !970
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !971

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !965, !noalias !968, !noundef !6
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !969, !noalias !970
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !965, !noalias !968
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !969, !noalias !970
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !974

_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !6
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !980
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !996, !noalias !997, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !1000, !noalias !1001, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !975, !noalias !1002
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1018, !noalias !1019, !noundef !6
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1022, !noalias !1023, !noundef !6
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !975, !noalias !1024
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !980, !noalias !1025
  br label %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit

_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1088f9560b9ace83E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %3, ptr noalias noundef nonnull align 1 %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [24 x i8], align 8
  %_8103109 = icmp samesign ult i64 %1, 33
  br i1 %_8103109, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph113 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph112 = phi i64 [ %_63.i58, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph111 = phi i32 [ %64, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph110 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph113, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph113, i64 16
  %6 = ptrtoint ptr %v.sroa.0.0.ph113 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph110, null
  %7 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph110, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph110, i64 16
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit"
  %v.sroa.16.0105 = phi i64 [ %v.sroa.16.0.ph112, %bb5.lr.ph ], [ %state.sroa.11.1.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ]
  %limit.sroa.0.0104 = phi i32 [ %limit.sroa.0.0.ph111, %bb5.lr.ph ], [ %64, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0104, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit", %start
  %v.sroa.0.0.ph.lcssa102 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph113, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.11.1.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit" ], [ %_63.i58, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %_5.i = icmp samesign ult i64 %v.sroa.16.0.lcssa, 2
  br i1 %_5.i, label %bb22, label %bb2.i

bb2.i:                                            ; preds = %bb3
  %_8.i = add nuw nsw i64 %v.sroa.16.0.lcssa, 16
  %_6.i = icmp samesign ult i64 %scratch.1, %_8.i
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2.i
  %len_div_211.i = lshr i64 %v.sroa.16.0.lcssa, 1
  %_22.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 7
  %_27.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa102, i64 %len_div_211.i
  %_28.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %len_div_211.i
  br i1 %_22.i, label %bb10.i, label %bb46.i

bb3.i:                                            ; preds = %bb2.i
  call void @llvm.trap()
  unreachable

bb10.i:                                           ; preds = %bb4.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef nonnull align 8 %v.sroa.0.0.ph.lcssa102, ptr noundef nonnull align 8 %scratch.0)
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8dbcb2c0d021ad35E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scratch.0, ptr noundef nonnull align 8 dereferenceable(24) %v.sroa.0.0.ph.lcssa102, i64 24, i1 false), !alias.scope !1033, !noalias !1035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.i, ptr noundef nonnull align 8 dereferenceable(24) %_27.i, i64 24, i1 false), !alias.scope !1033, !noalias !1035
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i
  %presorted_len.sroa.0.0.i = phi i64 [ 4, %bb10.i ], [ 1, %bb46.i ]
  %9 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8024.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8024.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i, %bb15.i
  %_8024.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %9
  br i1 %_8024.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.126.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.128.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i ], [ %iter1.sroa.0.126.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.027.1.i = phi i64 [ %iter1.sroa.0.128.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_27.i, i64 %iter1.sroa.0.027.1.i
  %dst7.1.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_28.i, i64 %iter1.sroa.0.027.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7.1.i, ptr noundef nonnull align 8 dereferenceable(24) %_55.1.i, i64 24, i1 false), !alias.scope !1033, !noalias !1035
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %10 = getelementptr inbounds nuw i8, ptr %dst7.1.i, i64 8
  %_7.i.i.i.i.i13.1.i = load ptr, ptr %10, align 8, !alias.scope !1057, !noalias !1058, !nonnull !6, !noundef !6
  %11 = getelementptr inbounds nuw i8, ptr %dst7.1.i, i64 16
  %len1.i.i.i.i.i14.1.i = load i64, ptr %11, align 8, !alias.scope !1057, !noalias !1058, !noundef !6
  %12 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -16
  %_14.i.i.i.i.i15.1.i = load ptr, ptr %12, align 8, !alias.scope !1059, !noalias !1060, !nonnull !6, !noundef !6
  %13 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -8
  %14 = load i64, ptr %13, align 8, !alias.scope !1059, !noalias !1060, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i16.1.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i14.1.i, i64 range(i64 0, -9223372036854775808) %14)
  %15 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i13.1.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i15.1.i, i64 %spec.store.select.i.i.i.i.i.i.i16.1.i), !alias.scope !1061, !noalias !1068
  %16 = sext i32 %15 to i64
  %_15.i.i.i.i.i.i.i17.1.i = icmp eq i32 %15, 0
  %diff.i.i.i.i.i.i.i18.1.i = sub nsw i64 %len1.i.i.i.i.i14.1.i, %14
  %spec.select.i.i.i.i.i.i.i19.1.i = select i1 %_15.i.i.i.i.i.i.i17.1.i, i64 %diff.i.i.i.i.i.i.i18.1.i, i64 %16
  %17 = icmp slt i64 %spec.select.i.i.i.i.i.i.i19.1.i, 0
  br i1 %17, label %bb2.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i

bb2.i.1.i:                                        ; preds = %bb24.1.i
  %value.sroa.0.0.copyload.i.1.i = load i64, ptr %dst7.1.i, align 8, !alias.scope !1069, !noalias !1070
  br label %bb4.i.1.i

bb4.i.1.i:                                        ; preds = %bb7.i.1.i, %bb2.i.1.i
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %dst7.1.i, %bb2.i.1.i ], [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ]
  %sift.sroa.0.0.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i.1.i, i64 24, i1 false), !alias.scope !1069, !noalias !1070
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %_28.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %18 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -40
  %_14.i.i.i.i3.i.1.i = load ptr, ptr %18, align 8, !alias.scope !1083, !noalias !1084, !nonnull !6, !noundef !6
  %19 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -32
  %20 = load i64, ptr %19, align 8, !alias.scope !1083, !noalias !1084, !noundef !6
  %spec.store.select.i.i.i.i.i.i4.i.1.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i14.1.i, i64 range(i64 0, -9223372036854775808) %20)
  %21 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i13.1.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i.1.i, i64 %spec.store.select.i.i.i.i.i.i4.i.1.i), !alias.scope !1089, !noalias !1096
  %22 = sext i32 %21 to i64
  %_15.i.i.i.i.i.i5.i.1.i = icmp eq i32 %21, 0
  %diff.i.i.i.i.i.i6.i.1.i = sub nsw i64 %len1.i.i.i.i.i14.1.i, %20
  %spec.select.i.i.i.i.i.i7.i.1.i = select i1 %_15.i.i.i.i.i.i5.i.1.i, i64 %diff.i.i.i.i.i.i6.i.1.i, i64 %22
  %23 = icmp slt i64 %spec.select.i.i.i.i.i.i7.i.1.i, 0
  br i1 %23, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %_28.i, %bb4.i.1.i ]
  store i64 %value.sroa.0.0.copyload.i.1.i, ptr %sift.sroa.0.0.i.lcssa.1.i, align 8, !alias.scope !1069, !noalias !1097
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -16
  store ptr %_7.i.i.i.i.i13.1.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1069, !noalias !1097
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -8
  store i64 %len1.i.i.i.i.i14.1.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1069, !noalias !1097
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.128.1.i, %9
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.128.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %24 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa102, i64 %count1.i.i
  %25 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %count1.i.i
  %26 = getelementptr i8, ptr %_28.i, i64 -24
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.126.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %bb15.i.i
  %27 = getelementptr i8, ptr %46, i64 24
  %28 = getelementptr i8, ptr %45, i64 24
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %bb15.i.i, %bb16.loopexit.1.i
  %dst.sroa.0.033.i.i = phi ptr [ %_16.i.i.i, %bb15.i.i ], [ %v.sroa.0.0.ph.lcssa102, %bb16.loopexit.1.i ]
  %iter.sroa.0.032.i.i = phi i64 [ %_39.i.i, %bb15.i.i ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.031.i.i = phi ptr [ %_14.i.i.i, %bb15.i.i ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.030.i.i = phi ptr [ %_12.i.i.i, %bb15.i.i ], [ %_28.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.029.i.i = phi ptr [ %46, %bb15.i.i ], [ %26, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.028.i.i = phi ptr [ %45, %bb15.i.i ], [ %25, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.027.i.i = phi ptr [ %47, %bb15.i.i ], [ %24, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.032.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110), !noalias !1113
  call void @llvm.experimental.noalias.scope.decl(metadata !1116), !noalias !1113
  call void @llvm.experimental.noalias.scope.decl(metadata !1118), !noalias !1113
  call void @llvm.experimental.noalias.scope.decl(metadata !1121), !noalias !1113
  call void @llvm.experimental.noalias.scope.decl(metadata !1123), !noalias !1113
  call void @llvm.experimental.noalias.scope.decl(metadata !1126), !noalias !1113
  %29 = getelementptr inbounds nuw i8, ptr %right.sroa.0.030.i.i, i64 8
  %_7.i.i.i.i.i.i = load ptr, ptr %29, align 8, !alias.scope !1128, !noalias !1129, !nonnull !6, !noundef !6
  %30 = getelementptr inbounds nuw i8, ptr %right.sroa.0.030.i.i, i64 16
  %len1.i.i.i.i.i.i = load i64, ptr %30, align 8, !alias.scope !1128, !noalias !1129, !noundef !6
  %31 = getelementptr inbounds nuw i8, ptr %left.sroa.0.031.i.i, i64 8
  %_14.i.i.i.i.i.i = load ptr, ptr %31, align 8, !alias.scope !1130, !noalias !1131, !nonnull !6, !noundef !6
  %32 = getelementptr inbounds nuw i8, ptr %left.sroa.0.031.i.i, i64 16
  %33 = load i64, ptr %32, align 8, !alias.scope !1130, !noalias !1131, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %33)
  %34 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !1132, !noalias !1139
  %35 = sext i32 %34 to i64
  %_15.i.i.i.i.i.i.i.i = icmp eq i32 %34, 0
  %diff.i.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i.i, %33
  %spec.select.i.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i.i, i64 %35
  %36 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i, -1
  %..i17.i.i = select i1 %36, ptr %left.sroa.0.031.i.i, ptr %right.sroa.0.030.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.sroa.0.033.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i.i, i64 24, i1 false), !alias.scope !1033, !noalias !1140
  %spec.select.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %_12.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.030.i.i, i64 %spec.select.i.i.i.i.i.i.lobit.i.i
  %count2.i.i.i = zext i1 %36 to i64
  %_14.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %left.sroa.0.031.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.033.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1153), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1155), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1158), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1160), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1163), !noalias !1150
  %37 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.028.i.i, i64 8
  %_7.i.i.i.i19.i.i = load ptr, ptr %37, align 8, !alias.scope !1165, !noalias !1166, !nonnull !6, !noundef !6
  %38 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.028.i.i, i64 16
  %len1.i.i.i.i20.i.i = load i64, ptr %38, align 8, !alias.scope !1165, !noalias !1166, !noundef !6
  %39 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.029.i.i, i64 8
  %_14.i.i.i.i21.i.i = load ptr, ptr %39, align 8, !alias.scope !1167, !noalias !1168, !nonnull !6, !noundef !6
  %40 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.029.i.i, i64 16
  %41 = load i64, ptr %40, align 8, !alias.scope !1167, !noalias !1168, !noundef !6
  %spec.store.select.i.i.i.i.i.i22.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i20.i.i, i64 range(i64 0, -9223372036854775808) %41)
  %42 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i19.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i21.i.i, i64 %spec.store.select.i.i.i.i.i.i22.i.i), !alias.scope !1169, !noalias !1176
  %43 = sext i32 %42 to i64
  %_15.i.i.i.i.i.i23.i.i = icmp eq i32 %42, 0
  %diff.i.i.i.i.i.i24.i.i = sub nsw i64 %len1.i.i.i.i20.i.i, %41
  %spec.select.i.i.i.i.i.i25.i.i = select i1 %_15.i.i.i.i.i.i23.i.i, i64 %diff.i.i.i.i.i.i24.i.i, i64 %43
  %44 = icmp sgt i64 %spec.select.i.i.i.i.i.i25.i.i, -1
  %..i.i.i = select i1 %44, ptr %right_rev.sroa.0.028.i.i, ptr %left_rev.sroa.0.029.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst_rev.sroa.0.027.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !1033, !noalias !1177
  %count.neg.i.i.i = sext i1 %44 to i64
  %45 = getelementptr %"alloc::string::String", ptr %right_rev.sroa.0.028.i.i, i64 %count.neg.i.i.i
  %spec.select.i.i.i.i.i.i25.lobit.i.i = ashr i64 %spec.select.i.i.i.i.i.i25.i.i, 63
  %46 = getelementptr %"alloc::string::String", ptr %left_rev.sroa.0.029.i.i, i64 %spec.select.i.i.i.i.i.i25.lobit.i.i
  %47 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.027.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %27
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_16.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %left.sroa.0.0.right.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !1033, !noalias !1035
  %count2.i.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_14.i.i.i, i64 %count2.i.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_12.i.i.i, i64 %count3.i.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %27
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %28
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !612

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1070

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = mul nuw nsw i64 %v.sroa.16.0.lcssa, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph.lcssa102, ptr nonnull align 8 %scratch.0, i64 %49, i1 false), !alias.scope !1033, !noalias !1179
  resume { ptr, i32 } %48

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.128.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i ], [ %iter1.sroa.0.126.i, %bb24.preheader.i ]
  %iter1.sroa.0.027.i = phi i64 [ %iter1.sroa.0.128.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa102, i64 %iter1.sroa.0.027.i
  %dst7.i = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %iter1.sroa.0.027.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7.i, ptr noundef nonnull align 8 dereferenceable(24) %_55.i, i64 24, i1 false), !alias.scope !1033, !noalias !1035
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %50 = getelementptr inbounds nuw i8, ptr %dst7.i, i64 8
  %_7.i.i.i.i.i13.i = load ptr, ptr %50, align 8, !alias.scope !1200, !noalias !1201, !nonnull !6, !noundef !6
  %51 = getelementptr inbounds nuw i8, ptr %dst7.i, i64 16
  %len1.i.i.i.i.i14.i = load i64, ptr %51, align 8, !alias.scope !1200, !noalias !1201, !noundef !6
  %52 = getelementptr inbounds i8, ptr %dst7.i, i64 -16
  %_14.i.i.i.i.i15.i = load ptr, ptr %52, align 8, !alias.scope !1202, !noalias !1203, !nonnull !6, !noundef !6
  %53 = getelementptr inbounds i8, ptr %dst7.i, i64 -8
  %54 = load i64, ptr %53, align 8, !alias.scope !1202, !noalias !1203, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i14.i, i64 range(i64 0, -9223372036854775808) %54)
  %55 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i13.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i15.i, i64 %spec.store.select.i.i.i.i.i.i.i16.i), !alias.scope !1061, !noalias !1204
  %56 = sext i32 %55 to i64
  %_15.i.i.i.i.i.i.i17.i = icmp eq i32 %55, 0
  %diff.i.i.i.i.i.i.i18.i = sub nsw i64 %len1.i.i.i.i.i14.i, %54
  %spec.select.i.i.i.i.i.i.i19.i = select i1 %_15.i.i.i.i.i.i.i17.i, i64 %diff.i.i.i.i.i.i.i18.i, i64 %56
  %57 = icmp slt i64 %spec.select.i.i.i.i.i.i.i19.i, 0
  br i1 %57, label %bb2.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i

bb2.i.i:                                          ; preds = %bb24.i
  %value.sroa.0.0.copyload.i.i = load i64, ptr %dst7.i, align 8, !alias.scope !1069, !noalias !1070
  br label %bb4.i.i

bb4.i.i:                                          ; preds = %bb7.i.i, %bb2.i.i
  %gap_guard.sroa.5.0.i.i = phi ptr [ %dst7.i, %bb2.i.i ], [ %sift.sroa.0.0.i.i, %bb7.i.i ]
  %sift.sroa.0.0.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !1069, !noalias !1070
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %58 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -40
  %_14.i.i.i.i3.i.i = load ptr, ptr %58, align 8, !alias.scope !1213, !noalias !1084, !nonnull !6, !noundef !6
  %59 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -32
  %60 = load i64, ptr %59, align 8, !alias.scope !1213, !noalias !1084, !noundef !6
  %spec.store.select.i.i.i.i.i.i4.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i14.i, i64 range(i64 0, -9223372036854775808) %60)
  %61 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i13.i, ptr nonnull readonly align 1 %_14.i.i.i.i3.i.i, i64 %spec.store.select.i.i.i.i.i.i4.i.i), !alias.scope !1089, !noalias !1214
  %62 = sext i32 %61 to i64
  %_15.i.i.i.i.i.i5.i.i = icmp eq i32 %61, 0
  %diff.i.i.i.i.i.i6.i.i = sub nsw i64 %len1.i.i.i.i.i14.i, %60
  %spec.select.i.i.i.i.i.i7.i.i = select i1 %_15.i.i.i.i.i.i5.i.i, i64 %diff.i.i.i.i.i.i6.i.i, i64 %62
  %63 = icmp slt i64 %spec.select.i.i.i.i.i.i7.i.i, 0
  br i1 %63, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i64 %value.sroa.0.0.copyload.i.i, ptr %sift.sroa.0.0.i.lcssa.i, align 8, !alias.scope !1069, !noalias !1097
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -16
  store ptr %_7.i.i.i.i.i13.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1069, !noalias !1097
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -8
  store i64 %len1.i.i.i.i.i14.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1069, !noalias !1097
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17haddbce5dcdcd8aa9E.exit.i: ; preds = %bb10.i.i, %bb24.i
  %_80.i = icmp ult i64 %iter1.sroa.0.128.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.128.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %64 = add i32 %limit.sroa.0.0104, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %len_div_84.i = lshr i64 %v.sroa.16.0105, 3
  %b.idx.i = mul nuw nsw i64 %len_div_84.i, 96
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph113, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 168
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph113, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0105, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h99e7361c9dd75cc6E(ptr noundef nonnull readonly align 8 %v.sroa.0.0.ph113, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1229), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1231), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1234), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1236), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1239), !noalias !1226
  %_7.i.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !1241, !noalias !1242, !nonnull !6, !noundef !6
  %len1.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !1241, !noalias !1242, !noundef !6
  %65 = getelementptr inbounds nuw i8, ptr %b.i, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %65, align 8, !alias.scope !1244, !noalias !1245, !nonnull !6, !noundef !6
  %66 = getelementptr inbounds nuw i8, ptr %b.i, i64 16
  %67 = load i64, ptr %66, align 8, !alias.scope !1244, !noalias !1245, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %67)
  %68 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !1246, !noalias !1253
  %69 = sext i32 %68 to i64
  %_15.i.i.i.i.i.i.i = icmp eq i32 %68, 0
  %diff.i.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %67
  %spec.select.i.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i.i, i64 %69
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %70 = getelementptr inbounds nuw i8, ptr %c.i, i64 8
  %_14.i.i.i.i7.i = load ptr, ptr %70, align 8, !alias.scope !1266, !noalias !1267, !nonnull !6, !noundef !6
  %71 = getelementptr inbounds nuw i8, ptr %c.i, i64 16
  %72 = load i64, ptr %71, align 8, !alias.scope !1266, !noalias !1267, !noundef !6
  %spec.store.select.i.i.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %72)
  %73 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i.i8.i), !alias.scope !1272, !noalias !1279
  %74 = sext i32 %73 to i64
  %_15.i.i.i.i.i.i9.i = icmp eq i32 %73, 0
  %diff.i.i.i.i.i.i10.i = sub nsw i64 %len1.i.i.i.i.i, %72
  %spec.select.i.i.i.i.i.i11.i = select i1 %_15.i.i.i.i.i.i9.i, i64 %diff.i.i.i.i.i.i10.i, i64 %74
  %75 = xor i64 %spec.select.i.i.i.i.i.i11.i, %spec.select.i.i.i.i.i.i.i
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb3.i23
  %spec.store.select.i.i.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %67, i64 range(i64 0, -9223372036854775808) %72)
  %77 = call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i7.i, i64 %spec.store.select.i.i.i.i.i.i15.i), !alias.scope !1280, !noalias !1287
  %78 = sext i32 %77 to i64
  %_15.i.i.i.i.i.i16.i = icmp eq i32 %77, 0
  %diff.i.i.i.i.i.i17.i = sub nsw i64 %67, %72
  %spec.select.i.i.i.i.i.i18.i = select i1 %_15.i.i.i.i.i.i16.i, i64 %diff.i.i.i.i.i.i17.i, i64 %78
  %79 = xor i64 %spec.select.i.i.i.i.i.i18.i, %spec.select.i.i.i.i.i.i.i
  %_12.i.i = icmp slt i64 %79, 0
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0c433fc08a1d1e26E(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph113, i64 noundef %v.sroa.16.0105, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %is_less)
  br label %bb22

bb10:                                             ; preds = %bb3.i.i, %bb3.i23, %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph113, %bb3.i23 ], [ %c.b.i.i, %bb3.i.i ]
  %80 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %81 = sub nuw i64 %80, %6
  %index.sroa.0.0.i = udiv exact i64 %81, 24
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0105
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph113, i64 %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %pivot_copy, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %_7.i.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1320, !noalias !1321, !nonnull !6, !noundef !6
  %len1.i.i.i.i = load i64, ptr %8, align 8, !alias.scope !1320, !noalias !1321, !noundef !6
  %82 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %_14.i.i.i.i = load ptr, ptr %82, align 8, !alias.scope !1321, !noalias !1320, !nonnull !6, !noundef !6
  %83 = getelementptr inbounds nuw i8, ptr %src, i64 16
  %84 = load i64, ptr %83, align 8, !alias.scope !1321, !noalias !1320, !noundef !6
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %84)
  %85 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1322, !noalias !1329
  %86 = sext i32 %85 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %85, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %84
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %86
  %87 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %87, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %_8.i24.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0105
  br i1 %_8.i24.not, label %bb31.i, label %bb33.i, !prof !612

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.0105
  %88 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %89 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i25

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i25:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.11.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.11.1.lcssa.i, %bb23.i ]
  %state.sroa.5.0.i = phi ptr [ %v.sroa.0.0.ph113, %bb33.i ], [ %_9.i27.i, %bb23.i ]
  %state.sroa.19.0.i = phi ptr [ %_86.i, %bb33.i ], [ %98, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0105, %bb23.i ]
  %loop_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %pivot_pos.sroa.0.0.i
  %_4733.i = icmp ult ptr %state.sroa.5.0.i, %loop_end.i
  br i1 %_4733.i, label %bb18.i, label %bb21.i

bb21.i:                                           ; preds = %bb18.i, %bb3.i25
  %state.sroa.11.1.lcssa.i = phi i64 [ %state.sroa.11.0.i, %bb3.i25 ], [ %97, %bb18.i ]
  %state.sroa.5.1.lcssa.i = phi ptr [ %state.sroa.5.0.i, %bb3.i25 ], [ %_9.i.i, %bb18.i ]
  %state.sroa.19.1.lcssa.i = phi ptr [ %state.sroa.19.0.i, %bb3.i25 ], [ %96, %bb18.i ]
  %_55.i26 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0105
  br i1 %_55.i26, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb3.i25, %bb18.i
  %state.sroa.19.136.i = phi ptr [ %96, %bb18.i ], [ %state.sroa.19.0.i, %bb3.i25 ]
  %state.sroa.5.135.i = phi ptr [ %_9.i.i, %bb18.i ], [ %state.sroa.5.0.i, %bb3.i25 ]
  %state.sroa.11.134.i = phi i64 [ %97, %bb18.i ], [ %state.sroa.11.0.i, %bb3.i25 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %90 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 8
  %_7.i.i.i.i.i27 = load ptr, ptr %90, align 8, !alias.scope !1355, !noalias !1356, !nonnull !6, !noundef !6
  %91 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 16
  %len1.i.i.i.i.i28 = load i64, ptr %91, align 8, !alias.scope !1355, !noalias !1356, !noundef !6
  %_14.i.i.i.i.i29 = load ptr, ptr %88, align 8, !alias.scope !1357, !noalias !1358, !nonnull !6, !noundef !6
  %92 = load i64, ptr %89, align 8, !alias.scope !1357, !noalias !1358, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i30 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i28, i64 range(i64 0, -9223372036854775808) %92)
  %93 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i27, ptr nonnull readonly align 1 %_14.i.i.i.i.i29, i64 %spec.store.select.i.i.i.i.i.i.i30), !alias.scope !1359, !noalias !1366
  %94 = sext i32 %93 to i64
  %_15.i.i.i.i.i.i.i31 = icmp eq i32 %93, 0
  %diff.i.i.i.i.i.i.i32 = sub nsw i64 %len1.i.i.i.i.i28, %92
  %spec.select.i.i.i.i.i.i.i33 = select i1 %_15.i.i.i.i.i.i.i31, i64 %diff.i.i.i.i.i.i.i32, i64 %94
  %95 = icmp slt i64 %spec.select.i.i.i.i.i.i.i33, 0
  %96 = getelementptr inbounds i8, ptr %state.sroa.19.136.i, i64 -24
  %dst_base.sroa.0.0.i.i = select i1 %95, ptr %scratch.0, ptr %96
  %dst.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.11.134.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.135.i, i64 24, i1 false), !alias.scope !1367, !noalias !1368
  %spec.select.i.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i.i33, 63
  %97 = add i64 %spec.select.i.i.i.i.i.i.lobit.i, %state.sroa.11.134.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 24
  %_47.i = icmp ult ptr %_9.i.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %98 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i, i64 -24
  %dst.i25.i = getelementptr inbounds nuw %"alloc::string::String", ptr %98, i64 %state.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !1367, !noalias !1371
  %_9.i27.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i, i64 24
  br label %bb3.i25

bb22.i:                                           ; preds = %bb21.i
  %99 = mul i64 %state.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph113, ptr nonnull align 8 %scratch.0, i64 %99, i1 false), !alias.scope !1367
  %_63.i = sub i64 %v.sroa.16.0105, %state.sroa.11.1.lcssa.i
  %_9739.not.i = icmp eq i64 %v.sroa.16.0105, %state.sroa.11.1.lcssa.i
  br i1 %_9739.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %100 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %state.sroa.11.1.lcssa.i
  %.neg = add i64 %state.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %_63.i, 1
  %101 = icmp eq i64 %v.sroa.16.0105, %.neg
  br i1 %101, label %bb16.loopexit.unr-lcssa, label %bb42.lr.ph.i.new

bb42.lr.ph.i.new:                                 ; preds = %bb42.lr.ph.i
  %unroll_iter = and i64 %_63.i, -2
  %invariant.gep = getelementptr i8, ptr %100, i64 24
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i, %bb42.lr.ph.i.new
  %iter.sroa.0.040.i = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %105, %bb42.i ]
  %niter = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %niter.next.1, %bb42.i ]
  %102 = getelementptr %"alloc::string::String", ptr %100, i64 %iter.sroa.0.040.i
  %103 = xor i64 %iter.sroa.0.040.i, -1
  %104 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !alias.scope !1367
  %105 = add nuw i64 %iter.sroa.0.040.i, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.040.i
  %106 = xor i64 %iter.sroa.0.040.i, -2
  %107 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %107, i64 24, i1 false), !alias.scope !1367
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb16.loopexit.unr-lcssa, label %bb42.i

bb16.loopexit.unr-lcssa:                          ; preds = %bb42.i, %bb42.lr.ph.i
  %iter.sroa.0.040.i.unr = phi i64 [ 0, %bb42.lr.ph.i ], [ %105, %bb42.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb16, label %bb42.i.epil

bb42.i.epil:                                      ; preds = %bb16.loopexit.unr-lcssa
  %108 = getelementptr %"alloc::string::String", ptr %100, i64 %iter.sroa.0.040.i.unr
  %109 = xor i64 %iter.sroa.0.040.i.unr, -1
  %110 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef nonnull align 8 dereferenceable(24) %110, i64 24, i1 false), !alias.scope !1367
  br label %bb16

bb16:                                             ; preds = %bb42.i.epil, %bb16.loopexit.unr-lcssa, %bb22.i
  %111 = icmp eq i64 %state.sroa.11.1.lcssa.i, 0
  br i1 %111, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.11.1.lcssa.i, %v.sroa.16.0105
  br i1 %_6.not.i, label %bb3.i34, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit", !prof !1374

bb3.i34:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #26, !noalias !1375
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE.exit": ; preds = %bb19
  %112 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %state.sroa.11.1.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd7748f61f1e7fd1dE(ptr noalias noundef nonnull align 8 %112, i64 noundef %_63.i, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %pivot_copy, ptr noalias noundef nonnull align 1 %is_less) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.11.1.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %_8.i35.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0105
  br i1 %_8.i35.not, label %bb31.i38, label %bb33.i39, !prof !612

bb33.i39:                                         ; preds = %bb17
  %_86.i41 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.0105
  %113 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %114 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i42

bb31.i38:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i42:                                          ; preds = %bb23.i54, %bb33.i39
  %state.sroa.11.0.i43 = phi i64 [ 0, %bb33.i39 ], [ %124, %bb23.i54 ]
  %state.sroa.5.0.i44 = phi ptr [ %v.sroa.0.0.ph113, %bb33.i39 ], [ %_9.i27.i56, %bb23.i54 ]
  %state.sroa.19.0.i45 = phi ptr [ %_86.i41, %bb33.i39 ], [ %123, %bb23.i54 ]
  %pivot_pos.sroa.0.0.i46 = phi i64 [ %index.sroa.0.0.i, %bb33.i39 ], [ %v.sroa.16.0105, %bb23.i54 ]
  %loop_end.i47 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %pivot_pos.sroa.0.0.i46
  %_4733.i48 = icmp ult ptr %state.sroa.5.0.i44, %loop_end.i47
  br i1 %_4733.i48, label %bb18.i64, label %bb21.i49

bb21.i49:                                         ; preds = %bb18.i64, %bb3.i42
  %state.sroa.11.1.lcssa.i50 = phi i64 [ %state.sroa.11.0.i43, %bb3.i42 ], [ %122, %bb18.i64 ]
  %state.sroa.5.1.lcssa.i51 = phi ptr [ %state.sroa.5.0.i44, %bb3.i42 ], [ %_9.i.i77, %bb18.i64 ]
  %state.sroa.19.1.lcssa.i52 = phi ptr [ %state.sroa.19.0.i45, %bb3.i42 ], [ %121, %bb18.i64 ]
  %_55.i53 = icmp eq i64 %pivot_pos.sroa.0.0.i46, %v.sroa.16.0105
  br i1 %_55.i53, label %bb22.i57, label %bb23.i54

bb18.i64:                                         ; preds = %bb3.i42, %bb18.i64
  %state.sroa.19.136.i65 = phi ptr [ %121, %bb18.i64 ], [ %state.sroa.19.0.i45, %bb3.i42 ]
  %state.sroa.5.135.i66 = phi ptr [ %_9.i.i77, %bb18.i64 ], [ %state.sroa.5.0.i44, %bb3.i42 ]
  %state.sroa.11.134.i67 = phi i64 [ %122, %bb18.i64 ], [ %state.sroa.11.0.i43, %bb3.i42 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %_7.i.i.i.i.i.i68 = load ptr, ptr %113, align 8, !alias.scope !1409, !noalias !1410, !nonnull !6, !noundef !6
  %len1.i.i.i.i.i.i69 = load i64, ptr %114, align 8, !alias.scope !1409, !noalias !1410, !noundef !6
  %115 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i66, i64 8
  %_14.i.i.i.i.i.i70 = load ptr, ptr %115, align 8, !alias.scope !1411, !noalias !1412, !nonnull !6, !noundef !6
  %116 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i66, i64 16
  %117 = load i64, ptr %116, align 8, !alias.scope !1411, !noalias !1412, !noundef !6
  %spec.store.select.i.i.i.i.i.i.i.i71 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i.i69, i64 range(i64 0, -9223372036854775808) %117)
  %118 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i.i68, ptr nonnull readonly align 1 %_14.i.i.i.i.i.i70, i64 %spec.store.select.i.i.i.i.i.i.i.i71), !alias.scope !1413, !noalias !1420
  %119 = sext i32 %118 to i64
  %_15.i.i.i.i.i.i.i.i72 = icmp eq i32 %118, 0
  %diff.i.i.i.i.i.i.i.i73 = sub nsw i64 %len1.i.i.i.i.i.i69, %117
  %spec.select.i.i.i.i.i.i.i.i74 = select i1 %_15.i.i.i.i.i.i.i.i72, i64 %diff.i.i.i.i.i.i.i.i73, i64 %119
  %120 = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i74, -1
  %121 = getelementptr inbounds i8, ptr %state.sroa.19.136.i65, i64 -24
  %dst_base.sroa.0.0.i.i75 = select i1 %120, ptr %scratch.0, ptr %121
  %dst.i.i76 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i75, i64 %state.sroa.11.134.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i76, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.135.i66, i64 24, i1 false), !alias.scope !1421, !noalias !1422
  %_8.i.i = zext i1 %120 to i64
  %122 = add i64 %state.sroa.11.134.i67, %_8.i.i
  %_9.i.i77 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i66, i64 24
  %_47.i78 = icmp ult ptr %_9.i.i77, %loop_end.i47
  br i1 %_47.i78, label %bb18.i64, label %bb21.i49

bb23.i54:                                         ; preds = %bb21.i49
  %123 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i52, i64 -24
  %dst.i25.i55 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %state.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i55, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i51, i64 24, i1 false), !alias.scope !1421, !noalias !1425
  %124 = add i64 %state.sroa.11.1.lcssa.i50, 1
  %_9.i27.i56 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i51, i64 24
  br label %bb3.i42

bb22.i57:                                         ; preds = %bb21.i49
  %125 = mul i64 %state.sroa.11.1.lcssa.i50, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph113, ptr nonnull align 8 %scratch.0, i64 %125, i1 false), !alias.scope !1421
  %_63.i58 = sub i64 %v.sroa.16.0105, %state.sroa.11.1.lcssa.i50
  %_9739.not.i59 = icmp eq i64 %v.sroa.16.0105, %state.sroa.11.1.lcssa.i50
  br i1 %_9739.not.i59, label %bb3.thread, label %bb42.lr.ph.i60

bb42.lr.ph.i60:                                   ; preds = %bb22.i57
  %126 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %state.sroa.11.1.lcssa.i50
  %.neg269 = add i64 %state.sroa.11.1.lcssa.i50, 1
  %xtraiter265 = and i64 %_63.i58, 1
  %127 = icmp eq i64 %v.sroa.16.0105, %.neg269
  br i1 %127, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.unr-lcssa, label %bb42.lr.ph.i60.new

bb42.lr.ph.i60.new:                               ; preds = %bb42.lr.ph.i60
  %unroll_iter267 = and i64 %_63.i58, -2
  %invariant.gep306 = getelementptr i8, ptr %126, i64 24
  br label %bb42.i61

bb42.i61:                                         ; preds = %bb42.i61, %bb42.lr.ph.i60.new
  %iter.sroa.0.040.i62 = phi i64 [ 0, %bb42.lr.ph.i60.new ], [ %131, %bb42.i61 ]
  %niter268 = phi i64 [ 0, %bb42.lr.ph.i60.new ], [ %niter268.next.1, %bb42.i61 ]
  %128 = getelementptr %"alloc::string::String", ptr %126, i64 %iter.sroa.0.040.i62
  %129 = xor i64 %iter.sroa.0.040.i62, -1
  %130 = getelementptr %"alloc::string::String", ptr %_86.i41, i64 %129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %130, i64 24, i1 false), !alias.scope !1421
  %131 = add nuw i64 %iter.sroa.0.040.i62, 2
  %gep307 = getelementptr %"alloc::string::String", ptr %invariant.gep306, i64 %iter.sroa.0.040.i62
  %132 = xor i64 %iter.sroa.0.040.i62, -2
  %133 = getelementptr %"alloc::string::String", ptr %_86.i41, i64 %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep307, ptr noundef nonnull align 8 dereferenceable(24) %133, i64 24, i1 false), !alias.scope !1421
  %niter268.next.1 = add i64 %niter268, 2
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.unr-lcssa, label %bb42.i61

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.unr-lcssa: ; preds = %bb42.i61, %bb42.lr.ph.i60
  %iter.sroa.0.040.i62.unr = phi i64 [ 0, %bb42.lr.ph.i60 ], [ %131, %bb42.i61 ]
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit, label %bb42.i61.epil

bb42.i61.epil:                                    ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.unr-lcssa
  %134 = getelementptr %"alloc::string::String", ptr %126, i64 %iter.sroa.0.040.i62.unr
  %135 = xor i64 %iter.sroa.0.040.i62.unr, -1
  %136 = getelementptr %"alloc::string::String", ptr %_86.i41, i64 %135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %134, ptr noundef nonnull align 8 dereferenceable(24) %136, i64 24, i1 false), !alias.scope !1421
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit.unr-lcssa, %bb42.i61.epil
  %_47 = icmp ugt i64 %state.sroa.11.1.lcssa.i50, %v.sroa.16.0105
  br i1 %_47, label %bb27, label %bb28, !prof !1374

bb3.thread:                                       ; preds = %bb22.i57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit
  %_54 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph113, i64 %state.sroa.11.1.lcssa.i50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8103 = icmp ult i64 %_63.i58, 33
  br i1 %_8103, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.11.1.lcssa.i50, i64 noundef %v.sroa.16.0105, i64 noundef %v.sroa.16.0105, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #26
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hed0c5b8627756ff6E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !1448, !noalias !1449, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1451, !noalias !1452, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !1468, !noalias !1469, !noundef !6
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !1470, !noalias !1471, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !1487, !noalias !1488, !noundef !6
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !1489, !noalias !1490, !noundef !6
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !1506, !noalias !1507, !noundef !6
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !1508, !noalias !1509, !noundef !6
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !6
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !6
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !6
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1525, !noalias !1526, !noundef !6
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1527, !noalias !1528, !noundef !6
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !1431, !noalias !1529
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !1431, !noalias !1529
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !1431, !noalias !1529
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !1431, !noalias !1529
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1545, !noalias !1546, !noundef !6
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1547, !noalias !1548, !noundef !6
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1564, !noalias !1565, !noundef !6
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1566, !noalias !1567, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1583, !noalias !1584, !noundef !6
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1585, !noalias !1586, !noundef !6
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1602, !noalias !1603, !noundef !6
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1604, !noalias !1605, !noundef !6
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !6
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !6
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !6
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1621, !noalias !1622, !noundef !6
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1623, !noalias !1624, !noundef !6
  store i32 %14, ptr %_28.i, align 4, !alias.scope !1431, !noalias !1529
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !1431, !noalias !1529
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !1431, !noalias !1529
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !1431, !noalias !1529
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !1428, !noalias !1625
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !1431, !noalias !1529
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !1428, !noalias !1625
  store i32 %25, ptr %24, align 4, !alias.scope !1431, !noalias !1529
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !1428, !noalias !1625
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !1431, !noalias !1529
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1626, !noalias !1633, !noundef !6
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !1431, !noalias !1529
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1637, !noalias !1644, !noundef !6
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !1431, !noalias !1648
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1661), !noalias !1664
  call void @llvm.experimental.noalias.scope.decl(metadata !1667), !noalias !1664
  call void @llvm.experimental.noalias.scope.decl(metadata !1669), !noalias !1664
  call void @llvm.experimental.noalias.scope.decl(metadata !1672), !noalias !1664
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1674, !noalias !1675, !noundef !6
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1676, !noalias !1677, !noundef !6
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !1428, !noalias !1678
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1685), !noalias !1688
  call void @llvm.experimental.noalias.scope.decl(metadata !1691), !noalias !1688
  call void @llvm.experimental.noalias.scope.decl(metadata !1693), !noalias !1688
  call void @llvm.experimental.noalias.scope.decl(metadata !1696), !noalias !1688
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1698, !noalias !1699, !noundef !6
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1700, !noalias !1701, !noundef !6
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !1428, !noalias !1702
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1704, !noalias !1529
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !1428, !noalias !1705
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !612

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1706

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1707, !noalias !1708
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !1428, !noalias !1625
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !1431, !noalias !1529
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1626, !noalias !1633, !noundef !6
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !1431, !noalias !1529
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1637, !noalias !1644, !noundef !6
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1431, !noalias !1648
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0a600e94c9b56343E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718), !noalias !1721
  call void @llvm.experimental.noalias.scope.decl(metadata !1724), !noalias !1721
  call void @llvm.experimental.noalias.scope.decl(metadata !1726), !noalias !1721
  call void @llvm.experimental.noalias.scope.decl(metadata !1729), !noalias !1721
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1731, !noalias !1734, !noundef !6
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1736, !noalias !1737, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1738, !noalias !1745, !noundef !6
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h753da6aa311033faE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1749, !noalias !1756, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !612

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1765, !noalias !1772, !noundef !6
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1782, !noalias !1783, !noundef !6
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1763, !noalias !1784
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1787, !noalias !1794, !noundef !6
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1763, !noalias !1798
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1801, !noalias !1808, !noundef !6
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1763, !noalias !1812
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1815, !noalias !1822, !noundef !6
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1763, !noalias !1826
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1829, !noalias !1836, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1846, !noalias !1847, !noundef !6
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1763, !noalias !1848
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1760, !noalias !1851
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1763, !noalias !1854
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1855
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1763, !noalias !1760
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1763, !noalias !1760
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1760, !noalias !1763
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1760, !noalias !1763
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1856

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1763, !noalias !1760
  store i32 %78, ptr %75, align 4, !alias.scope !1760, !noalias !1763
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1857

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit", !prof !1374

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #26, !noalias !1858
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdfb2cdee762e95a0E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !612

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1867, !noalias !1876, !noundef !6
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1889, !noalias !1890, !noundef !6
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1865, !noalias !1891
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1894, !noalias !1903, !noundef !6
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1865, !noalias !1908
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1911, !noalias !1920, !noundef !6
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1865, !noalias !1925
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1928, !noalias !1937, !noundef !6
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1865, !noalias !1942
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1945, !noalias !1954, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1967, !noalias !1968, !noundef !6
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1865, !noalias !1969
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1862, !noalias !1972
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1865, !noalias !1975
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1976
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1865, !noalias !1862
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1865, !noalias !1862
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1862, !noalias !1865
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1862, !noalias !1865
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1865, !noalias !1862
  store i32 %108, ptr %105, align 4, !alias.scope !1862, !noalias !1865
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E.exit, label %bb42.i66, !llvm.loop !1978

_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1374

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #26
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17ha0251b277b81aa5aE"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #7 {
start:
  %_26.i = icmp slt i64 %cap, 0
  br i1 %_26.i, label %bb8, label %bb11, !prof !674

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !25, !alias.scope !1979, !noalias !1982, !noundef !6
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit": ; preds = %bb11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %0, align 8, !alias.scope !1979, !noalias !1982, !nonnull !6, !noundef !6
  %cond.i.i = icmp samesign uge i64 %cap, %self1.i
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %raw_ptr.i.i = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr noundef nonnull %self3.i, i64 noundef %self1.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef %cap) #25
  br label %bb7

bb5:                                              ; preds = %bb11
  %1 = icmp eq i64 %cap, 0
  br i1 %1, label %bb16, label %bb4.i.i14

bb4.i.i14:                                        ; preds = %bb5
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
; call __rustc::__rust_alloc
  %2 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %cap, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %bb7

bb7:                                              ; preds = %bb4.i.i14, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"
  %raw_ptr.i.i.pn = phi ptr [ %raw_ptr.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit" ], [ %2, %bb4.i.i14 ]
  %3 = icmp eq ptr %raw_ptr.i.i.pn, null
  br i1 %3, label %bb15, label %bb16

bb15:                                             ; preds = %bb7
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 1, ptr %4, align 8
  br label %bb8

bb16:                                             ; preds = %bb5, %bb7
  %raw_ptr.i.i.pn24 = phi ptr [ %raw_ptr.i.i.pn, %bb7 ], [ inttoptr (i64 1 to ptr), %bb5 ]
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %raw_ptr.i.i.pn24, ptr %5, align 8
  br label %bb8

bb8:                                              ; preds = %start, %bb16, %bb15
  %.sink26 = phi i64 [ 16, %bb16 ], [ 16, %bb15 ], [ 8, %start ]
  %cap.sink = phi i64 [ %cap, %bb16 ], [ %cap, %bb15 ], [ 0, %start ]
  %.sink = phi i64 [ 0, %bb16 ], [ 1, %bb15 ], [ 1, %start ]
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 %.sink26
  store i64 %cap.sink, ptr %6, align 8
  store i64 %.sink, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h04c59fec06b0f096E"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %slf, i64 noundef %len, i64 noundef %additional) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %self3.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %_26.0.i = add i64 %additional, %len
  %_26.1.i = icmp ult i64 %_26.0.i, %len
  br i1 %_26.1.i, label %bb2, label %bb9.i

bb9.i:                                            ; preds = %start
  %self5.i = load i64, ptr %slf, align 8, !range !25, !alias.scope !1984, !noundef !6
  %v16.i = shl nuw i64 %self5.i, 1
  %_0.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0.i, i64 %v16.i)
  %_0.sroa.0.0.i15.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i.i, i64 8)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3.i), !noalias !1984
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17ha0251b277b81aa5aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %slf, i64 noundef %_0.sroa.0.0.i15.i)
  %_37.i = load i64, ptr %self3.i, align 8, !range !1987, !noalias !1984, !noundef !6
  %0 = trunc nuw i64 %_37.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  br i1 %0, label %bb18.i, label %bb3

bb18.i:                                           ; preds = %bb9.i
  %e.0.i = load i64, ptr %1, align 8, !range !1988, !noalias !1984, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %self3.i, i64 16
  %e.1.i = load i64, ptr %2, align 8, !noalias !1984
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1984
  br label %bb2

bb2:                                              ; preds = %bb18.i, %start
  %_0.sroa.5.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb18.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb18.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.5.0.i.ph) #27
  unreachable

bb3:                                              ; preds = %bb9.i
  %v.0.i = load ptr, ptr %1, align 8, !noalias !1984, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1984
  %3 = getelementptr inbounds nuw i8, ptr %slf, i64 8
  store ptr %v.0.i, ptr %3, align 8, !alias.scope !1984
  %4 = icmp sgt i64 %_0.sroa.0.0.i15.i, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15.i, ptr %slf, align 8, !alias.scope !1984
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #9 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !6
  %_4 = load i32, ptr %b, align 4, !noundef !6
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %res = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_29 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_29)
  %_5 = add nuw i64 %n, 1
  %_4 = mul i64 %_5, %n
  %sub_count10 = lshr i64 %_4, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_21.0.i.i.i = mul i64 %sub_count10, 24
  %or.cond.i.i.i = icmp ugt i64 %_4, 768614336404564651
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !674

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %bb13, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1989
; call __rustc::__rust_alloc
  %1 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !1989
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i, label %bb13

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #27
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i
  unreachable

bb11:                                             ; preds = %bb2.i.i.i3.i, %bb4.i, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %.pn, %bb4.i ], [ %.pn, %bb2.i.i.i3.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !25, !alias.scope !2007, !noalias !2010, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb12, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb11
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !2007, !noalias !2010, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2012
  br label %bb12

cleanup:                                          ; preds = %bb3.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb13:                                             ; preds = %bb17.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_4.sroa.4.0.i = phi i64 [ 0, %bb17.i.i ], [ %sub_count10, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_4.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i ], [ %1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_7.i = icmp samesign ule i64 %sub_count10, %_4.sroa.4.0.i
  tail call void @llvm.assume(i1 %_7.i)
  store i64 %_4.sroa.4.0.i, ptr %arr, align 8
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %_4.sroa.10.0.i, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8
  %_3288.not = icmp eq i64 %n, 0
  br i1 %_3288.not, label %bb15.thread, label %bb14.lr.ph

bb15.thread:                                      ; preds = %bb13
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  br label %bb22

bb14.lr.ph:                                       ; preds = %bb13
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_44 = load ptr, ptr %7, align 8, !nonnull !6
  br label %bb2.i.lr.ph

bb1.loopexit:                                     ; preds = %bb21
  %exitcond.not = icmp eq i64 %8, %n
  br i1 %exitcond.not, label %bb15, label %bb2.i.lr.ph

bb15:                                             ; preds = %bb1.loopexit
  %_38.pre = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %29, 2
  br i1 %b.i, label %bb22, label %bb7.i, !prof !2013

bb7.i:                                            ; preds = %bb15
  %b1.i = icmp samesign ult i64 %29, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !2014

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17had053cf2c77a0b49E(ptr noalias noundef nonnull align 8 %_38.pre, i64 noundef range(i64 0, 384307168202282326) %29, ptr noalias noundef nonnull align 1 %is_less.i)
          to label %bb22 unwind label %cleanup3

bb9.i:                                            ; preds = %bb7.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5881bc39b88732acE(ptr noalias noundef nonnull align 8 %_38.pre, i64 noundef range(i64 0, 384307168202282326) %29)
  br label %bb22

bb2.i.lr.ph:                                      ; preds = %bb1.loopexit, %bb14.lr.ph
  %iter1.sroa.0.089 = phi i64 [ 0, %bb14.lr.ph ], [ %8, %bb1.loopexit ]
  %8 = add nuw nsw i64 %iter1.sroa.0.089, 1
  %_11 = sub nuw nsw i64 %n, %iter1.sroa.0.089
  %_11.i = icmp eq i64 %iter1.sroa.0.089, 0
  %9 = getelementptr inbounds nuw i8, ptr %_44, i64 %iter1.sroa.0.089
  br label %bb2.i

bb10:                                             ; preds = %cleanup.i, %bb2.i.i.i3.i.i41, %cleanup4, %cleanup3
  %.pn = phi { ptr, i32 } [ %13, %cleanup3 ], [ %lpad.phi, %cleanup4 ], [ %lpad.phi, %bb2.i.i.i3.i.i41 ], [ %28, %cleanup.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %_5.i.i = load ptr, ptr %5, align 8, !alias.scope !2021, !nonnull !6, !noundef !6
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2021, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb10, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %10, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i" ], [ 0, %bb10 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %10 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %self1.i.i.i.i1.i.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !25, !alias.scope !2040, !noalias !2043, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i.i

bb2.i.i.i3.i.i.i.i.i:                             ; preds = %bb5.i.i.i
  %11 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i.i = load ptr, ptr %11, align 8, !alias.scope !2040, !noalias !2043, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2045
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %10, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i, label %bb5.i.i.i

bb4.i:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i", %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !2055, !noalias !2058, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb11, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i
  %12 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !2060
  br label %bb11

cleanup3:                                         ; preds = %bb3.i.i, %bb10.i, %bb18
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %bb10

bb22:                                             ; preds = %bb15.thread, %bb9.i, %bb15, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8
  %_53.sroa.4.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_53.sroa.4.0.res.sroa_idx, align 8
  %_53.sroa.5.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_53.sroa.5.0.res.sroa_idx, align 8
  %_5491.not = icmp ult i64 %_4, 2
  br i1 %_5491.not, label %bb24, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb22
  %umax = call i64 @llvm.umax.i64(i64 %sub_count10, i64 1)
  br label %bb23

bb24:                                             ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit", %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  %_5.i.i14 = load ptr, ptr %5, align 8, !alias.scope !2067, !nonnull !6, !noundef !6
  %len.i.i15 = load i64, ptr %6, align 8, !alias.scope !2067, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %_711.i.i.i16 = icmp eq i64 %len.i.i15, 0
  br i1 %_711.i.i.i16, label %bb4.i26, label %bb5.i.i.i17

bb5.i.i.i17:                                      ; preds = %bb24, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24"
  %_3.sroa.0.012.i.i.i18 = phi i64 [ %14, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24" ], [ 0, %bb24 ]
  %_6.i.i.i19 = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i14, i64 %_3.sroa.0.012.i.i.i18
  %14 = add nuw i64 %_3.sroa.0.012.i.i.i18, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %self1.i.i.i.i1.i.i.i.i.i20 = load i64, ptr %_6.i.i.i19, align 8, !range !25, !alias.scope !2086, !noalias !2089, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i21 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i20, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i21, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24", label %bb2.i.i.i3.i.i.i.i.i22

bb2.i.i.i3.i.i.i.i.i22:                           ; preds = %bb5.i.i.i17
  %15 = getelementptr inbounds nuw i8, ptr %_6.i.i.i19, i64 8
  %self3.i.i.i.i4.i.i.i.i.i23 = load ptr, ptr %15, align 8, !alias.scope !2086, !noalias !2089, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i23, i64 noundef %self1.i.i.i.i1.i.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2091
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24": ; preds = %bb2.i.i.i3.i.i.i.i.i22, %bb5.i.i.i17
  %_7.i.i.i25 = icmp eq i64 %14, %len.i.i15
  br i1 %_7.i.i.i25, label %bb4.i26, label %bb5.i.i.i17

bb4.i26:                                          ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit.i.i.i24", %bb24
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  %self1.i.i.i.i1.i27 = load i64, ptr %arr, align 8, !range !25, !alias.scope !2101, !noalias !2104, !noundef !6
  %_6.i.i.i.i2.i28 = icmp eq i64 %self1.i.i.i.i1.i27, 0
  br i1 %_6.i.i.i.i2.i28, label %bb7, label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb4.i26
  %16 = mul nuw i64 %self1.i.i.i.i1.i27, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i14, i64 noundef %16, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !2106
  br label %bb7

bb23:                                             ; preds = %bb23.preheader, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit"
  %_10.i.i115 = phi ptr [ %_10.i.i, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ inttoptr (i64 1 to ptr), %bb23.preheader ]
  %len.i.i.i = phi i64 [ %21, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ 0, %bb23.preheader ]
  %iter2.sroa.0.092 = phi i64 [ %17, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit" ], [ 0, %bb23.preheader ]
  %17 = add nuw nsw i64 %iter2.sroa.0.092, 1
  %_59 = load i64, ptr %6, align 8, !noundef !6
  %_62 = icmp ult i64 %iter2.sroa.0.092, %_59
  br i1 %_62, label %bb25, label %panic

bb7:                                              ; preds = %bb2.i.i.i3.i29, %bb4.i26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %self1.i.i.i.i1.i.i31 = load i64, ptr %s, align 8, !range !25, !alias.scope !2122, !noalias !2125, !noundef !6
  %_6.i.i.i.i2.i.i32 = icmp eq i64 %self1.i.i.i.i1.i.i31, 0
  br i1 %_6.i.i.i.i2.i.i32, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35", label %bb2.i.i.i3.i.i33

bb2.i.i.i3.i.i33:                                 ; preds = %bb7
  %18 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i34 = load ptr, ptr %18, align 8, !alias.scope !2122, !noalias !2125, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i34, i64 noundef %self1.i.i.i.i1.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2127
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E.exit35": ; preds = %bb7, %bb2.i.i.i3.i.i33
  ret void

bb25:                                             ; preds = %bb23
  %_60 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw %"alloc::string::String", ptr %_60, i64 %iter2.sroa.0.092
  %19 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %_66 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %20 = getelementptr inbounds nuw i8, ptr %_28, i64 16
  %_65 = load i64, ptr %20, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %self2.i.i.i = load i64, ptr %res, align 8, !range !25, !alias.scope !2134, !noundef !6
  %_9.i.i.i = sub i64 %self2.i.i.i, %len.i.i.i
  %_7.i.i.i36 = icmp ugt i64 %_65, %_9.i.i.i
  br i1 %_7.i.i.i36, label %bb1.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit", !prof !1374

bb1.i.i.i:                                        ; preds = %bb25
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h04c59fec06b0f096E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %len.i.i.i, i64 noundef %_65)
          to label %.noexc38 unwind label %cleanup4.loopexit

.noexc38:                                         ; preds = %bb1.i.i.i
  %len.pre.i.i = load i64, ptr %_53.sroa.5.0.res.sroa_idx, align 8, !alias.scope !2137
  %_10.i.i.pre = load ptr, ptr %_53.sroa.4.0.res.sroa_idx, align 8, !alias.scope !2137
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE.exit": ; preds = %bb25, %.noexc38
  %_10.i.i = phi ptr [ %_10.i.i115, %bb25 ], [ %_10.i.i.pre, %.noexc38 ]
  %len.i.i37 = phi i64 [ %len.i.i.i, %bb25 ], [ %len.pre.i.i, %.noexc38 ]
  %_9.i.i = icmp sgt i64 %len.i.i37, -1
  call void @llvm.assume(i1 %_9.i.i)
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i, ptr nonnull readonly align 1 %_66, i64 %_65, i1 false), !noalias !2137
  %21 = add i64 %len.i.i37, %_65
  store i64 %21, ptr %_53.sroa.5.0.res.sroa_idx, align 8
  %exitcond109.not = icmp eq i64 %17, %umax
  br i1 %exitcond109.not, label %bb24, label %bb23

panic:                                            ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter2.sroa.0.092, i64 noundef %_59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4cce44244d9639ad41a74bd16b875a27) #27
          to label %unreachable unwind label %cleanup4.loopexit.split-lp

cleanup4.loopexit:                                ; preds = %bb1.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4.loopexit.split-lp:                       ; preds = %panic
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup4.loopexit.split-lp, %cleanup4.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup4.loopexit ], [ %lpad.loopexit.split-lp, %cleanup4.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  %self1.i.i.i.i1.i.i39 = load i64, ptr %res, align 8, !range !25, !alias.scope !2153, !noalias !2156, !noundef !6
  %_6.i.i.i.i2.i.i40 = icmp eq i64 %self1.i.i.i.i1.i.i39, 0
  br i1 %_6.i.i.i.i2.i.i40, label %bb10, label %bb2.i.i.i3.i.i41

bb2.i.i.i3.i.i41:                                 ; preds = %cleanup4
  %self3.i.i.i.i4.i.i42 = load ptr, ptr %_53.sroa.4.0.res.sroa_idx, align 8, !alias.scope !2153, !noalias !2156, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i42, i64 noundef %self1.i.i.i.i1.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2158
  br label %bb10

unreachable:                                      ; preds = %bb18, %panic
  unreachable

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb21
  %iter.sroa.0.086 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select67, %bb21 ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.086, %_11
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select67 = add nuw i64 %iter.sroa.0.086, %_0.i4.i
  %_21 = add i64 %iter.sroa.0.086, %iter1.sroa.0.089
  %_3.not.i = icmp ugt i64 %iter1.sroa.0.089, %_21
  br i1 %_3.not.i, label %bb18, label %bb1.i

bb1.i:                                            ; preds = %bb2.i
  br i1 %_11.i, label %bb2.i51, label %bb13.i

bb13.i:                                           ; preds = %bb1.i
  %self.i = load i8, ptr %9, align 1, !alias.scope !2159, !noundef !6
  %22 = icmp sgt i8 %self.i, -65
  br i1 %22, label %bb2.i51, label %bb18

bb2.i51:                                          ; preds = %bb13.i, %bb1.i
  %_18.i = icmp eq i64 %_21, 0
  br i1 %_18.i, label %bb19, label %bb15.i

bb15.i:                                           ; preds = %bb2.i51
  %_19.not.i = icmp ult i64 %_21, %n
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %23 = icmp eq i64 %_21, %n
  br i1 %23, label %bb19, label %bb18

bb19.i:                                           ; preds = %bb15.i
  %24 = getelementptr inbounds nuw i8, ptr %_44, i64 %_21
  %self2.i = load i8, ptr %24, align 1, !alias.scope !2159, !noundef !6
  %25 = icmp sgt i8 %self2.i, -65
  br i1 %25, label %bb19, label %bb18

bb19:                                             ; preds = %bb19.i, %bb16.i, %bb2.i51
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2162
; call __rustc::__rust_alloc
  %26 = call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %iter.sroa.0.086, i64 noundef range(i64 1, 9) 1) #25, !noalias !2162
  %27 = icmp eq ptr %26, null
  br i1 %27, label %bb3.i.i, label %bb20

bb3.i.i:                                          ; preds = %bb19
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %iter.sroa.0.086) #27
          to label %.noexc52 unwind label %cleanup3

.noexc52:                                         ; preds = %bb3.i.i
  unreachable

bb18:                                             ; preds = %bb19.i, %bb13.i, %bb2.i, %bb16.i
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_44, i64 noundef %n, i64 noundef %iter1.sroa.0.089, i64 noundef %_21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_04774e36529a2f0ec64e4c14b859aaab) #27
          to label %unreachable unwind label %cleanup3

bb20:                                             ; preds = %bb19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull readonly align 1 dereferenceable(1) %9, i64 range(i64 0, -9223372036854775808) %iter.sroa.0.086, i1 false), !noalias !2168
  %len.i = load i64, ptr %6, align 8, !alias.scope !2169, !noalias !2172, !noundef !6
  %self1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !2169, !noalias !2172, !noundef !6
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i54, label %bb21

bb1.i54:                                          ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21 unwind label %cleanup.i, !noalias !2172

cleanup.i:                                        ; preds = %bb1.i54
  %28 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %26, i64 noundef %iter.sroa.0.086, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !2174
  br label %bb10

bb21:                                             ; preds = %bb1.i54, %bb20
  %_15.i = load ptr, ptr %5, align 8, !alias.scope !2169, !noalias !2172, !nonnull !6, !noundef !6
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i, i64 %len.i
  store i64 %iter.sroa.0.086, ptr %end.i, align 8
  %_18.sroa.5.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 8
  store ptr %26, ptr %_18.sroa.5.0.end.i.sroa_idx, align 8
  %_18.sroa.6.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 16
  store i64 %iter.sroa.0.086, ptr %_18.sroa.6.0.end.i.sroa_idx, align 8
  %29 = add i64 %len.i, 1
  store i64 %29, ptr %6, align 8, !alias.scope !2169, !noalias !2172
  %_0.i.not.i = icmp ugt i64 %spec.select67, %_11
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb1.loopexit, label %bb2.i

bb12:                                             ; preds = %bb2.i.i.i3.i.i, %bb11
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #10 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #10 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #10 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2185
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2191
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit", label %bb7.i.i, !prof !2014

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2014

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h4e47b3ce28504335E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2208, !noalias !2211, !noundef !6
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2212, !noalias !2213, !noundef !6
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2214, !noalias !2215
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2216, !noalias !2223, !noundef !6
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2214, !noalias !2227
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2208, !noalias !2211, !noundef !6
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2212, !noalias !2213, !noundef !6
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2214, !noalias !2215
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2216, !noalias !2223, !noundef !6
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2214, !noalias !2227
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2244, !noalias !2245, !noundef !6
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2246, !noalias !2247, !noundef !6
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2214, !noalias !2215
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2216, !noalias !2223, !noundef !6
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2214, !noalias !2227
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8d444b17020be90bE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2185
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #15

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #19

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #20

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #21

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #18

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noinline noreturn }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E: %self"}
!5 = distinct !{!5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE: %_1.0"}
!9 = distinct !{!9, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!12 = distinct !{!12, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!15 = distinct !{!15, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!18 = distinct !{!18, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!21 = distinct !{!21, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!24 = distinct !{!24, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!25 = !{i64 0, i64 -9223372036854775808}
!26 = !{!27, !23, !20, !17, !14, !11, !8}
!27 = distinct !{!27, !28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!28 = distinct !{!28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!29 = !{!30, !4}
!30 = distinct !{!30, !28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!31 = !{!23, !20, !17, !14, !11, !8, !4}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E: %_1"}
!34 = distinct !{!34, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E: %self"}
!37 = distinct !{!37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!40 = distinct !{!40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!41 = !{!42, !39, !36, !33}
!42 = distinct !{!42, !43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!43 = distinct !{!43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!46 = !{!39, !36, !33}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!49 = distinct !{!49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!54 = distinct !{!54, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E: %c"}
!57 = distinct !{!57, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E"}
!58 = !{!59}
!59 = distinct !{!59, !54, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"cmpfunc: %a"}
!62 = distinct !{!62, !"cmpfunc"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"cmpfunc: %b"}
!65 = !{!61, !53, !48}
!66 = !{!64, !59, !51, !56}
!67 = !{!64, !59, !51}
!68 = !{!61, !53, !48, !56}
!69 = !{!70, !72, !74}
!70 = distinct !{!70, !71, !"cmpfunc: %b"}
!71 = distinct !{!71, !"cmpfunc"}
!72 = distinct !{!72, !73, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!73 = distinct !{!73, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!74 = distinct !{!74, !75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!75 = distinct !{!75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !71, !"cmpfunc: %a"}
!78 = distinct !{!78, !73, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!79 = distinct !{!79, !75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!82 = distinct !{!82, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!87 = distinct !{!87, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE: %c"}
!90 = distinct !{!90, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE"}
!91 = !{!92}
!92 = distinct !{!92, !87, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!95 = distinct !{!95, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!100 = distinct !{!100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!103 = !{!99, !94, !86, !81}
!104 = !{!102, !97, !92, !84, !89}
!105 = !{!102, !97, !92, !84}
!106 = !{!99, !94, !86, !81, !89}
!107 = !{!108, !110, !111, !113}
!108 = distinct !{!108, !109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!109 = distinct !{!109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!110 = distinct !{!110, !109, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!111 = distinct !{!111, !112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!112 = distinct !{!112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!113 = distinct !{!113, !112, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!114 = !{!99, !102, !94, !97, !86, !92, !81, !84, !89}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!117 = distinct !{!117, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!120 = distinct !{!120, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!123 = distinct !{!123, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!126 = distinct !{!126, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!127 = !{!125, !122, !119, !116}
!128 = !{!129, !130, !131, !132}
!129 = distinct !{!129, !126, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!130 = distinct !{!130, !123, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!131 = distinct !{!131, !120, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!132 = distinct !{!132, !117, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!133 = !{!134, !136, !137, !139}
!134 = distinct !{!134, !135, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!135 = distinct !{!135, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!136 = distinct !{!136, !135, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!137 = distinct !{!137, !138, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!138 = distinct !{!138, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!139 = distinct !{!139, !138, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!140 = !{!129, !125, !130, !122, !131, !119, !132, !116}
!141 = !{!142, !144, !145, !147}
!142 = distinct !{!142, !143, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!143 = distinct !{!143, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!144 = distinct !{!144, !143, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!145 = distinct !{!145, !146, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!146 = distinct !{!146, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!147 = distinct !{!147, !146, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!148 = !{!149, !151, !152, !154, !155, !157, !158, !160}
!149 = distinct !{!149, !150, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!150 = distinct !{!150, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!151 = distinct !{!151, !150, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!152 = distinct !{!152, !153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!153 = distinct !{!153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!154 = distinct !{!154, !153, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!155 = distinct !{!155, !156, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!156 = distinct !{!156, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!157 = distinct !{!157, !156, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!158 = distinct !{!158, !159, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!159 = distinct !{!159, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!160 = distinct !{!160, !159, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!168 = distinct !{!168, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!173 = distinct !{!173, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!178 = distinct !{!178, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!181 = !{!177, !172, !167, !162}
!182 = !{!180, !175, !170, !165}
!183 = !{!184, !186, !187, !189}
!184 = distinct !{!184, !185, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!185 = distinct !{!185, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!186 = distinct !{!186, !185, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!187 = distinct !{!187, !188, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!188 = distinct !{!188, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!189 = distinct !{!189, !188, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!190 = !{!177, !180, !172, !175, !167, !170, !162, !165}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!193 = distinct !{!193, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!198 = distinct !{!198, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!203 = distinct !{!203, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!208 = distinct !{!208, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!211 = !{!207, !202, !197, !192}
!212 = !{!210, !205, !200, !195}
!213 = !{!214, !216, !217, !219}
!214 = distinct !{!214, !215, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!215 = distinct !{!215, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!216 = distinct !{!216, !215, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!217 = distinct !{!217, !218, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!218 = distinct !{!218, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!219 = distinct !{!219, !218, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!220 = !{!207, !210, !202, !205, !197, !200, !192, !195}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!223 = distinct !{!223, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!228 = distinct !{!228, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!233 = distinct !{!233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!234 = !{!235}
!235 = distinct !{!235, !233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!238 = distinct !{!238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!241 = !{!237, !232, !227, !222}
!242 = !{!240, !235, !230, !225}
!243 = !{!244, !246, !247, !249}
!244 = distinct !{!244, !245, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!245 = distinct !{!245, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!246 = distinct !{!246, !245, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!247 = distinct !{!247, !248, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!248 = distinct !{!248, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!249 = distinct !{!249, !248, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!250 = !{!237, !240, !232, !235, !227, !230, !222, !225}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!253 = distinct !{!253, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!258 = distinct !{!258, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!263 = distinct !{!263, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!268 = distinct !{!268, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!271 = !{!267, !262, !257, !252}
!272 = !{!270, !265, !260, !255}
!273 = !{!274, !276, !277, !279}
!274 = distinct !{!274, !275, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!275 = distinct !{!275, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!276 = distinct !{!276, !275, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!277 = distinct !{!277, !278, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!278 = distinct !{!278, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!279 = distinct !{!279, !278, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!280 = !{!267, !270, !262, !265, !257, !260, !252, !255}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!283 = distinct !{!283, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!288 = distinct !{!288, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!289 = !{!290}
!290 = distinct !{!290, !288, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!293 = distinct !{!293, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!298 = distinct !{!298, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!301 = !{!297, !292, !287, !282}
!302 = !{!300, !295, !290, !285}
!303 = !{!304, !306, !307, !309}
!304 = distinct !{!304, !305, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!305 = distinct !{!305, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!306 = distinct !{!306, !305, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!307 = distinct !{!307, !308, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!308 = distinct !{!308, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!309 = distinct !{!309, !308, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!310 = !{!297, !300, !292, !295, !287, !290, !282, !285}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!313 = distinct !{!313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!318 = distinct !{!318, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"cmpfunc: %a"}
!323 = distinct !{!323, !"cmpfunc"}
!324 = !{!325}
!325 = distinct !{!325, !323, !"cmpfunc: %b"}
!326 = !{!322, !317, !312}
!327 = !{!325, !320, !315}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!330 = distinct !{!330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!335 = distinct !{!335, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!338 = !{!339}
!339 = distinct !{!339, !340, !"cmpfunc: %a"}
!340 = distinct !{!340, !"cmpfunc"}
!341 = !{!342}
!342 = distinct !{!342, !340, !"cmpfunc: %b"}
!343 = !{!339, !334, !329}
!344 = !{!342, !337, !332}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!347 = distinct !{!347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!352 = distinct !{!352, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"cmpfunc: %a"}
!357 = distinct !{!357, !"cmpfunc"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"cmpfunc: %b"}
!360 = !{!356, !351, !346}
!361 = !{!359, !354, !349}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!364 = distinct !{!364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!369 = distinct !{!369, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"cmpfunc: %a"}
!374 = distinct !{!374, !"cmpfunc"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"cmpfunc: %b"}
!377 = !{!373, !368, !363}
!378 = !{!376, !371, !366}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"cmpfunc: %a"}
!391 = distinct !{!391, !"cmpfunc"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"cmpfunc: %b"}
!394 = !{!390, !385, !380}
!395 = !{!393, !388, !383}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!398 = distinct !{!398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!403 = distinct !{!403, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"cmpfunc: %a"}
!408 = distinct !{!408, !"cmpfunc"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"cmpfunc: %b"}
!411 = !{!407, !402, !397}
!412 = !{!410, !405, !400}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!415 = distinct !{!415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!420 = distinct !{!420, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"cmpfunc: %a"}
!425 = distinct !{!425, !"cmpfunc"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"cmpfunc: %b"}
!428 = !{!424, !419, !414}
!429 = !{!427, !422, !417}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!432 = distinct !{!432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!437 = distinct !{!437, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"cmpfunc: %a"}
!442 = distinct !{!442, !"cmpfunc"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"cmpfunc: %b"}
!445 = !{!441, !436, !431}
!446 = !{!444, !439, !434}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!449 = distinct !{!449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!454 = distinct !{!454, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"cmpfunc: %a"}
!459 = distinct !{!459, !"cmpfunc"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"cmpfunc: %b"}
!462 = !{!458, !453, !448}
!463 = !{!461, !456, !451}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!466 = distinct !{!466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!471 = distinct !{!471, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"cmpfunc: %a"}
!476 = distinct !{!476, !"cmpfunc"}
!477 = !{!478}
!478 = distinct !{!478, !476, !"cmpfunc: %b"}
!479 = !{!475, !470, !465}
!480 = !{!478, !473, !468}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE: %v.0"}
!483 = distinct !{!483, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE"}
!484 = !{!485, !487, !489, !482}
!485 = distinct !{!485, !486, !"cmpfunc: %b"}
!486 = distinct !{!486, !"cmpfunc"}
!487 = distinct !{!487, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!488 = distinct !{!488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!489 = distinct !{!489, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!490 = distinct !{!490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!491 = !{!492, !493, !494, !495}
!492 = distinct !{!492, !486, !"cmpfunc: %a"}
!493 = distinct !{!493, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!494 = distinct !{!494, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!495 = distinct !{!495, !496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %_0"}
!496 = distinct !{!496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E"}
!497 = !{!495, !498, !482}
!498 = distinct !{!498, !496, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %is_less"}
!499 = !{!500, !502, !504, !482}
!500 = distinct !{!500, !501, !"cmpfunc: %b"}
!501 = distinct !{!501, !"cmpfunc"}
!502 = distinct !{!502, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!503 = distinct !{!503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!504 = distinct !{!504, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!505 = distinct !{!505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!506 = !{!507, !508, !509, !510}
!507 = distinct !{!507, !501, !"cmpfunc: %a"}
!508 = distinct !{!508, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!509 = distinct !{!509, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!510 = distinct !{!510, !511, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %_0"}
!511 = distinct !{!511, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E"}
!512 = !{!510, !513, !482}
!513 = distinct !{!513, !511, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %is_less"}
!514 = !{!515}
!515 = distinct !{!515, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It1"}
!516 = !{!517}
!517 = distinct !{!517, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It1"}
!518 = !{!519}
!519 = distinct !{!519, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It1"}
!520 = !{!495}
!521 = !{!522}
!522 = distinct !{!522, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It1"}
!523 = !{!524}
!524 = distinct !{!524, !486, !"cmpfunc: %a:It1"}
!525 = !{!526}
!526 = distinct !{!526, !486, !"cmpfunc: %b:It1"}
!527 = !{!524, !519, !515, !482}
!528 = !{!526, !522, !517, !495}
!529 = !{!526, !522, !517, !482}
!530 = !{!524, !519, !515, !495}
!531 = !{!532}
!532 = distinct !{!532, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It1"}
!533 = !{!534}
!534 = distinct !{!534, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It1"}
!535 = !{!536}
!536 = distinct !{!536, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It1"}
!537 = !{!510}
!538 = !{!539}
!539 = distinct !{!539, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It1"}
!540 = !{!541}
!541 = distinct !{!541, !501, !"cmpfunc: %a:It1"}
!542 = !{!543}
!543 = distinct !{!543, !501, !"cmpfunc: %b:It1"}
!544 = !{!541, !536, !532, !482}
!545 = !{!543, !539, !534, !510}
!546 = !{!543, !539, !534, !482}
!547 = !{!541, !536, !532, !510}
!548 = !{!549}
!549 = distinct !{!549, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It2"}
!550 = !{!551}
!551 = distinct !{!551, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It2"}
!552 = !{!553}
!553 = distinct !{!553, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It2"}
!554 = !{!555}
!555 = distinct !{!555, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It2"}
!556 = !{!557}
!557 = distinct !{!557, !486, !"cmpfunc: %a:It2"}
!558 = !{!559}
!559 = distinct !{!559, !486, !"cmpfunc: %b:It2"}
!560 = !{!557, !553, !549, !482}
!561 = !{!559, !555, !551, !495}
!562 = !{!559, !555, !551, !482}
!563 = !{!557, !553, !549, !495}
!564 = !{!565}
!565 = distinct !{!565, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It2"}
!566 = !{!567}
!567 = distinct !{!567, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It2"}
!568 = !{!569}
!569 = distinct !{!569, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It2"}
!570 = !{!571}
!571 = distinct !{!571, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It2"}
!572 = !{!573}
!573 = distinct !{!573, !501, !"cmpfunc: %a:It2"}
!574 = !{!575}
!575 = distinct !{!575, !501, !"cmpfunc: %b:It2"}
!576 = !{!573, !569, !565, !482}
!577 = !{!575, !571, !567, !510}
!578 = !{!575, !571, !567, !482}
!579 = !{!573, !569, !565, !510}
!580 = !{!581}
!581 = distinct !{!581, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It3"}
!582 = !{!583}
!583 = distinct !{!583, !490, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It3"}
!584 = !{!585}
!585 = distinct !{!585, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It3"}
!586 = !{!587}
!587 = distinct !{!587, !488, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It3"}
!588 = !{!589}
!589 = distinct !{!589, !486, !"cmpfunc: %a:It3"}
!590 = !{!591}
!591 = distinct !{!591, !486, !"cmpfunc: %b:It3"}
!592 = !{!589, !585, !581, !482}
!593 = !{!591, !587, !583, !495}
!594 = !{!591, !587, !583, !482}
!595 = !{!589, !585, !581, !495}
!596 = !{!597}
!597 = distinct !{!597, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It3"}
!598 = !{!599}
!599 = distinct !{!599, !505, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It3"}
!600 = !{!601}
!601 = distinct !{!601, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It3"}
!602 = !{!603}
!603 = distinct !{!603, !503, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It3"}
!604 = !{!605}
!605 = distinct !{!605, !501, !"cmpfunc: %a:It3"}
!606 = !{!607}
!607 = distinct !{!607, !501, !"cmpfunc: %b:It3"}
!608 = !{!605, !601, !597, !482}
!609 = !{!607, !603, !599, !510}
!610 = !{!607, !603, !599, !482}
!611 = !{!605, !601, !597, !510}
!612 = !{!"branch_weights", i32 4001, i32 4000000}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!615 = distinct !{!615, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!616 = !{!617}
!617 = distinct !{!617, !615, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!620 = distinct !{!620, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!621 = !{!622}
!622 = distinct !{!622, !620, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!623 = !{!624}
!624 = distinct !{!624, !625, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!625 = distinct !{!625, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!626 = !{!627}
!627 = distinct !{!627, !625, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!630 = distinct !{!630, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!631 = !{!632}
!632 = distinct !{!632, !630, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!633 = !{!629, !624, !619, !614}
!634 = !{!632, !627, !622, !617}
!635 = !{!636, !638, !639, !641}
!636 = distinct !{!636, !637, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!637 = distinct !{!637, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!638 = distinct !{!638, !637, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!639 = distinct !{!639, !640, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!640 = distinct !{!640, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!641 = distinct !{!641, !640, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!642 = !{!629, !632, !624, !627, !619, !622, !614, !617}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!645 = distinct !{!645, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!648 = distinct !{!648, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!651 = distinct !{!651, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!654 = distinct !{!654, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!655 = !{!653, !650, !647, !644}
!656 = !{!657, !658, !659, !660}
!657 = distinct !{!657, !654, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!658 = distinct !{!658, !651, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!659 = distinct !{!659, !648, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!660 = distinct !{!660, !645, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!661 = !{!662, !664, !665, !667}
!662 = distinct !{!662, !663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!663 = distinct !{!663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!664 = distinct !{!664, !663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!665 = distinct !{!665, !666, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!666 = distinct !{!666, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!667 = distinct !{!667, !666, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!668 = !{!657, !653, !658, !650, !659, !647, !660, !644}
!669 = !{!670, !672}
!670 = distinct !{!670, !671, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!671 = distinct !{!671, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!672 = distinct !{!672, !673, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!673 = distinct !{!673, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!674 = !{!"branch_weights", i32 2002, i32 2000}
!675 = !{!676, !678}
!676 = distinct !{!676, !677, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE: %_0"}
!677 = distinct !{!677, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE"}
!678 = distinct !{!678, !679, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E: %_0"}
!679 = distinct !{!679, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h902fd1cdf4522e46E"}
!680 = !{!681, !683, !685, !687}
!681 = distinct !{!681, !682, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!682 = distinct !{!682, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!683 = distinct !{!683, !684, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he72c092594a68a6aE: %self"}
!684 = distinct !{!684, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he72c092594a68a6aE"}
!685 = distinct !{!685, !686, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc07c324c7c1ae22eE: %_1"}
!686 = distinct !{!686, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc07c324c7c1ae22eE"}
!687 = distinct !{!687, !688, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E: %_1"}
!688 = distinct !{!688, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E"}
!689 = !{!690, !692, !694, !696}
!690 = distinct !{!690, !691, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!691 = distinct !{!691, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!692 = distinct !{!692, !693, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he72c092594a68a6aE: %self"}
!693 = distinct !{!693, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he72c092594a68a6aE"}
!694 = distinct !{!694, !695, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc07c324c7c1ae22eE: %_1"}
!695 = distinct !{!695, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc07c324c7c1ae22eE"}
!696 = distinct !{!696, !697, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E: %_1"}
!697 = distinct !{!697, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b77a2858f5db887E"}
!698 = !{!699, !701}
!699 = distinct !{!699, !700, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE: %_0"}
!700 = distinct !{!700, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE"}
!701 = distinct !{!701, !702, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E: %_0"}
!702 = distinct !{!702, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7c1b0be8a5f89fe9E"}
!703 = !{!704, !706, !708, !710}
!704 = distinct !{!704, !705, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!705 = distinct !{!705, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!706 = distinct !{!706, !707, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E: %self"}
!707 = distinct !{!707, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E"}
!708 = distinct !{!708, !709, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E: %_1"}
!709 = distinct !{!709, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E"}
!710 = distinct !{!710, !711, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E: %_1"}
!711 = distinct !{!711, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!714 = distinct !{!714, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!715 = !{!716}
!716 = distinct !{!716, !714, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!719 = distinct !{!719, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E: %scratch.0"}
!722 = distinct !{!722, !"_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E"}
!723 = !{!724}
!724 = distinct !{!724, !719, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!727 = distinct !{!727, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!728 = !{!729}
!729 = distinct !{!729, !727, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!732 = distinct !{!732, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!733 = !{!734}
!734 = distinct !{!734, !732, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!735 = !{!731, !726, !718, !713}
!736 = !{!734, !729, !724, !716, !721}
!737 = !{!734, !729, !724, !716}
!738 = !{!731, !726, !718, !713, !721}
!739 = !{!740, !742, !743, !745}
!740 = distinct !{!740, !741, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!741 = distinct !{!741, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!742 = distinct !{!742, !741, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!743 = distinct !{!743, !744, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!744 = distinct !{!744, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!745 = distinct !{!745, !744, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!746 = !{!731, !734, !726, !729, !718, !724, !713, !716, !721}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!749 = distinct !{!749, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!752 = distinct !{!752, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!755 = distinct !{!755, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!758 = distinct !{!758, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!759 = !{!757, !754, !751, !748}
!760 = !{!761, !762, !763, !764, !721}
!761 = distinct !{!761, !758, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!762 = distinct !{!762, !755, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!763 = distinct !{!763, !752, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!764 = distinct !{!764, !749, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!765 = !{!766, !768, !769, !771}
!766 = distinct !{!766, !767, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!767 = distinct !{!767, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!768 = distinct !{!768, !767, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!769 = distinct !{!769, !770, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!770 = distinct !{!770, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!771 = distinct !{!771, !770, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!772 = !{!757, !761, !754, !762, !751, !763, !748, !764, !721}
!773 = !{!774}
!774 = distinct !{!774, !775, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!775 = distinct !{!775, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!778 = distinct !{!778, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!781 = distinct !{!781, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!784 = distinct !{!784, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!785 = !{!783, !780, !777, !774}
!786 = !{!787, !788, !789, !790, !721}
!787 = distinct !{!787, !784, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!788 = distinct !{!788, !781, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!789 = distinct !{!789, !778, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!790 = distinct !{!790, !775, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!791 = !{!792, !794, !795, !797}
!792 = distinct !{!792, !793, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!793 = distinct !{!793, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!794 = distinct !{!794, !793, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!795 = distinct !{!795, !796, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!796 = distinct !{!796, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!797 = distinct !{!797, !796, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!798 = !{!783, !787, !780, !788, !777, !789, !774, !790, !721}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE: %a.0"}
!801 = distinct !{!801, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE"}
!802 = !{!721, !803}
!803 = distinct !{!803, !722, !"_ZN4core5slice4sort6stable5drift10create_run17haa65d1d7eff1e388E: %is_less"}
!804 = !{!805}
!805 = distinct !{!805, !801, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf43cf371a434dcedE: %b.0"}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x"}
!808 = distinct !{!808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E"}
!809 = !{!810}
!810 = distinct !{!810, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y"}
!811 = !{!807, !800, !812}
!812 = distinct !{!812, !813, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he9e4f888e151918aE: %self.0"}
!813 = distinct !{!813, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he9e4f888e151918aE"}
!814 = !{!810, !805, !721, !803}
!815 = !{!810, !805, !812}
!816 = !{!807, !800, !721, !803}
!817 = !{!818}
!818 = distinct !{!818, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x:It1"}
!819 = !{!820}
!820 = distinct !{!820, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y:It1"}
!821 = !{!818, !800, !812}
!822 = !{!820, !805, !721, !803}
!823 = !{!820, !805, !812}
!824 = !{!818, !800, !721, !803}
!825 = !{!826}
!826 = distinct !{!826, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %x:It2"}
!827 = !{!828}
!828 = distinct !{!828, !808, !"_ZN4core3ptr10swap_chunk17hbcef857f30cc55b3E: %y:It2"}
!829 = !{!826, !800, !812}
!830 = !{!828, !805, !721, !803}
!831 = !{!828, !805, !812}
!832 = !{!826, !800, !721, !803}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E: %v.0"}
!835 = distinct !{!835, !"_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E"}
!836 = !{!837}
!837 = distinct !{!837, !835, !"_ZN4core5slice4sort6stable5merge5merge17h6e59d25376e5c569E: %scratch.0"}
!838 = !{!834, !837}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!841 = distinct !{!841, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!842 = !{!843}
!843 = distinct !{!843, !841, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!844 = !{!845}
!845 = distinct !{!845, !846, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!846 = distinct !{!846, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!847 = !{!848}
!848 = distinct !{!848, !846, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!851 = distinct !{!851, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!852 = !{!853}
!853 = distinct !{!853, !851, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!856 = distinct !{!856, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!859 = !{!855, !850, !845, !840, !837}
!860 = !{!858, !853, !848, !843, !861, !834}
!861 = distinct !{!861, !862, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00af413aa662353fE: %self"}
!862 = distinct !{!862, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h00af413aa662353fE"}
!863 = !{!858, !853, !848, !843, !834}
!864 = !{!855, !850, !845, !840, !861, !837}
!865 = !{!866, !868, !869, !871}
!866 = distinct !{!866, !867, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!867 = distinct !{!867, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!868 = distinct !{!868, !867, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!869 = distinct !{!869, !870, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!870 = distinct !{!870, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!871 = distinct !{!871, !870, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!872 = !{!855, !858, !850, !853, !845, !848, !840, !843, !861, !834, !837}
!873 = !{!861}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!876 = distinct !{!876, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!881 = distinct !{!881, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!882 = !{!883}
!883 = distinct !{!883, !881, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!886 = distinct !{!886, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!891 = distinct !{!891, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!892 = !{!893}
!893 = distinct !{!893, !891, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!894 = !{!890, !885, !880, !875, !834}
!895 = !{!893, !888, !883, !878, !896, !837}
!896 = distinct !{!896, !897, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hbe38bf00a951b59aE: %self"}
!897 = distinct !{!897, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hbe38bf00a951b59aE"}
!898 = !{!893, !888, !883, !878, !837}
!899 = !{!890, !885, !880, !875, !896, !834}
!900 = !{!901, !903, !904, !906}
!901 = distinct !{!901, !902, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!902 = distinct !{!902, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!903 = distinct !{!903, !902, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!904 = distinct !{!904, !905, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!905 = distinct !{!905, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!906 = distinct !{!906, !905, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!907 = !{!890, !893, !885, !888, !880, !883, !875, !878, !896, !834, !837}
!908 = !{!896}
!909 = !{!910, !912}
!910 = distinct !{!910, !911, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1026d09a29655880E: %self"}
!911 = distinct !{!911, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1026d09a29655880E"}
!912 = distinct !{!912, !913, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17hdb2ba51bb1343d28E: %_1"}
!913 = distinct !{!913, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17hdb2ba51bb1343d28E"}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!916 = distinct !{!916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!921 = distinct !{!921, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!922 = !{!923}
!923 = distinct !{!923, !924, !"_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E: %scratch.0"}
!924 = distinct !{!924, !"_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E"}
!925 = !{!926}
!926 = distinct !{!926, !921, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!927 = !{!928}
!928 = distinct !{!928, !929, !"cmpfunc: %a"}
!929 = distinct !{!929, !"cmpfunc"}
!930 = !{!931}
!931 = distinct !{!931, !929, !"cmpfunc: %b"}
!932 = !{!928, !920, !915}
!933 = !{!931, !926, !918, !923}
!934 = !{!931, !926, !918}
!935 = !{!928, !920, !915, !923}
!936 = !{!937, !939, !941}
!937 = distinct !{!937, !938, !"cmpfunc: %a"}
!938 = distinct !{!938, !"cmpfunc"}
!939 = distinct !{!939, !940, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!940 = distinct !{!940, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!941 = distinct !{!941, !942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!942 = distinct !{!942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!943 = !{!944, !945, !946, !923}
!944 = distinct !{!944, !938, !"cmpfunc: %b"}
!945 = distinct !{!945, !940, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!946 = distinct !{!946, !942, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!947 = !{!948, !950, !952}
!948 = distinct !{!948, !949, !"cmpfunc: %a"}
!949 = distinct !{!949, !"cmpfunc"}
!950 = distinct !{!950, !951, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!951 = distinct !{!951, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!952 = distinct !{!952, !953, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!953 = distinct !{!953, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!954 = !{!955, !956, !957, !923}
!955 = distinct !{!955, !949, !"cmpfunc: %b"}
!956 = distinct !{!956, !951, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!957 = distinct !{!957, !953, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E: %a.0"}
!960 = distinct !{!960, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E"}
!961 = !{!923, !962}
!962 = distinct !{!962, !924, !"_ZN4core5slice4sort6stable5drift10create_run17h01028071545c4604E: %is_less"}
!963 = !{!964}
!964 = distinct !{!964, !960, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h545e5c864fe699d9E: %b.0"}
!965 = !{!959, !966}
!966 = distinct !{!966, !967, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h590dfe862d453c00E: %self.0"}
!967 = distinct !{!967, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h590dfe862d453c00E"}
!968 = !{!964, !923, !962}
!969 = !{!964, !966}
!970 = !{!959, !923, !962}
!971 = distinct !{!971, !972, !973}
!972 = !{!"llvm.loop.isvectorized", i32 1}
!973 = !{!"llvm.loop.unroll.runtime.disable"}
!974 = distinct !{!974, !973, !972}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE: %v.0"}
!977 = distinct !{!977, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE"}
!978 = !{!979}
!979 = distinct !{!979, !977, !"_ZN4core5slice4sort6stable5merge5merge17h4968745bd835e12cE: %scratch.0"}
!980 = !{!976, !979}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!983 = distinct !{!983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!984 = !{!985}
!985 = distinct !{!985, !983, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!988 = distinct !{!988, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!989 = !{!990}
!990 = distinct !{!990, !988, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!991 = !{!992}
!992 = distinct !{!992, !993, !"cmpfunc: %a"}
!993 = distinct !{!993, !"cmpfunc"}
!994 = !{!995}
!995 = distinct !{!995, !993, !"cmpfunc: %b"}
!996 = !{!992, !987, !982, !979}
!997 = !{!995, !990, !985, !998, !976}
!998 = distinct !{!998, !999, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E: %self"}
!999 = distinct !{!999, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h483b621008603c76E"}
!1000 = !{!995, !990, !985, !976}
!1001 = !{!992, !987, !982, !998, !979}
!1002 = !{!998, !979}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1005 = distinct !{!1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1005, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1010 = distinct !{!1010, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1010, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1015, !"cmpfunc: %a"}
!1015 = distinct !{!1015, !"cmpfunc"}
!1016 = !{!1017}
!1017 = distinct !{!1017, !1015, !"cmpfunc: %b"}
!1018 = !{!1014, !1009, !1004, !976}
!1019 = !{!1017, !1012, !1007, !1020, !979}
!1020 = distinct !{!1020, !1021, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE: %self"}
!1021 = distinct !{!1021, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h25e782789069064cE"}
!1022 = !{!1017, !1012, !1007, !979}
!1023 = !{!1014, !1009, !1004, !1020, !976}
!1024 = !{!1020, !979}
!1025 = !{!1026, !1028}
!1026 = distinct !{!1026, !1027, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE: %self"}
!1027 = distinct !{!1027, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddbf6677d5cb6c3aE"}
!1028 = distinct !{!1028, !1029, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E: %_1"}
!1029 = distinct !{!1029, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17ha2ac36118d2e0a75E"}
!1030 = !{!1031}
!1031 = distinct !{!1031, !1032, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E: %v.0"}
!1032 = distinct !{!1032, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E"}
!1033 = !{!1031, !1034}
!1034 = distinct !{!1034, !1032, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E: %scratch.0"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1032, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h810f0cca5566cd17E: %is_less"}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0:It1"}
!1039 = distinct !{!1039, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1039, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1:It1"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self:It1"}
!1044 = distinct !{!1044, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1044, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other:It1"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self:It1"}
!1049 = distinct !{!1049, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other:It1"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self:It1"}
!1054 = distinct !{!1054, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1054, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other:It1"}
!1057 = !{!1053, !1048, !1043, !1038, !1034}
!1058 = !{!1056, !1051, !1046, !1041, !1031, !1036}
!1059 = !{!1056, !1051, !1046, !1041, !1034}
!1060 = !{!1053, !1048, !1043, !1038, !1031, !1036}
!1061 = !{!1062, !1064, !1065, !1067}
!1062 = distinct !{!1062, !1063, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1063 = distinct !{!1063, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1064 = distinct !{!1064, !1063, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1065 = distinct !{!1065, !1066, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1066 = distinct !{!1066, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1067 = distinct !{!1067, !1066, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1068 = !{!1053, !1056, !1048, !1051, !1043, !1046, !1038, !1041, !1031, !1036}
!1069 = !{!1034}
!1070 = !{!1031, !1036}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1:It1"}
!1073 = distinct !{!1073, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1076, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other:It1"}
!1076 = distinct !{!1076, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1079, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other:It1"}
!1079 = distinct !{!1079, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other:It1"}
!1082 = distinct !{!1082, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1083 = !{!1081, !1078, !1075, !1072, !1034}
!1084 = !{!1085, !1086, !1087, !1088, !1031, !1036}
!1085 = distinct !{!1085, !1082, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1086 = distinct !{!1086, !1079, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1087 = distinct !{!1087, !1076, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1088 = distinct !{!1088, !1073, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1089 = !{!1090, !1092, !1093, !1095}
!1090 = distinct !{!1090, !1091, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1091 = distinct !{!1091, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1092 = distinct !{!1092, !1091, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1093 = distinct !{!1093, !1094, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1094 = distinct !{!1094, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1095 = distinct !{!1095, !1094, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1096 = !{!1085, !1081, !1086, !1078, !1087, !1075, !1088, !1072, !1031, !1036}
!1097 = !{!1098, !1100, !1031, !1036}
!1098 = distinct !{!1098, !1099, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!1099 = distinct !{!1099, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!1100 = distinct !{!1100, !1101, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!1101 = distinct !{!1101, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1104, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5782bbec6bc4ca12E: %v.0"}
!1104 = distinct !{!1104, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5782bbec6bc4ca12E"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1107, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1107 = distinct !{!1107, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1107, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1112, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1112 = distinct !{!1112, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E: %_0"}
!1115 = distinct !{!1115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1112, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1120, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1120 = distinct !{!1120, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1120, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1125 = distinct !{!1125, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1125, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1128 = !{!1124, !1119, !1111, !1106, !1103, !1034}
!1129 = !{!1127, !1122, !1117, !1109, !1114, !1031, !1036}
!1130 = !{!1127, !1122, !1117, !1109, !1103, !1034}
!1131 = !{!1124, !1119, !1111, !1106, !1114, !1031, !1036}
!1132 = !{!1133, !1135, !1136, !1138}
!1133 = distinct !{!1133, !1134, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1134 = distinct !{!1134, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1135 = distinct !{!1135, !1134, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1136 = distinct !{!1136, !1137, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1137 = distinct !{!1137, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1138 = distinct !{!1138, !1137, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1139 = !{!1124, !1127, !1119, !1122, !1111, !1117, !1106, !1109, !1114, !1103, !1031, !1036}
!1140 = !{!1114, !1141, !1036}
!1141 = distinct !{!1141, !1115, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha9364d7f7b5f3a27E: %is_less"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1144 = distinct !{!1144, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1144, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1149 = distinct !{!1149, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1152, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E: %_0"}
!1152 = distinct !{!1152, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1149, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1157 = distinct !{!1157, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1157, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1162 = distinct !{!1162, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1162, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1165 = !{!1161, !1156, !1148, !1143, !1103, !1034}
!1166 = !{!1164, !1159, !1154, !1146, !1151, !1031, !1036}
!1167 = !{!1164, !1159, !1154, !1146, !1103, !1034}
!1168 = !{!1161, !1156, !1148, !1143, !1151, !1031, !1036}
!1169 = !{!1170, !1172, !1173, !1175}
!1170 = distinct !{!1170, !1171, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1171 = distinct !{!1171, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1172 = distinct !{!1172, !1171, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1173 = distinct !{!1173, !1174, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1174 = distinct !{!1174, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1175 = distinct !{!1175, !1174, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1176 = !{!1161, !1164, !1156, !1159, !1148, !1154, !1143, !1146, !1151, !1103, !1031, !1036}
!1177 = !{!1151, !1178, !1036}
!1178 = distinct !{!1178, !1152, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h2cd5a12547d0c741E: %is_less"}
!1179 = !{!1180, !1182, !1036}
!1180 = distinct !{!1180, !1181, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E: %self"}
!1181 = distinct !{!1181, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h905e47fd61ee7147E"}
!1182 = distinct !{!1182, !1183, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE: %_1"}
!1183 = distinct !{!1183, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17h17c5101470b5ac6eE"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1039, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1039, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1044, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1044, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1049, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1049, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1054, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1054, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1200 = !{!1197, !1193, !1189, !1185, !1034}
!1201 = !{!1199, !1195, !1191, !1187, !1031, !1036}
!1202 = !{!1199, !1195, !1191, !1187, !1034}
!1203 = !{!1197, !1193, !1189, !1185, !1031, !1036}
!1204 = !{!1197, !1199, !1193, !1195, !1189, !1191, !1185, !1187, !1031, !1036}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1073, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1076, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1079, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1082, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1213 = !{!1212, !1210, !1208, !1206, !1034}
!1214 = !{!1085, !1212, !1086, !1210, !1087, !1208, !1088, !1206, !1031, !1036}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE: %v.0"}
!1217 = distinct !{!1217, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1220 = distinct !{!1220, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1225 = distinct !{!1225, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE: %c"}
!1228 = distinct !{!1228, !"_ZN4core5slice4sort6shared5pivot7median317h22c231397570fc7bE"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1225, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1233 = distinct !{!1233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1233, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1238 = distinct !{!1238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1238, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1241 = !{!1237, !1232, !1224, !1219, !1216}
!1242 = !{!1240, !1235, !1230, !1222, !1227, !1243}
!1243 = distinct !{!1243, !1217, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h60f1f4f039a5481fE: %is_less"}
!1244 = !{!1240, !1235, !1230, !1222, !1216}
!1245 = !{!1237, !1232, !1224, !1219, !1227, !1243}
!1246 = !{!1247, !1249, !1250, !1252}
!1247 = distinct !{!1247, !1248, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1248 = distinct !{!1248, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1249 = distinct !{!1249, !1248, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1250 = distinct !{!1250, !1251, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1251 = distinct !{!1251, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1252 = distinct !{!1252, !1251, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1253 = !{!1237, !1240, !1232, !1235, !1224, !1230, !1219, !1222, !1227, !1216, !1243}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1256 = distinct !{!1256, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1259 = distinct !{!1259, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1262 = distinct !{!1262, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1265 = distinct !{!1265, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1266 = !{!1264, !1261, !1258, !1255, !1216}
!1267 = !{!1268, !1269, !1270, !1271, !1243}
!1268 = distinct !{!1268, !1265, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1269 = distinct !{!1269, !1262, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1270 = distinct !{!1270, !1259, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1271 = distinct !{!1271, !1256, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1272 = !{!1273, !1275, !1276, !1278}
!1273 = distinct !{!1273, !1274, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1274 = distinct !{!1274, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1275 = distinct !{!1275, !1274, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1276 = distinct !{!1276, !1277, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1277 = distinct !{!1277, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1278 = distinct !{!1278, !1277, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1279 = !{!1268, !1264, !1269, !1261, !1270, !1258, !1271, !1255, !1216, !1243}
!1280 = !{!1281, !1283, !1284, !1286}
!1281 = distinct !{!1281, !1282, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1282 = distinct !{!1282, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1283 = distinct !{!1283, !1282, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1284 = distinct !{!1284, !1285, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1285 = distinct !{!1285, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1286 = distinct !{!1286, !1285, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1287 = !{!1288, !1290, !1291, !1293, !1294, !1296, !1297, !1299, !1216, !1243}
!1288 = distinct !{!1288, !1289, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1289 = distinct !{!1289, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1290 = distinct !{!1290, !1289, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1291 = distinct !{!1291, !1292, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1292 = distinct !{!1292, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1293 = distinct !{!1293, !1292, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1294 = distinct !{!1294, !1295, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1295 = distinct !{!1295, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1296 = distinct !{!1296, !1295, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1297 = distinct !{!1297, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1298 = distinct !{!1298, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1299 = distinct !{!1299, !1298, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1302 = distinct !{!1302, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1302, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1307 = distinct !{!1307, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1312 = distinct !{!1312, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1317 = distinct !{!1317, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1320 = !{!1316, !1311, !1306, !1301}
!1321 = !{!1319, !1314, !1309, !1304}
!1322 = !{!1323, !1325, !1326, !1328}
!1323 = distinct !{!1323, !1324, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1324 = distinct !{!1324, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1325 = distinct !{!1325, !1324, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1326 = distinct !{!1326, !1327, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1327 = distinct !{!1327, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1328 = distinct !{!1328, !1327, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1329 = !{!1316, !1319, !1311, !1314, !1306, !1309, !1301, !1304}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1332, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE: %v.0"}
!1332 = distinct !{!1332, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1332, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h7194912e7af17dfcE: %scratch.0"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1337 = distinct !{!1337, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1342 = distinct !{!1342, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1342, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1347 = distinct !{!1347, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1352 = distinct !{!1352, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1352, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1355 = !{!1351, !1346, !1341, !1336, !1331}
!1356 = !{!1354, !1349, !1344, !1339, !1334}
!1357 = !{!1354, !1349, !1344, !1339, !1331}
!1358 = !{!1351, !1346, !1341, !1336, !1334}
!1359 = !{!1360, !1362, !1363, !1365}
!1360 = distinct !{!1360, !1361, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1361 = distinct !{!1361, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1362 = distinct !{!1362, !1361, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1363 = distinct !{!1363, !1364, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1364 = distinct !{!1364, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1365 = distinct !{!1365, !1364, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1366 = !{!1351, !1354, !1346, !1349, !1341, !1344, !1336, !1339, !1331, !1334}
!1367 = !{!1331, !1334}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!1370 = distinct !{!1370, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!1373 = distinct !{!1373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!1374 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1375 = !{!1376, !1378}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE: %pair"}
!1377 = distinct !{!1377, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE"}
!1378 = distinct !{!1378, !1377, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4435b8972d6cd45dE: %self.0"}
!1379 = !{!1380}
!1380 = distinct !{!1380, !1381, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E: %v.0"}
!1381 = distinct !{!1381, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1381, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb669f6af3ca404a3E: %scratch.0"}
!1384 = !{!1385}
!1385 = distinct !{!1385, !1386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %a"}
!1386 = distinct !{!1386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1386, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hcb346b6138321484E: %b"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 0"}
!1391 = distinct !{!1391, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1391, !"_ZN4core3ops8function5FnMut8call_mut17h50b83e5d20e66179E: argument 1"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %self"}
!1396 = distinct !{!1396, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1396, !"_ZN4core3cmp10PartialOrd2lt17hc11acde7c9f17ee3E: %other"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %self"}
!1401 = distinct !{!1401, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1401, !"_ZN63_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h0d96cfaaab18ee3cE: %other"}
!1404 = !{!1405}
!1405 = distinct !{!1405, !1406, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %self"}
!1406 = distinct !{!1406, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1406, !"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h5d855b0885a6cd6fE: %other"}
!1409 = !{!1405, !1400, !1395, !1390, !1388, !1380}
!1410 = !{!1408, !1403, !1398, !1393, !1385, !1383}
!1411 = !{!1408, !1403, !1398, !1393, !1385, !1380}
!1412 = !{!1405, !1400, !1395, !1390, !1388, !1383}
!1413 = !{!1414, !1416, !1417, !1419}
!1414 = distinct !{!1414, !1415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %left.0"}
!1415 = distinct !{!1415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E"}
!1416 = distinct !{!1416, !1415, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17hd1a104321863a8e1E: %right.0"}
!1417 = distinct !{!1417, !1418, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %left.0"}
!1418 = distinct !{!1418, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E"}
!1419 = distinct !{!1419, !1418, !"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h132a00bbfc2fdce1E: %right.0"}
!1420 = !{!1405, !1408, !1400, !1403, !1395, !1398, !1390, !1393, !1385, !1388, !1380, !1383}
!1421 = !{!1380, !1383}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!1424 = distinct !{!1424, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE: %self"}
!1427 = distinct !{!1427, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h853fe1197b1ea66aE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E: %v.0"}
!1430 = distinct !{!1430, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E: %scratch.0"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1435 = distinct !{!1435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1435, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1440, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1440 = distinct !{!1440, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1440, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1445, !"cmpfunc: %a"}
!1445 = distinct !{!1445, !"cmpfunc"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1445, !"cmpfunc: %b"}
!1448 = !{!1444, !1439, !1434, !1429}
!1449 = !{!1447, !1442, !1437, !1432, !1450}
!1450 = distinct !{!1450, !1430, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb45e4134945bd316E: %is_less"}
!1451 = !{!1447, !1442, !1437, !1429}
!1452 = !{!1444, !1439, !1434, !1432, !1450}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1455 = distinct !{!1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"cmpfunc: %a"}
!1465 = distinct !{!1465, !"cmpfunc"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"cmpfunc: %b"}
!1468 = !{!1464, !1459, !1454, !1429}
!1469 = !{!1467, !1462, !1457, !1432, !1450}
!1470 = !{!1467, !1462, !1457, !1429}
!1471 = !{!1464, !1459, !1454, !1432, !1450}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1474 = distinct !{!1474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1474, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1479 = distinct !{!1479, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"cmpfunc: %a"}
!1484 = distinct !{!1484, !"cmpfunc"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"cmpfunc: %b"}
!1487 = !{!1483, !1478, !1473, !1429}
!1488 = !{!1486, !1481, !1476, !1432, !1450}
!1489 = !{!1486, !1481, !1476, !1429}
!1490 = !{!1483, !1478, !1473, !1432, !1450}
!1491 = !{!1492}
!1492 = distinct !{!1492, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1493 = distinct !{!1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1498, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1498 = distinct !{!1498, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1498, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"cmpfunc: %a"}
!1503 = distinct !{!1503, !"cmpfunc"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"cmpfunc: %b"}
!1506 = !{!1502, !1497, !1492, !1429}
!1507 = !{!1505, !1500, !1495, !1432, !1450}
!1508 = !{!1505, !1500, !1495, !1429}
!1509 = !{!1502, !1497, !1492, !1432, !1450}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1512 = distinct !{!1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1512, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1517 = distinct !{!1517, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1517, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1522, !"cmpfunc: %a"}
!1522 = distinct !{!1522, !"cmpfunc"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1522, !"cmpfunc: %b"}
!1525 = !{!1521, !1516, !1511, !1429}
!1526 = !{!1524, !1519, !1514, !1432, !1450}
!1527 = !{!1524, !1519, !1514, !1429}
!1528 = !{!1521, !1516, !1511, !1432, !1450}
!1529 = !{!1429, !1450}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1532 = distinct !{!1532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1537, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1537 = distinct !{!1537, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1537, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1542, !"cmpfunc: %a"}
!1542 = distinct !{!1542, !"cmpfunc"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1542, !"cmpfunc: %b"}
!1545 = !{!1541, !1536, !1531, !1429}
!1546 = !{!1544, !1539, !1534, !1432, !1450}
!1547 = !{!1544, !1539, !1534, !1429}
!1548 = !{!1541, !1536, !1531, !1432, !1450}
!1549 = !{!1550}
!1550 = distinct !{!1550, !1551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1551 = distinct !{!1551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1556 = distinct !{!1556, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1556, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"cmpfunc: %a"}
!1561 = distinct !{!1561, !"cmpfunc"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1561, !"cmpfunc: %b"}
!1564 = !{!1560, !1555, !1550, !1429}
!1565 = !{!1563, !1558, !1553, !1432, !1450}
!1566 = !{!1563, !1558, !1553, !1429}
!1567 = !{!1560, !1555, !1550, !1432, !1450}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1570 = distinct !{!1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1575, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1575 = distinct !{!1575, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1576 = !{!1577}
!1577 = distinct !{!1577, !1575, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1580, !"cmpfunc: %a"}
!1580 = distinct !{!1580, !"cmpfunc"}
!1581 = !{!1582}
!1582 = distinct !{!1582, !1580, !"cmpfunc: %b"}
!1583 = !{!1579, !1574, !1569, !1429}
!1584 = !{!1582, !1577, !1572, !1432, !1450}
!1585 = !{!1582, !1577, !1572, !1429}
!1586 = !{!1579, !1574, !1569, !1432, !1450}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1589 = distinct !{!1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1594 = distinct !{!1594, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1599, !"cmpfunc: %a"}
!1599 = distinct !{!1599, !"cmpfunc"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1599, !"cmpfunc: %b"}
!1602 = !{!1598, !1593, !1588, !1429}
!1603 = !{!1601, !1596, !1591, !1432, !1450}
!1604 = !{!1601, !1596, !1591, !1429}
!1605 = !{!1598, !1593, !1588, !1432, !1450}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1608, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1608 = distinct !{!1608, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1608, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1613 = distinct !{!1613, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1613, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"cmpfunc: %a"}
!1618 = distinct !{!1618, !"cmpfunc"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1618, !"cmpfunc: %b"}
!1621 = !{!1617, !1612, !1607, !1429}
!1622 = !{!1620, !1615, !1610, !1432, !1450}
!1623 = !{!1620, !1615, !1610, !1429}
!1624 = !{!1617, !1612, !1607, !1432, !1450}
!1625 = !{!1432, !1450}
!1626 = !{!1627, !1629, !1631, !1432}
!1627 = distinct !{!1627, !1628, !"cmpfunc: %b"}
!1628 = distinct !{!1628, !"cmpfunc"}
!1629 = distinct !{!1629, !1630, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1630 = distinct !{!1630, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1631 = distinct !{!1631, !1632, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1632 = distinct !{!1632, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1633 = !{!1634, !1635, !1636, !1429, !1450}
!1634 = distinct !{!1634, !1628, !"cmpfunc: %a"}
!1635 = distinct !{!1635, !1630, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1636 = distinct !{!1636, !1632, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1637 = !{!1638, !1640, !1642, !1432}
!1638 = distinct !{!1638, !1639, !"cmpfunc: %b"}
!1639 = distinct !{!1639, !"cmpfunc"}
!1640 = distinct !{!1640, !1641, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1641 = distinct !{!1641, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1642 = distinct !{!1642, !1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1643 = distinct !{!1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1644 = !{!1645, !1646, !1647, !1429, !1450}
!1645 = distinct !{!1645, !1639, !"cmpfunc: %a"}
!1646 = distinct !{!1646, !1641, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1647 = distinct !{!1647, !1643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1648 = !{!1649, !1651, !1429, !1450}
!1649 = distinct !{!1649, !1650, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!1650 = distinct !{!1650, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!1651 = distinct !{!1651, !1652, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!1652 = distinct !{!1652, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1655, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE: %v.0"}
!1655 = distinct !{!1655, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17he3b0c15c05973dbcE"}
!1656 = !{!1657}
!1657 = distinct !{!1657, !1658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1658 = distinct !{!1658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1659 = !{!1660}
!1660 = distinct !{!1660, !1658, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1663 = distinct !{!1663, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1666, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %_0"}
!1666 = distinct !{!1666, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E"}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1663, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1669 = !{!1670}
!1670 = distinct !{!1670, !1671, !"cmpfunc: %a"}
!1671 = distinct !{!1671, !"cmpfunc"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1671, !"cmpfunc: %b"}
!1674 = !{!1670, !1662, !1657, !1654, !1432}
!1675 = !{!1673, !1668, !1660, !1665, !1429, !1450}
!1676 = !{!1673, !1668, !1660, !1654, !1432}
!1677 = !{!1670, !1662, !1657, !1665, !1429, !1450}
!1678 = !{!1665, !1679, !1654, !1432, !1450}
!1679 = distinct !{!1679, !1666, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h87af30d5ea6004d6E: %is_less"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1682 = distinct !{!1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1687, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1687 = distinct !{!1687, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1690, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %_0"}
!1690 = distinct !{!1690, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E"}
!1691 = !{!1692}
!1692 = distinct !{!1692, !1687, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1695, !"cmpfunc: %a"}
!1695 = distinct !{!1695, !"cmpfunc"}
!1696 = !{!1697}
!1697 = distinct !{!1697, !1695, !"cmpfunc: %b"}
!1698 = !{!1694, !1686, !1681, !1654, !1432}
!1699 = !{!1697, !1692, !1684, !1689, !1429, !1450}
!1700 = !{!1697, !1692, !1684, !1654, !1432}
!1701 = !{!1694, !1686, !1681, !1689, !1429, !1450}
!1702 = !{!1689, !1703, !1654, !1432, !1450}
!1703 = distinct !{!1703, !1690, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h6903fe85dc3b9733E: %is_less"}
!1704 = !{!1654, !1432}
!1705 = !{!1654, !1432, !1450}
!1706 = !{!1429, !1432, !1450}
!1707 = !{!1429, !1432}
!1708 = !{!1709, !1711, !1450}
!1709 = distinct !{!1709, !1710, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!1710 = distinct !{!1710, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!1711 = distinct !{!1711, !1712, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!1712 = distinct !{!1712, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!1713 = !{!1714}
!1714 = distinct !{!1714, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1715 = distinct !{!1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1716 = !{!1717}
!1717 = distinct !{!1717, !1715, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1718 = !{!1719}
!1719 = distinct !{!1719, !1720, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1720 = distinct !{!1720, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1723, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E: %c"}
!1723 = distinct !{!1723, !"_ZN4core5slice4sort6shared5pivot7median317h068dee1cc059cbf5E"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1720, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1728, !"cmpfunc: %a"}
!1728 = distinct !{!1728, !"cmpfunc"}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1728, !"cmpfunc: %b"}
!1731 = !{!1727, !1719, !1714, !1732}
!1732 = distinct !{!1732, !1733, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E: %v.0"}
!1733 = distinct !{!1733, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E"}
!1734 = !{!1730, !1725, !1717, !1722, !1735}
!1735 = distinct !{!1735, !1733, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hcdbe6da45425f3e4E: %is_less"}
!1736 = !{!1730, !1725, !1717, !1732}
!1737 = !{!1727, !1719, !1714, !1722, !1735}
!1738 = !{!1739, !1741, !1743, !1732}
!1739 = distinct !{!1739, !1740, !"cmpfunc: %b"}
!1740 = distinct !{!1740, !"cmpfunc"}
!1741 = distinct !{!1741, !1742, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1742 = distinct !{!1742, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1743 = distinct !{!1743, !1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1744 = distinct !{!1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1745 = !{!1746, !1747, !1748, !1735}
!1746 = distinct !{!1746, !1740, !"cmpfunc: %a"}
!1747 = distinct !{!1747, !1742, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1748 = distinct !{!1748, !1744, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1749 = !{!1750, !1752, !1754}
!1750 = distinct !{!1750, !1751, !"cmpfunc: %a"}
!1751 = distinct !{!1751, !"cmpfunc"}
!1752 = distinct !{!1752, !1753, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1753 = distinct !{!1753, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1754 = distinct !{!1754, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1755 = distinct !{!1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1756 = !{!1757, !1758, !1759}
!1757 = distinct !{!1757, !1751, !"cmpfunc: %b"}
!1758 = distinct !{!1758, !1753, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1759 = distinct !{!1759, !1755, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1760 = !{!1761}
!1761 = distinct !{!1761, !1762, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4eb5a3e8e16257b0E: %v.0"}
!1762 = distinct !{!1762, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4eb5a3e8e16257b0E"}
!1763 = !{!1764}
!1764 = distinct !{!1764, !1762, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h4eb5a3e8e16257b0E: %scratch.0"}
!1765 = !{!1766, !1768, !1770, !1761}
!1766 = distinct !{!1766, !1767, !"cmpfunc: %b"}
!1767 = distinct !{!1767, !"cmpfunc"}
!1768 = distinct !{!1768, !1769, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1769 = distinct !{!1769, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1770 = distinct !{!1770, !1771, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1771 = distinct !{!1771, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1772 = !{!1773, !1774, !1775, !1764}
!1773 = distinct !{!1773, !1767, !"cmpfunc: %a"}
!1774 = distinct !{!1774, !1769, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1775 = distinct !{!1775, !1771, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1776 = !{!1775}
!1777 = !{!1770}
!1778 = !{!1774}
!1779 = !{!1768}
!1780 = !{!1773}
!1781 = !{!1766}
!1782 = !{!1773, !1774, !1775, !1761}
!1783 = !{!1766, !1768, !1770, !1764}
!1784 = !{!1785, !1761}
!1785 = distinct !{!1785, !1786, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1786 = distinct !{!1786, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1787 = !{!1788, !1790, !1792, !1761}
!1788 = distinct !{!1788, !1789, !"cmpfunc: %a"}
!1789 = distinct !{!1789, !"cmpfunc"}
!1790 = distinct !{!1790, !1791, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1791 = distinct !{!1791, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1792 = distinct !{!1792, !1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1793 = distinct !{!1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1794 = !{!1795, !1796, !1797, !1764}
!1795 = distinct !{!1795, !1789, !"cmpfunc: %b"}
!1796 = distinct !{!1796, !1791, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1797 = distinct !{!1797, !1793, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1798 = !{!1799, !1761}
!1799 = distinct !{!1799, !1800, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1800 = distinct !{!1800, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1801 = !{!1802, !1804, !1806, !1761}
!1802 = distinct !{!1802, !1803, !"cmpfunc: %a"}
!1803 = distinct !{!1803, !"cmpfunc"}
!1804 = distinct !{!1804, !1805, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1805 = distinct !{!1805, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1806 = distinct !{!1806, !1807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1807 = distinct !{!1807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1808 = !{!1809, !1810, !1811, !1764}
!1809 = distinct !{!1809, !1803, !"cmpfunc: %b"}
!1810 = distinct !{!1810, !1805, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1811 = distinct !{!1811, !1807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1812 = !{!1813, !1761}
!1813 = distinct !{!1813, !1814, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1814 = distinct !{!1814, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1815 = !{!1816, !1818, !1820, !1761}
!1816 = distinct !{!1816, !1817, !"cmpfunc: %a"}
!1817 = distinct !{!1817, !"cmpfunc"}
!1818 = distinct !{!1818, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1819 = distinct !{!1819, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1820 = distinct !{!1820, !1821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1821 = distinct !{!1821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1822 = !{!1823, !1824, !1825, !1764}
!1823 = distinct !{!1823, !1817, !"cmpfunc: %b"}
!1824 = distinct !{!1824, !1819, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1825 = distinct !{!1825, !1821, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1826 = !{!1827, !1761}
!1827 = distinct !{!1827, !1828, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1828 = distinct !{!1828, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1829 = !{!1830, !1832, !1834, !1761}
!1830 = distinct !{!1830, !1831, !"cmpfunc: %b"}
!1831 = distinct !{!1831, !"cmpfunc"}
!1832 = distinct !{!1832, !1833, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1833 = distinct !{!1833, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1834 = distinct !{!1834, !1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1835 = distinct !{!1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1836 = !{!1837, !1838, !1839, !1764}
!1837 = distinct !{!1837, !1831, !"cmpfunc: %a"}
!1838 = distinct !{!1838, !1833, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1839 = distinct !{!1839, !1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1840 = !{!1839}
!1841 = !{!1834}
!1842 = !{!1838}
!1843 = !{!1832}
!1844 = !{!1837}
!1845 = !{!1830}
!1846 = !{!1837, !1838, !1839, !1761}
!1847 = !{!1830, !1832, !1834, !1764}
!1848 = !{!1849, !1761}
!1849 = distinct !{!1849, !1850, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1850 = distinct !{!1850, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1851 = !{!1852, !1764}
!1852 = distinct !{!1852, !1853, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1853 = distinct !{!1853, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1854 = !{!1852, !1761}
!1855 = !{!1761, !1764}
!1856 = distinct !{!1856, !972, !973}
!1857 = distinct !{!1857, !973, !972}
!1858 = !{!1859, !1861}
!1859 = distinct !{!1859, !1860, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE: %pair"}
!1860 = distinct !{!1860, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE"}
!1861 = distinct !{!1861, !1860, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h57750b98ef4419ecE: %self.0"}
!1862 = !{!1863}
!1863 = distinct !{!1863, !1864, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E: %v.0"}
!1864 = distinct !{!1864, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1864, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h5440239c8a650de6E: %scratch.0"}
!1867 = !{!1868, !1870, !1872, !1874, !1863}
!1868 = distinct !{!1868, !1869, !"cmpfunc: %a"}
!1869 = distinct !{!1869, !"cmpfunc"}
!1870 = distinct !{!1870, !1871, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1871 = distinct !{!1871, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1872 = distinct !{!1872, !1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1873 = distinct !{!1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1874 = distinct !{!1874, !1875, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!1875 = distinct !{!1875, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!1876 = !{!1877, !1878, !1879, !1880, !1866}
!1877 = distinct !{!1877, !1869, !"cmpfunc: %b"}
!1878 = distinct !{!1878, !1871, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1879 = distinct !{!1879, !1873, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1880 = distinct !{!1880, !1875, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!1881 = !{!1880}
!1882 = !{!1874}
!1883 = !{!1872}
!1884 = !{!1879}
!1885 = !{!1870}
!1886 = !{!1878}
!1887 = !{!1868}
!1888 = !{!1877}
!1889 = !{!1877, !1878, !1879, !1880, !1863}
!1890 = !{!1868, !1870, !1872, !1874, !1866}
!1891 = !{!1892, !1863}
!1892 = distinct !{!1892, !1893, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1893 = distinct !{!1893, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1894 = !{!1895, !1897, !1899, !1901, !1863}
!1895 = distinct !{!1895, !1896, !"cmpfunc: %b"}
!1896 = distinct !{!1896, !"cmpfunc"}
!1897 = distinct !{!1897, !1898, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1898 = distinct !{!1898, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1899 = distinct !{!1899, !1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1900 = distinct !{!1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1901 = distinct !{!1901, !1902, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!1902 = distinct !{!1902, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!1903 = !{!1904, !1905, !1906, !1907, !1866}
!1904 = distinct !{!1904, !1896, !"cmpfunc: %a"}
!1905 = distinct !{!1905, !1898, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1906 = distinct !{!1906, !1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1907 = distinct !{!1907, !1902, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!1908 = !{!1909, !1863}
!1909 = distinct !{!1909, !1910, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1910 = distinct !{!1910, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1911 = !{!1912, !1914, !1916, !1918, !1863}
!1912 = distinct !{!1912, !1913, !"cmpfunc: %b"}
!1913 = distinct !{!1913, !"cmpfunc"}
!1914 = distinct !{!1914, !1915, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1915 = distinct !{!1915, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1916 = distinct !{!1916, !1917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1917 = distinct !{!1917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1918 = distinct !{!1918, !1919, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!1919 = distinct !{!1919, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!1920 = !{!1921, !1922, !1923, !1924, !1866}
!1921 = distinct !{!1921, !1913, !"cmpfunc: %a"}
!1922 = distinct !{!1922, !1915, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1923 = distinct !{!1923, !1917, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1924 = distinct !{!1924, !1919, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!1925 = !{!1926, !1863}
!1926 = distinct !{!1926, !1927, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1927 = distinct !{!1927, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1928 = !{!1929, !1931, !1933, !1935, !1863}
!1929 = distinct !{!1929, !1930, !"cmpfunc: %b"}
!1930 = distinct !{!1930, !"cmpfunc"}
!1931 = distinct !{!1931, !1932, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1932 = distinct !{!1932, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1933 = distinct !{!1933, !1934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1934 = distinct !{!1934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1935 = distinct !{!1935, !1936, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!1936 = distinct !{!1936, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!1937 = !{!1938, !1939, !1940, !1941, !1866}
!1938 = distinct !{!1938, !1930, !"cmpfunc: %a"}
!1939 = distinct !{!1939, !1932, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1940 = distinct !{!1940, !1934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1941 = distinct !{!1941, !1936, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!1942 = !{!1943, !1863}
!1943 = distinct !{!1943, !1944, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1944 = distinct !{!1944, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1945 = !{!1946, !1948, !1950, !1952, !1863}
!1946 = distinct !{!1946, !1947, !"cmpfunc: %a"}
!1947 = distinct !{!1947, !"cmpfunc"}
!1948 = distinct !{!1948, !1949, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!1949 = distinct !{!1949, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!1950 = distinct !{!1950, !1951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!1951 = distinct !{!1951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!1952 = distinct !{!1952, !1953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %b"}
!1953 = distinct !{!1953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE"}
!1954 = !{!1955, !1956, !1957, !1958, !1866}
!1955 = distinct !{!1955, !1947, !"cmpfunc: %b"}
!1956 = distinct !{!1956, !1949, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!1957 = distinct !{!1957, !1951, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!1958 = distinct !{!1958, !1953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17haf7fb341c01d574eE: %a"}
!1959 = !{!1958}
!1960 = !{!1952}
!1961 = !{!1950}
!1962 = !{!1957}
!1963 = !{!1948}
!1964 = !{!1956}
!1965 = !{!1946}
!1966 = !{!1955}
!1967 = !{!1955, !1956, !1957, !1958, !1863}
!1968 = !{!1946, !1948, !1950, !1952, !1866}
!1969 = !{!1970, !1863}
!1970 = distinct !{!1970, !1971, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1971 = distinct !{!1971, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1972 = !{!1973, !1866}
!1973 = distinct !{!1973, !1974, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE: %self"}
!1974 = distinct !{!1974, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17haf29ddd56ec7721fE"}
!1975 = !{!1973, !1863}
!1976 = !{!1863, !1866}
!1977 = distinct !{!1977, !972, !973}
!1978 = distinct !{!1978, !973, !972}
!1979 = !{!1980}
!1980 = distinct !{!1980, !1981, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!1981 = distinct !{!1981, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!1982 = !{!1983}
!1983 = distinct !{!1983, !1981, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!1984 = !{!1985}
!1985 = distinct !{!1985, !1986, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17had9402a4f2a3d99bE: %self"}
!1986 = distinct !{!1986, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17had9402a4f2a3d99bE"}
!1987 = !{i64 0, i64 2}
!1988 = !{i64 0, i64 -9223372036854775807}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1991, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE: %_0"}
!1991 = distinct !{!1991, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE"}
!1992 = !{!1993}
!1993 = distinct !{!1993, !1994, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!1994 = distinct !{!1994, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!1995 = !{!1996}
!1996 = distinct !{!1996, !1997, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!1997 = distinct !{!1997, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2000 = distinct !{!2000, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2003, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2003 = distinct !{!2003, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2006, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2006 = distinct !{!2006, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2007 = !{!2008, !2005, !2002, !1999, !1996, !1993}
!2008 = distinct !{!2008, !2009, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2009 = distinct !{!2009, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2009, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2012 = !{!2005, !2002, !1999, !1996, !1993}
!2013 = !{!"branch_weights", !"expected", i32 2145764162, i32 1719486}
!2014 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E: %_1"}
!2017 = distinct !{!2017, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E: %self"}
!2020 = distinct !{!2020, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"}
!2021 = !{!2019, !2016}
!2022 = !{!2023}
!2023 = distinct !{!2023, !2024, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE: %_1.0"}
!2024 = distinct !{!2024, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE"}
!2025 = !{!2026}
!2026 = distinct !{!2026, !2027, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!2027 = distinct !{!2027, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!2030 = distinct !{!2030, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2033, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2033 = distinct !{!2033, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2034 = !{!2035}
!2035 = distinct !{!2035, !2036, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2036 = distinct !{!2036, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2037 = !{!2038}
!2038 = distinct !{!2038, !2039, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2039 = distinct !{!2039, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2040 = !{!2041, !2038, !2035, !2032, !2029, !2026, !2023}
!2041 = distinct !{!2041, !2042, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2042 = distinct !{!2042, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2043 = !{!2044, !2019, !2016}
!2044 = distinct !{!2044, !2042, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2045 = !{!2038, !2035, !2032, !2029, !2026, !2023, !2019, !2016}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E: %_1"}
!2048 = distinct !{!2048, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2051, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E: %self"}
!2051 = distinct !{!2051, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E"}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2054 = distinct !{!2054, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2055 = !{!2056, !2053, !2050, !2047, !2016}
!2056 = distinct !{!2056, !2057, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2057 = distinct !{!2057, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2057, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2060 = !{!2053, !2050, !2047, !2016}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2063, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E: %_1"}
!2063 = distinct !{!2063, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17he3d388727106a310E"}
!2064 = !{!2065}
!2065 = distinct !{!2065, !2066, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E: %self"}
!2066 = distinct !{!2066, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a1990cca6413e04E"}
!2067 = !{!2065, !2062}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2070, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE: %_1.0"}
!2070 = distinct !{!2070, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h3e6ccc6a4bfa930dE"}
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!2073 = distinct !{!2073, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2076, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!2076 = distinct !{!2076, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2079 = distinct !{!2079, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2082 = distinct !{!2082, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2085, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2085 = distinct !{!2085, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2086 = !{!2087, !2084, !2081, !2078, !2075, !2072, !2069}
!2087 = distinct !{!2087, !2088, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2088 = distinct !{!2088, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2089 = !{!2090, !2065, !2062}
!2090 = distinct !{!2090, !2088, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2091 = !{!2084, !2081, !2078, !2075, !2072, !2069, !2065, !2062}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E: %_1"}
!2094 = distinct !{!2094, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17hf3d24620272a5909E"}
!2095 = !{!2096}
!2096 = distinct !{!2096, !2097, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E: %self"}
!2097 = distinct !{!2097, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha06b537214d2b455E"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2100 = distinct !{!2100, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2101 = !{!2102, !2099, !2096, !2093, !2062}
!2102 = distinct !{!2102, !2103, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2103 = distinct !{!2103, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2103, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2106 = !{!2099, !2096, !2093, !2062}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!2109 = distinct !{!2109, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!2112 = distinct !{!2112, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2115, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2115 = distinct !{!2115, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2118 = distinct !{!2118, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2121, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2121 = distinct !{!2121, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2122 = !{!2123, !2120, !2117, !2114, !2111, !2108}
!2123 = distinct !{!2123, !2124, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2124 = distinct !{!2124, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2125 = !{!2126}
!2126 = distinct !{!2126, !2124, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2127 = !{!2120, !2117, !2114, !2111, !2108}
!2128 = !{!2129}
!2129 = distinct !{!2129, !2130, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE: %self"}
!2130 = distinct !{!2130, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hb310ef864bb1eccdE"}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17hc255005a2d0015e3E: %self"}
!2133 = distinct !{!2133, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17hc255005a2d0015e3E"}
!2134 = !{!2135, !2132, !2129}
!2135 = distinct !{!2135, !2136, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7729af9904a2af72E: %self"}
!2136 = distinct !{!2136, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7729af9904a2af72E"}
!2137 = !{!2132, !2129}
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!2140 = distinct !{!2140, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2143, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!2143 = distinct !{!2143, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2146, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2146 = distinct !{!2146, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2147 = !{!2148}
!2148 = distinct !{!2148, !2149, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2149 = distinct !{!2149, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2152 = distinct !{!2152, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2153 = !{!2154, !2151, !2148, !2145, !2142, !2139}
!2154 = distinct !{!2154, !2155, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %self"}
!2155 = distinct !{!2155, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E"}
!2156 = !{!2157}
!2157 = distinct !{!2157, !2155, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h385b79eabc95e1f2E: %_0"}
!2158 = !{!2151, !2148, !2145, !2142, !2139}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E: %slice.0"}
!2161 = distinct !{!2161, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E"}
!2162 = !{!2163, !2165, !2167}
!2163 = distinct !{!2163, !2164, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE: %_0"}
!2164 = distinct !{!2164, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hebe8a259a41e10eeE"}
!2165 = distinct !{!2165, !2166, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE: %v"}
!2166 = distinct !{!2166, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE"}
!2167 = distinct !{!2167, !2166, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3abb0e4a9bd2d41dE: %s.0"}
!2168 = !{!2165}
!2169 = !{!2170}
!2170 = distinct !{!2170, !2171, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E: %self"}
!2171 = distinct !{!2171, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2171, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4bbcb001d6600bd5E: %value"}
!2174 = !{!2175, !2177, !2179, !2181, !2183, !2173}
!2175 = distinct !{!2175, !2176, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E: %self"}
!2176 = distinct !{!2176, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h97b638272af27051E"}
!2177 = distinct !{!2177, !2178, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E: %self"}
!2178 = distinct !{!2178, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f28b01653a560b0E"}
!2179 = distinct !{!2179, !2180, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE: %_1"}
!2180 = distinct !{!2180, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd0abd190740104aE"}
!2181 = distinct !{!2181, !2182, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE: %_1"}
!2182 = distinct !{!2182, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hed4fea2f99745addE"}
!2183 = distinct !{!2183, !2184, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E: %_1"}
!2184 = distinct !{!2184, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hde14ea688b292269E"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE: %self.0"}
!2187 = distinct !{!2187, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h16f9ccc62947ce1cE"}
!2188 = !{!2189}
!2189 = distinct !{!2189, !2190, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE: %v.0"}
!2190 = distinct !{!2190, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE"}
!2191 = !{!2189, !2192, !2186}
!2192 = distinct !{!2192, !2190, !"_ZN5alloc5slice11stable_sort17head739209195ddeeE: argument 1"}
!2193 = !{!2194}
!2194 = distinct !{!2194, !2195, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2195 = distinct !{!2195, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2196 = !{!2197}
!2197 = distinct !{!2197, !2195, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2198 = !{!2199}
!2199 = distinct !{!2199, !2200, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2200 = distinct !{!2200, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2200, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2205, !"cmpfunc: %a"}
!2205 = distinct !{!2205, !"cmpfunc"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2205, !"cmpfunc: %b"}
!2208 = !{!2204, !2199, !2194, !2209, !2189, !2186}
!2209 = distinct !{!2209, !2210, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0ae00b1ab412e7dbE: %v.0"}
!2210 = distinct !{!2210, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0ae00b1ab412e7dbE"}
!2211 = !{!2207, !2202, !2197, !2192}
!2212 = !{!2207, !2202, !2197, !2209, !2189, !2186}
!2213 = !{!2204, !2199, !2194, !2192}
!2214 = !{!2209, !2189, !2186}
!2215 = !{!2192}
!2216 = !{!2217, !2219, !2221, !2209, !2189, !2186}
!2217 = distinct !{!2217, !2218, !"cmpfunc: %b"}
!2218 = distinct !{!2218, !"cmpfunc"}
!2219 = distinct !{!2219, !2220, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1"}
!2220 = distinct !{!2220, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E"}
!2221 = distinct !{!2221, !2222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b"}
!2222 = distinct !{!2222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E"}
!2223 = !{!2224, !2225, !2226, !2192}
!2224 = distinct !{!2224, !2218, !"cmpfunc: %a"}
!2225 = distinct !{!2225, !2220, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0"}
!2226 = distinct !{!2226, !2222, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a"}
!2227 = !{!2228, !2230, !2192}
!2228 = distinct !{!2228, !2229, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE: %self"}
!2229 = distinct !{!2229, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha803dd85e90fe87bE"}
!2230 = distinct !{!2230, !2231, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE: %_1"}
!2231 = distinct !{!2231, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h58f80c573f02939aE"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2195, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %a:It1"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2195, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h1f463a7530b0b754E: %b:It1"}
!2236 = !{!2237}
!2237 = distinct !{!2237, !2200, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 0:It1"}
!2238 = !{!2239}
!2239 = distinct !{!2239, !2200, !"_ZN4core3ops8function5FnMut8call_mut17h7117521fa7b868e9E: argument 1:It1"}
!2240 = !{!2241}
!2241 = distinct !{!2241, !2205, !"cmpfunc: %a:It1"}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2205, !"cmpfunc: %b:It1"}
!2244 = !{!2241, !2237, !2233, !2209, !2189, !2186}
!2245 = !{!2243, !2239, !2235, !2192}
!2246 = !{!2243, !2239, !2235, !2209, !2189, !2186}
!2247 = !{!2241, !2237, !2233, !2192}
