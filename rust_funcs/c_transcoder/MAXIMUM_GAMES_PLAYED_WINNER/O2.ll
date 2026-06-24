; ModuleID = 'MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0'
source_filename = "MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>" = type { %"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", i8, [7 x i8] }
%"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>" = type { %"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" = type { [2 x i64] }

@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E" = external thread_local local_unnamed_addr global %"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>"
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_d0776666182ad032bd1011cf266e2f3a = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@anon.ad32c29cb125f5cd8d3adf20e3ffdf46.0 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @alloc_d0776666182ad032bd1011cf266e2f3a, [24 x i8] zeroinitializer }>, align 8
@alloc_1299f51153252b87bec55f9d8eb96ef9 = private unnamed_addr constant [107 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs\00", align 1
@alloc_259fc6b6cbee0e44773f194fbbadbd4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8
@alloc_70a99ab46af915d240a8ccdd1b306a78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\007\00\00\00" }>, align 8
@alloc_92d6528911e7980a8c7d58abe4cdd652 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00&\00\00\00" }>, align 8
@alloc_848a8850280af43732882781277670ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00B\00\00\00" }>, align 8

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #0 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
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

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !52, !noalias !53, !noundef !23
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !53, !noalias !52, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !69, !noalias !70, !noundef !23
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !70, !noalias !69, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !86, !noalias !87, !noundef !23
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !87, !noalias !86, !noundef !23
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !103, !noalias !104, !noundef !23
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !104, !noalias !103, !noundef !23
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !23
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !23
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !23
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !120, !noalias !121, !noundef !23
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !121, !noalias !120, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !137, !noalias !138, !noundef !23
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !138, !noalias !137, !noundef !23
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !154, !noalias !155, !noundef !23
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !155, !noalias !154, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !171, !noalias !172, !noundef !23
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !172, !noalias !171, !noundef !23
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !188, !noalias !189, !noundef !23
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !189, !noalias !188, !noundef !23
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !23
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !23
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !23
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !205, !noalias !206, !noundef !23
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !206, !noalias !205, !noundef !23
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !210, !noalias !217, !noundef !23
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !223
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !225, !noalias !232, !noundef !23
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !238
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251), !noalias !246
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !253, !noalias !254, !noundef !23
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !255, !noalias !256, !noundef !23
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !223
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268), !noalias !263
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !270, !noalias !271, !noundef !23
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !272, !noalias !273, !noundef !23
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !238
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !246
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !286, !noalias !287, !noundef !23
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !288, !noalias !289, !noundef !23
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !223
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300), !noalias !263
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !302, !noalias !303, !noundef !23
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !304, !noalias !305, !noundef !23
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !238
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314), !noalias !246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316), !noalias !246
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !318, !noalias !319, !noundef !23
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !320, !noalias !321, !noundef !23
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !223
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332), !noalias !263
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !334, !noalias !335, !noundef !23
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !336, !noalias !337, !noundef !23
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !238
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E.exit, !prof !338

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20, !noalias !207
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !339

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !340
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !340
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #22
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit12", label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  br i1 %_15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit", label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit", %bb9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit": ; preds = %bb9
  %3 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %4 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %4)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !345
  br label %bb10

bb11:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit12", %cleanup
  resume { ptr, i32 } %2

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E.exit12": ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !354
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368), !noalias !371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374), !noalias !371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376), !noalias !371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379), !noalias !371
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !381, !noalias !382, !noundef !23
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !383, !noalias !384, !noundef !23
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !385, !noalias !392, !noundef !23
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !396, !noalias !403, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #23
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412), !noalias !410
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !414, !noalias !417
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !414, !noalias !417
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !418, !noalias !419
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !418, !noalias !419
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !414, !noalias !417
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !414, !noalias !417
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !418, !noalias !419
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !418, !noalias !419
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !420

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !414, !noalias !417, !noundef !23
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !418, !noalias !419
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !414, !noalias !417
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !418, !noalias !419
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !423

_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !23
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #23
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !429
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !445, !noalias !446, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !449, !noalias !450, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !424, !noalias !451
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !467, !noalias !468, !noundef !23
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !471, !noalias !472, !noundef !23
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !424, !noalias !473
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !429, !noalias !474
  br label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit

_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #23
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #23
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !499, !noalias !500, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !502, !noalias !503, !noundef !23
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !519, !noalias !520, !noundef !23
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !521, !noalias !522, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !538, !noalias !539, !noundef !23
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !540, !noalias !541, !noundef !23
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !557, !noalias !558, !noundef !23
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !559, !noalias !560, !noundef !23
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !23
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !23
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !23
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !576, !noalias !577, !noundef !23
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !578, !noalias !579, !noundef !23
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !482, !noalias !580
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !482, !noalias !580
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !482, !noalias !580
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !482, !noalias !580
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !596, !noalias !597, !noundef !23
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !598, !noalias !599, !noundef !23
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !615, !noalias !616, !noundef !23
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !617, !noalias !618, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !634, !noalias !635, !noundef !23
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !636, !noalias !637, !noundef !23
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !653, !noalias !654, !noundef !23
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !655, !noalias !656, !noundef !23
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !23
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !23
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !23
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !23
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !672, !noalias !673, !noundef !23
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !674, !noalias !675, !noundef !23
  store i32 %14, ptr %_28.i, align 4, !alias.scope !482, !noalias !580
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !482, !noalias !580
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !482, !noalias !580
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !482, !noalias !580
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !479, !noalias !676
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !482, !noalias !580
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !479, !noalias !676
  store i32 %25, ptr %24, align 4, !alias.scope !482, !noalias !580
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !479, !noalias !676
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !482, !noalias !580
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !677, !noalias !684, !noundef !23
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !482, !noalias !580
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !688, !noalias !695, !noundef !23
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !482, !noalias !699
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !712), !noalias !715
  call void @llvm.experimental.noalias.scope.decl(metadata !718), !noalias !715
  call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !715
  call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !715
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !725, !noalias !726, !noundef !23
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !727, !noalias !728, !noundef !23
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !479, !noalias !729
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !739
  call void @llvm.experimental.noalias.scope.decl(metadata !742), !noalias !739
  call void @llvm.experimental.noalias.scope.decl(metadata !744), !noalias !739
  call void @llvm.experimental.noalias.scope.decl(metadata !747), !noalias !739
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !749, !noalias !750, !noundef !23
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !751, !noalias !752, !noundef !23
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !479, !noalias !753
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !755, !noalias !580
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !479, !noalias !756
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !338

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #20
          to label %.noexc.i unwind label %cleanup2.i, !noalias !757

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !758, !noalias !759
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !479, !noalias !676
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !482, !noalias !580
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !677, !noalias !684, !noundef !23
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !482, !noalias !580
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !688, !noalias !695, !noundef !23
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !482, !noalias !699
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !769), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !775), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !777), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !780), !noalias !772
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !782, !noalias !785, !noundef !23
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !787, !noalias !788, !noundef !23
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !789, !noalias !796, !noundef !23
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !800, !noalias !807, !noundef !23
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !338

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !816, !noalias !823, !noundef !23
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !833, !noalias !834, !noundef !23
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !814, !noalias !835
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !838, !noalias !845, !noundef !23
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !814, !noalias !849
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !852, !noalias !859, !noundef !23
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !814, !noalias !863
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !866, !noalias !873, !noundef !23
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !814, !noalias !877
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !880, !noalias !887, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !897, !noalias !898, !noundef !23
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !814, !noalias !899
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !811, !noalias !902
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !814, !noalias !905
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !906
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !814, !noalias !811
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !814, !noalias !811
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !811, !noalias !814
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !811, !noalias !814
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !907

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
  %78 = load i32, ptr %77, align 4, !alias.scope !814, !noalias !811
  store i32 %78, ptr %75, align 4, !alias.scope !811, !noalias !814
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !908

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit", !prof !909

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #20, !noalias !910
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !338

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !919, !noalias !928, !noundef !23
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !941, !noalias !942, !noundef !23
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !917, !noalias !943
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !946, !noalias !955, !noundef !23
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !917, !noalias !960
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !963, !noalias !972, !noundef !23
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !917, !noalias !977
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !980, !noalias !989, !noundef !23
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !917, !noalias !994
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !997, !noalias !1006, !noundef !23
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1019, !noalias !1020, !noundef !23
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !917, !noalias !1021
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !914, !noalias !1024
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !917, !noalias !1027
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1028
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !917, !noalias !914
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !917, !noalias !914
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !914, !noalias !917
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !914, !noalias !917
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1029

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !917, !noalias !914
  store i32 %108, ptr %105, align 4, !alias.scope !914, !noalias !917
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E.exit, label %bb42.i66, !llvm.loop !1030

_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !909

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #20
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; hashbrown::map::HashMap<K,V,S,A>::get
; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %self, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_12 = load i64, ptr %0, align 8, !noundef !23
  %_3 = icmp eq i64 %_12, 0
  br i1 %_3, label %bb5, label %bb2

bb2:                                              ; preds = %start
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1036, !noalias !1039, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %1, align 8, !alias.scope !1036, !noalias !1039, !noundef !23
  %2 = xor i64 %key0.i.i, 8317987319222330741
  %3 = xor i64 %key1.i.i, 7237128888997146477
  %4 = xor i64 %key0.i.i, 7816392313619706465
  %_3.i.i.i = load i32, ptr %k, align 4, !alias.scope !1041, !noalias !1044, !noundef !23
  %.pre.i.i.i.i.i = zext i32 %_3.i.i.i to i64
  %b.i.i.i = or disjoint i64 %.pre.i.i.i.i.i, 288230376151711744
  %5 = xor i64 %key1.i.i, %b.i.i.i
  %6 = xor i64 %5, 8387220255154660723
  %_2.i.i.i.i = add i64 %3, %2
  %_5.i.i.i.i = add i64 %6, %4
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 13)
  %8 = xor i64 %7, %_2.i.i.i.i
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 16)
  %10 = xor i64 %9, %_5.i.i.i.i
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %_5.i.i.i.i, %8
  %_19.i.i.i.i = add i64 %10, %11
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 17)
  %13 = xor i64 %_16.i.i.i.i, %12
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 21)
  %15 = xor i64 %14, %_19.i.i.i.i
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i, i64 %_16.i.i.i.i, i64 32)
  %17 = xor i64 %_19.i.i.i.i, %b.i.i.i
  %18 = xor i64 %16, 255
  %_2.i3.i.i.i = add i64 %17, %13
  %_5.i6.i.i.i = add i64 %15, %18
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 13)
  %20 = xor i64 %_2.i3.i.i.i, %19
  %21 = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %22 = xor i64 %21, %_5.i6.i.i.i
  %23 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i, i64 %_2.i3.i.i.i, i64 32)
  %_16.i7.i.i.i = add i64 %20, %_5.i6.i.i.i
  %_19.i8.i.i.i = add i64 %22, %23
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 17)
  %25 = xor i64 %_16.i7.i.i.i, %24
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 21)
  %27 = xor i64 %26, %_19.i8.i.i.i
  %28 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i, i64 %_16.i7.i.i.i, i64 32)
  %_30.i.i.i.i = add i64 %25, %_19.i8.i.i.i
  %_33.i.i.i.i = add i64 %27, %28
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13)
  %30 = xor i64 %29, %_30.i.i.i.i
  %31 = tail call noundef i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 16)
  %32 = xor i64 %31, %_33.i.i.i.i
  %33 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i, i64 %_30.i.i.i.i, i64 32)
  %_44.i.i.i.i = add i64 %30, %_33.i.i.i.i
  %_47.i.i.i.i = add i64 %32, %33
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 17)
  %35 = xor i64 %34, %_44.i.i.i.i
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 21)
  %37 = xor i64 %36, %_47.i.i.i.i
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i, i64 %_44.i.i.i.i, i64 32)
  %_58.i.i.i.i = add i64 %35, %_47.i.i.i.i
  %_61.i.i.i.i = add i64 %37, %38
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 13)
  %40 = xor i64 %39, %_58.i.i.i.i
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 16)
  %42 = xor i64 %41, %_61.i.i.i.i
  %_72.i.i.i.i = add i64 %40, %_61.i.i.i.i
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 17)
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 21)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i, i64 %_72.i.i.i.i, i64 32)
  %46 = xor i64 %44, %43
  %47 = xor i64 %46, %45
  %_0.i.i.i = xor i64 %47, %_72.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %_21.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_21.i.i to i8
  %48 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i.i = load i64, ptr %48, align 8, !alias.scope !1055, !noalias !1056, !noundef !23
  %_29.i.i = load ptr, ptr %self, align 8, !alias.scope !1055, !noalias !1056, !nonnull !23, !noundef !23
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i = getelementptr i8, ptr %_29.i.i, i64 -8
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb20.i.i, %bb2
  %probe_seq.sroa.9.0.i.i = phi i64 [ 0, %bb2 ], [ %55, %bb20.i.i ]
  %hash.pn.i = phi i64 [ %_0.i.i.i, %bb2 ], [ %56, %bb20.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i, %_26.i.i
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i17.i = load <16 x i8>, ptr %_27.i.i, align 1, !noalias !1058
  %49 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, %.sroa.0.15.vec.insert.i.i
  %50 = bitcast <16 x i1> %49 to i16
  %.not.i.not23.i = icmp eq i16 %50, 0
  br i1 %.not.i.not23.i, label %bb11.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb1.i.i, %bb17.i.i
  %iter.sroa.0.0.i24.i = phi i16 [ %_51.i.i, %bb17.i.i ], [ %50, %bb1.i.i ]
  %51 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i, i1 true)
  %_42.i.i = zext nneg i16 %51 to i64
  %_13.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_42.i.i
  %index5.i.i = and i64 %_13.i.i, %_26.i.i
  %_18.i.i = sub nsw i64 0, %index5.i.i
  %gep.i = getelementptr { i32, i32 }, ptr %invariant.gep.i, i64 %_18.i.i
  %_4.i.i.i.i.i = load i32, ptr %gep.i, align 4, !alias.scope !1061, !noalias !1068, !noundef !23
  %_0.i.i.i.i.i = icmp eq i32 %_3.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit.i, label %bb17.i.i, !prof !1074

bb11.i.i:                                         ; preds = %bb17.i.i, %bb1.i.i
  %52 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, splat (i8 -1)
  %53 = bitcast <16 x i1> %52 to i16
  %b8.not.i.i = icmp eq i16 %53, 0
  br i1 %b8.not.i.i, label %bb20.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit", !prof !909

bb17.i.i:                                         ; preds = %bb10.i.i
  %54 = add i16 %iter.sroa.0.0.i24.i, -1
  %_51.i.i = and i16 %54, %iter.sroa.0.0.i24.i
  %.not.i.not.i = icmp eq i16 %_51.i.i, 0
  br i1 %.not.i.not.i, label %bb11.i.i, label %bb10.i.i

bb20.i.i:                                         ; preds = %bb11.i.i
  %55 = add i64 %probe_seq.sroa.9.0.i.i, 16
  %56 = add i64 %probe_seq.sroa.0.0.i.i, %55
  br label %bb1.i.i

