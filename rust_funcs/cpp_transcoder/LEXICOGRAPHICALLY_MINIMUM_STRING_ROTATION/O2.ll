; ModuleID = 'LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.943fd80978e545e7-cgu.0'
source_filename = "LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.943fd80978e545e7-cgu.0"
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
@alloc_8509a3c87a45bed5fb7d7125d0b4da5e = private unnamed_addr constant [137 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit.rs\00", align 1
@alloc_731aaa3b1d0e174abb75650cf8233bd4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8509a3c87a45bed5fb7d7125d0b4da5e, [16 x i8] c"\88\00\00\00\00\00\00\00\1F\00\00\00\08\00\00\00" }>, align 8
@alloc_ca685516a45432c9ecfc325128ac9b4c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8509a3c87a45bed5fb7d7125d0b4da5e, [16 x i8] c"\88\00\00\00\00\00\00\00\1B\00\00\00\18\00\00\00" }>, align 8

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_5.i = load ptr, ptr %0, align 8, !alias.scope !3, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !3, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %_711.i.i = icmp eq i64 %len.i, 0
  br i1 %_711.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %start, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i"
  %_3.sroa.0.012.i.i = phi i64 [ %2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i" ], [ 0, %start ]
  %_6.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i, i64 %_3.sroa.0.012.i.i
  %2 = add nuw i64 %_3.sroa.0.012.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i, align 8, !range !25, !alias.scope !26, !noalias !29, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i
  %3 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !26, !noalias !29, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !31
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i
  %_7.i.i = icmp eq i64 %2, %len.i
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb4:                                              ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i", %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %self1.i.i.i.i1 = load i64, ptr %_1, align 8, !range !25, !alias.scope !41, !noalias !44, !noundef !6
  %_6.i.i.i.i2 = icmp eq i64 %self1.i.i.i.i1, 0
  br i1 %_6.i.i.i.i2, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E.exit5", label %bb2.i.i.i3

bb2.i.i.i3:                                       ; preds = %bb4
  %4 = mul nuw i64 %self1.i.i.i.i1, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !46
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E.exit5"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E.exit5": ; preds = %bb4, %bb2.i.i.i3
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %n) unnamed_addr #2 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw %"alloc::string::String", ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw %"alloc::string::String", ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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
  %6 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 8
  %_7.i.i.i = load ptr, ptr %6, align 8, !alias.scope !98, !noalias !99, !nonnull !6, !noundef !6
  %7 = getelementptr inbounds nuw i8, ptr %a.sroa.0.0, i64 16
  %len1.i.i.i = load i64, ptr %7, align 8, !alias.scope !98, !noalias !99, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 8
  %_14.i.i.i = load ptr, ptr %8, align 8, !alias.scope !100, !noalias !101, !nonnull !6, !noundef !6
  %9 = getelementptr inbounds nuw i8, ptr %b.sroa.0.0, i64 16
  %10 = load i64, ptr %9, align 8, !alias.scope !100, !noalias !101, !noundef !6
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i, i64 range(i64 0, -9223372036854775808) %10)
  %11 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i, i64 %spec.store.select.i.i.i.i), !alias.scope !102, !noalias !106
  %12 = sext i32 %11 to i64
  %_15.i.i.i.i = icmp eq i32 %11, 0
  %diff.i.i.i.i = sub nsw i64 %len1.i.i.i, %10
  %spec.select.i.i.i.i = select i1 %_15.i.i.i.i, i64 %diff.i.i.i.i, i64 %12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %13 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 8
  %_14.i.i.i7 = load ptr, ptr %13, align 8, !alias.scope !116, !noalias !117, !nonnull !6, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %c.sroa.0.0, i64 16
  %15 = load i64, ptr %14, align 8, !alias.scope !116, !noalias !117, !noundef !6
  %spec.store.select.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i, i64 range(i64 0, -9223372036854775808) %15)
  %16 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i7, i64 %spec.store.select.i.i.i.i8), !alias.scope !121, !noalias !125
  %17 = sext i32 %16 to i64
  %_15.i.i.i.i9 = icmp eq i32 %16, 0
  %diff.i.i.i.i10 = sub nsw i64 %len1.i.i.i, %15
  %spec.select.i.i.i.i11 = select i1 %_15.i.i.i.i9, i64 %diff.i.i.i.i10, i64 %17
  %18 = xor i64 %spec.select.i.i.i.i11, %spec.select.i.i.i.i
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit, label %bb3.i

bb3.i:                                            ; preds = %bb6
  %spec.store.select.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %10, i64 range(i64 0, -9223372036854775808) %15)
  %20 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i7, i64 %spec.store.select.i.i.i.i16), !alias.scope !126, !noalias !130
  %21 = sext i32 %20 to i64
  %_15.i.i.i.i17 = icmp eq i32 %20, 0
  %diff.i.i.i.i18 = sub nsw i64 %10, %15
  %spec.select.i.i.i.i19 = select i1 %_15.i.i.i.i17, i64 %diff.i.i.i.i18, i64 %21
  %22 = xor i64 %spec.select.i.i.i.i19, %spec.select.i.i.i.i
  %_12.i = icmp slt i64 %22, 0
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit

_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE.exit: ; preds = %bb6, %bb3.i
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %bb6 ], [ %c.b.i, %bb3.i ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 96)) %dst) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %0 = getelementptr inbounds nuw i8, ptr %v_base, i64 32
  %_7.i.i.i = load ptr, ptr %0, align 8, !alias.scope !155, !noalias !156, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %v_base, i64 40
  %len1.i.i.i = load i64, ptr %1, align 8, !alias.scope !155, !noalias !156, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  %_14.i.i.i = load ptr, ptr %2, align 8, !alias.scope !156, !noalias !155, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !156, !noalias !155, !noundef !6
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i, i64 %spec.store.select.i.i.i.i), !alias.scope !157, !noalias !161
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i = sub nsw i64 %len1.i.i.i, %4
  %spec.select.i.i.i.i = select i1 %_15.i.i.i.i, i64 %diff.i.i.i.i, i64 %6
  %_0.i = icmp sgt i64 %spec.select.i.i.i.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %7 = getelementptr inbounds nuw i8, ptr %v_base, i64 80
  %_7.i.i.i7 = load ptr, ptr %7, align 8, !alias.scope !177, !noalias !178, !nonnull !6, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %v_base, i64 88
  %len1.i.i.i8 = load i64, ptr %8, align 8, !alias.scope !177, !noalias !178, !noundef !6
  %9 = getelementptr inbounds nuw i8, ptr %v_base, i64 56
  %_14.i.i.i9 = load ptr, ptr %9, align 8, !alias.scope !178, !noalias !177, !nonnull !6, !noundef !6
  %10 = getelementptr inbounds nuw i8, ptr %v_base, i64 64
  %11 = load i64, ptr %10, align 8, !alias.scope !178, !noalias !177, !noundef !6
  %spec.store.select.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i8, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i7, ptr nonnull readonly align 1 %_14.i.i.i9, i64 %spec.store.select.i.i.i.i10), !alias.scope !179, !noalias !183
  %13 = sext i32 %12 to i64
  %_15.i.i.i.i11 = icmp eq i32 %12, 0
  %diff.i.i.i.i12 = sub nsw i64 %len1.i.i.i8, %11
  %spec.select.i.i.i.i13 = select i1 %_15.i.i.i.i11, i64 %diff.i.i.i.i12, i64 %13
  %_0.i14 = icmp slt i64 %spec.select.i.i.i.i13, 0
  %spec.select.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i, 63
  %a = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %spec.select.i.i.i.i.lobit
  %count2 = zext i1 %_0.i to i64
  %b = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i14, i64 3, i64 2
  %c = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i14, i64 2, i64 3
  %d = getelementptr inbounds nuw %"alloc::string::String", ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %14 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_7.i.i.i15 = load ptr, ptr %14, align 8, !alias.scope !199, !noalias !200, !nonnull !6, !noundef !6
  %15 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len1.i.i.i16 = load i64, ptr %15, align 8, !alias.scope !199, !noalias !200, !noundef !6
  %16 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_14.i.i.i17 = load ptr, ptr %16, align 8, !alias.scope !200, !noalias !199, !nonnull !6, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %18 = load i64, ptr %17, align 8, !alias.scope !200, !noalias !199, !noundef !6
  %spec.store.select.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i16, i64 range(i64 0, -9223372036854775808) %18)
  %19 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i15, ptr nonnull readonly align 1 %_14.i.i.i17, i64 %spec.store.select.i.i.i.i18), !alias.scope !201, !noalias !205
  %20 = sext i32 %19 to i64
  %_15.i.i.i.i19 = icmp eq i32 %19, 0
  %diff.i.i.i.i20 = sub nsw i64 %len1.i.i.i16, %18
  %spec.select.i.i.i.i21 = select i1 %_15.i.i.i.i19, i64 %diff.i.i.i.i20, i64 %20
  %_0.i22 = icmp slt i64 %spec.select.i.i.i.i21, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %21 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %_7.i.i.i23 = load ptr, ptr %21, align 8, !alias.scope !221, !noalias !222, !nonnull !6, !noundef !6
  %22 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %len1.i.i.i24 = load i64, ptr %22, align 8, !alias.scope !221, !noalias !222, !noundef !6
  %23 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_14.i.i.i25 = load ptr, ptr %23, align 8, !alias.scope !222, !noalias !221, !nonnull !6, !noundef !6
  %24 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %25 = load i64, ptr %24, align 8, !alias.scope !222, !noalias !221, !noundef !6
  %spec.store.select.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i24, i64 range(i64 0, -9223372036854775808) %25)
  %26 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i23, ptr nonnull readonly align 1 %_14.i.i.i25, i64 %spec.store.select.i.i.i.i26), !alias.scope !223, !noalias !227
  %27 = sext i32 %26 to i64
  %_15.i.i.i.i27 = icmp eq i32 %26, 0
  %diff.i.i.i.i28 = sub nsw i64 %len1.i.i.i24, %25
  %spec.select.i.i.i.i29 = select i1 %_15.i.i.i.i27, i64 %diff.i.i.i.i28, i64 %27
  %_0.i30 = icmp slt i64 %spec.select.i.i.i.i29, 0
  %28 = select i1 %_0.i22, ptr %c, ptr %a, !unpredictable !6
  %29 = select i1 %_0.i30, ptr %b, ptr %d, !unpredictable !6
  %30 = select i1 %_0.i30, ptr %c, ptr %b, !unpredictable !6
  %31 = select i1 %_0.i22, ptr %a, ptr %30, !unpredictable !6
  %32 = select i1 %_0.i22, ptr %b, ptr %c, !unpredictable !6
  %33 = select i1 %_0.i30, ptr %d, ptr %32, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %_7.i.i.i31 = load ptr, ptr %34, align 8, !alias.scope !243, !noalias !244, !nonnull !6, !noundef !6
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %len1.i.i.i32 = load i64, ptr %35, align 8, !alias.scope !243, !noalias !244, !noundef !6
  %36 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %_14.i.i.i33 = load ptr, ptr %36, align 8, !alias.scope !244, !noalias !243, !nonnull !6, !noundef !6
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %38 = load i64, ptr %37, align 8, !alias.scope !244, !noalias !243, !noundef !6
  %spec.store.select.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i32, i64 range(i64 0, -9223372036854775808) %38)
  %39 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i31, ptr nonnull readonly align 1 %_14.i.i.i33, i64 %spec.store.select.i.i.i.i34), !alias.scope !245, !noalias !249
  %40 = sext i32 %39 to i64
  %_15.i.i.i.i35 = icmp eq i32 %39, 0
  %diff.i.i.i.i36 = sub nsw i64 %len1.i.i.i32, %38
  %spec.select.i.i.i.i37 = select i1 %_15.i.i.i.i35, i64 %diff.i.i.i.i36, i64 %40
  %_0.i38 = icmp slt i64 %spec.select.i.i.i.i37, 0
  %41 = select i1 %_0.i38, ptr %33, ptr %31, !unpredictable !6
  %42 = select i1 %_0.i38, ptr %31, ptr %33, !unpredictable !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false)
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst5, ptr noundef nonnull align 8 dereferenceable(24) %41, i64 24, i1 false)
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst6, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %dst, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false)
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !265, !noalias !266, !noundef !6
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !266, !noalias !265, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !282, !noalias !283, !noundef !6
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !283, !noalias !282, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !299, !noalias !300, !noundef !6
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !300, !noalias !299, !noundef !6
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !316, !noalias !317, !noundef !6
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !317, !noalias !316, !noundef !6
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !6
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !6
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !6
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !333, !noalias !334, !noundef !6
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !334, !noalias !333, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !350, !noalias !351, !noundef !6
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !351, !noalias !350, !noundef !6
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !367, !noalias !368, !noundef !6
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !368, !noalias !367, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !384, !noalias !385, !noundef !6
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !385, !noalias !384, !noundef !6
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !401, !noalias !402, !noundef !6
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !402, !noalias !401, !noundef !6
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !6
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !6
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !6
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !418, !noalias !419, !noundef !6
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !419, !noalias !418, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !423, !noalias !430, !noundef !6
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !436
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !438, !noalias !445, !noundef !6
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !451
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464), !noalias !459
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !466, !noalias !467, !noundef !6
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !468, !noalias !469, !noundef !6
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !436
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !476
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !483, !noalias !484, !noundef !6
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !485, !noalias !486, !noundef !6
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !451
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497), !noalias !459
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !499, !noalias !500, !noundef !6
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !501, !noalias !502, !noundef !6
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !436
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !476
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !515, !noalias !516, !noundef !6
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !517, !noalias !518, !noundef !6
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !451
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527), !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !noalias !459
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !531, !noalias !532, !noundef !6
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !533, !noalias !534, !noundef !6
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !436
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !476
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !547, !noalias !548, !noundef !6
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !549, !noalias !550, !noundef !6
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !451
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E.exit, !prof !551

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26, !noalias !420
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nofree norecurse nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 captures(address) %v.0, i64 noundef range(i64 2, 21) %v.1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb5.preheader:
  %v_end.idx = mul nuw nsw i64 %v.1, 24
  %v_end = getelementptr inbounds nuw i8, ptr %v.0, i64 %v_end.idx
  %tail.sroa.0.01 = getelementptr inbounds nuw i8, ptr %v.0, i64 24
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit
  %tail.sroa.0.04 = phi ptr [ %tail.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit ], [ %tail.sroa.0.01, %bb5.preheader ]
  %v.0.pn3 = phi ptr [ %tail.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit ], [ %v.0, %bb5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %0 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 32
  %_7.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !567, !noalias !568, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 40
  %len1.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !567, !noalias !568, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 8
  %_14.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !568, !noalias !567, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %v.0.pn3, i64 16
  %4 = load i64, ptr %3, align 8, !alias.scope !568, !noalias !567, !noundef !6
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %4)
  %5 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !569, !noalias !573
  %6 = sext i32 %5 to i64
  %_15.i.i.i.i.i = icmp eq i32 %5, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %4
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %6
  %_0.i.i = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %_0.i.i, label %bb2.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %7 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -40
  %_14.i.i.i3.i = load ptr, ptr %7, align 8, !alias.scope !583, !noalias !584, !nonnull !6, !noundef !6
  %8 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -32
  %9 = load i64, ptr %8, align 8, !alias.scope !583, !noalias !584, !noundef !6
  %spec.store.select.i.i.i.i4.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %9)
  %10 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i3.i, i64 %spec.store.select.i.i.i.i4.i), !alias.scope !588, !noalias !592
  %11 = sext i32 %10 to i64
  %_15.i.i.i.i5.i = icmp eq i32 %10, 0
  %diff.i.i.i.i6.i = sub nsw i64 %len1.i.i.i.i, %9
  %spec.select.i.i.i.i7.i = select i1 %_15.i.i.i.i5.i, i64 %diff.i.i.i.i6.i, i64 %11
  %_0.i8.i = icmp slt i64 %spec.select.i.i.i.i7.i, 0
  br i1 %_0.i8.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb7.i, %bb4.i
  %sift.sroa.0.0.i.lcssa = phi ptr [ %sift.sroa.0.0.i, %bb7.i ], [ %v.0, %bb4.i ]
  store i64 %value.sroa.0.0.copyload.i, ptr %sift.sroa.0.0.i.lcssa, align 8, !noalias !593
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -16
  store ptr %_7.i.i.i.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !593
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i, i64 -8
  store i64 %len1.i.i.i.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !593
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit: ; preds = %bb5, %bb10.i
  %tail.sroa.0.0 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 24
  %_11.not = icmp eq ptr %tail.sroa.0.0, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !598

bb17.i.i.i:                                       ; preds = %bb4
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb6, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !599
; call __rustc::__rust_alloc
  %0 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !599
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 8 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i9, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !604
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %2

bb13:                                             ; preds = %cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %heap_buf) #28
  br label %bb11
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hd81a1f6a05f6cdf3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !598

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !613
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, 9) 4) #25, !noalias !613
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
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #25, !noalias !618
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #25, !noalias !627
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !644
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !654, !noalias !655, !noundef !6
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !656, !noalias !657, !noundef !6
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !658, !noalias !665, !noundef !6
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !669, !noalias !676, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680), !noalias !683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !683
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9858b652d1314ffdE.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !687, !noalias !690
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !687, !noalias !690
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !691, !noalias !692
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !691, !noalias !692
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !687, !noalias !690
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !687, !noalias !690
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !691, !noalias !692
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !691, !noalias !692
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !693

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !687, !noalias !690, !noundef !6
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !691, !noalias !692
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !687, !noalias !690
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !691, !noalias !692
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !696

_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !6
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !702
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !718, !noalias !719, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !722, !noalias !723, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !697, !noalias !724
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !740, !noalias !741, !noundef !6
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !744, !noalias !745, !noundef !6
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !697, !noalias !746
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !702, !noalias !747
  br label %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit

_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h77240b02d0b46790E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
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
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %_13.not.i111 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  %_13.not.i117 = icmp ugt i64 %min_good_run_len.sroa.0.0, 2
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %56, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %55, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit
  %desired_depth.sroa.0.0 = phi i8 [ %26, %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit ], [ 1, %bb6 ]
  %_3792 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3792, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %scan_idx.sroa.0.0
  %_7.not.i = icmp ult i64 %new_len, %min_good_run_len.sroa.0.0
  br i1 %_7.not.i, label %bb7.i41, label %bb1.i

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768), !noalias !760
  %2 = getelementptr inbounds nuw i8, ptr %_82, i64 32
  %_7.i.i.i66 = load ptr, ptr %2, align 8, !alias.scope !770, !noalias !771, !nonnull !6, !noundef !6
  %3 = getelementptr inbounds nuw i8, ptr %_82, i64 40
  %len1.i.i.i67 = load i64, ptr %3, align 8, !alias.scope !770, !noalias !771, !noundef !6
  %4 = getelementptr inbounds nuw i8, ptr %_82, i64 8
  %_14.i.i.i68 = load ptr, ptr %4, align 8, !alias.scope !772, !noalias !773, !nonnull !6, !noundef !6
  %5 = getelementptr inbounds nuw i8, ptr %_82, i64 16
  %6 = load i64, ptr %5, align 8, !alias.scope !772, !noalias !773, !noundef !6
  %spec.store.select.i.i.i.i69 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i67, i64 range(i64 0, -9223372036854775808) %6)
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i66, ptr nonnull readonly align 1 %_14.i.i.i68, i64 %spec.store.select.i.i.i.i69), !alias.scope !774, !noalias !778
  %8 = sext i32 %7 to i64
  %_15.i.i.i.i70 = icmp eq i32 %7, 0
  %diff.i.i.i.i71 = sub nsw i64 %len1.i.i.i67, %6
  %spec.select.i.i.i.i72 = select i1 %_15.i.i.i.i70, i64 %diff.i.i.i.i71, i64 %8
  %_0.i73 = icmp slt i64 %spec.select.i.i.i.i72, 0
  %_10.i.i88.not = icmp eq i64 %new_len, 2
  br i1 %_0.i73, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i88.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i88.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %9 = phi i64 [ %len1.i.i.i59, %bb15.i.i ], [ %len1.i.i.i67, %bb11.i.i.preheader ]
  %_14.i.i.i60 = phi ptr [ %_7.i.i.i58, %bb15.i.i ], [ %_7.i.i.i66, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i86 = phi i64 [ %15, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %10 = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %run_len.sroa.0.0.i.i86
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785), !noalias !760
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %_7.i.i.i58 = load ptr, ptr %11, align 8, !alias.scope !788, !noalias !789, !nonnull !6, !noundef !6
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %len1.i.i.i59 = load i64, ptr %12, align 8, !alias.scope !788, !noalias !789, !noundef !6
  %spec.store.select.i.i.i.i61 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i59, i64 range(i64 0, -9223372036854775808) %9)
  %13 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i58, ptr nonnull readonly align 1 %_14.i.i.i60, i64 %spec.store.select.i.i.i.i61), !alias.scope !793, !noalias !797
  %14 = sext i32 %13 to i64
  %_15.i.i.i.i62 = icmp eq i32 %13, 0
  %diff.i.i.i.i63 = sub nsw i64 %len1.i.i.i59, %9
  %spec.select.i.i.i.i64 = select i1 %_15.i.i.i.i62, i64 %diff.i.i.i.i63, i64 %14
  %_0.i65 = icmp slt i64 %spec.select.i.i.i.i64, 0
  br i1 %_0.i65, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %15 = add nuw i64 %run_len.sroa.0.0.i.i86, 1
  %exitcond.not = icmp eq i64 %15, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %16 = phi i64 [ %len1.i.i.i, %bb7.i.i ], [ %len1.i.i.i67, %bb4.i.i.preheader ]
  %_14.i.i.i = phi ptr [ %_7.i.i.i, %bb7.i.i ], [ %_7.i.i.i66, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i89 = phi i64 [ %22, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %17 = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %run_len.sroa.0.1.i.i89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804), !noalias !760
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %_7.i.i.i = load ptr, ptr %18, align 8, !alias.scope !807, !noalias !808, !nonnull !6, !noundef !6
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %len1.i.i.i = load i64, ptr %19, align 8, !alias.scope !807, !noalias !808, !noundef !6
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i, i64 range(i64 0, -9223372036854775808) %16)
  %20 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i, i64 %spec.store.select.i.i.i.i), !alias.scope !812, !noalias !816
  %21 = sext i32 %20 to i64
  %_15.i.i.i.i = icmp eq i32 %20, 0
  %diff.i.i.i.i = sub nsw i64 %len1.i.i.i, %16
  %spec.select.i.i.i.i = select i1 %_15.i.i.i.i, i64 %diff.i.i.i.i, i64 %21
  %_0.i = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %22 = add nuw i64 %run_len.sroa.0.1.i.i89, 1
  %exitcond102.not = icmp eq i64 %22, %new_len
  br i1 %exitcond102.not, label %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i89, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i86, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i117, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i111, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i
  br i1 %_0.i73, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit

bb5.i38:                                          ; preds = %bb6.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i7982 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread ], [ %_0.sroa.0.0.i.i112120124, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i7982, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822), !noalias !820
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114, %bb14.i
  %half_len2.i125 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114 ]
  %_0.sroa.0.0.i.i112120124 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h082bf3a2a560d49bE.exit.i.thread114 ]
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %_0.sroa.0.0.i.i112120124
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb6.i.i, %bb5.preheader.i.i
  %i.sroa.0.016.i.i = phi i64 [ %24, %bb6.i.i ], [ 0, %bb5.preheader.i.i ]
  %23 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_82, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr %"alloc::string::String", ptr %end.i, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824), !noalias !820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827), !noalias !820
  %_3.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %x.i.i, align 8, !alias.scope !829, !noalias !832
  %_4.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %y.i.i, align 8, !alias.scope !833, !noalias !834
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %x.i.i, align 8, !alias.scope !829, !noalias !832
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %y.i.i, align 8, !alias.scope !833, !noalias !834
  %_11.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 8
  %_13.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835), !noalias !820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837), !noalias !820
  %_3.sroa.0.0.copyload.i.1.i.i.i.i.i.i = load i64, ptr %_11.1.i.i.i.i.i.i, align 8, !alias.scope !839, !noalias !840
  %_4.sroa.0.0.copyload.i.1.i.i.i.i.i.i = load i64, ptr %_13.1.i.i.i.i.i.i, align 8, !alias.scope !841, !noalias !842
  store i64 %_4.sroa.0.0.copyload.i.1.i.i.i.i.i.i, ptr %_11.1.i.i.i.i.i.i, align 8, !alias.scope !839, !noalias !840
  store i64 %_3.sroa.0.0.copyload.i.1.i.i.i.i.i.i, ptr %_13.1.i.i.i.i.i.i, align 8, !alias.scope !841, !noalias !842
  %_11.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %x.i.i, i64 16
  %_13.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %y.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843), !noalias !820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845), !noalias !820
  %_3.sroa.0.0.copyload.i.2.i.i.i.i.i.i = load i64, ptr %_11.2.i.i.i.i.i.i, align 8, !alias.scope !847, !noalias !848
  %_4.sroa.0.0.copyload.i.2.i.i.i.i.i.i = load i64, ptr %_13.2.i.i.i.i.i.i, align 8, !alias.scope !849, !noalias !850
  store i64 %_4.sroa.0.0.copyload.i.2.i.i.i.i.i.i, ptr %_11.2.i.i.i.i.i.i, align 8, !alias.scope !847, !noalias !848
  store i64 %_3.sroa.0.0.copyload.i.2.i.i.i.i.i.i, ptr %_13.2.i.i.i.i.i.i, align 8, !alias.scope !849, !noalias !850
  %24 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %24, %half_len2.i125
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i

_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
  %_0.sroa.0.0.i40 = phi i64 [ %_26.i, %bb5.i38 ], [ %_34.i, %bb16.i43 ], [ %_36.i, %bb11.i42 ]
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %_0.sroa.0.0.i40, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %y = add i64 %_35, %factor
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %25 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %26 = trunc nuw nsw i64 %25 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit
  %stack_len.sroa.0.194 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ]
  %prev_run.sroa.0.193 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ]
  %count = add i64 %stack_len.sroa.0.194, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !6
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.193, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.194, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !6
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.193, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.193, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %27 = or i64 %left10, %prev_run.sroa.0.193
  %28 = and i64 %27, 1
  %29 = icmp ne i64 %28, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %29
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %30 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %31 = trunc nuw nsw i64 %30 to i32
  %log.i = shl nuw nsw i32 %31, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %_98, i64 noundef range(i64 0, 384307168202282326) %_50, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.193, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %32 = mul nuw nsw i64 %_0.sroa.0.0.i.i44, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scratch.0, ptr nonnull align 8 %spec.select.i, i64 %32, i1 false), !alias.scope !856
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %32
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_219.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_187.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %35, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %33 = getelementptr inbounds i8, ptr %_187.i.i, i64 -24
  %34 = getelementptr inbounds i8, ptr %_219.i.i, i64 -24
  %35 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %36 = getelementptr inbounds i8, ptr %_219.i.i, i64 -16
  %_7.i.i.i.i.i = load ptr, ptr %36, align 8, !alias.scope !872, !noalias !873, !nonnull !6, !noundef !6
  %37 = getelementptr inbounds i8, ptr %_219.i.i, i64 -8
  %len1.i.i.i.i.i = load i64, ptr %37, align 8, !alias.scope !872, !noalias !873, !noundef !6
  %38 = getelementptr inbounds i8, ptr %_187.i.i, i64 -16
  %_14.i.i.i.i.i = load ptr, ptr %38, align 8, !alias.scope !876, !noalias !877, !nonnull !6, !noundef !6
  %39 = getelementptr inbounds i8, ptr %_187.i.i, i64 -8
  %40 = load i64, ptr %39, align 8, !alias.scope !876, !noalias !877, !noundef !6
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %40)
  %41 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !878, !noalias !882
  %42 = sext i32 %41 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %41, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %40
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %42
  %_0.i.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %..i.i = select i1 %_0.i.i.i, ptr %34, ptr %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !856, !noalias !883
  %count.i.i = zext i1 %_0.i.i.i to i64
  %_18.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %33, i64 %count.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_21.i.i49 = getelementptr inbounds nuw %"alloc::string::String", ptr %34, i64 %spec.select.i.i.i.i.lobit.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i49, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i48, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i45, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %_98, %bb5.i45 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i22.i, %bb3.i.i ], [ %v_mid.i, %bb5.i45 ]
  %_2059.i.i = phi ptr [ %_20.i.i, %bb3.i.i ], [ %scratch.0, %bb5.i45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %43 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i.i, i64 8
  %_7.i.i.i.i12.i = load ptr, ptr %43, align 8, !alias.scope !899, !noalias !900, !nonnull !6, !noundef !6
  %44 = getelementptr inbounds nuw i8, ptr %right.sroa.0.010.i.i, i64 16
  %len1.i.i.i.i13.i = load i64, ptr %44, align 8, !alias.scope !899, !noalias !900, !noundef !6
  %45 = getelementptr inbounds nuw i8, ptr %_2059.i.i, i64 8
  %_14.i.i.i.i14.i = load ptr, ptr %45, align 8, !alias.scope !903, !noalias !904, !nonnull !6, !noundef !6
  %46 = getelementptr inbounds nuw i8, ptr %_2059.i.i, i64 16
  %47 = load i64, ptr %46, align 8, !alias.scope !903, !noalias !904, !noundef !6
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i13.i, i64 range(i64 0, -9223372036854775808) %47)
  %48 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i12.i, ptr nonnull readonly align 1 %_14.i.i.i.i14.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !905, !noalias !909
  %49 = sext i32 %48 to i64
  %_15.i.i.i.i.i16.i = icmp eq i32 %48, 0
  %diff.i.i.i.i.i17.i = sub nsw i64 %len1.i.i.i.i13.i, %47
  %spec.select.i.i.i.i.i18.i = select i1 %_15.i.i.i.i.i16.i, i64 %diff.i.i.i.i.i17.i, i64 %49
  %_0.i.i19.i = icmp sgt i64 %spec.select.i.i.i.i.i18.i, -1
  %src.sroa.0.0.i.i = select i1 %_0.i.i19.i, ptr %_2059.i.i, ptr %right.sroa.0.010.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2511.i.i, ptr noundef nonnull align 8 dereferenceable(24) %src.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !856, !noalias !910
  %count.i20.i = zext i1 %_0.i.i19.i to i64
  %_20.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_2059.i.i, i64 %count.i20.i
  %spec.select.i.i.i.i.lobit.i21.i = lshr i64 %spec.select.i.i.i.i.i18.i, 63
  %_23.i22.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.010.i.i, i64 %spec.select.i.i.i.i.lobit.i21.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 24
  %_7.i.i = icmp ne ptr %_20.i.i, %_22.i46
  %_10.i.i47 = icmp ne ptr %_23.i22.i, %v_end.i
  %or.cond.i23.i = select i1 %_7.i.i, i1 %_10.i.i47, i1 false
  br i1 %or.cond.i23.i, label %bb3.i.i, label %bb16.i48

bb16.i48:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i.i, %bb3.i.i ]
  %50 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %51 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %52 = sub nuw i64 %50, %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %merge_state.sroa.13.0.i, ptr align 8 %merge_state.sroa.0.0.i, i64 %52, i1 false), !alias.scope !856, !noalias !911
  br label %_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit

_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %53 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %54 = trunc nuw nsw i64 %53 to i32
  %log.i51 = shl nuw nsw i32 %54, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %_37.i, i64 noundef range(i64 0, 384307168202282326) %_51, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h23bed48e6891bee4E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %55 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %56 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i53 = or i64 %v.1, 1
  %57 = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %self.i53, i1 true)
  %58 = trunc nuw nsw i64 %57 to i32
  %log.i54 = shl nuw nsw i32 %58, 1
  %limit.i55 = xor i32 %log.i54, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %v.0, i64 noundef range(i64 0, 384307168202282326) %v.1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h037ef7737253a409E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !936, !noalias !937, !noundef !6
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !939, !noalias !940, !noundef !6
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !956, !noalias !957, !noundef !6
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !958, !noalias !959, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !975, !noalias !976, !noundef !6
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !977, !noalias !978, !noundef !6
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !994, !noalias !995, !noundef !6
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !996, !noalias !997, !noundef !6
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !6
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !6
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !6
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !1013, !noalias !1014, !noundef !6
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !1015, !noalias !1016, !noundef !6
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !919, !noalias !1017
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !919, !noalias !1017
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !919, !noalias !1017
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !919, !noalias !1017
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !1033, !noalias !1034, !noundef !6
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !1035, !noalias !1036, !noundef !6
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !1052, !noalias !1053, !noundef !6
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !1054, !noalias !1055, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !1071, !noalias !1072, !noundef !6
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !1073, !noalias !1074, !noundef !6
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !1090, !noalias !1091, !noundef !6
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !1092, !noalias !1093, !noundef !6
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !6
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !6
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !6
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !1109, !noalias !1110, !noundef !6
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !1111, !noalias !1112, !noundef !6
  store i32 %14, ptr %_28.i, align 4, !alias.scope !919, !noalias !1017
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !919, !noalias !1017
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !919, !noalias !1017
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !919, !noalias !1017
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !916, !noalias !1113
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !919, !noalias !1017
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !916, !noalias !1113
  store i32 %25, ptr %24, align 4, !alias.scope !919, !noalias !1017
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !916, !noalias !1113
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !919, !noalias !1017
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !1114, !noalias !1121, !noundef !6
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !919, !noalias !1017
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !1125, !noalias !1132, !noundef !6
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !919, !noalias !1136
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1155), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1157), !noalias !1152
  call void @llvm.experimental.noalias.scope.decl(metadata !1160), !noalias !1152
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !1162, !noalias !1163, !noundef !6
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !1164, !noalias !1165, !noundef !6
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !916, !noalias !1166
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  call void @llvm.experimental.noalias.scope.decl(metadata !1173), !noalias !1176
  call void @llvm.experimental.noalias.scope.decl(metadata !1179), !noalias !1176
  call void @llvm.experimental.noalias.scope.decl(metadata !1181), !noalias !1176
  call void @llvm.experimental.noalias.scope.decl(metadata !1184), !noalias !1176
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !1186, !noalias !1187, !noundef !6
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !1188, !noalias !1189, !noundef !6
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !916, !noalias !1190
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !1192, !noalias !1017
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !916, !noalias !1193
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !551

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1194

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !1195, !noalias !1196
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !916, !noalias !1113
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !919, !noalias !1017
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !1114, !noalias !1121, !noundef !6
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !919, !noalias !1017
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !1125, !noalias !1132, !noundef !6
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !919, !noalias !1136
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf37be3b880a53badE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206), !noalias !1209
  call void @llvm.experimental.noalias.scope.decl(metadata !1212), !noalias !1209
  call void @llvm.experimental.noalias.scope.decl(metadata !1214), !noalias !1209
  call void @llvm.experimental.noalias.scope.decl(metadata !1217), !noalias !1209
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !1219, !noalias !1222, !noundef !6
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1224, !noalias !1225, !noundef !6
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1226, !noalias !1233, !noundef !6
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h5baa579da18fc185E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !1237, !noalias !1244, !noundef !6
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !551

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !1253, !noalias !1260, !noundef !6
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !1270, !noalias !1271, !noundef !6
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !1251, !noalias !1272
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !1275, !noalias !1282, !noundef !6
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !1251, !noalias !1286
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !1289, !noalias !1296, !noundef !6
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !1251, !noalias !1300
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !1303, !noalias !1310, !noundef !6
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !1251, !noalias !1314
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !1317, !noalias !1324, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !1334, !noalias !1335, !noundef !6
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !1251, !noalias !1336
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !1248, !noalias !1339
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !1251, !noalias !1342
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !1343
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !1251, !noalias !1248
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !1251, !noalias !1248
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !1248, !noalias !1251
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !1248, !noalias !1251
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !1344

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
  %78 = load i32, ptr %77, align 4, !alias.scope !1251, !noalias !1248
  store i32 %78, ptr %75, align 4, !alias.scope !1248, !noalias !1251
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !1345

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit", !prof !1346

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #26, !noalias !1347
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h29f47d65ff463170E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !551

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !1356, !noalias !1365, !noundef !6
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !1378, !noalias !1379, !noundef !6
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !1354, !noalias !1380
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !1383, !noalias !1392, !noundef !6
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !1354, !noalias !1397
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !1400, !noalias !1409, !noundef !6
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !1354, !noalias !1414
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !1417, !noalias !1426, !noundef !6
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !1354, !noalias !1431
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1434, !noalias !1443, !noundef !6
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1456, !noalias !1457, !noundef !6
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !1354, !noalias !1458
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !1351, !noalias !1461
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !1354, !noalias !1464
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1465
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !1354, !noalias !1351
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !1354, !noalias !1351
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !1351, !noalias !1354
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !1351, !noalias !1354
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !1354, !noalias !1351
  store i32 %108, ptr %105, align 4, !alias.scope !1351, !noalias !1354
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E.exit, label %bb42.i66, !llvm.loop !1467

_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !1346

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #26
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef range(i64 0, 384307168202282326) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %pivot_copy = alloca [24 x i8], align 8
  %_8105111 = icmp samesign ult i64 %1, 33
  br i1 %_8105111, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph115 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph114 = phi i64 [ %_63.i59, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph113 = phi i32 [ %58, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph112 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %4 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph115, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph115, i64 16
  %6 = ptrtoint ptr %v.sroa.0.0.ph115 to i64
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph112, null
  %7 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph112, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %left_ancestor_pivot.sroa.0.0.ph112, i64 16
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit"
  %v.sroa.16.0107 = phi i64 [ %v.sroa.16.0.ph114, %bb5.lr.ph ], [ %state.sroa.11.1.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ]
  %limit.sroa.0.0106 = phi i32 [ %limit.sroa.0.0.ph113, %bb5.lr.ph ], [ %58, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0106, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit", %start
  %v.sroa.0.0.ph.lcssa104 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph115, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.11.1.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit" ], [ %_63.i59, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %_5.i = icmp samesign ult i64 %v.sroa.16.0.lcssa, 2
  br i1 %_5.i, label %bb22, label %bb2.i

bb2.i:                                            ; preds = %bb3
  %_8.i = add nuw nsw i64 %v.sroa.16.0.lcssa, 16
  %_6.i = icmp samesign ult i64 %scratch.1, %_8.i
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2.i
  %len_div_211.i = lshr i64 %v.sroa.16.0.lcssa, 1
  %_22.i = icmp samesign ugt i64 %v.sroa.16.0.lcssa, 7
  %_27.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa104, i64 %len_div_211.i
  %_28.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %len_div_211.i
  br i1 %_22.i, label %bb10.i, label %bb46.i

bb3.i:                                            ; preds = %bb2.i
  call void @llvm.trap()
  unreachable

bb10.i:                                           ; preds = %bb4.i
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef nonnull align 8 %v.sroa.0.0.ph.lcssa104, ptr noundef nonnull align 8 %scratch.0)
; call core::slice::sort::shared::smallsort::sort4_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3f04cd941118cad7E(ptr noundef %_27.i, ptr noundef %_28.i)
  br label %bb15.i

bb46.i:                                           ; preds = %bb4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scratch.0, ptr noundef nonnull align 8 dereferenceable(24) %v.sroa.0.0.ph.lcssa104, i64 24, i1 false), !alias.scope !1471, !noalias !1473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.i, ptr noundef nonnull align 8 dereferenceable(24) %_27.i, i64 24, i1 false), !alias.scope !1471, !noalias !1473
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i
  %presorted_len.sroa.0.0.i = phi i64 [ 4, %bb10.i ], [ 1, %bb46.i ]
  %9 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8025.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8025.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i, %bb15.i
  %_8025.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %9
  br i1 %_8025.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.127.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.129.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i ], [ %iter1.sroa.0.127.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.028.1.i = phi i64 [ %iter1.sroa.0.129.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_27.i, i64 %iter1.sroa.0.028.1.i
  %dst7.1.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_28.i, i64 %iter1.sroa.0.028.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7.1.i, ptr noundef nonnull align 8 dereferenceable(24) %_55.1.i, i64 24, i1 false), !alias.scope !1471, !noalias !1473
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %10 = getelementptr inbounds nuw i8, ptr %dst7.1.i, i64 8
  %_7.i.i.i.i13.1.i = load ptr, ptr %10, align 8, !alias.scope !1490, !noalias !1491, !nonnull !6, !noundef !6
  %11 = getelementptr inbounds nuw i8, ptr %dst7.1.i, i64 16
  %len1.i.i.i.i14.1.i = load i64, ptr %11, align 8, !alias.scope !1490, !noalias !1491, !noundef !6
  %12 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -16
  %_14.i.i.i.i15.1.i = load ptr, ptr %12, align 8, !alias.scope !1492, !noalias !1493, !nonnull !6, !noundef !6
  %13 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -8
  %14 = load i64, ptr %13, align 8, !alias.scope !1492, !noalias !1493, !noundef !6
  %spec.store.select.i.i.i.i.i16.1.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i14.1.i, i64 range(i64 0, -9223372036854775808) %14)
  %15 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i13.1.i, ptr nonnull readonly align 1 %_14.i.i.i.i15.1.i, i64 %spec.store.select.i.i.i.i.i16.1.i), !alias.scope !1494, !noalias !1498
  %16 = sext i32 %15 to i64
  %_15.i.i.i.i.i17.1.i = icmp eq i32 %15, 0
  %diff.i.i.i.i.i18.1.i = sub nsw i64 %len1.i.i.i.i14.1.i, %14
  %spec.select.i.i.i.i.i19.1.i = select i1 %_15.i.i.i.i.i17.1.i, i64 %diff.i.i.i.i.i18.1.i, i64 %16
  %_0.i.i20.1.i = icmp slt i64 %spec.select.i.i.i.i.i19.1.i, 0
  br i1 %_0.i.i20.1.i, label %bb2.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i

bb2.i.1.i:                                        ; preds = %bb24.1.i
  %value.sroa.0.0.copyload.i.1.i = load i64, ptr %dst7.1.i, align 8, !alias.scope !1499, !noalias !1500
  br label %bb4.i.1.i

bb4.i.1.i:                                        ; preds = %bb7.i.1.i, %bb2.i.1.i
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %dst7.1.i, %bb2.i.1.i ], [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ]
  %sift.sroa.0.0.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i.1.i, i64 24, i1 false), !alias.scope !1499, !noalias !1500
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %_28.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %17 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -40
  %_14.i.i.i3.i.1.i = load ptr, ptr %17, align 8, !alias.scope !1510, !noalias !1511, !nonnull !6, !noundef !6
  %18 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -32
  %19 = load i64, ptr %18, align 8, !alias.scope !1510, !noalias !1511, !noundef !6
  %spec.store.select.i.i.i.i4.i.1.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i14.1.i, i64 range(i64 0, -9223372036854775808) %19)
  %20 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i13.1.i, ptr nonnull readonly align 1 %_14.i.i.i3.i.1.i, i64 %spec.store.select.i.i.i.i4.i.1.i), !alias.scope !1515, !noalias !1519
  %21 = sext i32 %20 to i64
  %_15.i.i.i.i5.i.1.i = icmp eq i32 %20, 0
  %diff.i.i.i.i6.i.1.i = sub nsw i64 %len1.i.i.i.i14.1.i, %19
  %spec.select.i.i.i.i7.i.1.i = select i1 %_15.i.i.i.i5.i.1.i, i64 %diff.i.i.i.i6.i.1.i, i64 %21
  %_0.i8.i.1.i = icmp slt i64 %spec.select.i.i.i.i7.i.1.i, 0
  br i1 %_0.i8.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %_28.i, %bb4.i.1.i ]
  store i64 %value.sroa.0.0.copyload.i.1.i, ptr %sift.sroa.0.0.i.lcssa.1.i, align 8, !alias.scope !1499, !noalias !1520
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -16
  store ptr %_7.i.i.i.i13.1.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1499, !noalias !1520
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.1.i, i64 -8
  store i64 %len1.i.i.i.i14.1.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1499, !noalias !1520
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.129.1.i, %9
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.129.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %count1.i.i = add nsw i64 %v.sroa.16.0.lcssa, -1
  %22 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa104, i64 %count1.i.i
  %23 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %count1.i.i
  %24 = getelementptr i8, ptr %_28.i, i64 -24
  br label %bb15.i.i

bb24.preheader.i:                                 ; preds = %bb15.i
  %iter1.sroa.0.127.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.i

bb16.i.i:                                         ; preds = %bb15.i.i
  %25 = getelementptr i8, ptr %42, i64 24
  %26 = getelementptr i8, ptr %41, i64 24
  %_44.i.i = and i64 %v.sroa.16.0.lcssa, 1
  %_22.i.i = icmp eq i64 %_44.i.i, 0
  br i1 %_22.i.i, label %bb9.i.i, label %bb5.i.i

bb15.i.i:                                         ; preds = %bb15.i.i, %bb16.loopexit.1.i
  %dst.sroa.0.034.i.i = phi ptr [ %_16.i.i.i, %bb15.i.i ], [ %v.sroa.0.0.ph.lcssa104, %bb16.loopexit.1.i ]
  %iter.sroa.0.033.i.i = phi i64 [ %_39.i.i, %bb15.i.i ], [ 0, %bb16.loopexit.1.i ]
  %left.sroa.0.032.i.i = phi ptr [ %_14.i.i.i, %bb15.i.i ], [ %scratch.0, %bb16.loopexit.1.i ]
  %right.sroa.0.031.i.i = phi ptr [ %_12.i.i.i, %bb15.i.i ], [ %_28.i, %bb16.loopexit.1.i ]
  %left_rev.sroa.0.030.i.i = phi ptr [ %42, %bb15.i.i ], [ %24, %bb16.loopexit.1.i ]
  %right_rev.sroa.0.029.i.i = phi ptr [ %41, %bb15.i.i ], [ %23, %bb16.loopexit.1.i ]
  %dst_rev.sroa.0.028.i.i = phi ptr [ %43, %bb15.i.i ], [ %22, %bb16.loopexit.1.i ]
  %_39.i.i = add nuw nsw i64 %iter.sroa.0.033.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533), !noalias !1536
  call void @llvm.experimental.noalias.scope.decl(metadata !1539), !noalias !1536
  call void @llvm.experimental.noalias.scope.decl(metadata !1541), !noalias !1536
  call void @llvm.experimental.noalias.scope.decl(metadata !1544), !noalias !1536
  %27 = getelementptr inbounds nuw i8, ptr %right.sroa.0.031.i.i, i64 8
  %_7.i.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1546, !noalias !1547, !nonnull !6, !noundef !6
  %28 = getelementptr inbounds nuw i8, ptr %right.sroa.0.031.i.i, i64 16
  %len1.i.i.i.i.i = load i64, ptr %28, align 8, !alias.scope !1546, !noalias !1547, !noundef !6
  %29 = getelementptr inbounds nuw i8, ptr %left.sroa.0.032.i.i, i64 8
  %_14.i.i.i.i.i = load ptr, ptr %29, align 8, !alias.scope !1548, !noalias !1549, !nonnull !6, !noundef !6
  %30 = getelementptr inbounds nuw i8, ptr %left.sroa.0.032.i.i, i64 16
  %31 = load i64, ptr %30, align 8, !alias.scope !1548, !noalias !1549, !noundef !6
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %31)
  %32 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1550, !noalias !1554
  %33 = sext i32 %32 to i64
  %_15.i.i.i.i.i.i = icmp eq i32 %32, 0
  %diff.i.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i.i, %31
  %spec.select.i.i.i.i.i.i = select i1 %_15.i.i.i.i.i.i, i64 %diff.i.i.i.i.i.i, i64 %33
  %_0.i.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %..i17.i.i = select i1 %_0.i.i.i, ptr %left.sroa.0.032.i.i, ptr %right.sroa.0.031.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.sroa.0.034.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i.i, i64 24, i1 false), !alias.scope !1471, !noalias !1555
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %_12.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %right.sroa.0.031.i.i, i64 %spec.select.i.i.i.i.lobit.i.i
  %count2.i.i.i = zext i1 %_0.i.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %left.sroa.0.032.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.034.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562), !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1568), !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1570), !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1573), !noalias !1565
  %34 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.029.i.i, i64 8
  %_7.i.i.i19.i.i = load ptr, ptr %34, align 8, !alias.scope !1575, !noalias !1576, !nonnull !6, !noundef !6
  %35 = getelementptr inbounds nuw i8, ptr %right_rev.sroa.0.029.i.i, i64 16
  %len1.i.i.i20.i.i = load i64, ptr %35, align 8, !alias.scope !1575, !noalias !1576, !noundef !6
  %36 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.030.i.i, i64 8
  %_14.i.i.i21.i.i = load ptr, ptr %36, align 8, !alias.scope !1577, !noalias !1578, !nonnull !6, !noundef !6
  %37 = getelementptr inbounds nuw i8, ptr %left_rev.sroa.0.030.i.i, i64 16
  %38 = load i64, ptr %37, align 8, !alias.scope !1577, !noalias !1578, !noundef !6
  %spec.store.select.i.i.i.i22.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i20.i.i, i64 range(i64 0, -9223372036854775808) %38)
  %39 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i19.i.i, ptr nonnull readonly align 1 %_14.i.i.i21.i.i, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !1579, !noalias !1583
  %40 = sext i32 %39 to i64
  %_15.i.i.i.i23.i.i = icmp eq i32 %39, 0
  %diff.i.i.i.i24.i.i = sub nsw i64 %len1.i.i.i20.i.i, %38
  %spec.select.i.i.i.i25.i.i = select i1 %_15.i.i.i.i23.i.i, i64 %diff.i.i.i.i24.i.i, i64 %40
  %_0.i26.i.i = icmp sgt i64 %spec.select.i.i.i.i25.i.i, -1
  %..i.i.i = select i1 %_0.i26.i.i, ptr %right_rev.sroa.0.029.i.i, ptr %left_rev.sroa.0.030.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst_rev.sroa.0.028.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !1471, !noalias !1584
  %count.neg.i.i.i = sext i1 %_0.i26.i.i to i64
  %41 = getelementptr %"alloc::string::String", ptr %right_rev.sroa.0.029.i.i, i64 %count.neg.i.i.i
  %spec.select.i.i.i.i25.lobit.i.i = ashr i64 %spec.select.i.i.i.i25.i.i, 63
  %42 = getelementptr %"alloc::string::String", ptr %left_rev.sroa.0.030.i.i, i64 %spec.select.i.i.i.i25.lobit.i.i
  %43 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.028.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %_39.i.i, %len_div_211.i
  br i1 %exitcond.not.i.i, label %bb16.i.i, label %bb15.i.i

bb5.i.i:                                          ; preds = %bb16.i.i
  %left_nonempty.i.i = icmp ult ptr %_14.i.i.i, %25
  %left.sroa.0.0.right.sroa.0.0.i.i = select i1 %left_nonempty.i.i, ptr %_14.i.i.i, ptr %_12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_16.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %left.sroa.0.0.right.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !1471, !noalias !1473
  %count2.i.i = zext i1 %left_nonempty.i.i to i64
  %_26.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_14.i.i.i, i64 %count2.i.i
  %_30.i.i = xor i1 %left_nonempty.i.i, true
  %count3.i.i = zext i1 %_30.i.i to i64
  %_28.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_12.i.i.i, i64 %count3.i.i
  br label %bb9.i.i

bb9.i.i:                                          ; preds = %bb5.i.i, %bb16.i.i
  %right.sroa.0.1.i.i = phi ptr [ %_12.i.i.i, %bb16.i.i ], [ %_28.i.i, %bb5.i.i ]
  %left.sroa.0.1.i.i = phi ptr [ %_14.i.i.i, %bb16.i.i ], [ %_26.i.i, %bb5.i.i ]
  %_31.i.i = icmp ne ptr %left.sroa.0.1.i.i, %25
  %_32.i.i = icmp ne ptr %right.sroa.0.1.i.i, %26
  %or.cond.i.i = select i1 %_31.i.i, i1 true, i1 %_32.i.i
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !551

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #26
          to label %.noexc.i unwind label %cleanup2.i, !noalias !1500

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = mul nuw nsw i64 %v.sroa.16.0.lcssa, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph.lcssa104, ptr nonnull align 8 %scratch.0, i64 %45, i1 false), !alias.scope !1471, !noalias !1586
  resume { ptr, i32 } %44

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.129.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i ], [ %iter1.sroa.0.127.i, %bb24.preheader.i ]
  %iter1.sroa.0.028.i = phi i64 [ %iter1.sroa.0.129.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph.lcssa104, i64 %iter1.sroa.0.028.i
  %dst7.i = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %iter1.sroa.0.028.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst7.i, ptr noundef nonnull align 8 dereferenceable(24) %_55.i, i64 24, i1 false), !alias.scope !1471, !noalias !1473
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %46 = getelementptr inbounds nuw i8, ptr %dst7.i, i64 8
  %_7.i.i.i.i13.i = load ptr, ptr %46, align 8, !alias.scope !1603, !noalias !1604, !nonnull !6, !noundef !6
  %47 = getelementptr inbounds nuw i8, ptr %dst7.i, i64 16
  %len1.i.i.i.i14.i = load i64, ptr %47, align 8, !alias.scope !1603, !noalias !1604, !noundef !6
  %48 = getelementptr inbounds i8, ptr %dst7.i, i64 -16
  %_14.i.i.i.i15.i = load ptr, ptr %48, align 8, !alias.scope !1605, !noalias !1606, !nonnull !6, !noundef !6
  %49 = getelementptr inbounds i8, ptr %dst7.i, i64 -8
  %50 = load i64, ptr %49, align 8, !alias.scope !1605, !noalias !1606, !noundef !6
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i14.i, i64 range(i64 0, -9223372036854775808) %50)
  %51 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i13.i, ptr nonnull readonly align 1 %_14.i.i.i.i15.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !1494, !noalias !1607
  %52 = sext i32 %51 to i64
  %_15.i.i.i.i.i17.i = icmp eq i32 %51, 0
  %diff.i.i.i.i.i18.i = sub nsw i64 %len1.i.i.i.i14.i, %50
  %spec.select.i.i.i.i.i19.i = select i1 %_15.i.i.i.i.i17.i, i64 %diff.i.i.i.i.i18.i, i64 %52
  %_0.i.i20.i = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %_0.i.i20.i, label %bb2.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i

bb2.i.i:                                          ; preds = %bb24.i
  %value.sroa.0.0.copyload.i.i = load i64, ptr %dst7.i, align 8, !alias.scope !1499, !noalias !1500
  br label %bb4.i.i

bb4.i.i:                                          ; preds = %bb7.i.i, %bb2.i.i
  %gap_guard.sroa.5.0.i.i = phi ptr [ %dst7.i, %bb2.i.i ], [ %sift.sroa.0.0.i.i, %bb7.i.i ]
  %sift.sroa.0.0.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gap_guard.sroa.5.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %sift.sroa.0.0.i.i, i64 24, i1 false), !alias.scope !1499, !noalias !1500
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %53 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -40
  %_14.i.i.i3.i.i = load ptr, ptr %53, align 8, !alias.scope !1614, !noalias !1511, !nonnull !6, !noundef !6
  %54 = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -32
  %55 = load i64, ptr %54, align 8, !alias.scope !1614, !noalias !1511, !noundef !6
  %spec.store.select.i.i.i.i4.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i14.i, i64 range(i64 0, -9223372036854775808) %55)
  %56 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i13.i, ptr nonnull readonly align 1 %_14.i.i.i3.i.i, i64 %spec.store.select.i.i.i.i4.i.i), !alias.scope !1515, !noalias !1615
  %57 = sext i32 %56 to i64
  %_15.i.i.i.i5.i.i = icmp eq i32 %56, 0
  %diff.i.i.i.i6.i.i = sub nsw i64 %len1.i.i.i.i14.i, %55
  %spec.select.i.i.i.i7.i.i = select i1 %_15.i.i.i.i5.i.i, i64 %diff.i.i.i.i6.i.i, i64 %57
  %_0.i8.i.i = icmp slt i64 %spec.select.i.i.i.i7.i.i, 0
  br i1 %_0.i8.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i64 %value.sroa.0.0.copyload.i.i, ptr %sift.sroa.0.0.i.lcssa.i, align 8, !alias.scope !1499, !noalias !1520
  %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -16
  store ptr %_7.i.i.i.i13.i, ptr %tmp.sroa.4.0.sift.sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1499, !noalias !1520
  %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %gap_guard.sroa.5.0.i.i, i64 -8
  store i64 %len1.i.i.i.i14.i, ptr %tmp.sroa.5.0.sift.sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1499, !noalias !1520
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8519b9f909450705E.exit.i: ; preds = %bb10.i.i, %bb24.i
  %_80.i = icmp ult i64 %iter1.sroa.0.129.i, %len_div_211.i
  %_84.i = zext i1 %_80.i to i64
  %iter1.sroa.0.1.i = add nuw i64 %iter1.sroa.0.129.i, %_84.i
  br i1 %_80.i, label %bb24.i, label %bb16.loopexit.i

bb7:                                              ; preds = %bb5
  %58 = add i32 %limit.sroa.0.0106, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %len_div_84.i = lshr i64 %v.sroa.16.0107, 3
  %b.idx.i = mul nuw nsw i64 %len_div_84.i, 96
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph115, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 168
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph115, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.0107, 64
  br i1 %_12.i, label %bb3.i23, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfb09d8ea71499d5cE(ptr noundef nonnull readonly align 8 %v.sroa.0.0.ph115, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624), !noalias !1627
  call void @llvm.experimental.noalias.scope.decl(metadata !1630), !noalias !1627
  call void @llvm.experimental.noalias.scope.decl(metadata !1632), !noalias !1627
  call void @llvm.experimental.noalias.scope.decl(metadata !1635), !noalias !1627
  %_7.i.i.i.i = load ptr, ptr %4, align 8, !alias.scope !1637, !noalias !1638, !nonnull !6, !noundef !6
  %len1.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !1637, !noalias !1638, !noundef !6
  %59 = getelementptr inbounds nuw i8, ptr %b.i, i64 8
  %_14.i.i.i.i = load ptr, ptr %59, align 8, !alias.scope !1640, !noalias !1641, !nonnull !6, !noundef !6
  %60 = getelementptr inbounds nuw i8, ptr %b.i, i64 16
  %61 = load i64, ptr %60, align 8, !alias.scope !1640, !noalias !1641, !noundef !6
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %61)
  %62 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1642, !noalias !1646
  %63 = sext i32 %62 to i64
  %_15.i.i.i.i.i = icmp eq i32 %62, 0
  %diff.i.i.i.i.i = sub nsw i64 %len1.i.i.i.i, %61
  %spec.select.i.i.i.i.i = select i1 %_15.i.i.i.i.i, i64 %diff.i.i.i.i.i, i64 %63
  call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %64 = getelementptr inbounds nuw i8, ptr %c.i, i64 8
  %_14.i.i.i7.i = load ptr, ptr %64, align 8, !alias.scope !1656, !noalias !1657, !nonnull !6, !noundef !6
  %65 = getelementptr inbounds nuw i8, ptr %c.i, i64 16
  %66 = load i64, ptr %65, align 8, !alias.scope !1656, !noalias !1657, !noundef !6
  %spec.store.select.i.i.i.i8.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %66)
  %67 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i7.i, i64 %spec.store.select.i.i.i.i8.i), !alias.scope !1661, !noalias !1665
  %68 = sext i32 %67 to i64
  %_15.i.i.i.i9.i = icmp eq i32 %67, 0
  %diff.i.i.i.i10.i = sub nsw i64 %len1.i.i.i.i, %66
  %spec.select.i.i.i.i11.i = select i1 %_15.i.i.i.i9.i, i64 %diff.i.i.i.i10.i, i64 %68
  %69 = xor i64 %spec.select.i.i.i.i11.i, %spec.select.i.i.i.i.i
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %bb10, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb3.i23
  %spec.store.select.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %61, i64 range(i64 0, -9223372036854775808) %66)
  %71 = call i32 @memcmp(ptr nonnull readonly align 1 %_14.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i7.i, i64 %spec.store.select.i.i.i.i16.i), !alias.scope !1666, !noalias !1670
  %72 = sext i32 %71 to i64
  %_15.i.i.i.i17.i = icmp eq i32 %71, 0
  %diff.i.i.i.i18.i = sub nsw i64 %61, %66
  %spec.select.i.i.i.i19.i = select i1 %_15.i.i.i.i17.i, i64 %diff.i.i.i.i18.i, i64 %72
  %73 = xor i64 %spec.select.i.i.i.i19.i, %spec.select.i.i.i.i.i
  %_12.i.i = icmp slt i64 %73, 0
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4f489c3c231eeE(ptr noalias noundef nonnull align 8 %v.sroa.0.0.ph115, i64 noundef %v.sroa.16.0107, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb10:                                             ; preds = %bb3.i.i, %bb3.i23, %bb5.i
  %_0.sroa.0.0.i.sink.i = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph115, %bb3.i23 ], [ %c.b.i.i, %bb3.i.i ]
  %74 = ptrtoint ptr %_0.sroa.0.0.i.sink.i to i64
  %75 = sub nuw i64 %74, %6
  %index.sroa.0.0.i = udiv exact i64 %75, 24
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.0107
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph115, i64 %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %pivot_copy, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %_7.i.i.i = load ptr, ptr %7, align 8, !alias.scope !1695, !noalias !1696, !nonnull !6, !noundef !6
  %len1.i.i.i = load i64, ptr %8, align 8, !alias.scope !1695, !noalias !1696, !noundef !6
  %76 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %_14.i.i.i24 = load ptr, ptr %76, align 8, !alias.scope !1696, !noalias !1695, !nonnull !6, !noundef !6
  %77 = getelementptr inbounds nuw i8, ptr %src, i64 16
  %78 = load i64, ptr %77, align 8, !alias.scope !1696, !noalias !1695, !noundef !6
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i, i64 range(i64 0, -9223372036854775808) %78)
  %79 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i, ptr nonnull readonly align 1 %_14.i.i.i24, i64 %spec.store.select.i.i.i.i), !alias.scope !1697, !noalias !1701
  %80 = sext i32 %79 to i64
  %_15.i.i.i.i = icmp eq i32 %79, 0
  %diff.i.i.i.i = sub nsw i64 %len1.i.i.i, %78
  %spec.select.i.i.i.i = select i1 %_15.i.i.i.i, i64 %diff.i.i.i.i, i64 %80
  %_0.i = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0107
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !551