_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit.i: ; preds = %bb10.i.i
  %57 = getelementptr inbounds { i32, i32 }, ptr %_29.i.i, i64 %_18.i.i
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit": ; preds = %bb11.i.i, %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit.i
  %58 = phi ptr [ %57, %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit.i ], [ null, %bb11.i.i ]
  %.not = icmp eq ptr %58, null
  %v = getelementptr inbounds i8, ptr %58, i64 -4
  %_0.sroa.0.0 = select i1 %.not, ptr null, ptr %v
  br label %bb5

bb5:                                              ; preds = %start, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit"
  %_0.sroa.0.1 = phi ptr [ %_0.sroa.0.0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit" ], [ null, %start ]
  ret ptr %_0.sroa.0.1
}

; hashbrown::map::HashMap<K,V,S,A>::insert
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(48) %self, i32 noundef %0, i32 noundef %v) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1075, !noalias !1080, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %1, align 8, !alias.scope !1075, !noalias !1080, !noundef !23
  %2 = xor i64 %key0.i.i, 8317987319222330741
  %3 = xor i64 %key1.i.i, 7237128888997146477
  %4 = xor i64 %key0.i.i, 7816392313619706465
  %.pre.i.i.i.i.i = zext i32 %0 to i64
  %b.i.i.i = or disjoint i64 %.pre.i.i.i.i.i, 288230376151711744
  %5 = xor i64 %key1.i.i, %.pre.i.i.i.i.i
  %6 = xor i64 %5, 8098989879002948979
  %_2.i.i.i.i = add i64 %3, %2
  %_5.i.i.i.i = add i64 %6, %4
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 13)
  %8 = xor i64 %7, %_2.i.i.i.i
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 16)
  %10 = xor i64 %9, %_5.i.i.i.i
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %8, %_5.i.i.i.i
  %_19.i.i.i.i = add i64 %10, %11
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 17)
  %13 = xor i64 %_16.i.i.i.i, %12
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 21)
  %15 = xor i64 %14, %_19.i.i.i.i
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i, i64 %_16.i.i.i.i, i64 32)
  %17 = xor i64 %_19.i.i.i.i, %b.i.i.i
  %18 = xor i64 %16, 255
  %_2.i3.i.i.i = add i64 %17, %13
  %_5.i6.i.i.i = add i64 %18, %15
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 13)
  %20 = xor i64 %_2.i3.i.i.i, %19
  %21 = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %22 = xor i64 %_5.i6.i.i.i, %21
  %23 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i, i64 %_2.i3.i.i.i, i64 32)
  %_16.i7.i.i.i = add i64 %20, %_5.i6.i.i.i
  %_19.i8.i.i.i = add i64 %22, %23
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 17)
  %25 = xor i64 %_16.i7.i.i.i, %24
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 21)
  %27 = xor i64 %26, %_19.i8.i.i.i
  %28 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i, i64 %_16.i7.i.i.i, i64 32)
  %_30.i.i.i.i = add i64 %25, %_19.i8.i.i.i
  %_33.i.i.i.i = add i64 %27, %28
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13)
  %30 = xor i64 %29, %_30.i.i.i.i
  %31 = tail call noundef i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 16)
  %32 = xor i64 %31, %_33.i.i.i.i
  %33 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i, i64 %_30.i.i.i.i, i64 32)
  %_44.i.i.i.i = add i64 %30, %_33.i.i.i.i
  %_47.i.i.i.i = add i64 %32, %33
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 17)
  %35 = xor i64 %34, %_44.i.i.i.i
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 21)
  %37 = xor i64 %36, %_47.i.i.i.i
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i, i64 %_44.i.i.i.i, i64 32)
  %_58.i.i.i.i = add i64 %35, %_47.i.i.i.i
  %_61.i.i.i.i = add i64 %37, %38
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 13)
  %40 = xor i64 %39, %_58.i.i.i.i
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 16)
  %42 = xor i64 %41, %_61.i.i.i.i
  %_72.i.i.i.i = add i64 %40, %_61.i.i.i.i
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 17)
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 21)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i, i64 %_72.i.i.i.i, i64 32)
  %46 = xor i64 %43, %44
  %47 = xor i64 %46, %45
  %_0.i.i.i = xor i64 %47, %_72.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %48 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5.i.i = load i64, ptr %48, align 8, !alias.scope !1086, !noalias !1089, !noundef !23
  %b.i.i = icmp eq i64 %_5.i.i, 0
  br i1 %b.i.i, label %bb8.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i", !prof !909

bb8.i.i:                                          ; preds = %start
; call hashbrown::raw::RawTable<T,A>::reserve_rehash
  %49 = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %self, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %hash_builder, i1 noundef zeroext true), !noalias !1093
  %_8.0.i.i = extractvalue { i64, i64 } %49, 0
  %50 = icmp eq i64 %_8.0.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %50)
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i": ; preds = %bb8.i.i, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %_30.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_30.i.i to i8
  %51 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_35.i.i = load i64, ptr %51, align 8, !alias.scope !1097, !noalias !1098, !noundef !23
  %_38.i.i = load ptr, ptr %self, align 8, !alias.scope !1097, !noalias !1098, !nonnull !23, !noundef !23
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_38.i.i, i64 -8
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb9.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i"
  %hash.pn.i.i = phi i64 [ %_0.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %63, %bb9.i.i ]
  %insert_index.sroa.4.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %insert_index.sroa.4.137.i.i, %bb9.i.i ]
  %insert_index.sroa.0.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %insert_index.sroa.0.139.i.i, %bb9.i.i ]
  %52 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %62, %bb9.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i.i, %_35.i.i
  %_36.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i44.i.i = load <16 x i8>, ptr %_36.i.i, align 1, !noalias !1099
  %53 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i, %.sroa.0.15.vec.insert.i.i.i
  %54 = bitcast <16 x i1> %53 to i16
  %.not46.i.i = icmp eq i16 %54, 0
  br i1 %.not46.i.i, label %bb16.i.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb1.i.i, %bb19.i.i
  %iter.sroa.0.047.i.i = phi i16 [ %_60.i.i, %bb19.i.i ], [ %54, %bb1.i.i ]
  %55 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.047.i.i, i1 true)
  %_51.i.i = zext nneg i16 %55 to i64
  %_14.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_51.i.i
  %index6.i.i = and i64 %_14.i.i, %_35.i.i
  %_18.i.i.i = sub nsw i64 0, %index6.i.i
  %gep.i.i = getelementptr { i32, i32 }, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !alias.scope !1102, !noalias !1109, !noundef !23
  %_0.i.i.i.i.i.i = icmp eq i32 %0, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb4, label %bb19.i.i, !prof !1074

bb16.i.i:                                         ; preds = %bb19.i.i, %bb1.i.i
  %_64.not.i.i = icmp eq i64 %insert_index.sroa.0.0.i.i, 1
  br i1 %_64.not.i.i, label %bb7.i.i, label %bb21.i.i, !prof !909

bb19.i.i:                                         ; preds = %bb15.i.i
  %56 = add i16 %iter.sroa.0.047.i.i, -1
  %_60.i.i = and i16 %56, %iter.sroa.0.047.i.i
  %.not.i.i = icmp eq i16 %_60.i.i, 0
  br i1 %.not.i.i, label %bb16.i.i, label %bb15.i.i

bb21.i.i:                                         ; preds = %bb16.i.i
  %57 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i44.i.i, zeroinitializer
  %58 = bitcast <16 x i1> %57 to i16
  %.not.i.i.i = icmp eq i16 %58, 0
  br i1 %.not.i.i.i, label %bb9.i.i, label %bb6.thread41.i.i, !prof !909

bb6.thread41.i.i:                                 ; preds = %bb21.i.i
  %59 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %58, i1 true)
  %_17.i.i.i = zext nneg i16 %59 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %_35.i.i
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb6.thread41.i.i, %bb16.i.i
  %insert_index.sroa.4.138.i.i = phi i64 [ %_7.i.i.i, %bb6.thread41.i.i ], [ %insert_index.sroa.4.0.i.i, %bb16.i.i ]
  %60 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i, splat (i8 -1)
  %61 = bitcast <16 x i1> %60 to i16
  %b11.not.i.i = icmp eq i16 %61, 0
  br i1 %b11.not.i.i, label %bb9.i.i, label %bb27.i.i, !prof !909

bb9.i.i:                                          ; preds = %bb7.i.i, %bb21.i.i
  %insert_index.sroa.0.139.i.i = phi i64 [ 1, %bb7.i.i ], [ 0, %bb21.i.i ]
  %insert_index.sroa.4.137.i.i = phi i64 [ %insert_index.sroa.4.138.i.i, %bb7.i.i ], [ undef, %bb21.i.i ]
  %62 = add i64 %52, 16
  %63 = add i64 %62, %probe_seq.sroa.0.0.i.i
  br label %bb1.i.i

bb27.i.i:                                         ; preds = %bb7.i.i
  %_8.i19.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %insert_index.sroa.4.138.i.i
  %_12.i20.i.i = load i8, ptr %_8.i19.i.i, align 1, !noalias !1115, !noundef !23
  %b.i.i.i2 = icmp sgt i8 %_12.i20.i.i, -1
  br i1 %b.i.i.i2, label %bb2.i.i.i, label %bb2, !prof !909

bb2.i.i.i:                                        ; preds = %bb27.i.i
  %64 = load <16 x i8>, ptr %_38.i.i, align 16, !noalias !1118
  %65 = icmp slt <16 x i8> %64, zeroinitializer
  %66 = bitcast <16 x i1> %65 to i16
  %67 = icmp ne i16 %66, 0
  tail call void @llvm.assume(i1 %67)
  %68 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %66, i1 true)
  %_25.i.i.i = zext nneg i16 %68 to i64
  %_9.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %_25.i.i.i
  %old_ctrl.i.pre = load i8, ptr %_9.i.phi.trans.insert, align 1, !noalias !1121
  br label %bb2

bb2:                                              ; preds = %bb27.i.i, %bb2.i.i.i
  %old_ctrl.i = phi i8 [ %_12.i20.i.i, %bb27.i.i ], [ %old_ctrl.i.pre, %bb2.i.i.i ]
  %_0.sroa.3.0.i.ph.i = phi i64 [ %insert_index.sroa.4.138.i.i, %bb27.i.i ], [ %_25.i.i.i, %bb2.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %_9.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %_0.sroa.3.0.i.ph.i
  %_14.i = and i8 %old_ctrl.i, 1
  %_12.i = zext nneg i8 %_14.i to i64
  %69 = load i64, ptr %48, align 8, !alias.scope !1121, !noundef !23
  %70 = sub i64 %69, %_12.i
  store i64 %70, ptr %48, align 8, !alias.scope !1121
  %_17.i = add i64 %_0.sroa.3.0.i.ph.i, -16
  %_16.i = and i64 %_17.i, %_35.i.i
  store i8 %tag_hash.i.i, ptr %_9.i, align 1, !noalias !1121
  %71 = getelementptr i8, ptr %_38.i.i, i64 %_16.i
  %_24.i = getelementptr i8, ptr %71, i64 16
  store i8 %tag_hash.i.i, ptr %_24.i, align 1, !noalias !1121
  %72 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %73 = load i64, ptr %72, align 8, !alias.scope !1121, !noundef !23
  %74 = add i64 %73, 1
  store i64 %74, ptr %72, align 8, !alias.scope !1121
  %_37.i = sub nsw i64 0, %_0.sroa.3.0.i.ph.i
  %75 = getelementptr inbounds { i32, i32 }, ptr %_38.i.i, i64 %_37.i
  %76 = getelementptr inbounds i8, ptr %75, i64 -8
  store i32 %0, ptr %76, align 4, !noalias !1121
  br label %bb4

bb4:                                              ; preds = %bb15.i.i, %bb2
  %77 = phi i64 [ %_37.i, %bb2 ], [ %_18.i.i.i, %bb15.i.i ]
  %78 = getelementptr inbounds { i32, i32 }, ptr %_38.i.i, i64 %77
  %79 = getelementptr inbounds i8, ptr %78, i64 -4
  store i32 %v, ptr %79, align 4
  ret void
}

; hashbrown::raw::RawTable<T,A>::reserve_rehash
; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %fallibility) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1.i = load i64, ptr %1, align 8, !alias.scope !1124, !noalias !1127, !noundef !23
  %_21.0.i = add i64 %self1.i, %additional
  %_21.1.i = icmp ult i64 %_21.0.i, %self1.i
  br i1 %_21.1.i, label %bb9.i, label %bb11.i, !prof !909

bb11.i:                                           ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %3 = load i64, ptr %2, align 8, !alias.scope !1124, !noalias !1127, !noundef !23
  %_24.i = icmp ult i64 %3, 8
  %_26.i = add i64 %3, 1
  %_255.i = lshr i64 %_26.i, 3
  %4 = mul nuw i64 %_255.i, 7
  %full_capacity.sroa.0.0.i = select i1 %_24.i, i64 %3, i64 %4
  %_146.i = lshr i64 %full_capacity.sroa.0.0.i, 1
  %_13.not.i = icmp ugt i64 %_21.0.i, %_146.i
  br i1 %_13.not.i, label %bb4.i, label %bb2.i

bb9.i:                                            ; preds = %start
; call hashbrown::raw::Fallibility::capacity_overflow
  %5 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1129
  %_11.0.i = extractvalue { i64, i64 } %5, 0
  %_11.1.i = extractvalue { i64, i64 } %5, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb4.i:                                            ; preds = %bb11.i
  %_19.i = add nuw i64 %full_capacity.sroa.0.0.i, 1
  %_0.sroa.0.0.i3 = tail call noundef i64 @llvm.umax.i64(i64 %_19.i, i64 %_21.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %_6.i.i = icmp ult i64 %_0.sroa.0.0.i3, 15
  br i1 %_6.i.i, label %bb10.thread.i, label %bb16.i.i6

bb16.i.i6:                                        ; preds = %bb4.i
  %_33.1.i.i = icmp ugt i64 %_0.sroa.0.0.i3, 2305843009213693951
  br i1 %_33.1.i.i, label %bb9.i9, label %bb10.i, !prof !909

bb10.thread.i:                                    ; preds = %bb4.i
  %_15.i.i = icmp samesign ult i64 %_0.sroa.0.0.i3, 4
  %6 = and i64 %_0.sroa.0.0.i3, 8
  %..i.i = add nuw nsw i64 %6, 8
  %buckets.sroa.0.0.i.i = select i1 %_15.i.i, i64 4, i64 %..i.i
  br label %bb11.i.i.i

bb10.i:                                           ; preds = %bb16.i.i6
  %_33.0.i.i = shl nuw i64 %_0.sroa.0.0.i3, 3
  %adjusted_cap.i.i = udiv i64 %_33.0.i.i, 7
  %p.i.i = add nsw i64 %adjusted_cap.i.i, -1
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %p.i.i, i1 true)
  %8 = lshr i64 -1, %7
  %9 = add nuw nsw i64 %8, 1
  %or.cond33.i.i = icmp samesign ugt i64 %8, 2305843009213693949
  br i1 %or.cond33.i.i, label %bb3.i.i8, label %bb11.i.i.i, !prof !1133

bb11.i.i.i:                                       ; preds = %bb10.i, %bb10.thread.i
  %_0.sroa.4.0.i.ph23.i = phi i64 [ %buckets.sroa.0.0.i.i, %bb10.thread.i ], [ %9, %bb10.i ]
  %_25.0.i.i.i = shl nuw i64 %_0.sroa.4.0.i.ph23.i, 3
  %_32.0.i.i.i = add nuw i64 %_25.0.i.i.i, 15
  %ctrl_offset.i.i.i = and i64 %_32.0.i.i.i, -16
  %rhs5.i.i.i = add nuw nsw i64 %_0.sroa.4.0.i.ph23.i, 16
  %_37.0.i.i.i = add i64 %ctrl_offset.i.i.i, %rhs5.i.i.i
  %_37.1.i.i.i = icmp ult i64 %_37.0.i.i.i, %ctrl_offset.i.i.i
  %_19.i.i.i = icmp ugt i64 %_37.0.i.i.i, 9223372036854775792
  %or.cond.i.i = or i1 %_37.1.i.i.i, %_19.i.i.i
  br i1 %or.cond.i.i, label %bb3.i.i8, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i", !prof !339

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb11.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1134
; call __rustc::__rust_alloc
  %10 = tail call noundef align 16 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_37.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1134
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb15.i.i7, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit

bb3.i.i8:                                         ; preds = %bb11.i.i.i, %bb10.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %12 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1134
  br label %bb14.i.i

bb15.i.i7:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
; call hashbrown::raw::Fallibility::alloc_err
  %13 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext %fallibility, i64 noundef 16, i64 noundef %_37.0.i.i.i), !noalias !1134
  br label %bb14.i.i

bb9.i9:                                           ; preds = %bb16.i.i6
; call hashbrown::raw::Fallibility::capacity_overflow
  %14 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1139
  br label %bb14.i.i

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %_26.i.i = add nsw i64 %_0.sroa.4.0.i.ph23.i, -1
  %_35.i.i = icmp samesign ult i64 %_26.i.i, 8
  %_367.i.i = lshr i64 %_0.sroa.4.0.i.ph23.i, 3
  %15 = mul nuw nsw i64 %_367.i.i, 7
  %bucket_mask.sroa.0.0.i.i = select i1 %_35.i.i, i64 %_26.i.i, i64 %15
  %ptr.i.i = getelementptr inbounds nuw i8, ptr %10, i64 %ctrl_offset.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %ptr.i.i, i8 -1, i64 %rhs5.i.i.i, i1 false), !noalias !1139
  %16 = ptrtoint ptr %ptr.i.i to i64
  %invariant.gep = getelementptr i8, ptr %ptr.i.i, i64 16
  %_69.not.i.i61 = icmp eq i64 %self1.i, 0
  br i1 %_69.not.i.i61, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit.bb4.i.i_crit_edge, label %bb1.i.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit.bb4.i.i_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit
  %_3.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %self, align 8, !alias.scope !1140, !noalias !1143
  %_3.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %_3.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %bb4.i.i

bb1.i.preheader.lr.ph:                            ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit
  %_58.i.i = load ptr, ptr %self, align 8, !alias.scope !1145, !noalias !1146, !nonnull !23, !noundef !23
  %17 = load <16 x i8>, ptr %_58.i.i, align 16, !noalias !1148
  %18 = icmp slt <16 x i8> %17, zeroinitializer
  %19 = bitcast <16 x i1> %18 to i16
  %_67.i.i = xor i16 %19, -1
  %invariant.gep66 = getelementptr i8, ptr %_58.i.i, i64 -8
  %key0.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !1151, !noalias !1156, !noundef !23
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i = load i64, ptr %20, align 8, !alias.scope !1151, !noalias !1156, !noundef !23
  %21 = xor i64 %key0.i.i.i.i, 8317987319222330741
  %22 = xor i64 %key1.i.i.i.i, 7237128888997146477
  %23 = xor i64 %key0.i.i.i.i, 7816392313619706465
  %_2.i.i.i.i.i.i = add i64 %22, %21
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 13)
  %25 = xor i64 %24, %_2.i.i.i.i.i.i
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i, i64 32)
  %invariant.op68 = add i64 %23, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 17)
  %invariant.op96 = xor i64 %key1.i.i.i.i, 8387220255154660723
  br label %bb1.i.preheader

bb14.i.i:                                         ; preds = %bb3.i.i8, %bb15.i.i7, %bb9.i9
  %.pn = phi { i64, i64 } [ %14, %bb9.i9 ], [ %13, %bb15.i.i7 ], [ %12, %bb3.i.i8 ]
  %self1.sroa.7.0.i.i.ph = extractvalue { i64, i64 } %.pn, 0
  %self1.sroa.9.0.i.i.ph = extractvalue { i64, i64 } %.pn, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb1.i.preheader:                                  ; preds = %bb1.i.preheader.lr.ph, %bb22.i.i
  %iter.i.i.sroa.0.065 = phi ptr [ %_58.i.i, %bb1.i.preheader.lr.ph ], [ %iter.i.i.sroa.0.2.lcssa, %bb22.i.i ]
  %iter.i.i.sroa.5.064 = phi i64 [ 0, %bb1.i.preheader.lr.ph ], [ %iter.i.i.sroa.5.2.lcssa, %bb22.i.i ]
  %iter.i.i.sroa.9.063 = phi i64 [ %self1.i, %bb1.i.preheader.lr.ph ], [ %34, %bb22.i.i ]
  %iter.i.i.sroa.13.062 = phi i16 [ %_67.i.i, %bb1.i.preheader.lr.ph ], [ %_31.i, %bb22.i.i ]
  %.not.i56 = icmp eq i16 %iter.i.i.sroa.13.062, 0
  br i1 %.not.i56, label %_42.i.noexc, label %bb18.i.i

_42.i.noexc:                                      ; preds = %bb1.i.preheader, %_42.i.noexc
  %iter.i.i.sroa.0.258 = phi ptr [ %ptr.i, %_42.i.noexc ], [ %iter.i.i.sroa.0.065, %bb1.i.preheader ]
  %iter.i.i.sroa.5.257 = phi i64 [ %31, %_42.i.noexc ], [ %iter.i.i.sroa.5.064, %bb1.i.preheader ]
  %ptr.i = getelementptr inbounds nuw i8, ptr %iter.i.i.sroa.0.258, i64 16
  %28 = load <16 x i8>, ptr %ptr.i, align 16, !noalias !1165
  %29 = icmp slt <16 x i8> %28, zeroinitializer
  %30 = bitcast <16 x i1> %29 to i16
  %31 = add i64 %iter.i.i.sroa.5.257, 16
  %.not.i = icmp eq i16 %30, -1
  br i1 %.not.i, label %_42.i.noexc, label %bb18.i.i.loopexit

bb18.i.i.loopexit:                                ; preds = %_42.i.noexc
  %_43.i = xor i16 %30, -1
  br label %bb18.i.i

bb18.i.i:                                         ; preds = %bb18.i.i.loopexit, %bb1.i.preheader
  %iter.i.i.sroa.13.2.lcssa = phi i16 [ %iter.i.i.sroa.13.062, %bb1.i.preheader ], [ %_43.i, %bb18.i.i.loopexit ]
  %iter.i.i.sroa.5.2.lcssa = phi i64 [ %iter.i.i.sroa.5.064, %bb1.i.preheader ], [ %31, %bb18.i.i.loopexit ]
  %iter.i.i.sroa.0.2.lcssa = phi ptr [ %iter.i.i.sroa.0.065, %bb1.i.preheader ], [ %ptr.i, %bb18.i.i.loopexit ]
  %32 = add i16 %iter.i.i.sroa.13.2.lcssa, -1
  %33 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.i.i.sroa.13.2.lcssa, i1 true)
  %_22.i = zext nneg i16 %33 to i64
  %_31.i = and i16 %32, %iter.i.i.sroa.13.2.lcssa
  %_5.i = add i64 %iter.i.i.sroa.5.2.lcssa, %_22.i
  %34 = add i64 %iter.i.i.sroa.9.063, -1
  %_18.i = sub nsw i64 0, %_5.i
  %gep67 = getelementptr { i32, i32 }, ptr %invariant.gep66, i64 %_18.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %_3.i.i.i.i.i = load i32, ptr %gep67, align 4, !alias.scope !1171, !noalias !1174, !noundef !23
  %.pre.i.i.i.i.i.i.i = zext i32 %_3.i.i.i.i.i to i64
  %b.i.i.i.i.i = or disjoint i64 %.pre.i.i.i.i.i.i.i, 288230376151711744
  %.reass80.reass = xor i64 %b.i.i.i.i.i, %invariant.op96
  %_5.i.i.i.i.i.i = add i64 %.reass80.reass, %23
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass80.reass, i64 %.reass80.reass, i64 16)
  %36 = xor i64 %35, %_5.i.i.i.i.i.i
  %_16.i.i.i.i.i.i.reass = add i64 %.reass80.reass, %invariant.op68
  %_19.i.i.i.i.i.i = add i64 %36, %26
  %37 = xor i64 %_16.i.i.i.i.i.i.reass, %27
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 21)
  %39 = xor i64 %38, %_19.i.i.i.i.i.i
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.reass, i64 32)
  %41 = xor i64 %_19.i.i.i.i.i.i, %b.i.i.i.i.i
  %42 = xor i64 %40, 255
  %_2.i3.i.i.i.i.i = add i64 %41, %37
  %_5.i6.i.i.i.i.i = add i64 %39, %42
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 13)
  %44 = xor i64 %_2.i3.i.i.i.i.i, %43
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 16)
  %46 = xor i64 %45, %_5.i6.i.i.i.i.i
  %47 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i = add i64 %44, %_5.i6.i.i.i.i.i
  %_19.i8.i.i.i.i.i = add i64 %46, %47
  %48 = tail call noundef i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 17)
  %49 = xor i64 %_16.i7.i.i.i.i.i, %48
  %50 = tail call noundef i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 21)
  %51 = xor i64 %50, %_19.i8.i.i.i.i.i
  %52 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i = add i64 %49, %_19.i8.i.i.i.i.i
  %_33.i.i.i.i.i.i = add i64 %51, %52
  %53 = tail call noundef i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 13)
  %54 = xor i64 %53, %_30.i.i.i.i.i.i
  %55 = tail call noundef i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 16)
  %56 = xor i64 %55, %_33.i.i.i.i.i.i
  %57 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i = add i64 %54, %_33.i.i.i.i.i.i
  %_47.i.i.i.i.i.i = add i64 %56, %57
  %58 = tail call noundef i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 17)
  %59 = xor i64 %58, %_44.i.i.i.i.i.i
  %60 = tail call noundef i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 21)
  %61 = xor i64 %60, %_47.i.i.i.i.i.i
  %62 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i = add i64 %59, %_47.i.i.i.i.i.i
  %_61.i.i.i.i.i.i = add i64 %61, %62
  %63 = tail call noundef i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 13)
  %64 = xor i64 %63, %_58.i.i.i.i.i.i
  %65 = tail call noundef i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 16)
  %66 = xor i64 %65, %_61.i.i.i.i.i.i
  %_72.i.i.i.i.i.i = add i64 %64, %_61.i.i.i.i.i.i
  %67 = tail call noundef i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 17)
  %68 = tail call noundef i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 21)
  %69 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i, i64 32)
  %70 = xor i64 %68, %67
  %71 = xor i64 %70, %69
  %_0.i.i.i.i.i = xor i64 %71, %_72.i.i.i.i.i.i
  %probe_seq.sroa.0.010.i = and i64 %_0.i.i.i.i.i, %_26.i.i
  %_1811.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %probe_seq.sroa.0.010.i
  %dst.sroa.0.0.copyload.i912.i = load <16 x i8>, ptr %_1811.i, align 1, !noalias !1179
  %72 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i912.i, zeroinitializer
  %73 = bitcast <16 x i1> %72 to i16
  %.not.i13.i = icmp eq i16 %73, 0
  br i1 %.not.i13.i, label %bb6.i, label %bb9.i15, !prof !1184

bb4.i.i:                                          ; preds = %bb22.i.i, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit.bb4.i.i_crit_edge
  %_3.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %_3.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit.bb4.i.i_crit_edge ], [ %_58.i.i, %bb22.i.i ]
  %74 = sub i64 %bucket_mask.sroa.0.0.i.i, %self1.i
  store i64 %16, ptr %self, align 8, !alias.scope !1140, !noalias !1143
  store i64 %_26.i.i, ptr %2, align 8, !alias.scope !1185, !noalias !1187
  %_11.i.i.2.i.i = getelementptr inbounds nuw i8, ptr %self, i64 16
  store i64 %74, ptr %_11.i.i.2.i.i, align 8, !alias.scope !1189, !noalias !1191
  %_3.i.i.i = icmp eq i64 %3, 0
  br i1 %_3.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb4.i.i
  %_10.i.i.i = shl i64 %3, 3
  %75 = add i64 %_10.i.i.i, 8
  %_32.0.i.i.i.i = add i64 %_10.i.i.i, 23
  %_32.1.i.i.i.i = icmp uge i64 %_32.0.i.i.i.i, %75
  tail call void @llvm.assume(i1 %_32.1.i.i.i.i)
  %ctrl_offset.i.i.i.i = and i64 %_32.0.i.i.i.i, -16
  %rhs5.i.i.i.i = add i64 %3, 17
  %_37.0.i.i.i.i = add i64 %rhs5.i.i.i.i, %ctrl_offset.i.i.i.i
  %_37.1.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i, %ctrl_offset.i.i.i.i
  %_19.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i)
  %_4.not.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit, label %bb1.i1.i.i.i

bb1.i1.i.i.i:                                     ; preds = %bb1.i.i.i
  %_18.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i
  %ptr.i.i.i = getelementptr inbounds i8, ptr %_3.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %_18.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i, i64 noundef %_37.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1193
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb6.i:                                            ; preds = %bb18.i.i, %bb6.i
  %probe_seq.sroa.0.014.i = phi i64 [ %probe_seq.sroa.0.0.i, %bb6.i ], [ %probe_seq.sroa.0.010.i, %bb18.i.i ]
  %76 = phi i64 [ %77, %bb6.i ], [ 0, %bb18.i.i ]
  %77 = add i64 %76, 16
  %78 = add i64 %77, %probe_seq.sroa.0.014.i
  %probe_seq.sroa.0.0.i = and i64 %78, %_26.i.i
  %_18.i17 = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %probe_seq.sroa.0.0.i
  %dst.sroa.0.0.copyload.i9.i = load <16 x i8>, ptr %_18.i17, align 1, !noalias !1179
  %79 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i9.i, zeroinitializer
  %80 = bitcast <16 x i1> %79 to i16
  %.not.i.i = icmp eq i16 %80, 0
  br i1 %.not.i.i, label %bb6.i, label %bb9.i15, !prof !1201