bb33.i:                                           ; preds = %bb14
  %_86.i = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.0107
  %81 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i26

bb31.i:                                           ; preds = %bb14
  call void @llvm.trap()
  unreachable

bb3.i26:                                          ; preds = %bb23.i, %bb33.i
  %state.sroa.11.0.i = phi i64 [ 0, %bb33.i ], [ %state.sroa.11.1.lcssa.i, %bb23.i ]
  %state.sroa.5.0.i = phi ptr [ %v.sroa.0.0.ph115, %bb33.i ], [ %_9.i27.i, %bb23.i ]
  %state.sroa.19.0.i = phi ptr [ %_86.i, %bb33.i ], [ %90, %bb23.i ]
  %pivot_pos.sroa.0.0.i = phi i64 [ %index.sroa.0.0.i, %bb33.i ], [ %v.sroa.16.0107, %bb23.i ]
  %loop_end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %pivot_pos.sroa.0.0.i
  %_4733.i = icmp ult ptr %state.sroa.5.0.i, %loop_end.i
  br i1 %_4733.i, label %bb18.i, label %bb21.i

bb21.i:                                           ; preds = %bb18.i, %bb3.i26
  %state.sroa.11.1.lcssa.i = phi i64 [ %state.sroa.11.0.i, %bb3.i26 ], [ %89, %bb18.i ]
  %state.sroa.5.1.lcssa.i = phi ptr [ %state.sroa.5.0.i, %bb3.i26 ], [ %_9.i.i, %bb18.i ]
  %state.sroa.19.1.lcssa.i = phi ptr [ %state.sroa.19.0.i, %bb3.i26 ], [ %88, %bb18.i ]
  %_55.i27 = icmp eq i64 %pivot_pos.sroa.0.0.i, %v.sroa.16.0107
  br i1 %_55.i27, label %bb22.i, label %bb23.i

bb18.i:                                           ; preds = %bb3.i26, %bb18.i
  %state.sroa.19.136.i = phi ptr [ %88, %bb18.i ], [ %state.sroa.19.0.i, %bb3.i26 ]
  %state.sroa.5.135.i = phi ptr [ %_9.i.i, %bb18.i ], [ %state.sroa.5.0.i, %bb3.i26 ]
  %state.sroa.11.134.i = phi i64 [ %89, %bb18.i ], [ %state.sroa.11.0.i, %bb3.i26 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %83 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 8
  %_7.i.i.i.i28 = load ptr, ptr %83, align 8, !alias.scope !1722, !noalias !1723, !nonnull !6, !noundef !6
  %84 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 16
  %len1.i.i.i.i29 = load i64, ptr %84, align 8, !alias.scope !1722, !noalias !1723, !noundef !6
  %_14.i.i.i.i30 = load ptr, ptr %81, align 8, !alias.scope !1724, !noalias !1725, !nonnull !6, !noundef !6
  %85 = load i64, ptr %82, align 8, !alias.scope !1724, !noalias !1725, !noundef !6
  %spec.store.select.i.i.i.i.i31 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i29, i64 range(i64 0, -9223372036854775808) %85)
  %86 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i28, ptr nonnull readonly align 1 %_14.i.i.i.i30, i64 %spec.store.select.i.i.i.i.i31), !alias.scope !1726, !noalias !1730
  %87 = sext i32 %86 to i64
  %_15.i.i.i.i.i32 = icmp eq i32 %86, 0
  %diff.i.i.i.i.i33 = sub nsw i64 %len1.i.i.i.i29, %85
  %spec.select.i.i.i.i.i34 = select i1 %_15.i.i.i.i.i32, i64 %diff.i.i.i.i.i33, i64 %87
  %_0.i.i = icmp slt i64 %spec.select.i.i.i.i.i34, 0
  %88 = getelementptr inbounds i8, ptr %state.sroa.19.136.i, i64 -24
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i, ptr %scratch.0, ptr %88
  %dst.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.11.134.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.135.i, i64 24, i1 false), !alias.scope !1731, !noalias !1732
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i34, 63
  %89 = add i64 %spec.select.i.i.i.i.lobit.i, %state.sroa.11.134.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i, i64 24
  %_47.i = icmp ult ptr %_9.i.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i, i64 -24
  %dst.i25.i = getelementptr inbounds nuw %"alloc::string::String", ptr %90, i64 %state.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !1731, !noalias !1735
  %_9.i27.i = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i, i64 24
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %91 = mul i64 %state.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph115, ptr nonnull align 8 %scratch.0, i64 %91, i1 false), !alias.scope !1731
  %_63.i = sub i64 %v.sroa.16.0107, %state.sroa.11.1.lcssa.i
  %_9739.not.i = icmp eq i64 %v.sroa.16.0107, %state.sroa.11.1.lcssa.i
  br i1 %_9739.not.i, label %bb16, label %bb42.lr.ph.i

bb42.lr.ph.i:                                     ; preds = %bb22.i
  %92 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %state.sroa.11.1.lcssa.i
  %.neg = add i64 %state.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %_63.i, 1
  %93 = icmp eq i64 %v.sroa.16.0107, %.neg
  br i1 %93, label %bb16.loopexit.unr-lcssa, label %bb42.lr.ph.i.new

bb42.lr.ph.i.new:                                 ; preds = %bb42.lr.ph.i
  %unroll_iter = and i64 %_63.i, -2
  %invariant.gep = getelementptr i8, ptr %92, i64 24
  br label %bb42.i

bb42.i:                                           ; preds = %bb42.i, %bb42.lr.ph.i.new
  %iter.sroa.0.040.i = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %97, %bb42.i ]
  %niter = phi i64 [ 0, %bb42.lr.ph.i.new ], [ %niter.next.1, %bb42.i ]
  %94 = getelementptr %"alloc::string::String", ptr %92, i64 %iter.sroa.0.040.i
  %95 = xor i64 %iter.sroa.0.040.i, -1
  %96 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(24) %96, i64 24, i1 false), !alias.scope !1731
  %97 = add nuw i64 %iter.sroa.0.040.i, 2
  %gep = getelementptr %"alloc::string::String", ptr %invariant.gep, i64 %iter.sroa.0.040.i
  %98 = xor i64 %iter.sroa.0.040.i, -2
  %99 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep, ptr noundef nonnull align 8 dereferenceable(24) %99, i64 24, i1 false), !alias.scope !1731
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb16.loopexit.unr-lcssa, label %bb42.i

bb16.loopexit.unr-lcssa:                          ; preds = %bb42.i, %bb42.lr.ph.i
  %iter.sroa.0.040.i.unr = phi i64 [ 0, %bb42.lr.ph.i ], [ %97, %bb42.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb16, label %bb42.i.epil

bb42.i.epil:                                      ; preds = %bb16.loopexit.unr-lcssa
  %100 = getelementptr %"alloc::string::String", ptr %92, i64 %iter.sroa.0.040.i.unr
  %101 = xor i64 %iter.sroa.0.040.i.unr, -1
  %102 = getelementptr %"alloc::string::String", ptr %_86.i, i64 %101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull align 8 dereferenceable(24) %102, i64 24, i1 false), !alias.scope !1731
  br label %bb16

bb16:                                             ; preds = %bb42.i.epil, %bb16.loopexit.unr-lcssa, %bb22.i
  %103 = icmp eq i64 %state.sroa.11.1.lcssa.i, 0
  br i1 %103, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.11.1.lcssa.i, %v.sroa.16.0107
  br i1 %_6.not.i, label %bb3.i35, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit", !prof !1346

bb3.i35:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #26, !noalias !1738
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E.exit": ; preds = %bb19
  %104 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %state.sroa.11.1.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6aa3617edc74af8eE(ptr noalias noundef nonnull align 8 %104, i64 noundef %_63.i, ptr noalias noundef nonnull align 8 %scratch.0, i64 noundef %scratch.1, i32 noundef %58, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.11.1.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %_8.i36.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0107
  br i1 %_8.i36.not, label %bb31.i39, label %bb33.i40, !prof !551

bb33.i40:                                         ; preds = %bb17
  %_86.i42 = getelementptr %"alloc::string::String", ptr %scratch.0, i64 %v.sroa.16.0107
  %105 = getelementptr inbounds nuw i8, ptr %src, i64 8
  %106 = getelementptr inbounds nuw i8, ptr %src, i64 16
  br label %bb3.i43

bb31.i39:                                         ; preds = %bb17
  call void @llvm.trap()
  unreachable

bb3.i43:                                          ; preds = %bb23.i55, %bb33.i40
  %state.sroa.11.0.i44 = phi i64 [ 0, %bb33.i40 ], [ %115, %bb23.i55 ]
  %state.sroa.5.0.i45 = phi ptr [ %v.sroa.0.0.ph115, %bb33.i40 ], [ %_9.i27.i57, %bb23.i55 ]
  %state.sroa.19.0.i46 = phi ptr [ %_86.i42, %bb33.i40 ], [ %114, %bb23.i55 ]
  %pivot_pos.sroa.0.0.i47 = phi i64 [ %index.sroa.0.0.i, %bb33.i40 ], [ %v.sroa.16.0107, %bb23.i55 ]
  %loop_end.i48 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %pivot_pos.sroa.0.0.i47
  %_4733.i49 = icmp ult ptr %state.sroa.5.0.i45, %loop_end.i48
  br i1 %_4733.i49, label %bb18.i65, label %bb21.i50

bb21.i50:                                         ; preds = %bb18.i65, %bb3.i43
  %state.sroa.11.1.lcssa.i51 = phi i64 [ %state.sroa.11.0.i44, %bb3.i43 ], [ %113, %bb18.i65 ]
  %state.sroa.5.1.lcssa.i52 = phi ptr [ %state.sroa.5.0.i45, %bb3.i43 ], [ %_9.i.i79, %bb18.i65 ]
  %state.sroa.19.1.lcssa.i53 = phi ptr [ %state.sroa.19.0.i46, %bb3.i43 ], [ %112, %bb18.i65 ]
  %_55.i54 = icmp eq i64 %pivot_pos.sroa.0.0.i47, %v.sroa.16.0107
  br i1 %_55.i54, label %bb22.i58, label %bb23.i55

bb18.i65:                                         ; preds = %bb3.i43, %bb18.i65
  %state.sroa.19.136.i66 = phi ptr [ %112, %bb18.i65 ], [ %state.sroa.19.0.i46, %bb3.i43 ]
  %state.sroa.5.135.i67 = phi ptr [ %_9.i.i79, %bb18.i65 ], [ %state.sroa.5.0.i45, %bb3.i43 ]
  %state.sroa.11.134.i68 = phi i64 [ %113, %bb18.i65 ], [ %state.sroa.11.0.i44, %bb3.i43 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %_7.i.i.i.i.i69 = load ptr, ptr %105, align 8, !alias.scope !1767, !noalias !1768, !nonnull !6, !noundef !6
  %len1.i.i.i.i.i70 = load i64, ptr %106, align 8, !alias.scope !1767, !noalias !1768, !noundef !6
  %107 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i67, i64 8
  %_14.i.i.i.i.i71 = load ptr, ptr %107, align 8, !alias.scope !1769, !noalias !1770, !nonnull !6, !noundef !6
  %108 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i67, i64 16
  %109 = load i64, ptr %108, align 8, !alias.scope !1769, !noalias !1770, !noundef !6
  %spec.store.select.i.i.i.i.i.i72 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %len1.i.i.i.i.i70, i64 range(i64 0, -9223372036854775808) %109)
  %110 = call i32 @memcmp(ptr nonnull readonly align 1 %_7.i.i.i.i.i69, ptr nonnull readonly align 1 %_14.i.i.i.i.i71, i64 %spec.store.select.i.i.i.i.i.i72), !alias.scope !1771, !noalias !1775
  %111 = sext i32 %110 to i64
  %_15.i.i.i.i.i.i73 = icmp eq i32 %110, 0
  %diff.i.i.i.i.i.i74 = sub nsw i64 %len1.i.i.i.i.i70, %109
  %spec.select.i.i.i.i.i.i75 = select i1 %_15.i.i.i.i.i.i73, i64 %diff.i.i.i.i.i.i74, i64 %111
  %_0.i.i.i76 = icmp sgt i64 %spec.select.i.i.i.i.i.i75, -1
  %112 = getelementptr inbounds i8, ptr %state.sroa.19.136.i66, i64 -24
  %dst_base.sroa.0.0.i.i77 = select i1 %_0.i.i.i76, ptr %scratch.0, ptr %112
  %dst.i.i78 = getelementptr inbounds nuw %"alloc::string::String", ptr %dst_base.sroa.0.0.i.i77, i64 %state.sroa.11.134.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i.i78, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.135.i67, i64 24, i1 false), !alias.scope !1776, !noalias !1777
  %_8.i.i = zext i1 %_0.i.i.i76 to i64
  %113 = add i64 %state.sroa.11.134.i68, %_8.i.i
  %_9.i.i79 = getelementptr inbounds nuw i8, ptr %state.sroa.5.135.i67, i64 24
  %_47.i80 = icmp ult ptr %_9.i.i79, %loop_end.i48
  br i1 %_47.i80, label %bb18.i65, label %bb21.i50

bb23.i55:                                         ; preds = %bb21.i50
  %114 = getelementptr inbounds i8, ptr %state.sroa.19.1.lcssa.i53, i64 -24
  %dst.i25.i56 = getelementptr inbounds nuw %"alloc::string::String", ptr %scratch.0, i64 %state.sroa.11.1.lcssa.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dst.i25.i56, ptr noundef nonnull align 8 dereferenceable(24) %state.sroa.5.1.lcssa.i52, i64 24, i1 false), !alias.scope !1776, !noalias !1780
  %115 = add i64 %state.sroa.11.1.lcssa.i51, 1
  %_9.i27.i57 = getelementptr inbounds nuw i8, ptr %state.sroa.5.1.lcssa.i52, i64 24
  br label %bb3.i43

bb22.i58:                                         ; preds = %bb21.i50
  %116 = mul i64 %state.sroa.11.1.lcssa.i51, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %v.sroa.0.0.ph115, ptr nonnull align 8 %scratch.0, i64 %116, i1 false), !alias.scope !1776
  %_63.i59 = sub i64 %v.sroa.16.0107, %state.sroa.11.1.lcssa.i51
  %_9739.not.i60 = icmp eq i64 %v.sroa.16.0107, %state.sroa.11.1.lcssa.i51
  br i1 %_9739.not.i60, label %bb3.thread, label %bb42.lr.ph.i61

bb42.lr.ph.i61:                                   ; preds = %bb22.i58
  %117 = getelementptr %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %state.sroa.11.1.lcssa.i51
  %.neg271 = add i64 %state.sroa.11.1.lcssa.i51, 1
  %xtraiter267 = and i64 %_63.i59, 1
  %118 = icmp eq i64 %v.sroa.16.0107, %.neg271
  br i1 %118, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.unr-lcssa, label %bb42.lr.ph.i61.new

bb42.lr.ph.i61.new:                               ; preds = %bb42.lr.ph.i61
  %unroll_iter269 = and i64 %_63.i59, -2
  %invariant.gep308 = getelementptr i8, ptr %117, i64 24
  br label %bb42.i62

bb42.i62:                                         ; preds = %bb42.i62, %bb42.lr.ph.i61.new
  %iter.sroa.0.040.i63 = phi i64 [ 0, %bb42.lr.ph.i61.new ], [ %122, %bb42.i62 ]
  %niter270 = phi i64 [ 0, %bb42.lr.ph.i61.new ], [ %niter270.next.1, %bb42.i62 ]
  %119 = getelementptr %"alloc::string::String", ptr %117, i64 %iter.sroa.0.040.i63
  %120 = xor i64 %iter.sroa.0.040.i63, -1
  %121 = getelementptr %"alloc::string::String", ptr %_86.i42, i64 %120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %119, ptr noundef nonnull align 8 dereferenceable(24) %121, i64 24, i1 false), !alias.scope !1776
  %122 = add nuw i64 %iter.sroa.0.040.i63, 2
  %gep309 = getelementptr %"alloc::string::String", ptr %invariant.gep308, i64 %iter.sroa.0.040.i63
  %123 = xor i64 %iter.sroa.0.040.i63, -2
  %124 = getelementptr %"alloc::string::String", ptr %_86.i42, i64 %123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %gep309, ptr noundef nonnull align 8 dereferenceable(24) %124, i64 24, i1 false), !alias.scope !1776
  %niter270.next.1 = add i64 %niter270, 2
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.unr-lcssa, label %bb42.i62

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.unr-lcssa: ; preds = %bb42.i62, %bb42.lr.ph.i61
  %iter.sroa.0.040.i63.unr = phi i64 [ 0, %bb42.lr.ph.i61 ], [ %122, %bb42.i62 ]
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit, label %bb42.i62.epil

bb42.i62.epil:                                    ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.unr-lcssa
  %125 = getelementptr %"alloc::string::String", ptr %117, i64 %iter.sroa.0.040.i63.unr
  %126 = xor i64 %iter.sroa.0.040.i63.unr, -1
  %127 = getelementptr %"alloc::string::String", ptr %_86.i42, i64 %126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %125, ptr noundef nonnull align 8 dereferenceable(24) %127, i64 24, i1 false), !alias.scope !1776
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit.unr-lcssa, %bb42.i62.epil
  %_47 = icmp ugt i64 %state.sroa.11.1.lcssa.i51, %v.sroa.16.0107
  br i1 %_47, label %bb27, label %bb28, !prof !1346

bb3.thread:                                       ; preds = %bb22.i58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit
  %_54 = getelementptr inbounds nuw %"alloc::string::String", ptr %v.sroa.0.0.ph115, i64 %state.sroa.11.1.lcssa.i51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pivot_copy)
  %_8105 = icmp ult i64 %_63.i59, 33
  br i1 %_8105, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.11.1.lcssa.i51, i64 noundef %v.sroa.16.0107, i64 noundef %v.sroa.16.0107, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #26
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h916314a8f318b50aE"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #7 {
start:
  %_26.i = icmp slt i64 %cap, 0
  br i1 %_26.i, label %bb8, label %bb11, !prof !598

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !25, !alias.scope !1783, !noalias !1786, !noundef !6
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit": ; preds = %bb11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %0, align 8, !alias.scope !1783, !noalias !1786, !nonnull !6, !noundef !6
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
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h564a5fae3007f3f8E"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %slf, i64 noundef %len, i64 noundef %additional) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %self3.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %_26.0.i = add i64 %additional, %len
  %_26.1.i = icmp ult i64 %_26.0.i, %len
  br i1 %_26.1.i, label %bb2, label %bb9.i

bb9.i:                                            ; preds = %start
  %self5.i = load i64, ptr %slf, align 8, !range !25, !alias.scope !1788, !noundef !6
  %v16.i = shl nuw i64 %self5.i, 1
  %_0.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0.i, i64 %v16.i)
  %_0.sroa.0.0.i15.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i.i, i64 8)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3.i), !noalias !1788
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h916314a8f318b50aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %slf, i64 noundef %_0.sroa.0.0.i15.i)
  %_37.i = load i64, ptr %self3.i, align 8, !range !1791, !noalias !1788, !noundef !6
  %0 = trunc nuw i64 %_37.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  br i1 %0, label %bb18.i, label %bb3

bb18.i:                                           ; preds = %bb9.i
  %e.0.i = load i64, ptr %1, align 8, !range !1792, !noalias !1788, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %self3.i, i64 16
  %e.1.i = load i64, ptr %2, align 8, !noalias !1788
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1788
  br label %bb2

bb2:                                              ; preds = %bb18.i, %start
  %_0.sroa.5.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb18.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb18.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.5.0.i.ph) #27
  unreachable

bb3:                                              ; preds = %bb9.i
  %v.0.i = load ptr, ptr %1, align 8, !noalias !1788, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1788
  %3 = getelementptr inbounds nuw i8, ptr %slf, i64 8
  store ptr %v.0.i, ptr %3, align 8, !alias.scope !1788
  %4 = icmp sgt i64 %_0.sroa.0.0.i15.i, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15.i, ptr %slf, align 8, !alias.scope !1788
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
define void @f_gold(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_18 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_18)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_21.0.i.i.i = mul i64 %n, 24
  %or.cond.i.i.i = icmp samesign ugt i64 %n, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb3.i, label %bb17.i.i, !prof !598

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %bb14, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1793
; call __rustc::__rust_alloc
  %1 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, 9) 8) #25, !noalias !1793
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i, label %bb14

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #27
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb3.i
  unreachable