bb9.i15:                                          ; preds = %bb6.i, %bb18.i.i
  %probe_seq.sroa.0.0.lcssa.i = phi i64 [ %probe_seq.sroa.0.010.i, %bb18.i.i ], [ %probe_seq.sroa.0.0.i, %bb6.i ]
  %.lcssa.i = phi i16 [ %73, %bb18.i.i ], [ %80, %bb6.i ]
  %81 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %_17.i.i = zext nneg i16 %81 to i64
  %_8.i.i = add nuw nsw i64 %probe_seq.sroa.0.0.lcssa.i, %_17.i.i
  %_7.i.i = and i64 %_8.i.i, %_26.i.i
  %_8.i4.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %_7.i.i
  %_12.i.i = load i8, ptr %_8.i4.i, align 1, !noalias !1202, !noundef !23
  %b.i.i = icmp sgt i8 %_12.i.i, -1
  br i1 %b.i.i, label %bb2.i.i16, label %bb22.i.i, !prof !909

bb2.i.i16:                                        ; preds = %bb9.i15
  %82 = load <16 x i8>, ptr %ptr.i.i, align 16, !noalias !1205
  %83 = icmp slt <16 x i8> %82, zeroinitializer
  %84 = bitcast <16 x i1> %83 to i16
  %85 = icmp ne i16 %84, 0
  tail call void @llvm.assume(i1 %85)
  %86 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %84, i1 true)
  %_25.i.i = zext nneg i16 %86 to i64
  br label %bb22.i.i

bb22.i.i:                                         ; preds = %bb2.i.i16, %bb9.i15
  %index.sroa.0.0.i.i = phi i64 [ %_25.i.i, %bb2.i.i16 ], [ %_7.i.i, %bb9.i15 ]
  %_75.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 %index.sroa.0.0.i.i
  %_79.i.i = lshr i64 %_0.i.i.i.i.i, 57
  %_80.i.i = trunc nuw nsw i64 %_79.i.i to i8
  %_84.i.i = add nsw i64 %index.sroa.0.0.i.i, -16
  %_83.i.i = and i64 %_84.i.i, %_26.i.i
  store i8 %_80.i.i, ptr %_75.i.i, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %_83.i.i
  store i8 %_80.i.i, ptr %gep, align 1
  %_96.i.i = shl i64 %_5.i, 3
  %_98.i.i = sub nuw nsw i64 -8, %_96.i.i
  %_23.i.i = getelementptr inbounds i8, ptr %_58.i.i, i64 %_98.i.i
  %_102.i.i = shl i64 %index.sroa.0.0.i.i, 3
  %_104.i.i = sub nuw nsw i64 -8, %_102.i.i
  %dst.i.i = getelementptr inbounds i8, ptr %ptr.i.i, i64 %_104.i.i
  %87 = load i64, ptr %_23.i.i, align 1
  store i64 %87, ptr %dst.i.i, align 8
  %_69.not.i.i = icmp eq i64 %34, 0
  br i1 %_69.not.i.i, label %bb4.i.i, label %bb1.i.preheader

bb2.i:                                            ; preds = %bb11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211), !noalias !1127
  %_27.not6.i.i = icmp eq i64 %_26.i, 0
  %_52.i.pre.pre.i = load ptr, ptr %self, align 8, !alias.scope !1214, !noalias !1127
  br i1 %_27.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit, label %bb6.lr.ph.i.i

bb6.lr.ph.i.i:                                    ; preds = %bb2.i
  %d9.i.i.i.i = lshr i64 %_26.i, 4
  %r2.i.i.i.i = and i64 %_26.i, 15
  %_19.not.i.i.i.i = icmp ne i64 %r2.i.i.i.i, 0
  %88 = zext i1 %_19.not.i.i.i.i to i64
  %yield_count.sroa.0.0.i.i.i.i = add nuw nsw i64 %d9.i.i.i.i, %88
  %xtraiter = and i64 %yield_count.sroa.0.0.i.i.i.i, 1
  %89 = icmp eq i64 %yield_count.sroa.0.0.i.i.i.i, 1
  br i1 %89, label %bb7.i.i.unr-lcssa, label %bb6.lr.ph.i.i.new

bb6.lr.ph.i.i.new:                                ; preds = %bb6.lr.ph.i.i
  %unroll_iter = and i64 %yield_count.sroa.0.0.i.i.i.i, 2305843009213693950
  %invariant.gep93 = getelementptr i8, ptr %_52.i.pre.pre.i, i64 16
  br label %bb6.i.i

bb7.i.i.unr-lcssa:                                ; preds = %bb6.i.i, %bb6.lr.ph.i.i
  %iter.sroa.0.08.i.i.unr = phi i64 [ 0, %bb6.lr.ph.i.i ], [ %_29.i.i.1, %bb6.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7.i.i, label %bb6.i.i.epil

bb6.i.i.epil:                                     ; preds = %bb7.i.i.unr-lcssa
  %_34.i.i.epil = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.08.i.i.unr
  %90 = load <16 x i8>, ptr %_34.i.i.epil, align 16, !noalias !1215
  %_410.lobit.i.i.i.epil = ashr <16 x i8> %90, splat (i8 7)
  %91 = bitcast <16 x i8> %_410.lobit.i.i.i.epil to <2 x i64>
  %92 = or <2 x i64> %91, splat (i64 -9187201950435737472)
  store <2 x i64> %92, ptr %_34.i.i.epil, align 16, !noalias !1218
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb7.i.i.unr-lcssa, %bb6.i.i.epil
  %._4.i.i = tail call i64 @llvm.umax.i64(i64 %_26.i, i64 16)
  %_4.i..i = tail call i64 @llvm.umin.i64(i64 %_26.i, i64 16)
  %_53.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %._4.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i, ptr nonnull align 1 %_52.i.pre.pre.i, i64 %_4.i..i, i1 false), !noalias !1221
  %invariant.gep28.i = getelementptr i8, ptr %_52.i.pre.pre.i, i64 -8
  %invariant.gep.i = getelementptr i8, ptr %_52.i.pre.pre.i, i64 16
  %key0.i.i.i.i.i = load i64, ptr %0, align 8
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i.i = load i64, ptr %93, align 8
  %94 = xor i64 %key0.i.i.i.i.i, 8317987319222330741
  %95 = xor i64 %key1.i.i.i.i.i, 7237128888997146477
  %96 = xor i64 %key0.i.i.i.i.i, 7816392313619706465
  %_2.i.i.i.i.i.i.i = add i64 %95, %94
  %97 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 13)
  %98 = xor i64 %97, %_2.i.i.i.i.i.i.i
  %99 = tail call i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i.i, i64 32)
  %invariant.op = add i64 %96, %98
  %100 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 17)
  %invariant.op95 = xor i64 %key1.i.i.i.i.i, 8387220255154660723
  br label %bb4.i18

bb6.i.i:                                          ; preds = %bb6.i.i, %bb6.lr.ph.i.i.new
  %iter.sroa.0.08.i.i = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %_29.i.i.1, %bb6.i.i ]
  %niter = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %niter.next.1, %bb6.i.i ]
  %_34.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.08.i.i
  %101 = load <16 x i8>, ptr %_34.i.i, align 16, !noalias !1215
  %_410.lobit.i.i.i = ashr <16 x i8> %101, splat (i8 7)
  %102 = bitcast <16 x i8> %_410.lobit.i.i.i to <2 x i64>
  %103 = or <2 x i64> %102, splat (i64 -9187201950435737472)
  store <2 x i64> %103, ptr %_34.i.i, align 16, !noalias !1218
  %_29.i.i.1 = add i64 %iter.sroa.0.08.i.i, 32
  %gep94 = getelementptr i8, ptr %invariant.gep93, i64 %iter.sroa.0.08.i.i
  %104 = load <16 x i8>, ptr %gep94, align 16, !noalias !1215
  %_410.lobit.i.i.i.1 = ashr <16 x i8> %104, splat (i8 7)
  %105 = bitcast <16 x i8> %_410.lobit.i.i.i.1 to <2 x i64>
  %106 = or <2 x i64> %105, splat (i64 -9187201950435737472)
  store <2 x i64> %106, ptr %gep94, align 16, !noalias !1218
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.i.i.unr-lcssa, label %bb6.i.i

bb4.i18:                                          ; preds = %bb14.i, %bb7.i.i
  %iter.sroa.0.127.i = phi i64 [ 1, %bb7.i.i ], [ %iter.sroa.0.1.i, %bb14.i ]
  %iter.sroa.0.026.i = phi i64 [ 0, %bb7.i.i ], [ %iter.sroa.0.127.i, %bb14.i ]
  %_69.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %iter.sroa.0.026.i
  %_73.i = load i8, ptr %_69.i, align 1, !noalias !1222, !noundef !23
  %_72.not.i = icmp eq i8 %_73.i, -128
  br i1 %_72.not.i, label %bb7.i, label %bb14.i

bb7.i:                                            ; preds = %bb4.i18
  %_76.i = shl i64 %iter.sroa.0.026.i, 3
  %_78.i = sub nuw nsw i64 -8, %_76.i
  %i_p.i = getelementptr inbounds i8, ptr %_52.i.pre.pre.i, i64 %_78.i
  %_18.i.i = sub nsw i64 0, %iter.sroa.0.026.i
  %gep29.i = getelementptr { i32, i32 }, ptr %invariant.gep28.i, i64 %_18.i.i
  br label %bb9.i19

bb9.i19:                                          ; preds = %bb12.i23, %bb7.i
  %_3.i.i.i.i.i.i = load i32, ptr %gep29.i, align 4, !alias.scope !1223, !noalias !1230, !noundef !23
  %.pre.i.i.i.i.i.i.i.i = zext i32 %_3.i.i.i.i.i.i to i64
  %b.i.i.i.i.i.i = or disjoint i64 %.pre.i.i.i.i.i.i.i.i, 288230376151711744
  %.reass.reass = xor i64 %b.i.i.i.i.i.i, %invariant.op95
  %_5.i.i.i.i.i.i.i = add i64 %.reass.reass, %96
  %107 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass.reass, i64 %.reass.reass, i64 16)
  %108 = xor i64 %107, %_5.i.i.i.i.i.i.i
  %_16.i.i.i.i.i.i.i.reass = add i64 %.reass.reass, %invariant.op
  %_19.i.i.i.i.i.i.i = add i64 %108, %99
  %109 = xor i64 %_16.i.i.i.i.i.i.i.reass, %100
  %110 = tail call noundef i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 21)
  %111 = xor i64 %110, %_19.i.i.i.i.i.i.i
  %112 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.i.reass, i64 32)
  %113 = xor i64 %_19.i.i.i.i.i.i.i, %b.i.i.i.i.i.i
  %114 = xor i64 %112, 255
  %_2.i3.i.i.i.i.i.i = add i64 %113, %109
  %_5.i6.i.i.i.i.i.i = add i64 %111, %114
  %115 = tail call noundef i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 13)
  %116 = xor i64 %_2.i3.i.i.i.i.i.i, %115
  %117 = tail call noundef i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 16)
  %118 = xor i64 %117, %_5.i6.i.i.i.i.i.i
  %119 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i.i = add i64 %116, %_5.i6.i.i.i.i.i.i
  %_19.i8.i.i.i.i.i.i = add i64 %118, %119
  %120 = tail call noundef i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 17)
  %121 = xor i64 %_16.i7.i.i.i.i.i.i, %120
  %122 = tail call noundef i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 21)
  %123 = xor i64 %122, %_19.i8.i.i.i.i.i.i
  %124 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i.i = add i64 %121, %_19.i8.i.i.i.i.i.i
  %_33.i.i.i.i.i.i.i = add i64 %123, %124
  %125 = tail call noundef i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 13)
  %126 = xor i64 %125, %_30.i.i.i.i.i.i.i
  %127 = tail call noundef i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 16)
  %128 = xor i64 %127, %_33.i.i.i.i.i.i.i
  %129 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i.i = add i64 %126, %_33.i.i.i.i.i.i.i
  %_47.i.i.i.i.i.i.i = add i64 %128, %129
  %130 = tail call noundef i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 17)
  %131 = xor i64 %130, %_44.i.i.i.i.i.i.i
  %132 = tail call noundef i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 21)
  %133 = xor i64 %132, %_47.i.i.i.i.i.i.i
  %134 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i.i = add i64 %131, %_47.i.i.i.i.i.i.i
  %_61.i.i.i.i.i.i.i = add i64 %133, %134
  %135 = tail call noundef i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 13)
  %136 = xor i64 %135, %_58.i.i.i.i.i.i.i
  %137 = tail call noundef i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 16)
  %138 = xor i64 %137, %_61.i.i.i.i.i.i.i
  %_72.i.i.i.i.i.i.i = add i64 %136, %_61.i.i.i.i.i.i.i
  %139 = tail call noundef i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 17)
  %140 = tail call noundef i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 21)
  %141 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i.i, i64 32)
  %142 = xor i64 %140, %139
  %143 = xor i64 %142, %141
  %_0.i.i.i.i.i.i = xor i64 %143, %_72.i.i.i.i.i.i.i
  %probe_seq.sroa.0.010.i.i = and i64 %_0.i.i.i.i.i.i, %3
  %_1811.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %probe_seq.sroa.0.010.i.i
  %dst.sroa.0.0.copyload.i912.i.i = load <16 x i8>, ptr %_1811.i.i, align 1, !noalias !1240
  %144 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i912.i.i, zeroinitializer
  %145 = bitcast <16 x i1> %144 to i16
  %.not.i13.i.i = icmp eq i16 %145, 0
  br i1 %.not.i13.i.i, label %bb6.i19.i, label %bb9.i.i21, !prof !1184

bb6.i19.i:                                        ; preds = %bb9.i19, %bb6.i19.i
  %probe_seq.sroa.0.014.i.i = phi i64 [ %probe_seq.sroa.0.0.i.i, %bb6.i19.i ], [ %probe_seq.sroa.0.010.i.i, %bb9.i19 ]
  %146 = phi i64 [ %147, %bb6.i19.i ], [ 0, %bb9.i19 ]
  %147 = add i64 %146, 16
  %148 = add i64 %147, %probe_seq.sroa.0.014.i.i
  %probe_seq.sroa.0.0.i.i = and i64 %148, %3
  %_18.i20.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i9.i.i = load <16 x i8>, ptr %_18.i20.i, align 1, !noalias !1240
  %149 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i9.i.i, zeroinitializer
  %150 = bitcast <16 x i1> %149 to i16
  %.not.i.i.i = icmp eq i16 %150, 0
  br i1 %.not.i.i.i, label %bb6.i19.i, label %bb9.i.i21, !prof !1201

bb9.i.i21:                                        ; preds = %bb6.i19.i, %bb9.i19
  %probe_seq.sroa.0.0.lcssa.i.i = phi i64 [ %probe_seq.sroa.0.010.i.i, %bb9.i19 ], [ %probe_seq.sroa.0.0.i.i, %bb6.i19.i ]
  %.lcssa.i.i = phi i16 [ %145, %bb9.i19 ], [ %150, %bb6.i19.i ]
  %151 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %_17.i.i.i = zext nneg i16 %151 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.lcssa.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %3
  %_8.i4.i.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %_7.i.i.i
  %_12.i.i.i = load i8, ptr %_8.i4.i.i, align 1, !noalias !1245, !noundef !23
  %b.i.i.i = icmp sgt i8 %_12.i.i.i, -1
  br i1 %b.i.i.i, label %bb2.i.i.i, label %bb10.i22, !prof !909

bb2.i.i.i:                                        ; preds = %bb9.i.i21
  %152 = load <16 x i8>, ptr %_52.i.pre.pre.i, align 16, !noalias !1248
  %153 = icmp slt <16 x i8> %152, zeroinitializer
  %154 = bitcast <16 x i1> %153 to i16
  %155 = icmp ne i16 %154, 0
  tail call void @llvm.assume(i1 %155), !noalias !1127
  %156 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %154, i1 true)
  %_25.i.i.i = zext nneg i16 %156 to i64
  br label %bb10.i22

bb10.i22:                                         ; preds = %bb2.i.i.i, %bb9.i.i21
  %index.sroa.0.0.i.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i ], [ %_7.i.i.i, %bb9.i.i21 ]
  %_86.i = sub i64 %iter.sroa.0.026.i, %probe_seq.sroa.0.010.i.i
  %_88.i = sub i64 %index.sroa.0.0.i.i.i, %probe_seq.sroa.0.010.i.i
  %_8518.i = xor i64 %_88.i, %_86.i
  %b.unshifted.i = and i64 %_8518.i, %3
  %b.i = icmp ult i64 %b.unshifted.i, 16
  br i1 %b.i, label %bb20.i, label %bb21.i, !prof !1074

bb21.i:                                           ; preds = %bb10.i22
  %_108.i = shl i64 %index.sroa.0.0.i.i.i, 3
  %_110.i = sub nuw nsw i64 -8, %_108.i
  %new_i_p.i = getelementptr inbounds i8, ptr %_52.i.pre.pre.i, i64 %_110.i
  %_113.i = getelementptr inbounds nuw i8, ptr %_52.i.pre.pre.i, i64 %index.sroa.0.0.i.i.i
  %prev_ctrl.i = load i8, ptr %_113.i, align 1, !noalias !1222, !noundef !23
  %_117.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_118.i = trunc nuw nsw i64 %_117.i to i8
  %_122.i = add i64 %index.sroa.0.0.i.i.i, -16
  %_121.i = and i64 %_122.i, %3
  store i8 %_118.i, ptr %_113.i, align 1, !noalias !1222
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %_121.i
  store i8 %_118.i, ptr %gep.i, align 1, !noalias !1222
  %_33.i = icmp eq i8 %prev_ctrl.i, -1
  br i1 %_33.i, label %bb11.i26, label %bb12.i23

bb20.i:                                           ; preds = %bb10.i22
  %_91.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_92.i = trunc nuw nsw i64 %_91.i to i8
  %_96.i = add i64 %iter.sroa.0.026.i, -16
  %_95.i = and i64 %_96.i, %3
  store i8 %_92.i, ptr %_69.i, align 1, !noalias !1222
  %gep33.i = getelementptr i8, ptr %invariant.gep.i, i64 %_95.i
  store i8 %_92.i, ptr %gep33.i, align 1, !noalias !1222
  br label %bb14.i

bb12.i23:                                         ; preds = %bb21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251), !noalias !1127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254), !noalias !1127
  %_3.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %i_p.i, align 1, !alias.scope !1251, !noalias !1256
  %_4.sroa.0.0.copyload.i.i.i.i.i25 = load i64, ptr %new_i_p.i, align 1, !alias.scope !1254, !noalias !1257
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i25, ptr %i_p.i, align 1, !alias.scope !1251, !noalias !1256
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i24, ptr %new_i_p.i, align 1, !alias.scope !1254, !noalias !1257
  br label %bb9.i19

bb11.i26:                                         ; preds = %bb21.i
  %_135.i = add i64 %iter.sroa.0.026.i, -16
  %_134.i = and i64 %_135.i, %3
  store i8 -1, ptr %_69.i, align 1, !noalias !1222
  %gep31.i = getelementptr i8, ptr %invariant.gep.i, i64 %_134.i
  store i8 -1, ptr %gep31.i, align 1, !noalias !1222
  %157 = load i64, ptr %i_p.i, align 1, !noalias !1222
  store i64 %157, ptr %new_i_p.i, align 1, !noalias !1222
  br label %bb14.i

bb14.i:                                           ; preds = %bb11.i26, %bb20.i, %bb4.i18
  %_62.i = icmp ult i64 %iter.sroa.0.127.i, %_26.i
  %_66.i = zext i1 %_62.i to i64
  %iter.sroa.0.1.i = add nuw i64 %iter.sroa.0.127.i, %_66.i
  br i1 %_62.i, label %bb4.i18, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit: ; preds = %bb14.i, %bb2.i
  %158 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %159 = sub i64 %full_capacity.sroa.0.0.i, %self1.i
  store i64 %159, ptr %158, align 8, !alias.scope !1208, !noalias !1127
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit: ; preds = %bb1.i1.i.i.i, %bb1.i.i.i, %bb4.i.i, %bb14.i.i, %bb9.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit
  %_0.sroa.4.0.i = phi i64 [ %_11.1.i, %bb9.i ], [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self1.sroa.9.0.i.i.ph, %bb14.i.i ], [ undef, %bb4.i.i ], [ undef, %bb1.i.i.i ], [ undef, %bb1.i1.i.i.i ]
  %_0.sroa.0.0.i = phi i64 [ %_11.0.i, %bb9.i ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self1.sroa.7.0.i.i.ph, %bb14.i.i ], [ -9223372036854775807, %bb4.i.i ], [ -9223372036854775807, %bb1.i.i.i ], [ -9223372036854775807, %bb1.i1.i.i.i ]
  %160 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0.i, 0
  %161 = insertvalue { i64, i64 } %160, i64 %_0.sroa.4.0.i, 1
  ret { i64, i64 } %161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #5 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !23
  %_4 = load i32, ptr %b, align 4, !noundef !23
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_29 = alloca [4 x i8], align 4
  %_24 = alloca [4 x i8], align 4
  %_16 = alloca [4 x i8], align 4
  %_11 = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dp)
  %_3.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i, align 8, !range !1258, !noalias !1259, !noundef !23
  %_4.i.i.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i.i.i, label %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i", !prof !1074

start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i: ; preds = %start
  %_9.i.pre.i.i = load i64, ptr %_3.i.i.i.i, align 8, !noalias !1268
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 8
  %_10.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1268
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i": ; preds = %start
; call std::sys::random::linux::hashmap_random_keys
  %1 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE(), !noalias !1269
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 8
  store i64 %3, ptr %4, align 8, !noalias !1269
  store i8 1, ptr %_12.i.i.i.i.i, align 8, !noalias !1269
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit": ; preds = %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i"
  %_31.1.pre-phi = phi i64 [ %_10.i.pre.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i ], [ %3, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i" ]
  %_9.i.i.i = phi i64 [ %_9.i.pre.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i ], [ %2, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i" ]
  %_4.i.i.i = add i64 %_9.i.i.i, 1
  store i64 %_4.i.i.i, ptr %_3.i.i.i.i, align 8, !noalias !1268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %dp, ptr noundef nonnull align 8 dereferenceable(32) @anon.ad32c29cb125f5cd8d3adf20e3ffdf46.0, i64 32, i1 false)
  %_32.sroa.4.0.dp.sroa_idx = getelementptr inbounds nuw i8, ptr %dp, i64 32
  store i64 %_9.i.i.i, ptr %_32.sroa.4.0.dp.sroa_idx, align 8
  %_32.sroa.5.0.dp.sroa_idx = getelementptr inbounds nuw i8, ptr %dp, i64 40
  store i64 %_31.1.pre-phi, ptr %_32.sroa.5.0.dp.sroa_idx, align 8
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef 0, i32 noundef 1)
          to label %bb8 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb23
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit", %bb8, %bb12.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !1287, !noundef !23
  %_4.i.i.i.i.i10 = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i10, label %bb6, label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %cleanup
  %_10.i.i.i.i.i = shl i64 %_6.i.i.i.i.i, 3
  %_32.0.i.i.i.i.i.i = add i64 %_10.i.i.i.i.i, 23
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %bb6, label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %dp, align 8, !alias.scope !1287, !nonnull !23, !noundef !23
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1287
  br label %bb6

bb8:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef 1, i32 noundef 2)
          to label %bb1.preheader unwind label %cleanup.loopexit.split-lp

bb1.preheader:                                    ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_11)
  store i32 1, ptr %_11, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %6 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_11)
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb12.invoke, label %bb13, !prof !1288

bb13:                                             ; preds = %bb1.preheader, %bb25
  %7 = phi ptr [ %16, %bb25 ], [ %6, %bb1.preheader ]
  %8 = phi i32 [ %i.sroa.0.032, %bb25 ], [ 1, %bb1.preheader ]
  %i.sroa.0.032 = phi i32 [ %15, %bb25 ], [ 2, %bb1.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_16)
  %9 = add i32 %i.sroa.0.032, -2
  store i32 %9, ptr %_16, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %10 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_16)
  %.not7 = icmp eq ptr %10, null
  br i1 %.not7, label %bb12.invoke, label %bb16, !prof !909

bb12.invoke:                                      ; preds = %bb20, %bb2, %bb13, %bb25, %bb1.preheader
  %11 = phi ptr [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb1.preheader ], [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb25 ], [ @alloc_70a99ab46af915d240a8ccdd1b306a78, %bb13 ], [ @alloc_92d6528911e7980a8c7d58abe4cdd652, %bb2 ], [ @alloc_848a8850280af43732882781277670ff, %bb20 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #22
          to label %bb12.cont unwind label %cleanup.loopexit.split-lp

bb12.cont:                                        ; preds = %bb12.invoke
  unreachable

bb16:                                             ; preds = %bb13
  %_42 = load i32, ptr %7, align 4, !noundef !23
  %_43 = load i32, ptr %10, align 4, !noundef !23
  %_44.0 = add i32 %_43, %_42
  %_6.not = icmp sgt i32 %_44.0, %N
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_11)
  br i1 %_6.not, label %bb3, label %bb2

bb3:                                              ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i11 = load i64, ptr %12, align 8, !alias.scope !1304, !noundef !23
  %_4.i.i.i.i.i12 = icmp eq i64 %_6.i.i.i.i.i11, 0
  br i1 %_4.i.i.i.i.i12, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26", label %bb1.i.i.i.i.i13

bb1.i.i.i.i.i13:                                  ; preds = %bb3
  %_10.i.i.i.i.i14 = shl i64 %_6.i.i.i.i.i11, 3
  %_32.0.i.i.i.i.i.i15 = add i64 %_10.i.i.i.i.i14, 23
  %ctrl_offset.i.i.i.i.i.i16 = and i64 %_32.0.i.i.i.i.i.i15, -16
  %rhs5.i.i.i.i.i.i17 = add i64 %_6.i.i.i.i.i11, 17
  %_37.0.i.i.i.i.i.i18 = add i64 %rhs5.i.i.i.i.i.i17, %ctrl_offset.i.i.i.i.i.i16
  %_37.1.i.i.i.i.i.i19 = icmp uge i64 %_37.0.i.i.i.i.i.i18, %ctrl_offset.i.i.i.i.i.i16
  %_19.i.i.i.i.i.i20 = icmp ult i64 %_37.0.i.i.i.i.i.i18, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i19)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i20)
  %_4.not.i.i.i.i.i.i21 = icmp eq i64 %_37.0.i.i.i.i.i.i18, 0
  br i1 %_4.not.i.i.i.i.i.i21, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26", label %bb1.i2.i.i.i.i.i22

bb1.i2.i.i.i.i.i22:                               ; preds = %bb1.i.i.i.i.i13
  %self1.i.i.i.i.i23 = load ptr, ptr %dp, align 8, !alias.scope !1304, !nonnull !23, !noundef !23
  %_18.i.i.i.i.i24 = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i16
  %ptr.i.i.i.i.i25 = getelementptr inbounds i8, ptr %self1.i.i.i.i.i23, i64 %_18.i.i.i.i.i24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i25, i64 noundef %_37.0.i.i.i.i.i.i18, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1304
  br label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26"

"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26": ; preds = %bb3, %bb1.i.i.i.i.i13, %bb1.i2.i.i.i.i.i22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dp)
  ret i32 %9

bb2:                                              ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_24)
  store i32 %8, ptr %_24, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %13 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_24)
  %.not8 = icmp eq ptr %13, null
  br i1 %.not8, label %bb12.invoke, label %bb20, !prof !909

bb20:                                             ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_29)
  store i32 %9, ptr %_29, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %14 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_29)
  %.not9 = icmp eq ptr %14, null
  br i1 %.not9, label %bb12.invoke, label %bb23, !prof !909

bb23:                                             ; preds = %bb20
  %_51 = load i32, ptr %13, align 4, !noundef !23
  %_52 = load i32, ptr %14, align 4, !noundef !23
  %_53.0 = add i32 %_52, %_51
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef %i.sroa.0.032, i32 noundef %_53.0)
          to label %bb25 unwind label %cleanup.loopexit

bb25:                                             ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_24)
  %15 = add i32 %i.sroa.0.032, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_11)
  store i32 %i.sroa.0.032, ptr %_11, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %16 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_11)
  %.not = icmp eq ptr %16, null
  br i1 %.not, label %bb12.invoke, label %bb13, !prof !1305

bb6:                                              ; preds = %bb1.i2.i.i.i.i.i, %bb1.i.i.i.i.i, %cleanup
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1306
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1312
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit", label %bb7.i.i, !prof !1074

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1074

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1329, !noalias !1332, !noundef !23
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1333, !noalias !1334, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1335, !noalias !1336
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1337, !noalias !1344, !noundef !23
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1335, !noalias !1348
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1329, !noalias !1332, !noundef !23
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1333, !noalias !1334, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1335, !noalias !1336
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1337, !noalias !1344, !noundef !23
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1335, !noalias !1348
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1365, !noalias !1366, !noundef !23
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1367, !noalias !1368, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1335, !noalias !1336
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1337, !noalias !1344, !noundef !23
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1335, !noalias !1348
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1306
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; std::sys::random::linux::hashmap_random_keys
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE() unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #15

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; hashbrown::raw::Fallibility::capacity_overflow
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext) unnamed_addr #1