bb12:                                             ; preds = %bb11, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb11 ], [ %4, %cleanup ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !25, !alias.scope !1811, !noalias !1814, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb13, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb12
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1811, !noalias !1814, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1816
  br label %bb13

cleanup:                                          ; preds = %bb3.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb12

bb14:                                             ; preds = %bb17.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_4.sroa.4.0.i = phi i64 [ 0, %bb17.i.i ], [ %n, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_4.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i ], [ %1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i" ]
  %_7.i = icmp samesign ule i64 %n, %_4.sroa.4.0.i
  tail call void @llvm.assume(i1 %_7.i)
  store i64 %_4.sroa.4.0.i, ptr %arr, align 8
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  store ptr %_4.sroa.10.0.i, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %str)
          to label %bb1 unwind label %cleanup1

bb11:                                             ; preds = %bb2.i.i.i3.i.i13, %cleanup2.body, %cleanup.i, %bb2.i.i.i3.i.i.i, %cleanup1
  %.pn = phi { ptr, i32 } [ %7, %cleanup1 ], [ %10, %bb2.i.i.i3.i.i.i ], [ %10, %cleanup.i ], [ %eh.lpad-body33, %cleanup2.body ], [ %eh.lpad-body33, %bb2.i.i.i3.i.i13 ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"(ptr noalias noundef align 8 dereferenceable(24) %arr) #28
  br label %bb12

cleanup1:                                         ; preds = %bb14
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb1:                                              ; preds = %bb14
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_24 = load ptr, ptr %8, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %9 = getelementptr inbounds nuw i8, ptr %_5, i64 16
  %len.i.i.i.i = load i64, ptr %9, align 8, !alias.scope !1828, !noalias !1831, !noundef !6
  %self2.i.i.i.i = load i64, ptr %_5, align 8, !range !25, !alias.scope !1828, !noalias !1831, !noundef !6
  %_9.i.i.i.i = sub i64 %self2.i.i.i.i, %len.i.i.i.i
  %_7.i.i.i.i = icmp ugt i64 %n, %_9.i.i.i.i
  br i1 %_7.i.i.i.i, label %bb1.i.i.i.i, label %bb2, !prof !1346

bb1.i.i.i.i:                                      ; preds = %bb1
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h564a5fae3007f3f8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_5, i64 noundef %len.i.i.i.i, i64 noundef %n)
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb1.i.i.i.i
  %len.pre.i.i.i = load i64, ptr %9, align 8, !alias.scope !1833, !noalias !1831
  %concat.sroa.0.0.copyload.pre = load i64, ptr %_5, align 8, !alias.scope !1834, !noalias !1835
  br label %bb2

cleanup.i:                                        ; preds = %bb1.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %_5, align 8, !range !25, !alias.scope !1851, !noalias !1854, !noundef !6
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb11, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %cleanup.i
  %11 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %11, align 8, !alias.scope !1851, !noalias !1854, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1856
  br label %bb11

bb2:                                              ; preds = %.noexc.i, %bb1
  %concat.sroa.0.0.copyload = phi i64 [ %self2.i.i.i.i, %bb1 ], [ %concat.sroa.0.0.copyload.pre, %.noexc.i ]
  %len.i.i.i = phi i64 [ %len.i.i.i.i, %bb1 ], [ %len.pre.i.i.i, %.noexc.i ]
  %_9.i.i.i = icmp sgt i64 %len.i.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i.i)
  %12 = getelementptr inbounds nuw i8, ptr %_5, i64 8
  %_10.i.i.i = load ptr, ptr %12, align 8, !alias.scope !1833, !noalias !1831, !nonnull !6, !noundef !6
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %_24, i64 %n, i1 false), !noalias !1857
  %13 = add nuw i64 %len.i.i.i, %n
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %_2645.not = icmp eq i64 %n, 0
  br i1 %_2645.not, label %bb2.bb16_crit_edge, label %bb15.i.peel

bb2.bb16_crit_edge:                               ; preds = %bb2
  %_40.pre = load i64, ptr %6, align 8
  br label %bb16

bb15.i.peel:                                      ; preds = %bb2
  %_19.not.i.peel.not = icmp eq i64 %len.i.i.i, 0
  br i1 %_19.not.i.peel.not, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel", label %bb19.i.peel

bb19.i.peel:                                      ; preds = %bb15.i.peel
  %14 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %n
  %self2.i.peel = load i8, ptr %14, align 1, !alias.scope !1858, !noundef !6
  %15 = icmp sgt i8 %self2.i.peel, -65
  br i1 %15, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel", label %bb18

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel": ; preds = %bb15.i.peel, %bb19.i.peel
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1861
; call __rustc::__rust_alloc
  %16 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %n, i64 noundef range(i64 1, 9) 1) #25, !noalias !1861
  %17 = icmp eq ptr %16, null
  br i1 %17, label %bb3.i.i, label %bb20.peel

bb20.peel:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %_10.i.i.i, i64 range(i64 0, -9223372036854775808) %n, i1 false), !noalias !1867
  %len.i.peel = load i64, ptr %6, align 8, !alias.scope !1868, !noalias !1871, !noundef !6
  %self1.i.peel = load i64, ptr %arr, align 8, !range !25, !alias.scope !1868, !noalias !1871, !noundef !6
  %_4.i.peel = icmp eq i64 %len.i.peel, %self1.i.peel
  br i1 %_4.i.peel, label %bb1.i.peel, label %bb21.peel

bb1.i.peel:                                       ; preds = %bb20.peel
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21.peel unwind label %bb5.i.loopexit.split-lp, !noalias !1871

bb21.peel:                                        ; preds = %bb1.i.peel, %bb20.peel
  %_15.i.peel = load ptr, ptr %5, align 8, !alias.scope !1868, !noalias !1871, !nonnull !6, !noundef !6
  %end.i.peel = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i.peel, i64 %len.i.peel
  store i64 %n, ptr %end.i.peel, align 8
  %_11.sroa.5.0.end.i.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %end.i.peel, i64 8
  store ptr %16, ptr %_11.sroa.5.0.end.i.sroa_idx.peel, align 8
  %_11.sroa.6.0.end.i.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %end.i.peel, i64 16
  store i64 %n, ptr %_11.sroa.6.0.end.i.sroa_idx.peel, align 8
  %18 = add i64 %len.i.peel, 1
  store i64 %18, ptr %6, align 8, !alias.scope !1868, !noalias !1871
  %exitcond.peel.not = icmp eq i64 %n, 1
  br i1 %exitcond.peel.not, label %bb16, label %bb9.i

bb16:                                             ; preds = %bb21, %bb21.peel, %bb2.bb16_crit_edge
  %_40 = phi i64 [ %_40.pre, %bb2.bb16_crit_edge ], [ %18, %bb21.peel ], [ %31, %bb21 ]
  %_41 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1873
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1876
  %b.i.i = icmp samesign ult i64 %_40, 2
  br i1 %b.i.i, label %bb5, label %bb7.i.i, !prof !1880

bb7.i.i:                                          ; preds = %bb16
  %b1.i.i = icmp samesign ult i64 %_40, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i8, !prof !1880

bb10.i.i8:                                        ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb21a17c31e7d60c9E(ptr noalias noundef nonnull align 8 %_41, i64 noundef range(i64 0, 384307168202282326) %_40, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
          to label %bb5 unwind label %cleanup2

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd9613328857599b6E(ptr noalias noundef nonnull align 8 %_41, i64 noundef range(i64 0, 384307168202282326) %_40)
  br label %bb5

bb9.i:                                            ; preds = %bb21.peel, %bb21
  %iter.sroa.0.046 = phi i64 [ %19, %bb21 ], [ 1, %bb21.peel ]
  %19 = add nuw nsw i64 %iter.sroa.0.046, 1
  %_14 = add nuw i64 %iter.sroa.0.046, %n
  %20 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.046
  %self.i = load i8, ptr %20, align 1, !alias.scope !1858, !noundef !6
  %21 = icmp sgt i8 %self.i, -65
  br i1 %21, label %bb15.i, label %bb18

bb15.i:                                           ; preds = %bb9.i
  %_19.not.i = icmp samesign ult i64 %iter.sroa.0.046, %len.i.i.i
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %22 = icmp eq i64 %iter.sroa.0.046, %len.i.i.i
  br i1 %22, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", label %bb18

bb19.i:                                           ; preds = %bb15.i
  %23 = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %_14
  %self2.i = load i8, ptr %23, align 1, !alias.scope !1858, !noundef !6
  %24 = icmp sgt i8 %self2.i, -65
  br i1 %24, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", label %bb18

cleanup2:                                         ; preds = %bb3.i.i, %bb10.i.i8, %bb18, %bb22, %panic
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2.body

cleanup2.body:                                    ; preds = %bb5.i, %cleanup2
  %eh.lpad-body33 = phi { ptr, i32 } [ %25, %cleanup2 ], [ %lpad.phi, %bb5.i ]
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %concat.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i12, label %bb11, label %bb2.i.i.i3.i.i13

bb2.i.i.i3.i.i13:                                 ; preds = %cleanup2.body
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %concat.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1881
  br label %bb11

bb5:                                              ; preds = %bb9.i.i, %bb16, %bb10.i.i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1873
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_47 = load i64, ptr %6, align 8, !noundef !6
  %_50.not = icmp eq i64 %_47, 0
  br i1 %_50.not, label %panic, label %bb22

bb22:                                             ; preds = %bb5
  %_48 = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
; invoke <alloc::string::String as core::clone::Clone>::clone
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %_48)
          to label %bb6 unwind label %cleanup2

panic:                                            ; preds = %bb5
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_731aaa3b1d0e174abb75650cf8233bd4) #27
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %bb18, %panic
  unreachable

bb6:                                              ; preds = %bb22
  %_6.i.i.i.i2.i.i17 = icmp eq i64 %concat.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i17, label %bb7, label %bb2.i.i.i3.i.i18

bb2.i.i.i3.i.i18:                                 ; preds = %bb6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10.i.i.i, i64 noundef %concat.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1892
  br label %bb7

bb7:                                              ; preds = %bb2.i.i.i3.i.i18, %bb6
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %_5.i.i = load ptr, ptr %5, align 8, !alias.scope !1909, !nonnull !6, !noundef !6
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !1909, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb7, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i" ], [ 0, %bb7 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %self1.i.i.i.i1.i.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !25, !alias.scope !1928, !noalias !1931, !noundef !6
  %_6.i.i.i.i2.i.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i.i

bb2.i.i.i3.i.i.i.i.i:                             ; preds = %bb5.i.i.i
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1928, !noalias !1931, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1933
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i, label %bb5.i.i.i

bb4.i:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit.i.i.i", %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !1943, !noalias !1946, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb8, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i
  %28 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1948
  br label %bb8

bb8:                                              ; preds = %bb2.i.i.i3.i, %bb4.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %self1.i.i.i.i1.i.i21 = load i64, ptr %str, align 8, !range !25, !alias.scope !1964, !noalias !1967, !noundef !6
  %_6.i.i.i.i2.i.i22 = icmp eq i64 %self1.i.i.i.i1.i.i21, 0
  br i1 %_6.i.i.i.i2.i.i22, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25", label %bb2.i.i.i3.i.i23

bb2.i.i.i3.i.i23:                                 ; preds = %bb8
  %self3.i.i.i.i4.i.i24 = load ptr, ptr %8, align 8, !alias.scope !1964, !noalias !1967, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i24, i64 noundef %self1.i.i.i.i1.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1969
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE.exit25": ; preds = %bb8, %bb2.i.i.i3.i.i23
  ret void

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb16.i, %bb19.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1861
; call __rustc::__rust_alloc
  %29 = call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %n, i64 noundef range(i64 1, 9) 1) #25, !noalias !1861
  %30 = icmp eq ptr %29, null
  br i1 %30, label %bb3.i.i, label %bb20

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i.peel"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %n) #27
          to label %.noexc26 unwind label %cleanup2

.noexc26:                                         ; preds = %bb3.i.i
  unreachable

bb18:                                             ; preds = %bb19.i, %bb9.i, %bb16.i, %bb19.i.peel
  %iter.sroa.0.046.lcssa = phi i64 [ 0, %bb19.i.peel ], [ %iter.sroa.0.046, %bb16.i ], [ %iter.sroa.0.046, %bb9.i ], [ %iter.sroa.0.046, %bb19.i ]
  %_14.lcssa = phi i64 [ %n, %bb19.i.peel ], [ %_14, %bb16.i ], [ %_14, %bb9.i ], [ %_14, %bb19.i ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_10.i.i.i, i64 noundef %13, i64 noundef %iter.sroa.0.046.lcssa, i64 noundef %_14.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca685516a45432c9ecfc325128ac9b4c) #27
          to label %unreachable unwind label %cleanup2

bb20:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i"
  %data.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %iter.sroa.0.046
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull readonly align 1 %data.i, i64 range(i64 0, -9223372036854775808) %n, i1 false), !noalias !1867
  %len.i = load i64, ptr %6, align 8, !alias.scope !1868, !noalias !1871, !noundef !6
  %self1.i = load i64, ptr %arr, align 8, !range !25, !alias.scope !1868, !noalias !1871, !noundef !6
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb21

bb1.i:                                            ; preds = %bb20
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6449fc15ab6cfeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr)
          to label %bb21 unwind label %bb5.i.loopexit, !noalias !1871

bb5.i.loopexit:                                   ; preds = %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i