; hashbrown::raw::Fallibility::alloc_err
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline noreturn }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!5 = distinct !{!5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!10 = distinct !{!10, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E: %c"}
!13 = distinct !{!13, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E"}
!14 = !{!15}
!15 = distinct !{!15, !10, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
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
!29 = distinct !{!29, !30, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!30 = distinct !{!30, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!31 = distinct !{!31, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!32 = distinct !{!32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!33 = !{!34, !35, !36}
!34 = distinct !{!34, !28, !"cmpfunc: %a"}
!35 = distinct !{!35, !30, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!36 = distinct !{!36, !32, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!44 = distinct !{!44, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"cmpfunc: %a"}
!49 = distinct !{!49, !"cmpfunc"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"cmpfunc: %b"}
!52 = !{!48, !43, !38}
!53 = !{!51, !46, !41}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!61 = distinct !{!61, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"cmpfunc: %a"}
!66 = distinct !{!66, !"cmpfunc"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"cmpfunc: %b"}
!69 = !{!65, !60, !55}
!70 = !{!68, !63, !58}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!73 = distinct !{!73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"cmpfunc: %a"}
!83 = distinct !{!83, !"cmpfunc"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"cmpfunc: %b"}
!86 = !{!82, !77, !72}
!87 = !{!85, !80, !75}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!90 = distinct !{!90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!95 = distinct !{!95, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"cmpfunc: %a"}
!100 = distinct !{!100, !"cmpfunc"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"cmpfunc: %b"}
!103 = !{!99, !94, !89}
!104 = !{!102, !97, !92}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!107 = distinct !{!107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!112 = distinct !{!112, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"cmpfunc: %a"}
!117 = distinct !{!117, !"cmpfunc"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"cmpfunc: %b"}
!120 = !{!116, !111, !106}
!121 = !{!119, !114, !109}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!124 = distinct !{!124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!129 = distinct !{!129, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"cmpfunc: %a"}
!134 = distinct !{!134, !"cmpfunc"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"cmpfunc: %b"}
!137 = !{!133, !128, !123}
!138 = !{!136, !131, !126}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!141 = distinct !{!141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!146 = distinct !{!146, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"cmpfunc: %a"}
!151 = distinct !{!151, !"cmpfunc"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"cmpfunc: %b"}
!154 = !{!150, !145, !140}
!155 = !{!153, !148, !143}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!158 = distinct !{!158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!163 = distinct !{!163, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"cmpfunc: %a"}
!168 = distinct !{!168, !"cmpfunc"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"cmpfunc: %b"}
!171 = !{!167, !162, !157}
!172 = !{!170, !165, !160}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!175 = distinct !{!175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!180 = distinct !{!180, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"cmpfunc: %a"}
!185 = distinct !{!185, !"cmpfunc"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"cmpfunc: %b"}
!188 = !{!184, !179, !174}
!189 = !{!187, !182, !177}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!192 = distinct !{!192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!193 = !{!194}
!194 = distinct !{!194, !192, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!197 = distinct !{!197, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"cmpfunc: %a"}
!202 = distinct !{!202, !"cmpfunc"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"cmpfunc: %b"}
!205 = !{!201, !196, !191}
!206 = !{!204, !199, !194}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E: %v.0"}
!209 = distinct !{!209, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E"}
!210 = !{!211, !213, !215, !208}
!211 = distinct !{!211, !212, !"cmpfunc: %b"}
!212 = distinct !{!212, !"cmpfunc"}
!213 = distinct !{!213, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!214 = distinct !{!214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!215 = distinct !{!215, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!216 = distinct !{!216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!217 = !{!218, !219, !220, !221}
!218 = distinct !{!218, !212, !"cmpfunc: %a"}
!219 = distinct !{!219, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!220 = distinct !{!220, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!221 = distinct !{!221, !222, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %_0"}
!222 = distinct !{!222, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE"}
!223 = !{!221, !224, !208}
!224 = distinct !{!224, !222, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %is_less"}
!225 = !{!226, !228, !230, !208}
!226 = distinct !{!226, !227, !"cmpfunc: %b"}
!227 = distinct !{!227, !"cmpfunc"}
!228 = distinct !{!228, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!229 = distinct !{!229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!230 = distinct !{!230, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!231 = distinct !{!231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!232 = !{!233, !234, !235, !236}
!233 = distinct !{!233, !227, !"cmpfunc: %a"}
!234 = distinct !{!234, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!235 = distinct !{!235, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!236 = distinct !{!236, !237, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %_0"}
!237 = distinct !{!237, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE"}
!238 = !{!236, !239, !208}
!239 = distinct !{!239, !237, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %is_less"}
!240 = !{!241}
!241 = distinct !{!241, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It1"}
!242 = !{!243}
!243 = distinct !{!243, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It1"}
!244 = !{!245}
!245 = distinct !{!245, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It1"}
!246 = !{!221}
!247 = !{!248}
!248 = distinct !{!248, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It1"}
!249 = !{!250}
!250 = distinct !{!250, !212, !"cmpfunc: %a:It1"}
!251 = !{!252}
!252 = distinct !{!252, !212, !"cmpfunc: %b:It1"}
!253 = !{!250, !245, !241, !208}
!254 = !{!252, !248, !243, !221}
!255 = !{!252, !248, !243, !208}
!256 = !{!250, !245, !241, !221}
!257 = !{!258}
!258 = distinct !{!258, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It1"}
!259 = !{!260}
!260 = distinct !{!260, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It1"}
!261 = !{!262}
!262 = distinct !{!262, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It1"}
!263 = !{!236}
!264 = !{!265}
!265 = distinct !{!265, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It1"}
!266 = !{!267}
!267 = distinct !{!267, !227, !"cmpfunc: %a:It1"}
!268 = !{!269}
!269 = distinct !{!269, !227, !"cmpfunc: %b:It1"}
!270 = !{!267, !262, !258, !208}
!271 = !{!269, !265, !260, !236}
!272 = !{!269, !265, !260, !208}
!273 = !{!267, !262, !258, !236}
!274 = !{!275}
!275 = distinct !{!275, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It2"}
!276 = !{!277}
!277 = distinct !{!277, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It2"}
!278 = !{!279}
!279 = distinct !{!279, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It2"}
!280 = !{!281}
!281 = distinct !{!281, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It2"}
!282 = !{!283}
!283 = distinct !{!283, !212, !"cmpfunc: %a:It2"}
!284 = !{!285}
!285 = distinct !{!285, !212, !"cmpfunc: %b:It2"}
!286 = !{!283, !279, !275, !208}
!287 = !{!285, !281, !277, !221}
!288 = !{!285, !281, !277, !208}
!289 = !{!283, !279, !275, !221}
!290 = !{!291}
!291 = distinct !{!291, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It2"}
!292 = !{!293}
!293 = distinct !{!293, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It2"}
!294 = !{!295}
!295 = distinct !{!295, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It2"}
!296 = !{!297}
!297 = distinct !{!297, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It2"}
!298 = !{!299}
!299 = distinct !{!299, !227, !"cmpfunc: %a:It2"}
!300 = !{!301}
!301 = distinct !{!301, !227, !"cmpfunc: %b:It2"}
!302 = !{!299, !295, !291, !208}
!303 = !{!301, !297, !293, !236}
!304 = !{!301, !297, !293, !208}
!305 = !{!299, !295, !291, !236}
!306 = !{!307}
!307 = distinct !{!307, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It3"}
!308 = !{!309}
!309 = distinct !{!309, !216, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It3"}
!310 = !{!311}
!311 = distinct !{!311, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It3"}
!312 = !{!313}
!313 = distinct !{!313, !214, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It3"}
!314 = !{!315}
!315 = distinct !{!315, !212, !"cmpfunc: %a:It3"}
!316 = !{!317}
!317 = distinct !{!317, !212, !"cmpfunc: %b:It3"}
!318 = !{!315, !311, !307, !208}
!319 = !{!317, !313, !309, !221}
!320 = !{!317, !313, !309, !208}
!321 = !{!315, !311, !307, !221}
!322 = !{!323}
!323 = distinct !{!323, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It3"}
!324 = !{!325}
!325 = distinct !{!325, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It3"}
!326 = !{!327}
!327 = distinct !{!327, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It3"}
!328 = !{!329}
!329 = distinct !{!329, !229, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It3"}
!330 = !{!331}
!331 = distinct !{!331, !227, !"cmpfunc: %a:It3"}
!332 = !{!333}
!333 = distinct !{!333, !227, !"cmpfunc: %b:It3"}
!334 = !{!331, !327, !323, !208}
!335 = !{!333, !329, !325, !236}
!336 = !{!333, !329, !325, !208}
!337 = !{!331, !327, !323, !236}
!338 = !{!"branch_weights", i32 4001, i32 4000000}
!339 = !{!"branch_weights", i32 2002, i32 2000}
!340 = !{!341, !343}
!341 = distinct !{!341, !342, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h727cbb18938e782bE: %_0"}
!342 = distinct !{!342, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h727cbb18938e782bE"}
!343 = distinct !{!343, !344, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE: %_0"}
!344 = distinct !{!344, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE"}
!345 = !{!346, !348, !350, !352}
!346 = distinct !{!346, !347, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hbe5ed362713d4713E: %self"}
!347 = distinct !{!347, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hbe5ed362713d4713E"}
!348 = distinct !{!348, !349, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E: %self"}
!349 = distinct !{!349, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E"}
!350 = distinct !{!350, !351, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE: %_1"}
!351 = distinct !{!351, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE"}
!352 = distinct !{!352, !353, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E: %_1"}
!353 = distinct !{!353, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E"}
!354 = !{!355, !357, !359, !361}
!355 = distinct !{!355, !356, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hbe5ed362713d4713E: %self"}
!356 = distinct !{!356, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hbe5ed362713d4713E"}
!357 = distinct !{!357, !358, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E: %self"}
!358 = distinct !{!358, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E"}
!359 = distinct !{!359, !360, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE: %_1"}
!360 = distinct !{!360, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE"}
!361 = distinct !{!361, !362, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E: %_1"}
!362 = distinct !{!362, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E"}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!365 = distinct !{!365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!370 = distinct !{!370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E: %scratch.0"}
!373 = distinct !{!373, !"_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E"}
!374 = !{!375}
!375 = distinct !{!375, !370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"cmpfunc: %a"}
!378 = distinct !{!378, !"cmpfunc"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"cmpfunc: %b"}
!381 = !{!377, !369, !364}
!382 = !{!380, !375, !367, !372}
!383 = !{!380, !375, !367}
!384 = !{!377, !369, !364, !372}
!385 = !{!386, !388, !390}
!386 = distinct !{!386, !387, !"cmpfunc: %a"}
!387 = distinct !{!387, !"cmpfunc"}
!388 = distinct !{!388, !389, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!389 = distinct !{!389, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!390 = distinct !{!390, !391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!391 = distinct !{!391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!392 = !{!393, !394, !395, !372}
!393 = distinct !{!393, !387, !"cmpfunc: %b"}
!394 = distinct !{!394, !389, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!395 = distinct !{!395, !391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!396 = !{!397, !399, !401}
!397 = distinct !{!397, !398, !"cmpfunc: %a"}
!398 = distinct !{!398, !"cmpfunc"}
!399 = distinct !{!399, !400, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!400 = distinct !{!400, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!401 = distinct !{!401, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!402 = distinct !{!402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!403 = !{!404, !405, !406, !372}
!404 = distinct !{!404, !398, !"cmpfunc: %b"}
!405 = distinct !{!405, !400, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!406 = distinct !{!406, !402, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E: %a.0"}
!409 = distinct !{!409, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E"}
!410 = !{!372, !411}
!411 = distinct !{!411, !373, !"_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E: %is_less"}
!412 = !{!413}
!413 = distinct !{!413, !409, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E: %b.0"}
!414 = !{!408, !415}
!415 = distinct !{!415, !416, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E: %self.0"}
!416 = distinct !{!416, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E"}
!417 = !{!413, !372, !411}
!418 = !{!413, !415}
!419 = !{!408, !372, !411}
!420 = distinct !{!420, !421, !422}
!421 = !{!"llvm.loop.isvectorized", i32 1}
!422 = !{!"llvm.loop.unroll.runtime.disable"}
!423 = distinct !{!423, !422, !421}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE: %v.0"}
!426 = distinct !{!426, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE: %scratch.0"}
!429 = !{!425, !428}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!432 = distinct !{!432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!437 = distinct !{!437, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"cmpfunc: %a"}
!442 = distinct !{!442, !"cmpfunc"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"cmpfunc: %b"}
!445 = !{!441, !436, !431, !428}
!446 = !{!444, !439, !434, !447, !425}
!447 = distinct !{!447, !448, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E: %self"}
!448 = distinct !{!448, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"}
!449 = !{!444, !439, !434, !425}
!450 = !{!441, !436, !431, !447, !428}
!451 = !{!447, !428}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!454 = distinct !{!454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!459 = distinct !{!459, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"cmpfunc: %a"}
!464 = distinct !{!464, !"cmpfunc"}
!465 = !{!466}
!466 = distinct !{!466, !464, !"cmpfunc: %b"}
!467 = !{!463, !458, !453, !425}
!468 = !{!466, !461, !456, !469, !428}
!469 = distinct !{!469, !470, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E: %self"}
!470 = distinct !{!470, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"}
!471 = !{!466, !461, !456, !428}
!472 = !{!463, !458, !453, !469, !425}
!473 = !{!469, !428}
!474 = !{!475, !477}
!475 = distinct !{!475, !476, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE: %self"}
!476 = distinct !{!476, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"}
!477 = distinct !{!477, !478, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E: %_1"}
!478 = distinct !{!478, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E: %v.0"}
!481 = distinct !{!481, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E"}
!482 = !{!483}
!483 = distinct !{!483, !481, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E: %scratch.0"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!486 = distinct !{!486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!487 = !{!488}
!488 = distinct !{!488, !486, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!489 = !{!490}
!490 = distinct !{!490, !491, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!491 = distinct !{!491, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!492 = !{!493}
!493 = distinct !{!493, !491, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"cmpfunc: %a"}
!496 = distinct !{!496, !"cmpfunc"}
!497 = !{!498}
!498 = distinct !{!498, !496, !"cmpfunc: %b"}
!499 = !{!495, !490, !485, !480}
!500 = !{!498, !493, !488, !483, !501}
!501 = distinct !{!501, !481, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E: %is_less"}
!502 = !{!498, !493, !488, !480}
!503 = !{!495, !490, !485, !483, !501}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!506 = distinct !{!506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!507 = !{!508}
!508 = distinct !{!508, !506, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!511 = distinct !{!511, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!512 = !{!513}
!513 = distinct !{!513, !511, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!514 = !{!515}
!515 = distinct !{!515, !516, !"cmpfunc: %a"}
!516 = distinct !{!516, !"cmpfunc"}
!517 = !{!518}
!518 = distinct !{!518, !516, !"cmpfunc: %b"}
!519 = !{!515, !510, !505, !480}
!520 = !{!518, !513, !508, !483, !501}
!521 = !{!518, !513, !508, !480}
!522 = !{!515, !510, !505, !483, !501}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!525 = distinct !{!525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!530 = distinct !{!530, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!533 = !{!534}
!534 = distinct !{!534, !535, !"cmpfunc: %a"}
!535 = distinct !{!535, !"cmpfunc"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"cmpfunc: %b"}
!538 = !{!534, !529, !524, !480}
!539 = !{!537, !532, !527, !483, !501}
!540 = !{!537, !532, !527, !480}
!541 = !{!534, !529, !524, !483, !501}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!544 = distinct !{!544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!545 = !{!546}
!546 = distinct !{!546, !544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!549 = distinct !{!549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!552 = !{!553}
!553 = distinct !{!553, !554, !"cmpfunc: %a"}
!554 = distinct !{!554, !"cmpfunc"}
!555 = !{!556}
!556 = distinct !{!556, !554, !"cmpfunc: %b"}
!557 = !{!553, !548, !543, !480}
!558 = !{!556, !551, !546, !483, !501}
!559 = !{!556, !551, !546, !480}
!560 = !{!553, !548, !543, !483, !501}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!563 = distinct !{!563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!564 = !{!565}
!565 = distinct !{!565, !563, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!568 = distinct !{!568, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!569 = !{!570}
!570 = distinct !{!570, !568, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"cmpfunc: %a"}
!573 = distinct !{!573, !"cmpfunc"}
!574 = !{!575}
!575 = distinct !{!575, !573, !"cmpfunc: %b"}
!576 = !{!572, !567, !562, !480}
!577 = !{!575, !570, !565, !483, !501}
!578 = !{!575, !570, !565, !480}
!579 = !{!572, !567, !562, !483, !501}
!580 = !{!480, !501}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!583 = distinct !{!583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!584 = !{!585}
!585 = distinct !{!585, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!588 = distinct !{!588, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!589 = !{!590}
!590 = distinct !{!590, !588, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!591 = !{!592}
!592 = distinct !{!592, !593, !"cmpfunc: %a"}
!593 = distinct !{!593, !"cmpfunc"}
!594 = !{!595}
!595 = distinct !{!595, !593, !"cmpfunc: %b"}
!596 = !{!592, !587, !582, !480}
!597 = !{!595, !590, !585, !483, !501}
!598 = !{!595, !590, !585, !480}
!599 = !{!592, !587, !582, !483, !501}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!602 = distinct !{!602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!603 = !{!604}
!604 = distinct !{!604, !602, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!605 = !{!606}
!606 = distinct !{!606, !607, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!607 = distinct !{!607, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!608 = !{!609}
!609 = distinct !{!609, !607, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"cmpfunc: %a"}
!612 = distinct !{!612, !"cmpfunc"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"cmpfunc: %b"}
!615 = !{!611, !606, !601, !480}
!616 = !{!614, !609, !604, !483, !501}
!617 = !{!614, !609, !604, !480}
!618 = !{!611, !606, !601, !483, !501}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!621 = distinct !{!621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!622 = !{!623}
!623 = distinct !{!623, !621, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!626 = distinct !{!626, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"cmpfunc: %a"}
!631 = distinct !{!631, !"cmpfunc"}
!632 = !{!633}
!633 = distinct !{!633, !631, !"cmpfunc: %b"}
!634 = !{!630, !625, !620, !480}
!635 = !{!633, !628, !623, !483, !501}
!636 = !{!633, !628, !623, !480}
!637 = !{!630, !625, !620, !483, !501}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!640 = distinct !{!640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!641 = !{!642}
!642 = distinct !{!642, !640, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!645 = distinct !{!645, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"cmpfunc: %a"}
!650 = distinct !{!650, !"cmpfunc"}
!651 = !{!652}
!652 = distinct !{!652, !650, !"cmpfunc: %b"}
!653 = !{!649, !644, !639, !480}
!654 = !{!652, !647, !642, !483, !501}
!655 = !{!652, !647, !642, !480}
!656 = !{!649, !644, !639, !483, !501}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!659 = distinct !{!659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!660 = !{!661}
!661 = distinct !{!661, !659, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!664 = distinct !{!664, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!665 = !{!666}
!666 = distinct !{!666, !664, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!667 = !{!668}
!668 = distinct !{!668, !669, !"cmpfunc: %a"}
!669 = distinct !{!669, !"cmpfunc"}
!670 = !{!671}
!671 = distinct !{!671, !669, !"cmpfunc: %b"}
!672 = !{!668, !663, !658, !480}
!673 = !{!671, !666, !661, !483, !501}
!674 = !{!671, !666, !661, !480}
!675 = !{!668, !663, !658, !483, !501}
!676 = !{!483, !501}
!677 = !{!678, !680, !682, !483}
!678 = distinct !{!678, !679, !"cmpfunc: %b"}
!679 = distinct !{!679, !"cmpfunc"}
!680 = distinct !{!680, !681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!681 = distinct !{!681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!682 = distinct !{!682, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!683 = distinct !{!683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!684 = !{!685, !686, !687, !480, !501}
!685 = distinct !{!685, !679, !"cmpfunc: %a"}
!686 = distinct !{!686, !681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!687 = distinct !{!687, !683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!688 = !{!689, !691, !693, !483}
!689 = distinct !{!689, !690, !"cmpfunc: %b"}
!690 = distinct !{!690, !"cmpfunc"}
!691 = distinct !{!691, !692, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!692 = distinct !{!692, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!693 = distinct !{!693, !694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!694 = distinct !{!694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!695 = !{!696, !697, !698, !480, !501}
!696 = distinct !{!696, !690, !"cmpfunc: %a"}
!697 = distinct !{!697, !692, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!698 = distinct !{!698, !694, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!699 = !{!700, !702, !480, !501}
!700 = distinct !{!700, !701, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!701 = distinct !{!701, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!702 = distinct !{!702, !703, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!703 = distinct !{!703, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E: %v.0"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!709 = distinct !{!709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!710 = !{!711}
!711 = distinct !{!711, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!714 = distinct !{!714, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %_0"}
!717 = distinct !{!717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE"}
!718 = !{!719}
!719 = distinct !{!719, !714, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"cmpfunc: %a"}
!722 = distinct !{!722, !"cmpfunc"}
!723 = !{!724}
!724 = distinct !{!724, !722, !"cmpfunc: %b"}
!725 = !{!721, !713, !708, !705, !483}
!726 = !{!724, !719, !711, !716, !480, !501}
!727 = !{!724, !719, !711, !705, !483}
!728 = !{!721, !713, !708, !716, !480, !501}
!729 = !{!716, !730, !705, !483, !501}
!730 = distinct !{!730, !717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %is_less"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!733 = distinct !{!733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!734 = !{!735}
!735 = distinct !{!735, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!738 = distinct !{!738, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!739 = !{!740}
!740 = distinct !{!740, !741, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %_0"}
!741 = distinct !{!741, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE"}
!742 = !{!743}
!743 = distinct !{!743, !738, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!744 = !{!745}
!745 = distinct !{!745, !746, !"cmpfunc: %a"}
!746 = distinct !{!746, !"cmpfunc"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"cmpfunc: %b"}
!749 = !{!745, !737, !732, !705, !483}
!750 = !{!748, !743, !735, !740, !480, !501}
!751 = !{!748, !743, !735, !705, !483}
!752 = !{!745, !737, !732, !740, !480, !501}
!753 = !{!740, !754, !705, !483, !501}
!754 = distinct !{!754, !741, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %is_less"}
!755 = !{!705, !483}
!756 = !{!705, !483, !501}
!757 = !{!480, !483, !501}
!758 = !{!480, !483}
!759 = !{!760, !762, !501}
!760 = distinct !{!760, !761, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!761 = distinct !{!761, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!762 = distinct !{!762, !763, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!763 = distinct !{!763, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!766 = distinct !{!766, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!767 = !{!768}
!768 = distinct !{!768, !766, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!771 = distinct !{!771, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E: %c"}
!774 = distinct !{!774, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E"}
!775 = !{!776}
!776 = distinct !{!776, !771, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"cmpfunc: %a"}
!779 = distinct !{!779, !"cmpfunc"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"cmpfunc: %b"}
!782 = !{!778, !770, !765, !783}
!783 = distinct !{!783, !784, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E: %v.0"}
!784 = distinct !{!784, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E"}
!785 = !{!781, !776, !768, !773, !786}
!786 = distinct !{!786, !784, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E: %is_less"}
!787 = !{!781, !776, !768, !783}
!788 = !{!778, !770, !765, !773, !786}
!789 = !{!790, !792, !794, !783}
!790 = distinct !{!790, !791, !"cmpfunc: %b"}
!791 = distinct !{!791, !"cmpfunc"}
!792 = distinct !{!792, !793, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!793 = distinct !{!793, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!794 = distinct !{!794, !795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!795 = distinct !{!795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!796 = !{!797, !798, !799, !786}
!797 = distinct !{!797, !791, !"cmpfunc: %a"}
!798 = distinct !{!798, !793, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!799 = distinct !{!799, !795, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!800 = !{!801, !803, !805}
!801 = distinct !{!801, !802, !"cmpfunc: %a"}
!802 = distinct !{!802, !"cmpfunc"}
!803 = distinct !{!803, !804, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!804 = distinct !{!804, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!805 = distinct !{!805, !806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!806 = distinct !{!806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!807 = !{!808, !809, !810}
!808 = distinct !{!808, !802, !"cmpfunc: %b"}
!809 = distinct !{!809, !804, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!810 = distinct !{!810, !806, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E: %v.0"}
!813 = distinct !{!813, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E"}
!814 = !{!815}
!815 = distinct !{!815, !813, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E: %scratch.0"}
!816 = !{!817, !819, !821, !812}
!817 = distinct !{!817, !818, !"cmpfunc: %b"}
!818 = distinct !{!818, !"cmpfunc"}
!819 = distinct !{!819, !820, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!820 = distinct !{!820, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!821 = distinct !{!821, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!822 = distinct !{!822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!823 = !{!824, !825, !826, !815}
!824 = distinct !{!824, !818, !"cmpfunc: %a"}
!825 = distinct !{!825, !820, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!826 = distinct !{!826, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!827 = !{!826}
!828 = !{!821}
!829 = !{!825}
!830 = !{!819}
!831 = !{!824}
!832 = !{!817}
!833 = !{!824, !825, !826, !812}
!834 = !{!817, !819, !821, !815}
!835 = !{!836, !812}
!836 = distinct !{!836, !837, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!837 = distinct !{!837, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!838 = !{!839, !841, !843, !812}
!839 = distinct !{!839, !840, !"cmpfunc: %a"}
!840 = distinct !{!840, !"cmpfunc"}
!841 = distinct !{!841, !842, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!842 = distinct !{!842, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!843 = distinct !{!843, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!844 = distinct !{!844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!845 = !{!846, !847, !848, !815}
!846 = distinct !{!846, !840, !"cmpfunc: %b"}
!847 = distinct !{!847, !842, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!848 = distinct !{!848, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!849 = !{!850, !812}
!850 = distinct !{!850, !851, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!851 = distinct !{!851, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!852 = !{!853, !855, !857, !812}
!853 = distinct !{!853, !854, !"cmpfunc: %a"}
!854 = distinct !{!854, !"cmpfunc"}
!855 = distinct !{!855, !856, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!856 = distinct !{!856, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!857 = distinct !{!857, !858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!858 = distinct !{!858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!859 = !{!860, !861, !862, !815}
!860 = distinct !{!860, !854, !"cmpfunc: %b"}
!861 = distinct !{!861, !856, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!862 = distinct !{!862, !858, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!863 = !{!864, !812}
!864 = distinct !{!864, !865, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!865 = distinct !{!865, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!866 = !{!867, !869, !871, !812}
!867 = distinct !{!867, !868, !"cmpfunc: %a"}
!868 = distinct !{!868, !"cmpfunc"}
!869 = distinct !{!869, !870, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!870 = distinct !{!870, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!871 = distinct !{!871, !872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!872 = distinct !{!872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!873 = !{!874, !875, !876, !815}
!874 = distinct !{!874, !868, !"cmpfunc: %b"}
!875 = distinct !{!875, !870, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!876 = distinct !{!876, !872, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!877 = !{!878, !812}
!878 = distinct !{!878, !879, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!879 = distinct !{!879, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!880 = !{!881, !883, !885, !812}
!881 = distinct !{!881, !882, !"cmpfunc: %b"}
!882 = distinct !{!882, !"cmpfunc"}
!883 = distinct !{!883, !884, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!884 = distinct !{!884, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!885 = distinct !{!885, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!886 = distinct !{!886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!887 = !{!888, !889, !890, !815}
!888 = distinct !{!888, !882, !"cmpfunc: %a"}
!889 = distinct !{!889, !884, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!890 = distinct !{!890, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!891 = !{!890}
!892 = !{!885}
!893 = !{!889}
!894 = !{!883}
!895 = !{!888}
!896 = !{!881}
!897 = !{!888, !889, !890, !812}
!898 = !{!881, !883, !885, !815}
!899 = !{!900, !812}
!900 = distinct !{!900, !901, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!901 = distinct !{!901, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!902 = !{!903, !815}
!903 = distinct !{!903, !904, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!904 = distinct !{!904, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!905 = !{!903, !812}
!906 = !{!812, !815}
!907 = distinct !{!907, !421, !422}
!908 = distinct !{!908, !422, !421}
!909 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!910 = !{!911, !913}
!911 = distinct !{!911, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E: %pair"}
!912 = distinct !{!912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"}
!913 = distinct !{!913, !912, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E: %self.0"}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E: %v.0"}
!916 = distinct !{!916, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E: %scratch.0"}
!919 = !{!920, !922, !924, !926, !915}
!920 = distinct !{!920, !921, !"cmpfunc: %a"}
!921 = distinct !{!921, !"cmpfunc"}
!922 = distinct !{!922, !923, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!923 = distinct !{!923, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!924 = distinct !{!924, !925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!925 = distinct !{!925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!926 = distinct !{!926, !927, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!927 = distinct !{!927, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!928 = !{!929, !930, !931, !932, !918}
!929 = distinct !{!929, !921, !"cmpfunc: %b"}
!930 = distinct !{!930, !923, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!931 = distinct !{!931, !925, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!932 = distinct !{!932, !927, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!933 = !{!932}
!934 = !{!926}
!935 = !{!924}
!936 = !{!931}
!937 = !{!922}
!938 = !{!930}
!939 = !{!920}
!940 = !{!929}
!941 = !{!929, !930, !931, !932, !915}
!942 = !{!920, !922, !924, !926, !918}
!943 = !{!944, !915}
!944 = distinct !{!944, !945, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!945 = distinct !{!945, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!946 = !{!947, !949, !951, !953, !915}
!947 = distinct !{!947, !948, !"cmpfunc: %b"}
!948 = distinct !{!948, !"cmpfunc"}
!949 = distinct !{!949, !950, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!950 = distinct !{!950, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!953 = distinct !{!953, !954, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!954 = distinct !{!954, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!955 = !{!956, !957, !958, !959, !918}
!956 = distinct !{!956, !948, !"cmpfunc: %a"}
!957 = distinct !{!957, !950, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!958 = distinct !{!958, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!959 = distinct !{!959, !954, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!960 = !{!961, !915}
!961 = distinct !{!961, !962, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!962 = distinct !{!962, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!963 = !{!964, !966, !968, !970, !915}
!964 = distinct !{!964, !965, !"cmpfunc: %b"}
!965 = distinct !{!965, !"cmpfunc"}
!966 = distinct !{!966, !967, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!967 = distinct !{!967, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!968 = distinct !{!968, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!969 = distinct !{!969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!970 = distinct !{!970, !971, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!971 = distinct !{!971, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!972 = !{!973, !974, !975, !976, !918}
!973 = distinct !{!973, !965, !"cmpfunc: %a"}
!974 = distinct !{!974, !967, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!975 = distinct !{!975, !969, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!976 = distinct !{!976, !971, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!977 = !{!978, !915}
!978 = distinct !{!978, !979, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!979 = distinct !{!979, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!980 = !{!981, !983, !985, !987, !915}
!981 = distinct !{!981, !982, !"cmpfunc: %b"}
!982 = distinct !{!982, !"cmpfunc"}
!983 = distinct !{!983, !984, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!984 = distinct !{!984, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!985 = distinct !{!985, !986, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!986 = distinct !{!986, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!987 = distinct !{!987, !988, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!988 = distinct !{!988, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!989 = !{!990, !991, !992, !993, !918}
!990 = distinct !{!990, !982, !"cmpfunc: %a"}
!991 = distinct !{!991, !984, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!992 = distinct !{!992, !986, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!993 = distinct !{!993, !988, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!994 = !{!995, !915}
!995 = distinct !{!995, !996, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!996 = distinct !{!996, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!997 = !{!998, !1000, !1002, !1004, !915}
!998 = distinct !{!998, !999, !"cmpfunc: %a"}
!999 = distinct !{!999, !"cmpfunc"}
!1000 = distinct !{!1000, !1001, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1001 = distinct !{!1001, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1002 = distinct !{!1002, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1003 = distinct !{!1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1004 = distinct !{!1004, !1005, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1005 = distinct !{!1005, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1006 = !{!1007, !1008, !1009, !1010, !918}
!1007 = distinct !{!1007, !999, !"cmpfunc: %b"}
!1008 = distinct !{!1008, !1001, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1009 = distinct !{!1009, !1003, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1010 = distinct !{!1010, !1005, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1011 = !{!1010}
!1012 = !{!1004}
!1013 = !{!1002}
!1014 = !{!1009}
!1015 = !{!1000}
!1016 = !{!1008}
!1017 = !{!998}
!1018 = !{!1007}
!1019 = !{!1007, !1008, !1009, !1010, !915}
!1020 = !{!998, !1000, !1002, !1004, !918}
!1021 = !{!1022, !915}
!1022 = distinct !{!1022, !1023, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1023 = distinct !{!1023, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1024 = !{!1025, !918}
!1025 = distinct !{!1025, !1026, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1026 = distinct !{!1026, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1027 = !{!1025, !915}
!1028 = !{!915, !918}
!1029 = distinct !{!1029, !421, !422}
!1030 = distinct !{!1030, !422, !421}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1033 = distinct !{!1033, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1036 = !{!1037, !1032}
!1037 = distinct !{!1037, !1038, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1038 = distinct !{!1038, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1039 = !{!1040, !1035}
!1040 = distinct !{!1040, !1038, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1041 = !{!1042, !1035}
!1042 = distinct !{!1042, !1043, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!1043 = distinct !{!1043, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!1044 = !{!1045, !1046, !1048, !1032}
!1045 = distinct !{!1045, !1043, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!1046 = distinct !{!1046, !1047, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!1047 = distinct !{!1047, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!1048 = distinct !{!1048, !1047, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E: %self"}
!1051 = distinct !{!1051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1054 = distinct !{!1054, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1055 = !{!1053, !1050}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E: argument 1"}
!1058 = !{!1059, !1053, !1050, !1057}
!1059 = distinct !{!1059, !1060, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1060 = distinct !{!1060, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1061 = !{!1062, !1064, !1066}
!1062 = distinct !{!1062, !1063, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %other"}
!1063 = distinct !{!1063, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E"}
!1064 = distinct !{!1064, !1065, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %key"}
!1065 = distinct !{!1065, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"}
!1066 = distinct !{!1066, !1067, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %x"}
!1067 = distinct !{!1067, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"}
!1068 = !{!1069, !1070, !1071, !1072, !1053, !1050, !1057}
!1069 = distinct !{!1069, !1063, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %self"}
!1070 = distinct !{!1070, !1065, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %self"}
!1071 = distinct !{!1071, !1067, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %_1"}
!1072 = distinct !{!1072, !1073, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E: %_1"}
!1073 = distinct !{!1073, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E"}
!1074 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1075 = !{!1076, !1078}
!1076 = distinct !{!1076, !1077, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1077 = distinct !{!1077, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1078 = distinct !{!1078, !1079, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1079 = distinct !{!1079, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1080 = !{!1081, !1082}
!1081 = distinct !{!1081, !1077, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1082 = distinct !{!1082, !1079, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: %self"}
!1085 = distinct !{!1085, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE"}
!1086 = !{!1087, !1084}
!1087 = distinct !{!1087, !1088, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E: %self"}
!1088 = distinct !{!1088, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E"}
!1089 = !{!1090, !1091, !1092}
!1090 = distinct !{!1090, !1088, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E: %hasher"}
!1091 = distinct !{!1091, !1085, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: argument 1"}
!1092 = distinct !{!1092, !1085, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: %hasher"}
!1093 = !{!1091}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E: %self"}
!1096 = distinct !{!1096, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E"}
!1097 = !{!1095, !1084}
!1098 = !{!1091, !1092}
!1099 = !{!1100, !1095, !1084, !1091, !1092}
!1100 = distinct !{!1100, !1101, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1101 = distinct !{!1101, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1102 = !{!1103, !1105, !1107}
!1103 = distinct !{!1103, !1104, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %other"}
!1104 = distinct !{!1104, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E"}
!1105 = distinct !{!1105, !1106, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %key"}
!1106 = distinct !{!1106, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"}
!1107 = distinct !{!1107, !1108, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %x"}
!1108 = distinct !{!1108, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"}
!1109 = !{!1110, !1111, !1112, !1113, !1095, !1084, !1091, !1092}
!1110 = distinct !{!1110, !1104, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %self"}
!1111 = distinct !{!1111, !1106, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %self"}
!1112 = distinct !{!1112, !1108, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %_1"}
!1113 = distinct !{!1113, !1114, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E: %_1"}
!1114 = distinct !{!1114, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E"}
!1115 = !{!1116, !1095, !1084, !1091, !1092}
!1116 = distinct !{!1116, !1117, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1117 = distinct !{!1117, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1118 = !{!1119, !1116, !1095, !1084, !1091, !1092}
!1119 = distinct !{!1119, !1120, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1120 = distinct !{!1120, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1123, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE: %self"}
!1123 = distinct !{!1123, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE: %self"}
!1126 = distinct !{!1126, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE: %alloc"}
!1129 = !{!1125, !1128}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE: %self"}
!1132 = distinct !{!1132, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE"}
!1133 = !{!"branch_weights", i32 4292820, i32 2143190828}
!1134 = !{!1135, !1137, !1131, !1125}
!1135 = distinct !{!1135, !1136, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E: %_0"}
!1136 = distinct !{!1136, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E"}
!1137 = distinct !{!1137, !1138, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E: %_0"}
!1138 = distinct !{!1138, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E"}
!1139 = !{!1137, !1131, !1125}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x"}
!1142 = distinct !{!1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y"}
!1145 = !{!1131, !1125}
!1146 = !{!1147, !1128}
!1147 = distinct !{!1147, !1132, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE: %alloc"}
!1148 = !{!1149, !1131, !1125}
!1149 = distinct !{!1149, !1150, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1150 = distinct !{!1150, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1151 = !{!1152, !1154}
!1152 = distinct !{!1152, !1153, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1153 = distinct !{!1153, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1154 = distinct !{!1154, !1155, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1155 = distinct !{!1155, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1156 = !{!1157, !1158, !1159, !1161, !1162, !1164}
!1157 = distinct !{!1157, !1153, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1158 = distinct !{!1158, !1155, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1159 = distinct !{!1159, !1160, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %_1"}
!1160 = distinct !{!1160, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"}
!1161 = distinct !{!1161, !1160, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %val"}
!1162 = distinct !{!1162, !1163, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %_1"}
!1163 = distinct !{!1163, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"}
!1164 = distinct !{!1164, !1163, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %table"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1167 = distinct !{!1167, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1168 = !{!1161}
!1169 = !{!1154}
!1170 = !{!1158}
!1171 = !{!1172, !1158, !1161}
!1172 = distinct !{!1172, !1173, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!1173 = distinct !{!1173, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!1174 = !{!1175, !1176, !1178, !1154, !1159, !1162, !1164}
!1175 = distinct !{!1175, !1173, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!1176 = distinct !{!1176, !1177, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!1177 = distinct !{!1177, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!1178 = distinct !{!1178, !1177, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!1179 = !{!1180, !1182}
!1180 = distinct !{!1180, !1181, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1181 = distinct !{!1181, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1182 = distinct !{!1182, !1183, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1183 = distinct !{!1183, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1184 = !{!"branch_weights", i32 1, i32 1999}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x:It1"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y:It1"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x:It2"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1142, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y:It2"}
!1193 = !{!1194, !1196, !1197, !1199}
!1194 = distinct !{!1194, !1195, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E: %_1"}
!1195 = distinct !{!1195, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E"}
!1196 = distinct !{!1196, !1195, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E: %self_"}
!1197 = distinct !{!1197, !1198, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE: %self"}
!1198 = distinct !{!1198, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE"}
!1199 = distinct !{!1199, !1200, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE: %_1"}
!1200 = distinct !{!1200, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE"}
!1201 = !{!"branch_weights", i32 0, i32 1}
!1202 = !{!1203, !1182}
!1203 = distinct !{!1203, !1204, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1204 = distinct !{!1204, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1205 = !{!1206, !1203, !1182}
!1206 = distinct !{!1206, !1207, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1207 = distinct !{!1207, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE: %self"}
!1210 = distinct !{!1210, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E: %self"}
!1213 = distinct !{!1213, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E"}
!1214 = !{!1212, !1209}
!1215 = !{!1216, !1212, !1209, !1128}
!1216 = distinct !{!1216, !1217, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1217 = distinct !{!1217, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1218 = !{!1219, !1212, !1209, !1128}
!1219 = distinct !{!1219, !1220, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E: %a"}
!1220 = distinct !{!1220, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E"}
!1221 = !{!1212, !1209, !1128}
!1222 = !{!1209, !1128}
!1223 = !{!1224, !1226, !1228}
!1224 = distinct !{!1224, !1225, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!1225 = distinct !{!1225, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!1226 = distinct !{!1226, !1227, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1227 = distinct !{!1227, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1228 = distinct !{!1228, !1229, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %val"}
!1229 = distinct !{!1229, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"}
!1230 = !{!1231, !1232, !1234, !1235, !1236, !1237, !1239, !1209, !1128}
!1231 = distinct !{!1231, !1225, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!1232 = distinct !{!1232, !1233, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!1233 = distinct !{!1233, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!1234 = distinct !{!1234, !1233, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!1235 = distinct !{!1235, !1227, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1236 = distinct !{!1236, !1229, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %_1"}
!1237 = distinct !{!1237, !1238, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %_1"}
!1238 = distinct !{!1238, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"}
!1239 = distinct !{!1239, !1238, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %table"}
!1240 = !{!1241, !1243, !1209, !1128}
!1241 = distinct !{!1241, !1242, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1242 = distinct !{!1242, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1243 = distinct !{!1243, !1244, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1244 = distinct !{!1244, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1245 = !{!1246, !1243, !1209, !1128}
!1246 = distinct !{!1246, !1247, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1247 = distinct !{!1247, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1248 = !{!1249, !1246, !1243, !1209, !1128}
!1249 = distinct !{!1249, !1250, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1250 = distinct !{!1250, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x"}
!1253 = distinct !{!1253, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1253, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y"}
!1256 = !{!1255, !1209, !1128}
!1257 = !{!1252, !1209, !1128}
!1258 = !{i8 0, i8 2}
!1259 = !{!1260, !1262, !1264, !1266}
!1260 = distinct !{!1260, !1261, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E: %i"}
!1261 = distinct !{!1261, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E"}
!1262 = distinct !{!1262, !1263, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E: %__rust_std_internal_init"}
!1263 = distinct !{!1263, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E"}
!1264 = distinct !{!1264, !1265, !"_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E: argument 0"}
!1265 = distinct !{!1265, !"_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E"}
!1266 = distinct !{!1266, !1267, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E: %_0"}
!1267 = distinct !{!1267, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E"}
!1268 = !{!1266}
!1269 = !{!1270, !1266}
!1270 = distinct !{!1270, !1271, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E: argument 0"}
!1271 = distinct !{!1271, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E: %_1"}
!1274 = distinct !{!1274, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E: %_1"}
!1277 = distinct !{!1277, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1280, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE: %_1"}
!1280 = distinct !{!1280, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE: %self"}
!1283 = distinct !{!1283, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE: %self"}
!1286 = distinct !{!1286, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE"}
!1287 = !{!1285, !1282, !1279, !1276, !1273}
!1288 = !{!"branch_weights", i32 1, i32 127}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E: %_1"}
!1291 = distinct !{!1291, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E: %_1"}
!1294 = distinct !{!1294, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1297, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE: %_1"}
!1297 = distinct !{!1297, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE: %self"}
!1300 = distinct !{!1300, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE: %self"}
!1303 = distinct !{!1303, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE"}
!1304 = !{!1302, !1299, !1296, !1293, !1290}
!1305 = !{!"branch_weights", i32 127, i32 255873}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE: %self.0"}
!1308 = distinct !{!1308, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E: %v.0"}
!1311 = distinct !{!1311, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E"}
!1312 = !{!1310, !1313, !1307}
!1313 = distinct !{!1313, !1311, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E: argument 1"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1316 = distinct !{!1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1321 = distinct !{!1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"cmpfunc: %a"}
!1326 = distinct !{!1326, !"cmpfunc"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"cmpfunc: %b"}
!1329 = !{!1325, !1320, !1315, !1330, !1310, !1307}
!1330 = distinct !{!1330, !1331, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE: %v.0"}
!1331 = distinct !{!1331, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE"}
!1332 = !{!1328, !1323, !1318, !1313}
!1333 = !{!1328, !1323, !1318, !1330, !1310, !1307}
!1334 = !{!1325, !1320, !1315, !1313}
!1335 = !{!1330, !1310, !1307}
!1336 = !{!1313}
!1337 = !{!1338, !1340, !1342, !1330, !1310, !1307}
!1338 = distinct !{!1338, !1339, !"cmpfunc: %b"}
!1339 = distinct !{!1339, !"cmpfunc"}
!1340 = distinct !{!1340, !1341, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1341 = distinct !{!1341, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1342 = distinct !{!1342, !1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1343 = distinct !{!1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1344 = !{!1345, !1346, !1347, !1313}
!1345 = distinct !{!1345, !1339, !"cmpfunc: %a"}
!1346 = distinct !{!1346, !1341, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1347 = distinct !{!1347, !1343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1348 = !{!1349, !1351, !1313}
!1349 = distinct !{!1349, !1350, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!1350 = distinct !{!1350, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!1351 = distinct !{!1351, !1352, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!1352 = distinct !{!1352, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It1"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It1"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It1"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It1"}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1326, !"cmpfunc: %a:It1"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1326, !"cmpfunc: %b:It1"}
!1365 = !{!1362, !1358, !1354, !1330, !1310, !1307}
!1366 = !{!1364, !1360, !1356, !1313}
!1367 = !{!1364, !1360, !1356, !1330, !1310, !1307}
!1368 = !{!1362, !1358, !1354, !1313}