bb5.i.loopexit.split-lp:                          ; preds = %bb1.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i.loopexit.split-lp, %bb5.i.loopexit
  %.lcssa53 = phi ptr [ %29, %bb5.i.loopexit ], [ %16, %bb5.i.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %bb5.i.loopexit ], [ %lpad.loopexit.split-lp, %bb5.i.loopexit.split-lp ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa53, i64 noundef %n, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1970
  br label %cleanup2.body

bb21:                                             ; preds = %bb1.i, %bb20
  %_15.i = load ptr, ptr %5, align 8, !alias.scope !1868, !noalias !1871, !nonnull !6, !noundef !6
  %end.i = getelementptr inbounds nuw %"alloc::string::String", ptr %_15.i, i64 %len.i
  store i64 %n, ptr %end.i, align 8
  %_11.sroa.5.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 8
  store ptr %29, ptr %_11.sroa.5.0.end.i.sroa_idx, align 8
  %_11.sroa.6.0.end.i.sroa_idx = getelementptr inbounds nuw i8, ptr %end.i, i64 16
  store i64 %n, ptr %_11.sroa.6.0.end.i.sroa_idx, align 8
  %31 = add i64 %len.i, 1
  store i64 %31, ptr %6, align 8, !alias.scope !1868, !noalias !1871
  %exitcond.not = icmp eq i64 %19, %n
  br i1 %exitcond.not, label %bb16, label %bb9.i, !llvm.loop !1981

bb13:                                             ; preds = %bb2.i.i.i3.i.i, %bb12
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1983
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1989
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit", label %bb7.i.i, !prof !1880

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1880

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd81a1f6a05f6cdf3E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !2006, !noalias !2009, !noundef !6
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !2010, !noalias !2011, !noundef !6
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !2012, !noalias !2013
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !2014, !noalias !2021, !noundef !6
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !2012, !noalias !2025
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2006, !noalias !2009, !noundef !6
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !2010, !noalias !2011, !noundef !6
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !2012, !noalias !2013
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !2014, !noalias !2021, !noundef !6
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !2012, !noalias !2025
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !2042, !noalias !2043, !noundef !6
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !2044, !noalias !2045, !noundef !6
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !2012, !noalias !2013
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !2014, !noalias !2021, !noundef !6
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !2012, !noalias !2025
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h33c1c8880b2fd19dE.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1983
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #11

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

; <alloc::string::String as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h3201baa471bff1abE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

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
!4 = distinct !{!4, !5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E: %self"}
!5 = distinct !{!5, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE: %_1.0"}
!9 = distinct !{!9, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!12 = distinct !{!12, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!15 = distinct !{!15, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!18 = distinct !{!18, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!21 = distinct !{!21, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!24 = distinct !{!24, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!25 = !{i64 0, i64 -9223372036854775808}
!26 = !{!27, !23, !20, !17, !14, !11, !8}
!27 = distinct !{!27, !28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!28 = distinct !{!28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!29 = !{!30, !4}
!30 = distinct !{!30, !28, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!31 = !{!23, !20, !17, !14, !11, !8, !4}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E: %_1"}
!34 = distinct !{!34, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE: %self"}
!37 = distinct !{!37, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!40 = distinct !{!40, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!41 = !{!42, !39, !36, !33}
!42 = distinct !{!42, !43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!43 = distinct !{!43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!46 = !{!39, !36, !33}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!49 = distinct !{!49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!54 = distinct !{!54, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E: %c"}
!57 = distinct !{!57, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E"}
!58 = !{!59}
!59 = distinct !{!59, !54, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
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
!72 = distinct !{!72, !73, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!73 = distinct !{!73, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!74 = distinct !{!74, !75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!75 = distinct !{!75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !71, !"cmpfunc: %a"}
!78 = distinct !{!78, !73, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!79 = distinct !{!79, !75, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!82 = distinct !{!82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!87 = distinct !{!87, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE: %c"}
!90 = distinct !{!90, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE"}
!91 = !{!92}
!92 = distinct !{!92, !87, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!95 = distinct !{!95, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!98 = !{!94, !86, !81}
!99 = !{!97, !92, !84, !89}
!100 = !{!97, !92, !84}
!101 = !{!94, !86, !81, !89}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!104 = distinct !{!104, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!105 = distinct !{!105, !104, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!106 = !{!94, !97, !86, !92, !81, !84, !89}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!109 = distinct !{!109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!112 = distinct !{!112, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!115 = distinct !{!115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!116 = !{!114, !111, !108}
!117 = !{!118, !119, !120}
!118 = distinct !{!118, !115, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!119 = distinct !{!119, !112, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!120 = distinct !{!120, !109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!123 = distinct !{!123, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!124 = distinct !{!124, !123, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!125 = !{!118, !114, !119, !111, !120, !108}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!128 = distinct !{!128, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!129 = distinct !{!129, !128, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!130 = !{!131, !133, !134, !136, !137, !139}
!131 = distinct !{!131, !132, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!132 = distinct !{!132, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!133 = distinct !{!133, !132, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!134 = distinct !{!134, !135, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!135 = distinct !{!135, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!136 = distinct !{!136, !135, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!137 = distinct !{!137, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!138 = distinct !{!138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!139 = distinct !{!139, !138, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!142 = distinct !{!142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!147 = distinct !{!147, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!152 = distinct !{!152, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!155 = !{!151, !146, !141}
!156 = !{!154, !149, !144}
!157 = !{!158, !160}
!158 = distinct !{!158, !159, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!159 = distinct !{!159, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!160 = distinct !{!160, !159, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!161 = !{!151, !154, !146, !149, !141, !144}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!164 = distinct !{!164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!169 = distinct !{!169, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!174 = distinct !{!174, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!177 = !{!173, !168, !163}
!178 = !{!176, !171, !166}
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!181 = distinct !{!181, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!182 = distinct !{!182, !181, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!183 = !{!173, !176, !168, !171, !163, !166}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!186 = distinct !{!186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!191 = distinct !{!191, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!196 = distinct !{!196, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!199 = !{!195, !190, !185}
!200 = !{!198, !193, !188}
!201 = !{!202, !204}
!202 = distinct !{!202, !203, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!203 = distinct !{!203, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!204 = distinct !{!204, !203, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!205 = !{!195, !198, !190, !193, !185, !188}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!208 = distinct !{!208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!213 = distinct !{!213, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!218 = distinct !{!218, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!221 = !{!217, !212, !207}
!222 = !{!220, !215, !210}
!223 = !{!224, !226}
!224 = distinct !{!224, !225, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!225 = distinct !{!225, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!226 = distinct !{!226, !225, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!227 = !{!217, !220, !212, !215, !207, !210}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!230 = distinct !{!230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!235 = distinct !{!235, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!240 = distinct !{!240, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!243 = !{!239, !234, !229}
!244 = !{!242, !237, !232}
!245 = !{!246, !248}
!246 = distinct !{!246, !247, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!247 = distinct !{!247, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!248 = distinct !{!248, !247, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!249 = !{!239, !242, !234, !237, !229, !232}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!252 = distinct !{!252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!253 = !{!254}
!254 = distinct !{!254, !252, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!257 = distinct !{!257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"cmpfunc: %a"}
!262 = distinct !{!262, !"cmpfunc"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"cmpfunc: %b"}
!265 = !{!261, !256, !251}
!266 = !{!264, !259, !254}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!269 = distinct !{!269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!274 = distinct !{!274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"cmpfunc: %a"}
!279 = distinct !{!279, !"cmpfunc"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"cmpfunc: %b"}
!282 = !{!278, !273, !268}
!283 = !{!281, !276, !271}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!286 = distinct !{!286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!291 = distinct !{!291, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"cmpfunc: %a"}
!296 = distinct !{!296, !"cmpfunc"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"cmpfunc: %b"}
!299 = !{!295, !290, !285}
!300 = !{!298, !293, !288}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!303 = distinct !{!303, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!308 = distinct !{!308, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"cmpfunc: %a"}
!313 = distinct !{!313, !"cmpfunc"}
!314 = !{!315}
!315 = distinct !{!315, !313, !"cmpfunc: %b"}
!316 = !{!312, !307, !302}
!317 = !{!315, !310, !305}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!320 = distinct !{!320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!325 = distinct !{!325, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"cmpfunc: %a"}
!330 = distinct !{!330, !"cmpfunc"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"cmpfunc: %b"}
!333 = !{!329, !324, !319}
!334 = !{!332, !327, !322}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!337 = distinct !{!337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!342 = distinct !{!342, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"cmpfunc: %a"}
!347 = distinct !{!347, !"cmpfunc"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"cmpfunc: %b"}
!350 = !{!346, !341, !336}
!351 = !{!349, !344, !339}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!354 = distinct !{!354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!355 = !{!356}
!356 = distinct !{!356, !354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!359 = distinct !{!359, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"cmpfunc: %a"}
!364 = distinct !{!364, !"cmpfunc"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"cmpfunc: %b"}
!367 = !{!363, !358, !353}
!368 = !{!366, !361, !356}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!371 = distinct !{!371, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!376 = distinct !{!376, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"cmpfunc: %a"}
!381 = distinct !{!381, !"cmpfunc"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"cmpfunc: %b"}
!384 = !{!380, !375, !370}
!385 = !{!383, !378, !373}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!388 = distinct !{!388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!393 = distinct !{!393, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"cmpfunc: %a"}
!398 = distinct !{!398, !"cmpfunc"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"cmpfunc: %b"}
!401 = !{!397, !392, !387}
!402 = !{!400, !395, !390}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!405 = distinct !{!405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!410 = distinct !{!410, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"cmpfunc: %a"}
!415 = distinct !{!415, !"cmpfunc"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"cmpfunc: %b"}
!418 = !{!414, !409, !404}
!419 = !{!417, !412, !407}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E: %v.0"}
!422 = distinct !{!422, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E"}
!423 = !{!424, !426, !428, !421}
!424 = distinct !{!424, !425, !"cmpfunc: %b"}
!425 = distinct !{!425, !"cmpfunc"}
!426 = distinct !{!426, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!427 = distinct !{!427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!428 = distinct !{!428, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!429 = distinct !{!429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!430 = !{!431, !432, !433, !434}
!431 = distinct !{!431, !425, !"cmpfunc: %a"}
!432 = distinct !{!432, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!433 = distinct !{!433, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!434 = distinct !{!434, !435, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %_0"}
!435 = distinct !{!435, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE"}
!436 = !{!434, !437, !421}
!437 = distinct !{!437, !435, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %is_less"}
!438 = !{!439, !441, !443, !421}
!439 = distinct !{!439, !440, !"cmpfunc: %b"}
!440 = distinct !{!440, !"cmpfunc"}
!441 = distinct !{!441, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!442 = distinct !{!442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!443 = distinct !{!443, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!444 = distinct !{!444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!445 = !{!446, !447, !448, !449}
!446 = distinct !{!446, !440, !"cmpfunc: %a"}
!447 = distinct !{!447, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!448 = distinct !{!448, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!449 = distinct !{!449, !450, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %_0"}
!450 = distinct !{!450, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE"}
!451 = !{!449, !452, !421}
!452 = distinct !{!452, !450, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %is_less"}
!453 = !{!454}
!454 = distinct !{!454, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It1"}
!455 = !{!456}
!456 = distinct !{!456, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It1"}
!457 = !{!458}
!458 = distinct !{!458, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It1"}
!459 = !{!434}
!460 = !{!461}
!461 = distinct !{!461, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It1"}
!462 = !{!463}
!463 = distinct !{!463, !425, !"cmpfunc: %a:It1"}
!464 = !{!465}
!465 = distinct !{!465, !425, !"cmpfunc: %b:It1"}
!466 = !{!463, !458, !454, !421}
!467 = !{!465, !461, !456, !434}
!468 = !{!465, !461, !456, !421}
!469 = !{!463, !458, !454, !434}
!470 = !{!471}
!471 = distinct !{!471, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It1"}
!472 = !{!473}
!473 = distinct !{!473, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It1"}
!474 = !{!475}
!475 = distinct !{!475, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It1"}
!476 = !{!449}
!477 = !{!478}
!478 = distinct !{!478, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It1"}
!479 = !{!480}
!480 = distinct !{!480, !440, !"cmpfunc: %a:It1"}
!481 = !{!482}
!482 = distinct !{!482, !440, !"cmpfunc: %b:It1"}
!483 = !{!480, !475, !471, !421}
!484 = !{!482, !478, !473, !449}
!485 = !{!482, !478, !473, !421}
!486 = !{!480, !475, !471, !449}
!487 = !{!488}
!488 = distinct !{!488, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It2"}
!489 = !{!490}
!490 = distinct !{!490, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It2"}
!491 = !{!492}
!492 = distinct !{!492, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It2"}
!493 = !{!494}
!494 = distinct !{!494, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It2"}
!495 = !{!496}
!496 = distinct !{!496, !425, !"cmpfunc: %a:It2"}
!497 = !{!498}
!498 = distinct !{!498, !425, !"cmpfunc: %b:It2"}
!499 = !{!496, !492, !488, !421}
!500 = !{!498, !494, !490, !434}
!501 = !{!498, !494, !490, !421}
!502 = !{!496, !492, !488, !434}
!503 = !{!504}
!504 = distinct !{!504, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It2"}
!505 = !{!506}
!506 = distinct !{!506, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It2"}
!507 = !{!508}
!508 = distinct !{!508, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It2"}
!509 = !{!510}
!510 = distinct !{!510, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It2"}
!511 = !{!512}
!512 = distinct !{!512, !440, !"cmpfunc: %a:It2"}
!513 = !{!514}
!514 = distinct !{!514, !440, !"cmpfunc: %b:It2"}
!515 = !{!512, !508, !504, !421}
!516 = !{!514, !510, !506, !449}
!517 = !{!514, !510, !506, !421}
!518 = !{!512, !508, !504, !449}
!519 = !{!520}
!520 = distinct !{!520, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It3"}
!521 = !{!522}
!522 = distinct !{!522, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It3"}
!523 = !{!524}
!524 = distinct !{!524, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It3"}
!525 = !{!526}
!526 = distinct !{!526, !427, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It3"}
!527 = !{!528}
!528 = distinct !{!528, !425, !"cmpfunc: %a:It3"}
!529 = !{!530}
!530 = distinct !{!530, !425, !"cmpfunc: %b:It3"}
!531 = !{!528, !524, !520, !421}
!532 = !{!530, !526, !522, !434}
!533 = !{!530, !526, !522, !421}
!534 = !{!528, !524, !520, !434}
!535 = !{!536}
!536 = distinct !{!536, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It3"}
!537 = !{!538}
!538 = distinct !{!538, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It3"}
!539 = !{!540}
!540 = distinct !{!540, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It3"}
!541 = !{!542}
!542 = distinct !{!542, !442, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It3"}
!543 = !{!544}
!544 = distinct !{!544, !440, !"cmpfunc: %a:It3"}
!545 = !{!546}
!546 = distinct !{!546, !440, !"cmpfunc: %b:It3"}
!547 = !{!544, !540, !536, !421}
!548 = !{!546, !542, !538, !449}
!549 = !{!546, !542, !538, !421}
!550 = !{!544, !540, !536, !449}
!551 = !{!"branch_weights", i32 4001, i32 4000000}
!552 = !{!553}
!553 = distinct !{!553, !554, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!554 = distinct !{!554, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!555 = !{!556}
!556 = distinct !{!556, !554, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!559 = distinct !{!559, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!560 = !{!561}
!561 = distinct !{!561, !559, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!562 = !{!563}
!563 = distinct !{!563, !564, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!564 = distinct !{!564, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!565 = !{!566}
!566 = distinct !{!566, !564, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!567 = !{!563, !558, !553}
!568 = !{!566, !561, !556}
!569 = !{!570, !572}
!570 = distinct !{!570, !571, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!571 = distinct !{!571, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!572 = distinct !{!572, !571, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!573 = !{!563, !566, !558, !561, !553, !556}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!576 = distinct !{!576, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!579 = distinct !{!579, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!582 = distinct !{!582, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!583 = !{!581, !578, !575}
!584 = !{!585, !586, !587}
!585 = distinct !{!585, !582, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!586 = distinct !{!586, !579, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!587 = distinct !{!587, !576, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!588 = !{!589, !591}
!589 = distinct !{!589, !590, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!590 = distinct !{!590, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!591 = distinct !{!591, !590, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!592 = !{!585, !581, !586, !578, !587, !575}
!593 = !{!594, !596}
!594 = distinct !{!594, !595, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!595 = distinct !{!595, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!596 = distinct !{!596, !597, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!597 = distinct !{!597, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!598 = !{!"branch_weights", i32 2002, i32 2000}
!599 = !{!600, !602}
!600 = distinct !{!600, !601, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE: %_0"}
!601 = distinct !{!601, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE"}
!602 = distinct !{!602, !603, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E: %_0"}
!603 = distinct !{!603, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h45070663ee9cbcc5E"}
!604 = !{!605, !607, !609, !611}
!605 = distinct !{!605, !606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!606 = distinct !{!606, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!607 = distinct !{!607, !608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE: %self"}
!608 = distinct !{!608, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE"}
!609 = distinct !{!609, !610, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E: %_1"}
!610 = distinct !{!610, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E"}
!611 = distinct !{!611, !612, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE: %_1"}
!612 = distinct !{!612, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"}
!613 = !{!614, !616}
!614 = distinct !{!614, !615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE: %_0"}
!615 = distinct !{!615, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE"}
!616 = distinct !{!616, !617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E: %_0"}
!617 = distinct !{!617, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h59648a08aba84018E"}
!618 = !{!619, !621, !623, !625}
!619 = distinct !{!619, !620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!620 = distinct !{!620, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!621 = distinct !{!621, !622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc62b5a7e3fba7318E: %self"}
!622 = distinct !{!622, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc62b5a7e3fba7318E"}
!623 = distinct !{!623, !624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8c1858db5061257bE: %_1"}
!624 = distinct !{!624, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8c1858db5061257bE"}
!625 = distinct !{!625, !626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE: %_1"}
!626 = distinct !{!626, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE"}
!627 = !{!628, !630, !632, !634}
!628 = distinct !{!628, !629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!629 = distinct !{!629, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!630 = distinct !{!630, !631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc62b5a7e3fba7318E: %self"}
!631 = distinct !{!631, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc62b5a7e3fba7318E"}
!632 = distinct !{!632, !633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8c1858db5061257bE: %_1"}
!633 = distinct !{!633, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8c1858db5061257bE"}
!634 = distinct !{!634, !635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE: %_1"}
!635 = distinct !{!635, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h26411d5b89b0f0caE"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!638 = distinct !{!638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!643 = distinct !{!643, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E: %scratch.0"}
!646 = distinct !{!646, !"_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E"}
!647 = !{!648}
!648 = distinct !{!648, !643, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"cmpfunc: %a"}
!651 = distinct !{!651, !"cmpfunc"}
!652 = !{!653}
!653 = distinct !{!653, !651, !"cmpfunc: %b"}
!654 = !{!650, !642, !637}
!655 = !{!653, !648, !640, !645}
!656 = !{!653, !648, !640}
!657 = !{!650, !642, !637, !645}
!658 = !{!659, !661, !663}
!659 = distinct !{!659, !660, !"cmpfunc: %a"}
!660 = distinct !{!660, !"cmpfunc"}
!661 = distinct !{!661, !662, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!662 = distinct !{!662, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!663 = distinct !{!663, !664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!664 = distinct !{!664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!665 = !{!666, !667, !668, !645}
!666 = distinct !{!666, !660, !"cmpfunc: %b"}
!667 = distinct !{!667, !662, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!668 = distinct !{!668, !664, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!669 = !{!670, !672, !674}
!670 = distinct !{!670, !671, !"cmpfunc: %a"}
!671 = distinct !{!671, !"cmpfunc"}
!672 = distinct !{!672, !673, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!673 = distinct !{!673, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!674 = distinct !{!674, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!675 = distinct !{!675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!676 = !{!677, !678, !679, !645}
!677 = distinct !{!677, !671, !"cmpfunc: %b"}
!678 = distinct !{!678, !673, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!679 = distinct !{!679, !675, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E: %a.0"}
!682 = distinct !{!682, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E"}
!683 = !{!645, !684}
!684 = distinct !{!684, !646, !"_ZN4core5slice4sort6stable5drift10create_run17he4a5d5408d856782E: %is_less"}
!685 = !{!686}
!686 = distinct !{!686, !682, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf62e91445c6232e2E: %b.0"}
!687 = !{!681, !688}
!688 = distinct !{!688, !689, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9a541ad4d844a033E: %self.0"}
!689 = distinct !{!689, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9a541ad4d844a033E"}
!690 = !{!686, !645, !684}
!691 = !{!686, !688}
!692 = !{!681, !645, !684}
!693 = distinct !{!693, !694, !695}
!694 = !{!"llvm.loop.isvectorized", i32 1}
!695 = !{!"llvm.loop.unroll.runtime.disable"}
!696 = distinct !{!696, !695, !694}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E: %v.0"}
!699 = distinct !{!699, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E"}
!700 = !{!701}
!701 = distinct !{!701, !699, !"_ZN4core5slice4sort6stable5merge5merge17h688fe9b76dfd8950E: %scratch.0"}
!702 = !{!698, !701}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!705 = distinct !{!705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!710 = distinct !{!710, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!713 = !{!714}
!714 = distinct !{!714, !715, !"cmpfunc: %a"}
!715 = distinct !{!715, !"cmpfunc"}
!716 = !{!717}
!717 = distinct !{!717, !715, !"cmpfunc: %b"}
!718 = !{!714, !709, !704, !701}
!719 = !{!717, !712, !707, !720, !698}
!720 = distinct !{!720, !721, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE: %self"}
!721 = distinct !{!721, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha30e0ffa61c3118fE"}
!722 = !{!717, !712, !707, !698}
!723 = !{!714, !709, !704, !720, !701}
!724 = !{!720, !701}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!727 = distinct !{!727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!728 = !{!729}
!729 = distinct !{!729, !727, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!732 = distinct !{!732, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!733 = !{!734}
!734 = distinct !{!734, !732, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"cmpfunc: %a"}
!737 = distinct !{!737, !"cmpfunc"}
!738 = !{!739}
!739 = distinct !{!739, !737, !"cmpfunc: %b"}
!740 = !{!736, !731, !726, !698}
!741 = !{!739, !734, !729, !742, !701}
!742 = distinct !{!742, !743, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE: %self"}
!743 = distinct !{!743, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h47a31bbb4792befcE"}
!744 = !{!739, !734, !729, !701}
!745 = !{!736, !731, !726, !742, !698}
!746 = !{!742, !701}
!747 = !{!748, !750}
!748 = distinct !{!748, !749, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E: %self"}
!749 = distinct !{!749, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb207a984b01f7be2E"}
!750 = distinct !{!750, !751, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE: %_1"}
!751 = distinct !{!751, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h256f95b97ec05b5cE"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!754 = distinct !{!754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!757 = !{!758}
!758 = distinct !{!758, !759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!759 = distinct !{!759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE: %scratch.0"}
!762 = distinct !{!762, !"_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE"}
!763 = !{!764}
!764 = distinct !{!764, !759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!767 = distinct !{!767, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!768 = !{!769}
!769 = distinct !{!769, !767, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!770 = !{!766, !758, !753}
!771 = !{!769, !764, !756, !761}
!772 = !{!769, !764, !756}
!773 = !{!766, !758, !753, !761}
!774 = !{!775, !777}
!775 = distinct !{!775, !776, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!776 = distinct !{!776, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!777 = distinct !{!777, !776, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!778 = !{!766, !769, !758, !764, !753, !756, !761}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!781 = distinct !{!781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!784 = distinct !{!784, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!787 = distinct !{!787, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!788 = !{!786, !783, !780}
!789 = !{!790, !791, !792, !761}
!790 = distinct !{!790, !787, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!791 = distinct !{!791, !784, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!792 = distinct !{!792, !781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!793 = !{!794, !796}
!794 = distinct !{!794, !795, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!795 = distinct !{!795, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!796 = distinct !{!796, !795, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!797 = !{!786, !790, !783, !791, !780, !792, !761}
!798 = !{!799}
!799 = distinct !{!799, !800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!800 = distinct !{!800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!803 = distinct !{!803, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!806 = distinct !{!806, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!807 = !{!805, !802, !799}
!808 = !{!809, !810, !811, !761}
!809 = distinct !{!809, !806, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!810 = distinct !{!810, !803, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!811 = distinct !{!811, !800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!812 = !{!813, !815}
!813 = distinct !{!813, !814, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!814 = distinct !{!814, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!815 = distinct !{!815, !814, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!816 = !{!805, !809, !802, !810, !799, !811, !761}
!817 = !{!818}
!818 = distinct !{!818, !819, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E: %a.0"}
!819 = distinct !{!819, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E"}
!820 = !{!761, !821}
!821 = distinct !{!821, !762, !"_ZN4core5slice4sort6stable5drift10create_run17h144e354a571d8fbeE: %is_less"}
!822 = !{!823}
!823 = distinct !{!823, !819, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hf3497fb12dece627E: %b.0"}
!824 = !{!825}
!825 = distinct !{!825, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x"}
!826 = distinct !{!826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE"}
!827 = !{!828}
!828 = distinct !{!828, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y"}
!829 = !{!825, !818, !830}
!830 = distinct !{!830, !831, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72569a6a22e41e6dE: %self.0"}
!831 = distinct !{!831, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72569a6a22e41e6dE"}
!832 = !{!828, !823, !761, !821}
!833 = !{!828, !823, !830}
!834 = !{!825, !818, !761, !821}
!835 = !{!836}
!836 = distinct !{!836, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x:It1"}
!837 = !{!838}
!838 = distinct !{!838, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y:It1"}
!839 = !{!836, !818, !830}
!840 = !{!838, !823, !761, !821}
!841 = !{!838, !823, !830}
!842 = !{!836, !818, !761, !821}
!843 = !{!844}
!844 = distinct !{!844, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %x:It2"}
!845 = !{!846}
!846 = distinct !{!846, !826, !"_ZN4core3ptr10swap_chunk17ha05add989db5f2bcE: %y:It2"}
!847 = !{!844, !818, !830}
!848 = !{!846, !823, !761, !821}
!849 = !{!846, !823, !830}
!850 = !{!844, !818, !761, !821}
!851 = !{!852}
!852 = distinct !{!852, !853, !"_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E: %v.0"}
!853 = distinct !{!853, !"_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E"}
!854 = !{!855}
!855 = distinct !{!855, !853, !"_ZN4core5slice4sort6stable5merge5merge17hc9e947f542eaded7E: %scratch.0"}
!856 = !{!852, !855}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!859 = distinct !{!859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!860 = !{!861}
!861 = distinct !{!861, !859, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!864 = distinct !{!864, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!865 = !{!866}
!866 = distinct !{!866, !864, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!867 = !{!868}
!868 = distinct !{!868, !869, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!869 = distinct !{!869, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!870 = !{!871}
!871 = distinct !{!871, !869, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!872 = !{!868, !863, !858, !855}
!873 = !{!871, !866, !861, !874, !852}
!874 = distinct !{!874, !875, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h52789d2e34903b8eE: %self"}
!875 = distinct !{!875, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h52789d2e34903b8eE"}
!876 = !{!871, !866, !861, !852}
!877 = !{!868, !863, !858, !874, !855}
!878 = !{!879, !881}
!879 = distinct !{!879, !880, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!880 = distinct !{!880, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!881 = distinct !{!881, !880, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!882 = !{!868, !871, !863, !866, !858, !861, !874, !852, !855}
!883 = !{!874}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!886 = distinct !{!886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!891 = distinct !{!891, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!892 = !{!893}
!893 = distinct !{!893, !891, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!896 = distinct !{!896, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!899 = !{!895, !890, !885, !852}
!900 = !{!898, !893, !888, !901, !855}
!901 = distinct !{!901, !902, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hfc2a01dc7156f439E: %self"}
!902 = distinct !{!902, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hfc2a01dc7156f439E"}
!903 = !{!898, !893, !888, !855}
!904 = !{!895, !890, !885, !901, !852}
!905 = !{!906, !908}
!906 = distinct !{!906, !907, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!907 = distinct !{!907, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!908 = distinct !{!908, !907, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!909 = !{!895, !898, !890, !893, !885, !888, !901, !852, !855}
!910 = !{!901}
!911 = !{!912, !914}
!912 = distinct !{!912, !913, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4de11ff8d87db94eE: %self"}
!913 = distinct !{!913, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4de11ff8d87db94eE"}
!914 = distinct !{!914, !915, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17h07c96e1996e7cee9E: %_1"}
!915 = distinct !{!915, !"_ZN4core3ptr94drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$alloc..string..String$GT$$GT$17h07c96e1996e7cee9E"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E: %v.0"}
!918 = distinct !{!918, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E: %scratch.0"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!923 = distinct !{!923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!928 = distinct !{!928, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!929 = !{!930}
!930 = distinct !{!930, !928, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"cmpfunc: %a"}
!933 = distinct !{!933, !"cmpfunc"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"cmpfunc: %b"}
!936 = !{!932, !927, !922, !917}
!937 = !{!935, !930, !925, !920, !938}
!938 = distinct !{!938, !918, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75b3ad44d1140d77E: %is_less"}
!939 = !{!935, !930, !925, !917}
!940 = !{!932, !927, !922, !920, !938}
!941 = !{!942}
!942 = distinct !{!942, !943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!943 = distinct !{!943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!944 = !{!945}
!945 = distinct !{!945, !943, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!948 = distinct !{!948, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!949 = !{!950}
!950 = distinct !{!950, !948, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!951 = !{!952}
!952 = distinct !{!952, !953, !"cmpfunc: %a"}
!953 = distinct !{!953, !"cmpfunc"}
!954 = !{!955}
!955 = distinct !{!955, !953, !"cmpfunc: %b"}
!956 = !{!952, !947, !942, !917}
!957 = !{!955, !950, !945, !920, !938}
!958 = !{!955, !950, !945, !917}
!959 = !{!952, !947, !942, !920, !938}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!962 = distinct !{!962, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!963 = !{!964}
!964 = distinct !{!964, !962, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!967 = distinct !{!967, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!968 = !{!969}
!969 = distinct !{!969, !967, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"cmpfunc: %a"}
!972 = distinct !{!972, !"cmpfunc"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"cmpfunc: %b"}
!975 = !{!971, !966, !961, !917}
!976 = !{!974, !969, !964, !920, !938}
!977 = !{!974, !969, !964, !917}
!978 = !{!971, !966, !961, !920, !938}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!981 = distinct !{!981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!986 = distinct !{!986, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!989 = !{!990}
!990 = distinct !{!990, !991, !"cmpfunc: %a"}
!991 = distinct !{!991, !"cmpfunc"}
!992 = !{!993}
!993 = distinct !{!993, !991, !"cmpfunc: %b"}
!994 = !{!990, !985, !980, !917}
!995 = !{!993, !988, !983, !920, !938}
!996 = !{!993, !988, !983, !917}
!997 = !{!990, !985, !980, !920, !938}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1000 = distinct !{!1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1000, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1005 = distinct !{!1005, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1005, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"cmpfunc: %a"}
!1010 = distinct !{!1010, !"cmpfunc"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1010, !"cmpfunc: %b"}
!1013 = !{!1009, !1004, !999, !917}
!1014 = !{!1012, !1007, !1002, !920, !938}
!1015 = !{!1012, !1007, !1002, !917}
!1016 = !{!1009, !1004, !999, !920, !938}
!1017 = !{!917, !938}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1020 = distinct !{!1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1025 = distinct !{!1025, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1025, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"cmpfunc: %a"}
!1030 = distinct !{!1030, !"cmpfunc"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1030, !"cmpfunc: %b"}
!1033 = !{!1029, !1024, !1019, !917}
!1034 = !{!1032, !1027, !1022, !920, !938}
!1035 = !{!1032, !1027, !1022, !917}
!1036 = !{!1029, !1024, !1019, !920, !938}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1039 = distinct !{!1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1039, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1044 = distinct !{!1044, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1044, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"cmpfunc: %a"}
!1049 = distinct !{!1049, !"cmpfunc"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1049, !"cmpfunc: %b"}
!1052 = !{!1048, !1043, !1038, !917}
!1053 = !{!1051, !1046, !1041, !920, !938}
!1054 = !{!1051, !1046, !1041, !917}
!1055 = !{!1048, !1043, !1038, !920, !938}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1058 = distinct !{!1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1063 = distinct !{!1063, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"cmpfunc: %a"}
!1068 = distinct !{!1068, !"cmpfunc"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1068, !"cmpfunc: %b"}
!1071 = !{!1067, !1062, !1057, !917}
!1072 = !{!1070, !1065, !1060, !920, !938}
!1073 = !{!1070, !1065, !1060, !917}
!1074 = !{!1067, !1062, !1057, !920, !938}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1077 = distinct !{!1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1077, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1082 = distinct !{!1082, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1082, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087, !"cmpfunc: %a"}
!1087 = distinct !{!1087, !"cmpfunc"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1087, !"cmpfunc: %b"}
!1090 = !{!1086, !1081, !1076, !917}
!1091 = !{!1089, !1084, !1079, !920, !938}
!1092 = !{!1089, !1084, !1079, !917}
!1093 = !{!1086, !1081, !1076, !920, !938}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1096 = distinct !{!1096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1096, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1101, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1101 = distinct !{!1101, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1101, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1106, !"cmpfunc: %a"}
!1106 = distinct !{!1106, !"cmpfunc"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1106, !"cmpfunc: %b"}
!1109 = !{!1105, !1100, !1095, !917}
!1110 = !{!1108, !1103, !1098, !920, !938}
!1111 = !{!1108, !1103, !1098, !917}
!1112 = !{!1105, !1100, !1095, !920, !938}
!1113 = !{!920, !938}
!1114 = !{!1115, !1117, !1119, !920}
!1115 = distinct !{!1115, !1116, !"cmpfunc: %b"}
!1116 = distinct !{!1116, !"cmpfunc"}
!1117 = distinct !{!1117, !1118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1118 = distinct !{!1118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1119 = distinct !{!1119, !1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1120 = distinct !{!1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1121 = !{!1122, !1123, !1124, !917, !938}
!1122 = distinct !{!1122, !1116, !"cmpfunc: %a"}
!1123 = distinct !{!1123, !1118, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1124 = distinct !{!1124, !1120, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1125 = !{!1126, !1128, !1130, !920}
!1126 = distinct !{!1126, !1127, !"cmpfunc: %b"}
!1127 = distinct !{!1127, !"cmpfunc"}
!1128 = distinct !{!1128, !1129, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1129 = distinct !{!1129, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1130 = distinct !{!1130, !1131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1131 = distinct !{!1131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1132 = !{!1133, !1134, !1135, !917, !938}
!1133 = distinct !{!1133, !1127, !"cmpfunc: %a"}
!1134 = distinct !{!1134, !1129, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1135 = distinct !{!1135, !1131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1136 = !{!1137, !1139, !917, !938}
!1137 = distinct !{!1137, !1138, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!1138 = distinct !{!1138, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!1139 = distinct !{!1139, !1140, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!1140 = distinct !{!1140, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1143, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E: %v.0"}
!1143 = distinct !{!1143, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h5d0d96e883197981E"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1146 = distinct !{!1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1146, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1151 = distinct !{!1151, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %_0"}
!1154 = distinct !{!1154, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1151, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"cmpfunc: %a"}
!1159 = distinct !{!1159, !"cmpfunc"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"cmpfunc: %b"}
!1162 = !{!1158, !1150, !1145, !1142, !920}
!1163 = !{!1161, !1156, !1148, !1153, !917, !938}
!1164 = !{!1161, !1156, !1148, !1142, !920}
!1165 = !{!1158, !1150, !1145, !1153, !917, !938}
!1166 = !{!1153, !1167, !1142, !920, !938}
!1167 = distinct !{!1167, !1154, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h7c75fa30ffafebdfE: %is_less"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1170, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1170 = distinct !{!1170, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1170, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1175 = distinct !{!1175, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %_0"}
!1178 = distinct !{!1178, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1175, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"cmpfunc: %a"}
!1183 = distinct !{!1183, !"cmpfunc"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1183, !"cmpfunc: %b"}
!1186 = !{!1182, !1174, !1169, !1142, !920}
!1187 = !{!1185, !1180, !1172, !1177, !917, !938}
!1188 = !{!1185, !1180, !1172, !1142, !920}
!1189 = !{!1182, !1174, !1169, !1177, !917, !938}
!1190 = !{!1177, !1191, !1142, !920, !938}
!1191 = distinct !{!1191, !1178, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf63e1ad3cd27459aE: %is_less"}
!1192 = !{!1142, !920}
!1193 = !{!1142, !920, !938}
!1194 = !{!917, !920, !938}
!1195 = !{!917, !920}
!1196 = !{!1197, !1199, !938}
!1197 = distinct !{!1197, !1198, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!1198 = distinct !{!1198, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!1199 = distinct !{!1199, !1200, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!1200 = distinct !{!1200, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1203 = distinct !{!1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1208 = distinct !{!1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1211, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E: %c"}
!1211 = distinct !{!1211, !"_ZN4core5slice4sort6shared5pivot7median317h007360abed772f57E"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1208, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"cmpfunc: %a"}
!1216 = distinct !{!1216, !"cmpfunc"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1216, !"cmpfunc: %b"}
!1219 = !{!1215, !1207, !1202, !1220}
!1220 = distinct !{!1220, !1221, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E: %v.0"}
!1221 = distinct !{!1221, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E"}
!1222 = !{!1218, !1213, !1205, !1210, !1223}
!1223 = distinct !{!1223, !1221, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hb8dcb72d6df55292E: %is_less"}
!1224 = !{!1218, !1213, !1205, !1220}
!1225 = !{!1215, !1207, !1202, !1210, !1223}
!1226 = !{!1227, !1229, !1231, !1220}
!1227 = distinct !{!1227, !1228, !"cmpfunc: %b"}
!1228 = distinct !{!1228, !"cmpfunc"}
!1229 = distinct !{!1229, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1230 = distinct !{!1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1231 = distinct !{!1231, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1232 = distinct !{!1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1233 = !{!1234, !1235, !1236, !1223}
!1234 = distinct !{!1234, !1228, !"cmpfunc: %a"}
!1235 = distinct !{!1235, !1230, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1236 = distinct !{!1236, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1237 = !{!1238, !1240, !1242}
!1238 = distinct !{!1238, !1239, !"cmpfunc: %a"}
!1239 = distinct !{!1239, !"cmpfunc"}
!1240 = distinct !{!1240, !1241, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1241 = distinct !{!1241, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1242 = distinct !{!1242, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1243 = distinct !{!1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1244 = !{!1245, !1246, !1247}
!1245 = distinct !{!1245, !1239, !"cmpfunc: %b"}
!1246 = distinct !{!1246, !1241, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1247 = distinct !{!1247, !1243, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha89e4690b9848335E: %v.0"}
!1250 = distinct !{!1250, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha89e4690b9848335E"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17ha89e4690b9848335E: %scratch.0"}
!1253 = !{!1254, !1256, !1258, !1249}
!1254 = distinct !{!1254, !1255, !"cmpfunc: %b"}
!1255 = distinct !{!1255, !"cmpfunc"}
!1256 = distinct !{!1256, !1257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1257 = distinct !{!1257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1258 = distinct !{!1258, !1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1259 = distinct !{!1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1260 = !{!1261, !1262, !1263, !1252}
!1261 = distinct !{!1261, !1255, !"cmpfunc: %a"}
!1262 = distinct !{!1262, !1257, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1263 = distinct !{!1263, !1259, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1264 = !{!1263}
!1265 = !{!1258}
!1266 = !{!1262}
!1267 = !{!1256}
!1268 = !{!1261}
!1269 = !{!1254}
!1270 = !{!1261, !1262, !1263, !1249}
!1271 = !{!1254, !1256, !1258, !1252}
!1272 = !{!1273, !1249}
!1273 = distinct !{!1273, !1274, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1274 = distinct !{!1274, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1275 = !{!1276, !1278, !1280, !1249}
!1276 = distinct !{!1276, !1277, !"cmpfunc: %a"}
!1277 = distinct !{!1277, !"cmpfunc"}
!1278 = distinct !{!1278, !1279, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1279 = distinct !{!1279, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1280 = distinct !{!1280, !1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1281 = distinct !{!1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1282 = !{!1283, !1284, !1285, !1252}
!1283 = distinct !{!1283, !1277, !"cmpfunc: %b"}
!1284 = distinct !{!1284, !1279, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1285 = distinct !{!1285, !1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1286 = !{!1287, !1249}
!1287 = distinct !{!1287, !1288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1288 = distinct !{!1288, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1289 = !{!1290, !1292, !1294, !1249}
!1290 = distinct !{!1290, !1291, !"cmpfunc: %a"}
!1291 = distinct !{!1291, !"cmpfunc"}
!1292 = distinct !{!1292, !1293, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1293 = distinct !{!1293, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1294 = distinct !{!1294, !1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1295 = distinct !{!1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1296 = !{!1297, !1298, !1299, !1252}
!1297 = distinct !{!1297, !1291, !"cmpfunc: %b"}
!1298 = distinct !{!1298, !1293, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1299 = distinct !{!1299, !1295, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1300 = !{!1301, !1249}
!1301 = distinct !{!1301, !1302, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1302 = distinct !{!1302, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1303 = !{!1304, !1306, !1308, !1249}
!1304 = distinct !{!1304, !1305, !"cmpfunc: %a"}
!1305 = distinct !{!1305, !"cmpfunc"}
!1306 = distinct !{!1306, !1307, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1307 = distinct !{!1307, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1308 = distinct !{!1308, !1309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1309 = distinct !{!1309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1310 = !{!1311, !1312, !1313, !1252}
!1311 = distinct !{!1311, !1305, !"cmpfunc: %b"}
!1312 = distinct !{!1312, !1307, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1313 = distinct !{!1313, !1309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1314 = !{!1315, !1249}
!1315 = distinct !{!1315, !1316, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1316 = distinct !{!1316, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1317 = !{!1318, !1320, !1322, !1249}
!1318 = distinct !{!1318, !1319, !"cmpfunc: %b"}
!1319 = distinct !{!1319, !"cmpfunc"}
!1320 = distinct !{!1320, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1321 = distinct !{!1321, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1322 = distinct !{!1322, !1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1323 = distinct !{!1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1324 = !{!1325, !1326, !1327, !1252}
!1325 = distinct !{!1325, !1319, !"cmpfunc: %a"}
!1326 = distinct !{!1326, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1327 = distinct !{!1327, !1323, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1328 = !{!1327}
!1329 = !{!1322}
!1330 = !{!1326}
!1331 = !{!1320}
!1332 = !{!1325}
!1333 = !{!1318}
!1334 = !{!1325, !1326, !1327, !1249}
!1335 = !{!1318, !1320, !1322, !1252}
!1336 = !{!1337, !1249}
!1337 = distinct !{!1337, !1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1338 = distinct !{!1338, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1339 = !{!1340, !1252}
!1340 = distinct !{!1340, !1341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1341 = distinct !{!1341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1342 = !{!1340, !1249}
!1343 = !{!1249, !1252}
!1344 = distinct !{!1344, !694, !695}
!1345 = distinct !{!1345, !695, !694}
!1346 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1347 = !{!1348, !1350}
!1348 = distinct !{!1348, !1349, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE: %pair"}
!1349 = distinct !{!1349, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE"}
!1350 = distinct !{!1350, !1349, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h0ceeda8e75cd17abE: %self.0"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E: %v.0"}
!1353 = distinct !{!1353, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1353, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hb6ded74fc6134ad0E: %scratch.0"}
!1356 = !{!1357, !1359, !1361, !1363, !1352}
!1357 = distinct !{!1357, !1358, !"cmpfunc: %a"}
!1358 = distinct !{!1358, !"cmpfunc"}
!1359 = distinct !{!1359, !1360, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1360 = distinct !{!1360, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1361 = distinct !{!1361, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1362 = distinct !{!1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1363 = distinct !{!1363, !1364, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!1364 = distinct !{!1364, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!1365 = !{!1366, !1367, !1368, !1369, !1355}
!1366 = distinct !{!1366, !1358, !"cmpfunc: %b"}
!1367 = distinct !{!1367, !1360, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1368 = distinct !{!1368, !1362, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1369 = distinct !{!1369, !1364, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!1370 = !{!1369}
!1371 = !{!1363}
!1372 = !{!1361}
!1373 = !{!1368}
!1374 = !{!1359}
!1375 = !{!1367}
!1376 = !{!1357}
!1377 = !{!1366}
!1378 = !{!1366, !1367, !1368, !1369, !1352}
!1379 = !{!1357, !1359, !1361, !1363, !1355}
!1380 = !{!1381, !1352}
!1381 = distinct !{!1381, !1382, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1382 = distinct !{!1382, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1383 = !{!1384, !1386, !1388, !1390, !1352}
!1384 = distinct !{!1384, !1385, !"cmpfunc: %b"}
!1385 = distinct !{!1385, !"cmpfunc"}
!1386 = distinct !{!1386, !1387, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1387 = distinct !{!1387, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1388 = distinct !{!1388, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1389 = distinct !{!1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1390 = distinct !{!1390, !1391, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!1391 = distinct !{!1391, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!1392 = !{!1393, !1394, !1395, !1396, !1355}
!1393 = distinct !{!1393, !1385, !"cmpfunc: %a"}
!1394 = distinct !{!1394, !1387, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1395 = distinct !{!1395, !1389, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1396 = distinct !{!1396, !1391, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!1397 = !{!1398, !1352}
!1398 = distinct !{!1398, !1399, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1399 = distinct !{!1399, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1400 = !{!1401, !1403, !1405, !1407, !1352}
!1401 = distinct !{!1401, !1402, !"cmpfunc: %b"}
!1402 = distinct !{!1402, !"cmpfunc"}
!1403 = distinct !{!1403, !1404, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1404 = distinct !{!1404, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1405 = distinct !{!1405, !1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1406 = distinct !{!1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1407 = distinct !{!1407, !1408, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!1408 = distinct !{!1408, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!1409 = !{!1410, !1411, !1412, !1413, !1355}
!1410 = distinct !{!1410, !1402, !"cmpfunc: %a"}
!1411 = distinct !{!1411, !1404, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1412 = distinct !{!1412, !1406, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1413 = distinct !{!1413, !1408, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!1414 = !{!1415, !1352}
!1415 = distinct !{!1415, !1416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1416 = distinct !{!1416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1417 = !{!1418, !1420, !1422, !1424, !1352}
!1418 = distinct !{!1418, !1419, !"cmpfunc: %b"}
!1419 = distinct !{!1419, !"cmpfunc"}
!1420 = distinct !{!1420, !1421, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1421 = distinct !{!1421, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1422 = distinct !{!1422, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1423 = distinct !{!1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1424 = distinct !{!1424, !1425, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!1425 = distinct !{!1425, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!1426 = !{!1427, !1428, !1429, !1430, !1355}
!1427 = distinct !{!1427, !1419, !"cmpfunc: %a"}
!1428 = distinct !{!1428, !1421, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1429 = distinct !{!1429, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1430 = distinct !{!1430, !1425, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!1431 = !{!1432, !1352}
!1432 = distinct !{!1432, !1433, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1433 = distinct !{!1433, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1434 = !{!1435, !1437, !1439, !1441, !1352}
!1435 = distinct !{!1435, !1436, !"cmpfunc: %a"}
!1436 = distinct !{!1436, !"cmpfunc"}
!1437 = distinct !{!1437, !1438, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1438 = distinct !{!1438, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1439 = distinct !{!1439, !1440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1440 = distinct !{!1440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1441 = distinct !{!1441, !1442, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %b"}
!1442 = distinct !{!1442, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E"}
!1443 = !{!1444, !1445, !1446, !1447, !1355}
!1444 = distinct !{!1444, !1436, !"cmpfunc: %b"}
!1445 = distinct !{!1445, !1438, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!1446 = distinct !{!1446, !1440, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1447 = distinct !{!1447, !1442, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h85019edda0c3bfa5E: %a"}
!1448 = !{!1447}
!1449 = !{!1441}
!1450 = !{!1439}
!1451 = !{!1446}
!1452 = !{!1437}
!1453 = !{!1445}
!1454 = !{!1435}
!1455 = !{!1444}
!1456 = !{!1444, !1445, !1446, !1447, !1352}
!1457 = !{!1435, !1437, !1439, !1441, !1355}
!1458 = !{!1459, !1352}
!1459 = distinct !{!1459, !1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1460 = distinct !{!1460, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1461 = !{!1462, !1355}
!1462 = distinct !{!1462, !1463, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE: %self"}
!1463 = distinct !{!1463, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h33b39459f975064aE"}
!1464 = !{!1462, !1352}
!1465 = !{!1352, !1355}
!1466 = distinct !{!1466, !694, !695}
!1467 = distinct !{!1467, !695, !694}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE: %v.0"}
!1470 = distinct !{!1470, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE"}
!1471 = !{!1469, !1472}
!1472 = distinct !{!1472, !1470, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE: %scratch.0"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1470, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd47b94b346eed11fE: %is_less"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a:It1"}
!1477 = distinct !{!1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b:It1"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1482, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a:It1"}
!1482 = distinct !{!1482, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1482, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b:It1"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self:It1"}
!1487 = distinct !{!1487, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1487, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other:It1"}
!1490 = !{!1486, !1481, !1476, !1472}
!1491 = !{!1489, !1484, !1479, !1469, !1474}
!1492 = !{!1489, !1484, !1479, !1472}
!1493 = !{!1486, !1481, !1476, !1469, !1474}
!1494 = !{!1495, !1497}
!1495 = distinct !{!1495, !1496, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1496 = distinct !{!1496, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1497 = distinct !{!1497, !1496, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1498 = !{!1486, !1489, !1481, !1484, !1476, !1479, !1469, !1474}
!1499 = !{!1472}
!1500 = !{!1469, !1474}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b:It1"}
!1503 = distinct !{!1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b:It1"}
!1506 = distinct !{!1506, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other:It1"}
!1509 = distinct !{!1509, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1510 = !{!1508, !1505, !1502, !1472}
!1511 = !{!1512, !1513, !1514, !1469, !1474}
!1512 = distinct !{!1512, !1509, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1513 = distinct !{!1513, !1506, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1514 = distinct !{!1514, !1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1515 = !{!1516, !1518}
!1516 = distinct !{!1516, !1517, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1517 = distinct !{!1517, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1518 = distinct !{!1518, !1517, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1519 = !{!1512, !1508, !1513, !1505, !1514, !1502, !1469, !1474}
!1520 = !{!1521, !1523, !1469, !1474}
!1521 = distinct !{!1521, !1522, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!1522 = distinct !{!1522, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!1523 = distinct !{!1523, !1524, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!1524 = distinct !{!1524, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1c07a85081dc43d3E: %v.0"}
!1527 = distinct !{!1527, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h1c07a85081dc43d3E"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1530 = distinct !{!1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1535 = distinct !{!1535, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E: %_0"}
!1538 = distinct !{!1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1535, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1543, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1543 = distinct !{!1543, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1543, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1546 = !{!1542, !1534, !1529, !1526, !1472}
!1547 = !{!1545, !1540, !1532, !1537, !1469, !1474}
!1548 = !{!1545, !1540, !1532, !1526, !1472}
!1549 = !{!1542, !1534, !1529, !1537, !1469, !1474}
!1550 = !{!1551, !1553}
!1551 = distinct !{!1551, !1552, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1552 = distinct !{!1552, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1553 = distinct !{!1553, !1552, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1554 = !{!1542, !1545, !1534, !1540, !1529, !1532, !1537, !1526, !1469, !1474}
!1555 = !{!1537, !1556, !1474}
!1556 = distinct !{!1556, !1538, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hde12d15d10613531E: %is_less"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1559 = distinct !{!1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1559, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1564, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1564 = distinct !{!1564, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E: %_0"}
!1567 = distinct !{!1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1564, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1572 = distinct !{!1572, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1575 = !{!1571, !1563, !1558, !1526, !1472}
!1576 = !{!1574, !1569, !1561, !1566, !1469, !1474}
!1577 = !{!1574, !1569, !1561, !1526, !1472}
!1578 = !{!1571, !1563, !1558, !1566, !1469, !1474}
!1579 = !{!1580, !1582}
!1580 = distinct !{!1580, !1581, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1581 = distinct !{!1581, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1582 = distinct !{!1582, !1581, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1583 = !{!1571, !1574, !1563, !1569, !1558, !1561, !1566, !1526, !1469, !1474}
!1584 = !{!1566, !1585, !1474}
!1585 = distinct !{!1585, !1567, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h3e448fa3174571f1E: %is_less"}
!1586 = !{!1587, !1589, !1474}
!1587 = distinct !{!1587, !1588, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE: %self"}
!1588 = distinct !{!1588, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc0534965a749a53fE"}
!1589 = distinct !{!1589, !1590, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E: %_1"}
!1590 = distinct !{!1590, !"_ZN4core3ptr98drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$alloc..string..String$GT$$GT$17hd561170127796934E"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1593 = !{!1594}
!1594 = distinct !{!1594, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1482, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1482, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1487, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1487, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1603 = !{!1600, !1596, !1592, !1472}
!1604 = !{!1602, !1598, !1594, !1469, !1474}
!1605 = !{!1602, !1598, !1594, !1472}
!1606 = !{!1600, !1596, !1592, !1469, !1474}
!1607 = !{!1600, !1602, !1596, !1598, !1592, !1594, !1469, !1474}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1503, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1610 = !{!1611}
!1611 = distinct !{!1611, !1506, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1509, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1614 = !{!1613, !1611, !1609, !1472}
!1615 = !{!1512, !1613, !1513, !1611, !1514, !1609, !1469, !1474}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E: %v.0"}
!1618 = distinct !{!1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1621 = distinct !{!1621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1626, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1626 = distinct !{!1626, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1627 = !{!1628}
!1628 = distinct !{!1628, !1629, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE: %c"}
!1629 = distinct !{!1629, !"_ZN4core5slice4sort6shared5pivot7median317h0e5bc2dbc1971a6eE"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1626, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1632 = !{!1633}
!1633 = distinct !{!1633, !1634, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1634 = distinct !{!1634, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1634, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1637 = !{!1633, !1625, !1620, !1617}
!1638 = !{!1636, !1631, !1623, !1628, !1639}
!1639 = distinct !{!1639, !1618, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h94e2005f3bd3de14E: %is_less"}
!1640 = !{!1636, !1631, !1623, !1617}
!1641 = !{!1633, !1625, !1620, !1628, !1639}
!1642 = !{!1643, !1645}
!1643 = distinct !{!1643, !1644, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1644 = distinct !{!1644, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1645 = distinct !{!1645, !1644, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1646 = !{!1633, !1636, !1625, !1631, !1620, !1623, !1628, !1617, !1639}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1649 = distinct !{!1649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1652 = distinct !{!1652, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1655, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1655 = distinct !{!1655, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1656 = !{!1654, !1651, !1648, !1617}
!1657 = !{!1658, !1659, !1660, !1639}
!1658 = distinct !{!1658, !1655, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1659 = distinct !{!1659, !1652, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1660 = distinct !{!1660, !1649, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1661 = !{!1662, !1664}
!1662 = distinct !{!1662, !1663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1663 = distinct !{!1663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1664 = distinct !{!1664, !1663, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1665 = !{!1658, !1654, !1659, !1651, !1660, !1648, !1617, !1639}
!1666 = !{!1667, !1669}
!1667 = distinct !{!1667, !1668, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1668 = distinct !{!1668, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1669 = distinct !{!1669, !1668, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1670 = !{!1671, !1673, !1674, !1676, !1677, !1679, !1617, !1639}
!1671 = distinct !{!1671, !1672, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1672 = distinct !{!1672, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1673 = distinct !{!1673, !1672, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1674 = distinct !{!1674, !1675, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1675 = distinct !{!1675, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1676 = distinct !{!1676, !1675, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1677 = distinct !{!1677, !1678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1678 = distinct !{!1678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1679 = distinct !{!1679, !1678, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1682 = distinct !{!1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1682, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1687, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1687 = distinct !{!1687, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1687, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1692, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1692 = distinct !{!1692, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1692, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1695 = !{!1691, !1686, !1681}
!1696 = !{!1694, !1689, !1684}
!1697 = !{!1698, !1700}
!1698 = distinct !{!1698, !1699, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1699 = distinct !{!1699, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1700 = distinct !{!1700, !1699, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1701 = !{!1691, !1694, !1686, !1689, !1681, !1684}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E: %v.0"}
!1704 = distinct !{!1704, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1704, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d423c034a790133E: %scratch.0"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1709 = distinct !{!1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1714 = distinct !{!1714, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1715 = !{!1716}
!1716 = distinct !{!1716, !1714, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1719, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1719 = distinct !{!1719, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1720 = !{!1721}
!1721 = distinct !{!1721, !1719, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1722 = !{!1718, !1713, !1708, !1703}
!1723 = !{!1721, !1716, !1711, !1706}
!1724 = !{!1721, !1716, !1711, !1703}
!1725 = !{!1718, !1713, !1708, !1706}
!1726 = !{!1727, !1729}
!1727 = distinct !{!1727, !1728, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1728 = distinct !{!1728, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1729 = distinct !{!1729, !1728, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1730 = !{!1718, !1721, !1713, !1716, !1708, !1711, !1703, !1706}
!1731 = !{!1703, !1706}
!1732 = !{!1733}
!1733 = distinct !{!1733, !1734, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1734 = distinct !{!1734, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1735 = !{!1736}
!1736 = distinct !{!1736, !1737, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1737 = distinct !{!1737, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1738 = !{!1739, !1741}
!1739 = distinct !{!1739, !1740, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E: %pair"}
!1740 = distinct !{!1740, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E"}
!1741 = distinct !{!1741, !1740, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h7dd69a5499b58ed4E: %self.0"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1744, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E: %v.0"}
!1744 = distinct !{!1744, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E"}
!1745 = !{!1746}
!1746 = distinct !{!1746, !1744, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h2d823a91305b5458E: %scratch.0"}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1749, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %a"}
!1749 = distinct !{!1749, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE"}
!1750 = !{!1751}
!1751 = distinct !{!1751, !1749, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h3c020b7027ab7d8bE: %b"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %a"}
!1754 = distinct !{!1754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E"}
!1755 = !{!1756}
!1756 = distinct !{!1756, !1754, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf6e678745a939cf4E: %b"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %a"}
!1759 = distinct !{!1759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE"}
!1760 = !{!1761}
!1761 = distinct !{!1761, !1759, !"_ZN46LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hce6887e749880f6bE: %b"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1764, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %self"}
!1764 = distinct !{!1764, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE"}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1764, !"_ZN63_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17hbc743561aaa1549eE: %other"}
!1767 = !{!1763, !1758, !1753, !1751, !1743}
!1768 = !{!1766, !1761, !1756, !1748, !1746}
!1769 = !{!1766, !1761, !1756, !1748, !1743}
!1770 = !{!1763, !1758, !1753, !1751, !1746}
!1771 = !{!1772, !1774}
!1772 = distinct !{!1772, !1773, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %left.0"}
!1773 = distinct !{!1773, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E"}
!1774 = distinct !{!1774, !1773, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h979e4919895b8743E: %right.0"}
!1775 = !{!1763, !1766, !1758, !1761, !1753, !1756, !1748, !1751, !1743, !1746}
!1776 = !{!1743, !1746}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1779, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1779 = distinct !{!1779, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE: %self"}
!1782 = distinct !{!1782, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h69277ab45df9696cE"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1785, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1785 = distinct !{!1785, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1786 = !{!1787}
!1787 = distinct !{!1787, !1785, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1790, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h7c4ae7fd94ee38e0E: %self"}
!1790 = distinct !{!1790, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h7c4ae7fd94ee38e0E"}
!1791 = !{i64 0, i64 2}
!1792 = !{i64 0, i64 -9223372036854775807}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1795, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE: %_0"}
!1795 = distinct !{!1795, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1798 = distinct !{!1798, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1801, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1801 = distinct !{!1801, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1802 = !{!1803}
!1803 = distinct !{!1803, !1804, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1804 = distinct !{!1804, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1807, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1807 = distinct !{!1807, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1808 = !{!1809}
!1809 = distinct !{!1809, !1810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1810 = distinct !{!1810, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1811 = !{!1812, !1809, !1806, !1803, !1800, !1797}
!1812 = distinct !{!1812, !1813, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1813 = distinct !{!1813, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1813, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1816 = !{!1809, !1806, !1803, !1800, !1797}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1819, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %_0"}
!1819 = distinct !{!1819, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1819, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %self"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1824, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h593bae9bc8347671E: %self"}
!1824 = distinct !{!1824, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h593bae9bc8347671E"}
!1825 = !{!1826}
!1826 = distinct !{!1826, !1827, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2323b37f8bba4692E: %self"}
!1827 = distinct !{!1827, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2323b37f8bba4692E"}
!1828 = !{!1829, !1826, !1823, !1821}
!1829 = distinct !{!1829, !1830, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h422ac685dfcfe609E: %self"}
!1830 = distinct !{!1830, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h422ac685dfcfe609E"}
!1831 = !{!1818, !1832}
!1832 = distinct !{!1832, !1819, !"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E: %other.0"}
!1833 = !{!1826, !1823, !1821}
!1834 = !{!1818, !1821}
!1835 = !{!1832}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1838, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1838 = distinct !{!1838, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1839 = !{!1840}
!1840 = distinct !{!1840, !1841, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1841 = distinct !{!1841, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1842 = !{!1843}
!1843 = distinct !{!1843, !1844, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1844 = distinct !{!1844, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1845 = !{!1846}
!1846 = distinct !{!1846, !1847, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1847 = distinct !{!1847, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1850 = distinct !{!1850, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1851 = !{!1852, !1849, !1846, !1843, !1840, !1837, !1821}
!1852 = distinct !{!1852, !1853, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1853 = distinct !{!1853, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1854 = !{!1855, !1818, !1832}
!1855 = distinct !{!1855, !1853, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1856 = !{!1849, !1846, !1843, !1840, !1837, !1818, !1821, !1832}
!1857 = !{!1826, !1823, !1818, !1821}
!1858 = !{!1859}
!1859 = distinct !{!1859, !1860, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E: %slice.0"}
!1860 = distinct !{!1860, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E"}
!1861 = !{!1862, !1864, !1866}
!1862 = distinct !{!1862, !1863, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE: %_0"}
!1863 = distinct !{!1863, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h6dc8492dbf5ceb1aE"}
!1864 = distinct !{!1864, !1865, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE: %v"}
!1865 = distinct !{!1865, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE"}
!1866 = distinct !{!1866, !1865, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5c63dbb8fefceecbE: %s.0"}
!1867 = !{!1864}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE: %self"}
!1870 = distinct !{!1870, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc6135c4d1222d67eE: %value"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E: %self.0"}
!1875 = distinct !{!1875, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h594fa5ca3b51e285E"}
!1876 = !{!1877, !1879, !1874}
!1877 = distinct !{!1877, !1878, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE: %v.0"}
!1878 = distinct !{!1878, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE"}
!1879 = distinct !{!1879, !1878, !"_ZN5alloc5slice11stable_sort17h9a8b1694e71f747dE: argument 1"}
!1880 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1881 = !{!1882, !1884, !1886, !1888, !1890}
!1882 = distinct !{!1882, !1883, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1883 = distinct !{!1883, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1884 = distinct !{!1884, !1885, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1885 = distinct !{!1885, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1886 = distinct !{!1886, !1887, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1887 = distinct !{!1887, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1888 = distinct !{!1888, !1889, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1889 = distinct !{!1889, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1890 = distinct !{!1890, !1891, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1891 = distinct !{!1891, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1892 = !{!1893, !1895, !1897, !1899, !1901}
!1893 = distinct !{!1893, !1894, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1894 = distinct !{!1894, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1895 = distinct !{!1895, !1896, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1896 = distinct !{!1896, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1897 = distinct !{!1897, !1898, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1898 = distinct !{!1898, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1899 = distinct !{!1899, !1900, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1900 = distinct !{!1900, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1901 = distinct !{!1901, !1902, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1902 = distinct !{!1902, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE: %_1"}
!1905 = distinct !{!1905, !"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17ha5714b0b3d45e72aE"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E: %self"}
!1908 = distinct !{!1908, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51955c50d115126E"}
!1909 = !{!1907, !1904}
!1910 = !{!1911}
!1911 = distinct !{!1911, !1912, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE: %_1.0"}
!1912 = distinct !{!1912, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17ha282868240333e7fE"}
!1913 = !{!1914}
!1914 = distinct !{!1914, !1915, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1915 = distinct !{!1915, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1916 = !{!1917}
!1917 = distinct !{!1917, !1918, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1918 = distinct !{!1918, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1921 = distinct !{!1921, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1924, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1924 = distinct !{!1924, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1927, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1927 = distinct !{!1927, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1928 = !{!1929, !1926, !1923, !1920, !1917, !1914, !1911}
!1929 = distinct !{!1929, !1930, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1930 = distinct !{!1930, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1931 = !{!1932, !1907, !1904}
!1932 = distinct !{!1932, !1930, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1933 = !{!1926, !1923, !1920, !1917, !1914, !1911, !1907, !1904}
!1934 = !{!1935}
!1935 = distinct !{!1935, !1936, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E: %_1"}
!1936 = distinct !{!1936, !"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h6acf535462ed31a6E"}
!1937 = !{!1938}
!1938 = distinct !{!1938, !1939, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE: %self"}
!1939 = distinct !{!1939, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haef0916201dc82deE"}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1942 = distinct !{!1942, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1943 = !{!1944, !1941, !1938, !1935, !1904}
!1944 = distinct !{!1944, !1945, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1945 = distinct !{!1945, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1945, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1948 = !{!1941, !1938, !1935, !1904}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1951, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1951 = distinct !{!1951, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1952 = !{!1953}
!1953 = distinct !{!1953, !1954, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1954 = distinct !{!1954, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1957, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1957 = distinct !{!1957, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1960 = distinct !{!1960, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1963, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1963 = distinct !{!1963, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1964 = !{!1965, !1962, !1959, !1956, !1953, !1950}
!1965 = distinct !{!1965, !1966, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %self"}
!1966 = distinct !{!1966, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE"}
!1967 = !{!1968}
!1968 = distinct !{!1968, !1966, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h93577d54ae88774dE: %_0"}
!1969 = !{!1962, !1959, !1956, !1953, !1950}
!1970 = !{!1971, !1973, !1975, !1977, !1979, !1872}
!1971 = distinct !{!1971, !1972, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E: %self"}
!1972 = distinct !{!1972, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hc0885be63b818054E"}
!1973 = distinct !{!1973, !1974, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E: %self"}
!1974 = distinct !{!1974, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97346dffbe3adab6E"}
!1975 = distinct !{!1975, !1976, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E: %_1"}
!1976 = distinct !{!1976, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf2b0b048255657c0E"}
!1977 = distinct !{!1977, !1978, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE: %_1"}
!1978 = distinct !{!1978, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf142590ed85ce70dE"}
!1979 = distinct !{!1979, !1980, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE: %_1"}
!1980 = distinct !{!1980, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heba7bfbe8384b04bE"}
!1981 = distinct !{!1981, !1982}
!1982 = !{!"llvm.loop.peeled.count", i32 1}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE: %self.0"}
!1985 = distinct !{!1985, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hff93ecb281ddd21eE"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE: %v.0"}
!1988 = distinct !{!1988, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE"}
!1989 = !{!1987, !1990, !1984}
!1990 = distinct !{!1990, !1988, !"_ZN5alloc5slice11stable_sort17h6ed8d9e1c847df5dE: argument 1"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!1993 = distinct !{!1993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!1994 = !{!1995}
!1995 = distinct !{!1995, !1993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1998, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!1998 = distinct !{!1998, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!1999 = !{!2000}
!2000 = distinct !{!2000, !1998, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2003, !"cmpfunc: %a"}
!2003 = distinct !{!2003, !"cmpfunc"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2003, !"cmpfunc: %b"}
!2006 = !{!2002, !1997, !1992, !2007, !1987, !1984}
!2007 = distinct !{!2007, !2008, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h274a17e59efaaf47E: %v.0"}
!2008 = distinct !{!2008, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h274a17e59efaaf47E"}
!2009 = !{!2005, !2000, !1995, !1990}
!2010 = !{!2005, !2000, !1995, !2007, !1987, !1984}
!2011 = !{!2002, !1997, !1992, !1990}
!2012 = !{!2007, !1987, !1984}
!2013 = !{!1990}
!2014 = !{!2015, !2017, !2019, !2007, !1987, !1984}
!2015 = distinct !{!2015, !2016, !"cmpfunc: %b"}
!2016 = distinct !{!2016, !"cmpfunc"}
!2017 = distinct !{!2017, !2018, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1"}
!2018 = distinct !{!2018, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E"}
!2019 = distinct !{!2019, !2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b"}
!2020 = distinct !{!2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E"}
!2021 = !{!2022, !2023, !2024, !1990}
!2022 = distinct !{!2022, !2016, !"cmpfunc: %a"}
!2023 = distinct !{!2023, !2018, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0"}
!2024 = distinct !{!2024, !2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a"}
!2025 = !{!2026, !2028, !1990}
!2026 = distinct !{!2026, !2027, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE: %self"}
!2027 = distinct !{!2027, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b480042379563adE"}
!2028 = distinct !{!2028, !2029, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E: %_1"}
!2029 = distinct !{!2029, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h56c53bee49976bd1E"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !1993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %a:It1"}
!2032 = !{!2033}
!2033 = distinct !{!2033, !1993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3c17560a15d07824E: %b:It1"}
!2034 = !{!2035}
!2035 = distinct !{!2035, !1998, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 0:It1"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !1998, !"_ZN4core3ops8function5FnMut8call_mut17hd899d2f04bbbbb20E: argument 1:It1"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2003, !"cmpfunc: %a:It1"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2003, !"cmpfunc: %b:It1"}
!2042 = !{!2039, !2035, !2031, !2007, !1987, !1984}
!2043 = !{!2041, !2037, !2033, !1990}
!2044 = !{!2041, !2037, !2033, !2007, !1987, !1984}
!2045 = !{!2039, !2035, !2031, !1990}
