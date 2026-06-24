; ModuleID = 'CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_emit.5464a0d0da2398d6-cgu.0'
source_filename = "CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_emit.5464a0d0da2398d6-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h73d6033df5fcd1c3E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@alloc_59ba7b9f7211443cd55a366616eef46a = private unnamed_addr constant [5 x i8] c"Empty", align 1
@alloc_00315c78e51d29fe6b3102a4c1ecf6ef = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@alloc_bd3a3f3879e0d5f64554753e977f58d4 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@alloc_0964bb2a4870637395c77a018495bd5c = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@alloc_6566120a3a17f930e960a0863fcbd591 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@vtable.1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE" }>, align 8
@alloc_f62df14955f7d78bca139b0a7668683d = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@alloc_a5d866b1768ad3f826bccdb004a1a8ae = private unnamed_addr constant [4 x i8] c"kind", align 1
@alloc_9d31f411e63a4ddf3ba676f02a249797 = private unnamed_addr constant [151 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_emit.rs\00", align 1
@alloc_fcb0459a5c5429e65c8f5decd9e3b356 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9d31f411e63a4ddf3ba676f02a249797, [16 x i8] c"\96\00\00\00\00\00\00\00\22\00\00\00 \00\00\00" }>, align 8
@alloc_ab67633e08808d3e190b02d350c52308 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9d31f411e63a4ddf3ba676f02a249797, [16 x i8] c"\96\00\00\00\00\00\00\00\1E\00\00\00(\00\00\00" }>, align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE" = private unnamed_addr constant [5 x i64] [i64 5, i64 12, i64 11, i64 11, i64 4], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_59ba7b9f7211443cd55a366616eef46a to i64), i64 ptrtoint (ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_00315c78e51d29fe6b3102a4c1ecf6ef to i64), i64 ptrtoint (ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_bd3a3f3879e0d5f64554753e977f58d4 to i64), i64 ptrtoint (ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_0964bb2a4870637395c77a018495bd5c to i64), i64 ptrtoint (ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @alloc_6566120a3a17f930e960a0863fcbd591 to i64), i64 ptrtoint (ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel" to i64)) to i32)], align 4

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %0 = load i8, ptr %_3, align 1, !range !8, !alias.scope !5, !noalias !9, !noundef !3
  %1 = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [5 x i64], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE", i64 0, i64 %1
  %switch.load = load i64, ptr %switch.gep, align 8
  %2 = zext nneg i8 %0 to i64
  %reltable.shift = shl i64 %2, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d8937906ea9ed8cE.1.rel", i64 %reltable.shift)
; call core::fmt::Formatter::write_str
  %_0.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %reltable.intrinsic, i64 noundef %switch.load), !noalias !5
  ret i1 %_0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfda8f1239d158b37E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 288230376151711744) %n) unnamed_addr #1 {
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
  %3 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfda8f1239d158b37E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfda8f1239d158b37E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfda8f1239d158b37E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %3, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16), !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22), !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24), !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27), !noalias !19
  %_3.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !29, !noalias !30, !noundef !3
  %_4.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !31, !noalias !32, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  %_4.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !33, !noalias !40, !noundef !3
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
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h19b157129e316189E(ptr noundef nonnull readonly captures(none) %v_base, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %dst, ptr noundef nonnull captures(address) initializes((0, 32)) %scratch_base) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %_3.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !59, !noalias !60, !noundef !3
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !60, !noalias !59, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %_3.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !76, !noalias !77, !noundef !3
  %_4.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !77, !noalias !76, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %_3.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !93, !noalias !94, !noundef !3
  %_4.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !94, !noalias !93, !noundef !3
  %_0.i12.i = icmp slt i32 %_3.i.i.i10.i, %_4.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %_3.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !110, !noalias !111, !noundef !3
  %_4.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !111, !noalias !110, !noundef !3
  %_0.i15.i = icmp slt i32 %_3.i.i.i13.i, %_4.i.i.i14.i
  %0 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i, i32 %_4.i.i.i11.i)
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !3
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !3
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !3
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %_3.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !127, !noalias !128, !noundef !3
  %_4.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !128, !noalias !127, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %_3.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !144, !noalias !145, !noundef !3
  %_4.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !145, !noalias !144, !noundef !3
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i2, %_4.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %_3.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !161, !noalias !162, !noundef !3
  %_4.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !162, !noalias !161, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %_3.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !178, !noalias !179, !noundef !3
  %_4.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !179, !noalias !178, !noundef !3
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i10.i19, %_4.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %_3.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !195, !noalias !196, !noundef !3
  %_4.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !196, !noalias !195, !noundef !3
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i13.i22, %_4.i.i.i14.i23
  %9 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i19, i32 %_4.i.i.i11.i20)
  %10 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !3
  %11 = select i1 %_0.i12.i21, ptr %a.i11, ptr %10, !unpredictable !3
  %12 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !3
  %13 = select i1 %_0.i15.i24, ptr %d.i18, ptr %12, !unpredictable !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %_3.i.i.i16.i25 = load i32, ptr %13, align 4, !alias.scope !212, !noalias !213, !noundef !3
  %_4.i.i.i17.i26 = load i32, ptr %11, align 4, !alias.scope !213, !noalias !212, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %18 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %_4.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !217, !noalias !224, !noundef !3
  %_0.i.i38 = icmp slt i32 %9, %_4.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %19 = tail call i32 @llvm.smin.i32(i32 %9, i32 %_4.i.i.i.i37)
  store i32 %19, ptr %dst, align 4, !noalias !230
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_4.i.i.i20.i = load i32, ptr %7, align 4, !alias.scope !232, !noalias !239, !noundef !3
  %_0.i21.i = icmp slt i32 %17, %_4.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %_4.i.i.i20.i)
  store i32 %20, ptr %18, align 4, !noalias !245
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %21 = getelementptr i32, ptr %16, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %22 = getelementptr i32, ptr %7, i64 %count3.neg.i.i
  %23 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258), !noalias !253
  %_3.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !260, !noalias !261, !noundef !3
  %_4.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !262, !noalias !263, !noundef !3
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i36.1, %_4.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %24 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.1, i32 %_4.i.i.i.i37.1)
  store i32 %24, ptr %_16.i.i, align 4, !noalias !230
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275), !noalias !270
  %_3.i.i.i19.i.1 = load i32, ptr %21, align 4, !alias.scope !277, !noalias !278, !noundef !3
  %_4.i.i.i20.i.1 = load i32, ptr %22, align 4, !alias.scope !279, !noalias !280, !noundef !3
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i19.i.1, %_4.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %25 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.1, i32 %_4.i.i.i20.i.1)
  store i32 %25, ptr %23, align 4, !noalias !245
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %26 = getelementptr i32, ptr %21, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %27 = getelementptr i32, ptr %22, i64 %count3.neg.i.i.1
  %28 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !253
  %_3.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !293, !noalias !294, !noundef !3
  %_4.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !295, !noalias !296, !noundef !3
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i36.2, %_4.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.2, i32 %_4.i.i.i.i37.2)
  store i32 %29, ptr %_16.i.i.1, align 4, !noalias !230
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307), !noalias !270
  %_3.i.i.i19.i.2 = load i32, ptr %26, align 4, !alias.scope !309, !noalias !310, !noundef !3
  %_4.i.i.i20.i.2 = load i32, ptr %27, align 4, !alias.scope !311, !noalias !312, !noundef !3
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i19.i.2, %_4.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %30 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.2, i32 %_4.i.i.i20.i.2)
  store i32 %30, ptr %28, align 4, !noalias !245
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %31 = getelementptr i32, ptr %26, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %32 = getelementptr i32, ptr %27, i64 %count3.neg.i.i.2
  %33 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323), !noalias !253
  %_3.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !325, !noalias !326, !noundef !3
  %_4.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !327, !noalias !328, !noundef !3
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i36.3, %_4.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %34 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i36.3, i32 %_4.i.i.i.i37.3)
  store i32 %34, ptr %_16.i.i.2, align 4, !noalias !230
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !270
  %_3.i.i.i19.i.3 = load i32, ptr %31, align 4, !alias.scope !341, !noalias !342, !noundef !3
  %_4.i.i.i20.i.3 = load i32, ptr %32, align 4, !alias.scope !343, !noalias !344, !noundef !3
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i19.i.3, %_4.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %35 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.3, i32 %_4.i.i.i20.i.3)
  store i32 %35, ptr %33, align 4, !noalias !245
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %36 = getelementptr i32, ptr %31, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %37 = getelementptr i32, ptr %32, i64 %count3.neg.i.i.3
  %38 = getelementptr i8, ptr %37, i64 4
  %39 = getelementptr i8, ptr %36, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %38
  %_32.i = icmp ne ptr %_12.i.i.3, %39
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE.exit, !prof !345

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #22, !noalias !214
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE.exit: ; preds = %start
  ret void
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h1cffe6cae312e2bcE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", !prof !346

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i": ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !347
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !noalias !347
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb8

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %bb4
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #24
  unreachable

cleanup:                                          ; preds = %bb8
  %2 = landingpad { ptr, i32 }
          cleanup
  br i1 %_15, label %bb2.i.i.i3.i10, label %bb11

bb8:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i", %start
  %heap_buf.sroa.6.1 = phi ptr [ undef, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %_0.sroa.0.0.i7, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i.i" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7b5ce544124a8225E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !noalias !352
  br label %bb10

bb11:                                             ; preds = %bb2.i.i.i3.i10, %cleanup
  resume { ptr, i32 } %2

bb2.i.i.i3.i10:                                   ; preds = %cleanup
  %5 = shl nuw i64 %_0.sroa.0.0.i7, 2
  %6 = icmp ne ptr %heap_buf.sroa.6.1, null
  call void @llvm.assume(i1 %6)
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %heap_buf.sroa.6.1, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !noalias !361
  br label %bb11
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7b5ce544124a8225E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb10:                                             ; preds = %bb6, %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit
  %desired_depth.sroa.0.0 = phi i8 [ %18, %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i40, %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit ], [ 1, %bb6 ]
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

bb7.i41:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i, %bb30
  br i1 %eager_sort, label %bb16.i43, label %bb11.i42

bb1.i:                                            ; preds = %bb30
  %_4.i.i = icmp samesign ult i64 %new_len, 2
  br i1 %_4.i.i, label %bb5.i38, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %_28.i.i = getelementptr inbounds nuw i8, ptr %_82, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375), !noalias !378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381), !noalias !378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383), !noalias !378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386), !noalias !378
  %_3.i.i.i61 = load i32, ptr %_28.i.i, align 4, !alias.scope !388, !noalias !389, !noundef !3
  %_4.i.i.i62 = load i32, ptr %_82, align 4, !alias.scope !390, !noalias !391, !noundef !3
  %_0.i63 = icmp slt i32 %_3.i.i.i61, %_4.i.i.i62
  %_10.i.i78.not = icmp eq i64 %new_len, 2
  br i1 %_0.i63, label %bb4.i.i.preheader, label %bb11.i.i.preheader

bb11.i.i.preheader:                               ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread, label %bb12.i.i

bb4.i.i.preheader:                                ; preds = %bb2.i.i
  br i1 %_10.i.i78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100, label %bb5.i.i

bb12.i.i:                                         ; preds = %bb11.i.i.preheader, %bb15.i.i
  %_4.i.i.i59 = phi i32 [ %_3.i.i.i58, %bb15.i.i ], [ %_3.i.i.i61, %bb11.i.i.preheader ]
  %run_len.sroa.0.0.i.i76 = phi i64 [ %3, %bb15.i.i ], [ 2, %bb11.i.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.0.i.i76
  %_3.i.i.i58 = load i32, ptr %2, align 4, !alias.scope !392, !noalias !399, !noundef !3
  %_0.i60 = icmp slt i32 %_3.i.i.i58, %_4.i.i.i59
  br i1 %_0.i60, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb12.i.i
  %3 = add nuw i64 %run_len.sroa.0.0.i.i76, 1
  %exitcond.not = icmp eq i64 %3, %new_len
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i, label %bb12.i.i

bb5.i.i:                                          ; preds = %bb4.i.i.preheader, %bb7.i.i
  %_4.i.i.i = phi i32 [ %_3.i.i.i, %bb7.i.i ], [ %_3.i.i.i61, %bb4.i.i.preheader ]
  %run_len.sroa.0.1.i.i79 = phi i64 [ %5, %bb7.i.i ], [ 2, %bb4.i.i.preheader ]
  %4 = getelementptr inbounds nuw i32, ptr %_82, i64 %run_len.sroa.0.1.i.i79
  %_3.i.i.i = load i32, ptr %4, align 4, !alias.scope !403, !noalias !410, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %_4.i.i.i
  br i1 %_0.i, label %bb7.i.i, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i

bb7.i.i:                                          ; preds = %bb5.i.i
  %5 = add nuw i64 %run_len.sroa.0.1.i.i79, 1
  %exitcond92.not = icmp eq i64 %5, %new_len
  br i1 %exitcond92.not, label %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i, label %bb5.i.i

_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i: ; preds = %bb15.i.i, %bb12.i.i, %bb7.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %new_len, %bb7.i.i ], [ %run_len.sroa.0.1.i.i79, %bb5.i.i ], [ %new_len, %bb15.i.i ], [ %run_len.sroa.0.0.i.i76, %bb12.i.i ]
  %_12.i = icmp samesign ule i64 %_0.sroa.0.0.i.i, %new_len
  tail call void @llvm.assume(i1 %_12.i)
  %_13.not.i = icmp ult i64 %_0.sroa.0.0.i.i, %min_good_run_len.sroa.0.0
  br i1 %_13.not.i, label %bb7.i41, label %bb3.i37

_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100: ; preds = %bb4.i.i.preheader
  br i1 %_13.not.i103, label %bb7.i41, label %bb5.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread: ; preds = %bb11.i.i.preheader
  br i1 %_13.not.i97, label %bb7.i41, label %bb5.i38

bb3.i37:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i
  br i1 %_0.i63, label %bb14.i, label %bb5.i38

bb11.i42:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i57 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 %min_good_run_len.sroa.0.0)
  %_36.i = shl nuw nsw i64 %_0.sroa.0.0.i57, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit

bb16.i43:                                         ; preds = %bb7.i41
  %_0.sroa.0.0.i56 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %new_len, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %_0.sroa.0.0.i56, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #25
  %_35.i = shl nuw nsw i64 %_0.sroa.0.0.i56, 1
  %_34.i = or disjoint i64 %_35.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit

bb5.i38:                                          ; preds = %bb6.i.i, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread, %bb1.i, %bb14.i, %bb3.i37
  %_0.sroa.0.0.i.i6972 = phi i64 [ %_0.sroa.0.0.i.i, %bb3.i37 ], [ 1, %bb14.i ], [ %new_len, %bb1.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread ], [ %_0.sroa.0.0.i.i98106110, %middle.block ], [ %_0.sroa.0.0.i.i98106110, %bb6.i.i ]
  %_27.i = shl nuw nsw i64 %_0.sroa.0.0.i.i6972, 1
  %_26.i = or disjoint i64 %_27.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit

bb14.i:                                           ; preds = %bb3.i37
  %half_len2.i = lshr i64 %_0.sroa.0.0.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414), !noalias !417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419), !noalias !417
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i.i, 2
  br i1 %_915.not.i.i, label %bb5.i38, label %bb5.preheader.i.i

bb5.preheader.i.i:                                ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100, %bb14.i
  %half_len2.i111 = phi i64 [ %half_len2.i, %bb14.i ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100 ]
  %_0.sroa.0.0.i.i98106110 = phi i64 [ %_0.sroa.0.0.i.i, %bb14.i ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h008362ebd13dd090E.exit.i.thread100 ]
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
  %wide.load = load <4 x i32>, ptr %7, align 4, !alias.scope !421, !noalias !424
  %wide.load118 = load <4 x i32>, ptr %9, align 4, !alias.scope !421, !noalias !424
  %10 = getelementptr i8, ptr %8, i64 -12
  %11 = getelementptr i8, ptr %8, i64 -28
  %wide.load119 = load <4 x i32>, ptr %10, align 4, !alias.scope !425, !noalias !426
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load120 = load <4 x i32>, ptr %11, align 4, !alias.scope !425, !noalias !426
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %7, align 4, !alias.scope !421, !noalias !424
  store <4 x i32> %reverse121, ptr %9, align 4, !alias.scope !421, !noalias !424
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %10, align 4, !alias.scope !425, !noalias !426
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse123, ptr %11, align 4, !alias.scope !425, !noalias !426
  %index.next = add nuw i64 %index, 8
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !427

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
  %14 = load i32, ptr %x.i.i, align 4, !alias.scope !421, !noalias !424, !noundef !3
  %15 = load i32, ptr %y.i.i, align 4, !alias.scope !425, !noalias !426
  store i32 %15, ptr %x.i.i, align 4, !alias.scope !421, !noalias !424
  store i32 %14, ptr %y.i.i, align 4, !alias.scope !425, !noalias !426
  %16 = add nuw nsw i64 %i.sroa.0.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %16, %half_len2.i111
  br i1 %exitcond.not.i.i, label %bb5.i38, label %bb6.i.i, !llvm.loop !430

_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E.exit: ; preds = %bb11.i42, %bb16.i43, %bb5.i38
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit
  %stack_len.sroa.0.184 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit ]
  %prev_run.sroa.0.183 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit ]
  %count = add i64 %stack_len.sroa.0.184, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !3
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %prev_run.sroa.0.183, %bb12 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ %stack_len.sroa.0.184, %bb12 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !3
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %22 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %23 = trunc nuw nsw i64 %22 to i32
  %log.i = shl nuw nsw i32 %23, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #25
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.183, 2
  %or.cond.i = select i1 %_6.i, i1 true, i1 %_7.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i44 = tail call i64 @llvm.umin.i64(i64 %_51, i64 range(i64 0, -9223372036854775808) %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i44
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit, label %bb5.i45

bb5.i45:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %24 = shl nuw nsw i64 %_0.sroa.0.0.i.i44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %24, i1 false), !alias.scope !436
  %_22.i46 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %24
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i45, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i49, %bb1.i.i ], [ %_22.i46, %bb5.i45 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %v_mid.i, %bb5.i45 ]
  %out.sroa.0.0.i.i = phi ptr [ %27, %bb1.i.i ], [ %v_end.i, %bb5.i45 ]
  %25 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %26 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %27 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %_3.i.i.i.i.i = load i32, ptr %26, align 4, !alias.scope !452, !noalias !453, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %25, align 4, !alias.scope !456, !noalias !457, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %28 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %28, ptr %27, align 4, !alias.scope !431, !noalias !458
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %_3.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !474, !noalias !475, !noundef !3
  %_4.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !478, !noalias !479, !noundef !3
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i12.i, %_4.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %29 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i12.i, i32 %_4.i.i.i.i13.i)
  store i32 %29, ptr %_2511.i.i, align 4, !alias.scope !431, !noalias !480
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %32, i1 false), !alias.scope !436, !noalias !481
  br label %_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit

_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i48
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i50 = or i64 %_51, 1
  %33 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i50, i1 true)
  %34 = trunc nuw nsw i64 %33 to i32
  %log.i51 = shl nuw nsw i32 %34, 1
  %limit.i52 = xor i32 %log.i51, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i52, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #25
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hd5cb1fa679d18a44E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i55, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #25
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit"
  %v.sroa.16.0132 = phi i64 [ %v.sroa.16.0.ph139, %bb5.lr.ph ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit" ]
  %limit.sroa.0.0131 = phi i32 [ %limit.sroa.0.0.ph138, %bb5.lr.ph ], [ %48, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.0131, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit", %start
  %v.sroa.0.0.ph.lcssa129 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph140, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %state.sroa.27.2.lcssa.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit" ], [ %_63.i63, %bb28 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h19b157129e316189E(ptr noundef nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr noundef nonnull align 4 %scratch.0, ptr noundef %_16.i)
  %_18.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_19.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_20.i = getelementptr inbounds nuw i8, ptr %_16.i, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h19b157129e316189E(ptr noundef %_18.i, ptr noundef %_19.i, ptr noundef %_20.i)
  br label %bb15.i

bb10.i:                                           ; preds = %bb9.i
  %_7.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %_3.i.i.i.i.i = load i32, ptr %_7.i.i, align 4, !alias.scope !506, !noalias !507, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !509, !noalias !510, !noundef !3
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 12
  %_14.i.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph.lcssa129, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %_3.i.i.i7.i.i = load i32, ptr %_12.i.i, align 4, !alias.scope !526, !noalias !527, !noundef !3
  %_4.i.i.i8.i.i = load i32, ptr %_14.i.i, align 4, !alias.scope !528, !noalias !529, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %_3.i.i.i10.i.i = load i32, ptr %c.i.i, align 4, !alias.scope !545, !noalias !546, !noundef !3
  %_4.i.i.i11.i.i = load i32, ptr %a.i.i, align 4, !alias.scope !547, !noalias !548, !noundef !3
  %_0.i12.i.i = icmp slt i32 %_3.i.i.i10.i.i, %_4.i.i.i11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %_3.i.i.i13.i.i = load i32, ptr %d.i.i, align 4, !alias.scope !564, !noalias !565, !noundef !3
  %_4.i.i.i14.i.i = load i32, ptr %b.i.i, align 4, !alias.scope !566, !noalias !567, !noundef !3
  %_0.i15.i.i = icmp slt i32 %_3.i.i.i13.i.i, %_4.i.i.i14.i.i
  %5 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i.i, i32 %_4.i.i.i11.i.i)
  %6 = select i1 %_0.i15.i.i, ptr %c.i.i, ptr %b.i.i, !unpredictable !3
  %7 = select i1 %_0.i12.i.i, ptr %a.i.i, ptr %6, !unpredictable !3
  %8 = select i1 %_0.i12.i.i, ptr %b.i.i, ptr %c.i.i, !unpredictable !3
  %9 = select i1 %_0.i15.i.i, ptr %d.i.i, ptr %8, !unpredictable !3
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %_3.i.i.i16.i.i = load i32, ptr %9, align 4, !alias.scope !583, !noalias !584, !noundef !3
  %_4.i.i.i17.i.i = load i32, ptr %7, align 4, !alias.scope !585, !noalias !586, !noundef !3
  store i32 %5, ptr %scratch.0, align 4, !alias.scope !489, !noalias !587
  %dst5.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %10 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %10, ptr %dst5.i.i, align 4, !alias.scope !489, !noalias !587
  %dst6.i.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %11 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i.i, i32 %_4.i.i.i17.i.i)
  store i32 %11, ptr %dst6.i.i, align 4, !alias.scope !489, !noalias !587
  %12 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %13 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i.i, i32 %_4.i.i.i14.i.i)
  store i32 %13, ptr %12, align 4, !alias.scope !489, !noalias !587
  %_27.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %_28.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %_7.i13.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %_3.i.i.i.i14.i = load i32, ptr %_7.i13.i, align 4, !alias.scope !603, !noalias !604, !noundef !3
  %_4.i.i.i.i15.i = load i32, ptr %_27.i, align 4, !alias.scope !605, !noalias !606, !noundef !3
  %_0.i.i16.i = icmp slt i32 %_3.i.i.i.i14.i, %_4.i.i.i.i15.i
  %_12.i17.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 12
  %_14.i18.i = getelementptr inbounds nuw i8, ptr %_27.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %_3.i.i.i7.i19.i = load i32, ptr %_12.i17.i, align 4, !alias.scope !622, !noalias !623, !noundef !3
  %_4.i.i.i8.i20.i = load i32, ptr %_14.i18.i, align 4, !alias.scope !624, !noalias !625, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %_3.i.i.i10.i31.i = load i32, ptr %c.i28.i, align 4, !alias.scope !641, !noalias !642, !noundef !3
  %_4.i.i.i11.i32.i = load i32, ptr %a.i23.i, align 4, !alias.scope !643, !noalias !644, !noundef !3
  %_0.i12.i33.i = icmp slt i32 %_3.i.i.i10.i31.i, %_4.i.i.i11.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %_3.i.i.i13.i34.i = load i32, ptr %d.i30.i, align 4, !alias.scope !660, !noalias !661, !noundef !3
  %_4.i.i.i14.i35.i = load i32, ptr %b.i26.i, align 4, !alias.scope !662, !noalias !663, !noundef !3
  %_0.i15.i36.i = icmp slt i32 %_3.i.i.i13.i34.i, %_4.i.i.i14.i35.i
  %14 = call i32 @llvm.smin.i32(i32 %_3.i.i.i10.i31.i, i32 %_4.i.i.i11.i32.i)
  %15 = select i1 %_0.i15.i36.i, ptr %c.i28.i, ptr %b.i26.i, !unpredictable !3
  %16 = select i1 %_0.i12.i33.i, ptr %a.i23.i, ptr %15, !unpredictable !3
  %17 = select i1 %_0.i12.i33.i, ptr %b.i26.i, ptr %c.i28.i, !unpredictable !3
  %18 = select i1 %_0.i15.i36.i, ptr %d.i30.i, ptr %17, !unpredictable !3
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %_3.i.i.i16.i37.i = load i32, ptr %18, align 4, !alias.scope !679, !noalias !680, !noundef !3
  %_4.i.i.i17.i38.i = load i32, ptr %16, align 4, !alias.scope !681, !noalias !682, !noundef !3
  store i32 %14, ptr %_28.i, align 4, !alias.scope !489, !noalias !587
  %dst5.i40.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 4
  %19 = call i32 @llvm.smin.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %19, ptr %dst5.i40.i, align 4, !alias.scope !489, !noalias !587
  %dst6.i43.i = getelementptr inbounds nuw i8, ptr %_28.i, i64 8
  %20 = call i32 @llvm.smax.i32(i32 %_3.i.i.i16.i37.i, i32 %_4.i.i.i17.i38.i)
  store i32 %20, ptr %dst6.i43.i, align 4, !alias.scope !489, !noalias !587
  %21 = getelementptr inbounds nuw i8, ptr %_28.i, i64 12
  %22 = call i32 @llvm.smax.i32(i32 %_3.i.i.i13.i34.i, i32 %_4.i.i.i14.i35.i)
  store i32 %22, ptr %21, align 4, !alias.scope !489, !noalias !587
  br label %bb15.i

bb46.i:                                           ; preds = %bb9.i
  %23 = load i32, ptr %v.sroa.0.0.ph.lcssa129, align 4, !alias.scope !486, !noalias !683
  store i32 %23, ptr %scratch.0, align 4, !alias.scope !489, !noalias !587
  %_31.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %24 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211.i
  %25 = load i32, ptr %_31.i, align 4, !alias.scope !486, !noalias !683
  store i32 %25, ptr %24, align 4, !alias.scope !489, !noalias !587
  br label %bb15.i

bb15.i:                                           ; preds = %bb46.i, %bb10.i, %bb6.i
  %presorted_len.sroa.0.0.i = phi i64 [ 8, %bb6.i ], [ 4, %bb10.i ], [ 1, %bb46.i ]
  %26 = sub nsw i64 %v.sroa.16.0.lcssa, %len_div_211.i
  %_8061.i = icmp samesign ult i64 %presorted_len.sroa.0.0.i, %len_div_211.i
  br i1 %_8061.i, label %bb24.preheader.i, label %bb16.loopexit.i

bb16.loopexit.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i, %bb15.i
  %src5.1.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %len_div_211.i
  %dst6.1.i = getelementptr i32, ptr %scratch.0, i64 %len_div_211.i
  %_8061.1.i = icmp ult i64 %presorted_len.sroa.0.0.i, %26
  br i1 %_8061.1.i, label %bb24.preheader.1.i, label %bb16.loopexit.1.i

bb24.preheader.1.i:                               ; preds = %bb16.loopexit.i
  %iter1.sroa.0.163.1.i = add nuw nsw i64 %presorted_len.sroa.0.0.i, 1
  br label %bb24.1.i

bb24.1.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i, %bb24.preheader.1.i
  %iter1.sroa.0.165.1.i = phi i64 [ %iter1.sroa.0.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i ], [ %iter1.sroa.0.163.1.i, %bb24.preheader.1.i ]
  %iter1.sroa.0.064.1.i = phi i64 [ %iter1.sroa.0.165.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.1.i ]
  %_55.1.i = getelementptr inbounds nuw i32, ptr %src5.1.i, i64 %iter1.sroa.0.064.1.i
  %dst7.1.i = getelementptr inbounds nuw i32, ptr %dst6.1.i, i64 %iter1.sroa.0.064.1.i
  %27 = load i32, ptr %_55.1.i, align 4, !alias.scope !486, !noalias !683
  store i32 %27, ptr %dst7.1.i, align 4, !alias.scope !489, !noalias !587
  %28 = getelementptr inbounds i8, ptr %dst7.1.i, i64 -4
  %_4.i.i.i.i55.1.i = load i32, ptr %28, align 4, !alias.scope !684, !noalias !691, !noundef !3
  %_0.i.i56.1.i = icmp slt i32 %27, %_4.i.i.i.i55.1.i
  br i1 %_0.i.i56.1.i, label %bb4.i.1.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i

bb4.i.1.i:                                        ; preds = %bb24.1.i, %bb7.i.1.i
  %29 = phi i32 [ %_4.i.i.i2.i.1.i, %bb7.i.1.i ], [ %_4.i.i.i.i55.1.i, %bb24.1.i ]
  %gap_guard.sroa.5.0.i.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst7.1.i, %bb24.1.i ]
  %sift.sroa.0.0.i.1.i = phi ptr [ %30, %bb7.i.1.i ], [ %28, %bb24.1.i ]
  store i32 %29, ptr %gap_guard.sroa.5.0.i.1.i, align 4, !alias.scope !489, !noalias !587
  %_18.i.1.i = icmp eq ptr %sift.sroa.0.0.i.1.i, %dst6.1.i
  br i1 %_18.i.1.i, label %bb10.i.1.i, label %bb7.i.1.i

bb7.i.1.i:                                        ; preds = %bb4.i.1.i
  %30 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.1.i, i64 -4
  %_4.i.i.i2.i.1.i = load i32, ptr %30, align 4, !alias.scope !695, !noalias !702, !noundef !3
  %_0.i3.i.1.i = icmp slt i32 %27, %_4.i.i.i2.i.1.i
  br i1 %_0.i3.i.1.i, label %bb4.i.1.i, label %bb10.i.1.i

bb10.i.1.i:                                       ; preds = %bb7.i.1.i, %bb4.i.1.i
  %sift.sroa.0.0.i.lcssa.1.i = phi ptr [ %sift.sroa.0.0.i.1.i, %bb7.i.1.i ], [ %dst6.1.i, %bb4.i.1.i ]
  store i32 %27, ptr %sift.sroa.0.0.i.lcssa.1.i, align 4, !alias.scope !489, !noalias !706
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i: ; preds = %bb10.i.1.i, %bb24.1.i
  %_80.1.i = icmp ult i64 %iter1.sroa.0.165.1.i, %26
  %_84.1.i = zext i1 %_80.1.i to i64
  %iter1.sroa.0.1.1.i = add nuw i64 %iter1.sroa.0.165.1.i, %_84.1.i
  br i1 %_80.1.i, label %bb24.1.i, label %bb16.loopexit.1.i

bb16.loopexit.1.i:                                ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.1.i, %bb16.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !719), !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !727), !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !722
  %_3.i.i.i.i48.i = load i32, ptr %right.sroa.0.026.i.i, align 4, !alias.scope !732, !noalias !733, !noundef !3
  %_4.i.i.i.i49.i = load i32, ptr %left.sroa.0.027.i.i, align 4, !alias.scope !734, !noalias !735, !noundef !3
  %_0.i.i50.i = icmp slt i32 %_3.i.i.i.i48.i, %_4.i.i.i.i49.i
  %is_l.i18.i.i = xor i1 %_0.i.i50.i, true
  %36 = call i32 @llvm.smin.i32(i32 %_3.i.i.i.i48.i, i32 %_4.i.i.i.i49.i)
  store i32 %36, ptr %dst.sroa.0.029.i.i, align 4, !alias.scope !486, !noalias !736
  %count.i.i.i = zext i1 %_0.i.i50.i to i64
  %_12.i.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i.i, i64 %count.i.i.i
  %count2.i.i.i = zext i1 %is_l.i18.i.i to i64
  %_14.i.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i.i, i64 %count2.i.i.i
  %_16.i.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !743), !noalias !746
  call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !746
  call void @llvm.experimental.noalias.scope.decl(metadata !751), !noalias !746
  call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !746
  %_3.i.i.i19.i.i = load i32, ptr %right_rev.sroa.0.024.i.i, align 4, !alias.scope !756, !noalias !757, !noundef !3
  %_4.i.i.i20.i.i = load i32, ptr %left_rev.sroa.0.025.i.i, align 4, !alias.scope !758, !noalias !759, !noundef !3
  %_0.i21.i.i = icmp slt i32 %_3.i.i.i19.i.i, %_4.i.i.i20.i.i
  %is_l.i.i.i = xor i1 %_0.i21.i.i, true
  %37 = call i32 @llvm.smax.i32(i32 %_3.i.i.i19.i.i, i32 %_4.i.i.i20.i.i)
  store i32 %37, ptr %dst_rev.sroa.0.023.i.i, align 4, !alias.scope !486, !noalias !760
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
  %41 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i.i, align 4, !alias.scope !762, !noalias !587
  store i32 %41, ptr %_16.i.i.i, align 4, !alias.scope !486, !noalias !763
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
  br i1 %or.cond.i.i, label %bb13.i.i, label %bb22, !prof !345

bb13.i.i:                                         ; preds = %bb9.i.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #22
          to label %.noexc.i unwind label %cleanup2.i, !noalias !764

.noexc.i:                                         ; preds = %bb13.i.i
  unreachable

cleanup2.i:                                       ; preds = %bb13.i.i
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = shl nuw nsw i64 %v.sroa.16.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph.lcssa129, ptr nonnull align 4 %scratch.0, i64 %43, i1 false), !alias.scope !765, !noalias !766
  resume { ptr, i32 } %42

bb24.i:                                           ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i, %bb24.preheader.i
  %iter1.sroa.0.165.i = phi i64 [ %iter1.sroa.0.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i ], [ %iter1.sroa.0.163.i, %bb24.preheader.i ]
  %iter1.sroa.0.064.i = phi i64 [ %iter1.sroa.0.165.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i ], [ %presorted_len.sroa.0.0.i, %bb24.preheader.i ]
  %_55.i = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph.lcssa129, i64 %iter1.sroa.0.064.i
  %dst7.i = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %iter1.sroa.0.064.i
  %44 = load i32, ptr %_55.i, align 4, !alias.scope !486, !noalias !683
  store i32 %44, ptr %dst7.i, align 4, !alias.scope !489, !noalias !587
  %45 = getelementptr inbounds i8, ptr %dst7.i, i64 -4
  %_4.i.i.i.i55.i = load i32, ptr %45, align 4, !alias.scope !684, !noalias !691, !noundef !3
  %_0.i.i56.i = icmp slt i32 %44, %_4.i.i.i.i55.i
  br i1 %_0.i.i56.i, label %bb4.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i

bb4.i.i:                                          ; preds = %bb24.i, %bb7.i.i
  %46 = phi i32 [ %_4.i.i.i2.i.i, %bb7.i.i ], [ %_4.i.i.i.i55.i, %bb24.i ]
  %gap_guard.sroa.5.0.i.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %dst7.i, %bb24.i ]
  %sift.sroa.0.0.i.i = phi ptr [ %47, %bb7.i.i ], [ %45, %bb24.i ]
  store i32 %46, ptr %gap_guard.sroa.5.0.i.i, align 4, !alias.scope !489, !noalias !587
  %_18.i.i = icmp eq ptr %sift.sroa.0.0.i.i, %scratch.0
  br i1 %_18.i.i, label %bb10.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb4.i.i
  %47 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i, i64 -4
  %_4.i.i.i2.i.i = load i32, ptr %47, align 4, !alias.scope !695, !noalias !702, !noundef !3
  %_0.i3.i.i = icmp slt i32 %44, %_4.i.i.i2.i.i
  br i1 %_0.i3.i.i, label %bb4.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb7.i.i, %bb4.i.i
  %sift.sroa.0.0.i.lcssa.i = phi ptr [ %sift.sroa.0.0.i.i, %bb7.i.i ], [ %scratch.0, %bb4.i.i ]
  store i32 %44, ptr %sift.sroa.0.0.i.lcssa.i, align 4, !alias.scope !489, !noalias !706
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i: ; preds = %bb10.i.i, %bb24.i
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
  %self.i = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hfda8f1239d158b37E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph140, ptr noundef readonly %b.i, ptr noundef readonly %c.i, i64 noundef %len_div_84.i)
  br label %bb10

bb3.i23:                                          ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !776), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !782), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !784), !noalias !779
  call void @llvm.experimental.noalias.scope.decl(metadata !787), !noalias !779
  %_3.i.i.i.i = load i32, ptr %v.sroa.0.0.ph140, align 4, !alias.scope !789, !noalias !792, !noundef !3
  %_4.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !794, !noalias !795, !noundef !3
  %_0.i.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !796, !noalias !803, !noundef !3
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i6.i
  %49 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i6.i
  %_12.i.i24 = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i24, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %49, ptr %v.sroa.0.0.ph140, ptr %c.b.i.i
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7b5ce544124a8225E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph140, i64 noundef %v.sroa.16.0132, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  %value = load i32, ptr %src, align 4, !noundef !3
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb10
  %_3.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph137, align 4, !alias.scope !807, !noalias !814, !noundef !3
  %_0.i = icmp slt i32 %_3.i.i.i, %value
  br i1 %_0.i, label %bb14, label %bb17

bb14:                                             ; preds = %bb10, %bb12
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %_8.i25.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i25.not, label %bb31.i, label %bb33.i, !prof !345

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
  %_4.i.i.i.i30 = load i32, ptr %src, align 4, !alias.scope !823, !noalias !830, !noundef !3
  br label %bb6.i28

bb6.i28:                                          ; preds = %bb6.i28.preheader, %bb6.i28
  %state.sroa.43.187.i = phi ptr [ %59, %bb6.i28 ], [ %state.sroa.43.0.i, %bb6.i28.preheader ]
  %state.sroa.9.186.i = phi ptr [ %_9.i54.i, %bb6.i28 ], [ %state.sroa.9.0.i, %bb6.i28.preheader ]
  %state.sroa.27.185.i = phi i64 [ %60, %bb6.i28 ], [ %state.sroa.27.0.i, %bb6.i28.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %_3.i.i.i.i29 = load i32, ptr %state.sroa.9.186.i, align 4, !alias.scope !840, !noalias !841, !noundef !3
  %_0.i.i31 = icmp slt i32 %_3.i.i.i.i29, %_4.i.i.i.i30
  %53 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -4
  %dst_base.sroa.0.0.i.i = select i1 %_0.i.i31, ptr %scratch.0, ptr %53
  %dst.i.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i, i64 %state.sroa.27.185.i
  store i32 %_3.i.i.i.i29, ptr %dst.i.i, align 4, !alias.scope !821, !noalias !842
  %_8.i.i = zext i1 %_0.i.i31 to i64
  %54 = add i64 %state.sroa.27.185.i, %_8.i.i
  %_9.i.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 4
  %_3.i.i.i25.i = load i32, ptr %_9.i.i, align 4, !alias.scope !845, !noalias !852, !noundef !3
  %_0.i27.i = icmp slt i32 %_3.i.i.i25.i, %_4.i.i.i.i30
  %55 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -8
  %dst_base.sroa.0.0.i29.i = select i1 %_0.i27.i, ptr %scratch.0, ptr %55
  %dst.i31.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i, i64 %54
  store i32 %_3.i.i.i25.i, ptr %dst.i31.i, align 4, !alias.scope !821, !noalias !856
  %_8.i33.i = zext i1 %_0.i27.i to i64
  %56 = add i64 %54, %_8.i33.i
  %_9.i34.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 8
  %_3.i.i.i35.i = load i32, ptr %_9.i34.i, align 4, !alias.scope !859, !noalias !866, !noundef !3
  %_0.i37.i = icmp slt i32 %_3.i.i.i35.i, %_4.i.i.i.i30
  %57 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -12
  %dst_base.sroa.0.0.i39.i = select i1 %_0.i37.i, ptr %scratch.0, ptr %57
  %dst.i41.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i, i64 %56
  store i32 %_3.i.i.i35.i, ptr %dst.i41.i, align 4, !alias.scope !821, !noalias !870
  %_8.i43.i = zext i1 %_0.i37.i to i64
  %58 = add i64 %56, %_8.i43.i
  %_9.i44.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i, i64 12
  %_3.i.i.i45.i = load i32, ptr %_9.i44.i, align 4, !alias.scope !873, !noalias !880, !noundef !3
  %_0.i47.i = icmp slt i32 %_3.i.i.i45.i, %_4.i.i.i.i30
  %59 = getelementptr inbounds i8, ptr %state.sroa.43.187.i, i64 -16
  %dst_base.sroa.0.0.i49.i = select i1 %_0.i47.i, ptr %scratch.0, ptr %59
  %dst.i51.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i, i64 %58
  store i32 %_3.i.i.i45.i, ptr %dst.i51.i, align 4, !alias.scope !821, !noalias !884
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
  %_4.i.i.i56.i = load i32, ptr %src, align 4, !alias.scope !887, !noalias !894, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %_3.i.i.i55.i = load i32, ptr %state.sroa.9.292.i, align 4, !alias.scope !904, !noalias !905, !noundef !3
  %_0.i57.i = icmp slt i32 %_3.i.i.i55.i, %_4.i.i.i56.i
  %61 = getelementptr inbounds i8, ptr %state.sroa.43.293.i, i64 -4
  %dst_base.sroa.0.0.i59.i = select i1 %_0.i57.i, ptr %scratch.0, ptr %61
  %dst.i61.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i, i64 %state.sroa.27.291.i
  store i32 %_3.i.i.i55.i, ptr %dst.i61.i, align 4, !alias.scope !821, !noalias !906
  %_8.i63.i = zext i1 %_0.i57.i to i64
  %62 = add i64 %state.sroa.27.291.i, %_8.i63.i
  %_9.i64.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i, i64 4
  %_47.i = icmp ult ptr %_9.i64.i, %loop_end.i
  br i1 %_47.i, label %bb18.i, label %bb21.i

bb23.i:                                           ; preds = %bb21.i
  %63 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i, i64 -4
  %dst.i68.i = getelementptr inbounds nuw i32, ptr %63, i64 %state.sroa.27.2.lcssa.i
  %64 = load i32, ptr %state.sroa.9.2.lcssa.i, align 4, !alias.scope !818, !noalias !909
  store i32 %64, ptr %dst.i68.i, align 4, !alias.scope !821, !noalias !912
  %_9.i70.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i, i64 4
  br label %bb3.i26

bb22.i:                                           ; preds = %bb21.i
  %65 = shl i64 %state.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %65, i1 false), !alias.scope !913
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
  %wide.load271 = load <4 x i32>, ptr %70, align 4, !alias.scope !821, !noalias !818
  %reverse272 = shufflevector <4 x i32> %wide.load271, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load273 = load <4 x i32>, ptr %71, align 4, !alias.scope !821, !noalias !818
  %reverse274 = shufflevector <4 x i32> %wide.load273, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr i8, ptr %67, i64 16
  store <4 x i32> %reverse272, ptr %67, align 4, !alias.scope !818, !noalias !821
  store <4 x i32> %reverse274, ptr %72, align 4, !alias.scope !818, !noalias !821
  %index.next275 = add nuw i64 %index270, 8
  %73 = icmp eq i64 %index.next275, %n.vec268
  br i1 %73, label %middle.block276, label %vector.body269, !llvm.loop !914

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
  %78 = load i32, ptr %77, align 4, !alias.scope !821, !noalias !818
  store i32 %78, ptr %75, align 4, !alias.scope !818, !noalias !821
  %exitcond.not.i = icmp eq i64 %74, %_63.i
  br i1 %exitcond.not.i, label %bb16, label %bb42.i, !llvm.loop !915

bb16:                                             ; preds = %bb42.i, %middle.block276, %bb22.i
  %79 = icmp eq i64 %state.sroa.27.2.lcssa.i, 0
  br i1 %79, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %state.sroa.27.2.lcssa.i, %v.sroa.16.0132
  br i1 %_6.not.i, label %bb3.i33, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit", !prof !916

bb3.i33:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #22, !noalias !917
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE.exit": ; preds = %bb19
  %80 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6f7c44927b333cb7E(ptr noalias noundef nonnull align 4 %80, i64 noundef %_63.i, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %state.sroa.27.2.lcssa.i, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb12, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %_8.i34.not = icmp samesign ult i64 %scratch.1, %v.sroa.16.0132
  br i1 %_8.i34.not, label %bb31.i37, label %bb33.i38, !prof !345

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
  %_3.i.i.i.i.i82 = load i32, ptr %src, align 4, !alias.scope !926, !noalias !935, !noundef !3
  br label %bb6.i78

bb6.i78:                                          ; preds = %bb6.i78.preheader, %bb6.i78
  %state.sroa.43.187.i79 = phi ptr [ %88, %bb6.i78 ], [ %state.sroa.43.0.i44, %bb6.i78.preheader ]
  %state.sroa.9.186.i80 = phi ptr [ %_9.i54.i100, %bb6.i78 ], [ %state.sroa.9.0.i43, %bb6.i78.preheader ]
  %state.sroa.27.185.i81 = phi i64 [ %89, %bb6.i78 ], [ %state.sroa.27.0.i42, %bb6.i78.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %_4.i.i.i.i.i83 = load i32, ptr %state.sroa.9.186.i80, align 4, !alias.scope !948, !noalias !949, !noundef !3
  %_0.i.i.i84 = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i.i83
  %82 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -4
  %dst_base.sroa.0.0.i.i85 = select i1 %_0.i.i.i84, ptr %scratch.0, ptr %82
  %dst.i.i86 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i.i85, i64 %state.sroa.27.185.i81
  store i32 %_4.i.i.i.i.i83, ptr %dst.i.i86, align 4, !alias.scope !924, !noalias !950
  %_8.i.i87 = zext i1 %_0.i.i.i84 to i64
  %83 = add i64 %state.sroa.27.185.i81, %_8.i.i87
  %_9.i.i88 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 4
  %_4.i.i.i.i26.i = load i32, ptr %_9.i.i88, align 4, !alias.scope !953, !noalias !962, !noundef !3
  %_0.i.i27.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i26.i
  %84 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -8
  %dst_base.sroa.0.0.i29.i89 = select i1 %_0.i.i27.i, ptr %scratch.0, ptr %84
  %dst.i31.i90 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29.i89, i64 %83
  store i32 %_4.i.i.i.i26.i, ptr %dst.i31.i90, align 4, !alias.scope !924, !noalias !967
  %_8.i33.i91 = zext i1 %_0.i.i27.i to i64
  %85 = add i64 %83, %_8.i33.i91
  %_9.i34.i92 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 8
  %_4.i.i.i.i36.i = load i32, ptr %_9.i34.i92, align 4, !alias.scope !970, !noalias !979, !noundef !3
  %_0.i.i37.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i36.i
  %86 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -12
  %dst_base.sroa.0.0.i39.i93 = select i1 %_0.i.i37.i, ptr %scratch.0, ptr %86
  %dst.i41.i94 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39.i93, i64 %85
  store i32 %_4.i.i.i.i36.i, ptr %dst.i41.i94, align 4, !alias.scope !924, !noalias !984
  %_8.i43.i95 = zext i1 %_0.i.i37.i to i64
  %87 = add i64 %85, %_8.i43.i95
  %_9.i44.i96 = getelementptr inbounds nuw i8, ptr %state.sroa.9.186.i80, i64 12
  %_4.i.i.i.i46.i = load i32, ptr %_9.i44.i96, align 4, !alias.scope !987, !noalias !996, !noundef !3
  %_0.i.i47.i = icmp sge i32 %_3.i.i.i.i.i82, %_4.i.i.i.i46.i
  %88 = getelementptr inbounds i8, ptr %state.sroa.43.187.i79, i64 -16
  %dst_base.sroa.0.0.i49.i97 = select i1 %_0.i.i47.i, ptr %scratch.0, ptr %88
  %dst.i51.i98 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49.i97, i64 %87
  store i32 %_4.i.i.i.i46.i, ptr %dst.i51.i98, align 4, !alias.scope !924, !noalias !1001
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
  %_3.i.i.i.i55.i = load i32, ptr %src, align 4, !alias.scope !1004, !noalias !1013, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %_4.i.i.i.i56.i = load i32, ptr %state.sroa.9.292.i71, align 4, !alias.scope !1026, !noalias !1027, !noundef !3
  %_0.i.i57.i = icmp sge i32 %_3.i.i.i.i55.i, %_4.i.i.i.i56.i
  %90 = getelementptr inbounds i8, ptr %state.sroa.43.293.i70, i64 -4
  %dst_base.sroa.0.0.i59.i73 = select i1 %_0.i.i57.i, ptr %scratch.0, ptr %90
  %dst.i61.i74 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59.i73, i64 %state.sroa.27.291.i72
  store i32 %_4.i.i.i.i56.i, ptr %dst.i61.i74, align 4, !alias.scope !924, !noalias !1028
  %_8.i63.i75 = zext i1 %_0.i.i57.i to i64
  %91 = add i64 %state.sroa.27.291.i72, %_8.i63.i75
  %_9.i64.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.292.i71, i64 4
  %_47.i77 = icmp ult ptr %_9.i64.i76, %loop_end.i52
  br i1 %_47.i77, label %bb18.i69, label %bb21.i54

bb23.i59:                                         ; preds = %bb21.i54
  %92 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa.i57, i64 -4
  %dst.i68.i60 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %state.sroa.27.2.lcssa.i55
  %93 = load i32, ptr %state.sroa.9.2.lcssa.i56, align 4, !alias.scope !921, !noalias !1031
  store i32 %93, ptr %dst.i68.i60, align 4, !alias.scope !924, !noalias !1034
  %94 = add i64 %state.sroa.27.2.lcssa.i55, 1
  %_9.i70.i61 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa.i56, i64 4
  br label %bb3.i41

bb22.i62:                                         ; preds = %bb21.i54
  %95 = shl i64 %state.sroa.27.2.lcssa.i55, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.sroa.0.0.ph140, ptr nonnull align 4 %scratch.0, i64 %95, i1 false), !alias.scope !1035
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
  %wide.load = load <4 x i32>, ptr %100, align 4, !alias.scope !924, !noalias !921
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load262 = load <4 x i32>, ptr %101, align 4, !alias.scope !924, !noalias !921
  %reverse263 = shufflevector <4 x i32> %wide.load262, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %102 = getelementptr i8, ptr %97, i64 16
  store <4 x i32> %reverse, ptr %97, align 4, !alias.scope !921, !noalias !924
  store <4 x i32> %reverse263, ptr %102, align 4, !alias.scope !921, !noalias !924
  %index.next = add nuw i64 %index, 8
  %103 = icmp eq i64 %index.next, %n.vec
  br i1 %103, label %middle.block, label %vector.body, !llvm.loop !1036

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %_63.i63, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E.exit, label %bb42.i66.preheader

bb42.i66.preheader:                               ; preds = %bb42.lr.ph.i65, %middle.block
  %iter.sroa.0.098.i67.ph = phi i64 [ 0, %bb42.lr.ph.i65 ], [ %n.vec, %middle.block ]
  br label %bb42.i66

bb42.i66:                                         ; preds = %bb42.i66.preheader, %bb42.i66
  %iter.sroa.0.098.i67 = phi i64 [ %104, %bb42.i66 ], [ %iter.sroa.0.098.i67.ph, %bb42.i66.preheader ]
  %104 = add nuw i64 %iter.sroa.0.098.i67, 1
  %105 = getelementptr i32, ptr %96, i64 %iter.sroa.0.098.i67
  %106 = xor i64 %iter.sroa.0.098.i67, -1
  %107 = getelementptr i32, ptr %_86.i40, i64 %106
  %108 = load i32, ptr %107, align 4, !alias.scope !924, !noalias !921
  store i32 %108, ptr %105, align 4, !alias.scope !921, !noalias !924
  %exitcond.not.i68 = icmp eq i64 %104, %_63.i63
  br i1 %exitcond.not.i68, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E.exit, label %bb42.i66, !llvm.loop !1037

_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E.exit: ; preds = %bb42.i66, %middle.block
  %_47 = icmp ugt i64 %state.sroa.27.2.lcssa.i55, %v.sroa.16.0132
  br i1 %_47, label %bb27, label %bb28, !prof !916

bb3.thread:                                       ; preds = %bb22.i62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  br label %bb22

bb28:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E.exit
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph140, i64 %state.sroa.27.2.lcssa.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8130 = icmp ult i64 %_63.i63, 33
  br i1 %_8130, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E.exit
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %state.sroa.27.2.lcssa.i55, i64 noundef %v.sroa.16.0132, i64 noundef %v.sroa.16.0132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #22
  unreachable

bb22:                                             ; preds = %bb3.thread, %bb9.i.i, %bb3, %bb6
  ret void
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h517a0f6fb4f59b0aE"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #3 {
start:
  %_26.i = icmp slt i64 %cap, 0
  br i1 %_26.i, label %bb8, label %bb11, !prof !346

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !1038, !alias.scope !1039, !noalias !1042, !noundef !3
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit": ; preds = %bb11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %0, align 8, !alias.scope !1039, !noalias !1042, !nonnull !3, !noundef !3
  %cond.i.i = icmp samesign uge i64 %cap, %self1.i
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %raw_ptr.i.i = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr noundef nonnull %self3.i, i64 noundef %self1.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef %cap) #23
  br label %bb7

bb5:                                              ; preds = %bb11
  %1 = icmp eq i64 %cap, 0
  br i1 %1, label %bb16, label %bb4.i.i14

bb4.i.i14:                                        ; preds = %bb5
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
; call __rustc::__rust_alloc
  %2 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %cap, i64 noundef range(i64 1, -9223372036854775807) 1) #23
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
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdb66a2bd25f90befE"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %slf, i64 noundef %len, i64 noundef range(i64 1, 5) %additional) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %self3.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %_26.0.i = add i64 %additional, %len
  %_26.1.i = icmp ult i64 %_26.0.i, %len
  br i1 %_26.1.i, label %bb2, label %bb9.i

bb9.i:                                            ; preds = %start
  %self5.i = load i64, ptr %slf, align 8, !range !1038, !alias.scope !1044, !noundef !3
  %v16.i = shl nuw i64 %self5.i, 1
  %_0.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0.i, i64 %v16.i)
  %_0.sroa.0.0.i15.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i.i, i64 8)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3.i), !noalias !1044
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h517a0f6fb4f59b0aE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %slf, i64 noundef %_0.sroa.0.0.i15.i)
  %_37.i = load i64, ptr %self3.i, align 8, !range !1047, !noalias !1044, !noundef !3
  %0 = trunc nuw i64 %_37.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  br i1 %0, label %bb18.i, label %bb3

bb18.i:                                           ; preds = %bb9.i
  %e.0.i = load i64, ptr %1, align 8, !range !1048, !noalias !1044, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %self3.i, i64 16
  %e.1.i = load i64, ptr %2, align 8, !noalias !1044
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1044
  br label %bb2

bb2:                                              ; preds = %bb18.i, %start
  %_0.sroa.5.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb18.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb18.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.5.0.i.ph) #24
  unreachable

bb3:                                              ; preds = %bb9.i
  %v.0.i = load ptr, ptr %1, align 8, !noalias !1044, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !1044
  %3 = getelementptr inbounds nuw i8, ptr %slf, i64 8
  store ptr %v.0.i, ptr %3, align 8, !alias.scope !1044
  %4 = icmp sgt i64 %_0.sroa.0.0.i15.i, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15.i, ptr %slf, align 8, !alias.scope !1044
  ret void
}

; <core::num::error::ParseIntError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h73d6033df5fcd1c3E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #5 {
start:
  %_5 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_5)
  store ptr %self, ptr %_5, align 8
; call core::fmt::Formatter::debug_struct_field1_finish
  %_0 = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17hd6ce2f34deb3078cE(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_f62df14955f7d78bca139b0a7668683d, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_a5d866b1768ad3f826bccdb004a1a8ae, i64 noundef 4, ptr noundef nonnull align 1 %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_5)
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #6 {
start:
  %_3 = load i32, ptr %a, align 4, !noundef !3
  %_4 = load i32, ptr %b, align 4, !noundef !3
  %_0 = tail call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i23 = alloca [1 x i8], align 1
  %e.i = alloca [1 x i8], align 1
  %temp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %temp)
  store i64 0, ptr %temp, align 8
  %_18.sroa.3.0.temp.sroa_idx = getelementptr inbounds nuw i8, ptr %temp, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  %_18.sroa.4.0.temp.sroa_idx = getelementptr inbounds nuw i8, ptr %temp, i64 16
  store i64 0, ptr %_18.sroa.4.0.temp.sroa_idx, align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_22 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_21 = load i64, ptr %1, align 8, !noundef !3
  %_29 = getelementptr inbounds nuw i8, ptr %_22, i64 %_21
  %_7.i.i190 = icmp samesign eq i64 %_21, 0
  br i1 %_7.i.i190, label %bb2.i26, label %bb14.i

bb14.i:                                           ; preds = %start, %bb9
  %_20.i137223 = phi ptr [ %_20.i137224, %bb9 ], [ inttoptr (i64 1 to ptr), %start ]
  %len.i156 = phi i64 [ %storemerge, %bb9 ], [ 0, %start ]
  %sum.sroa.0.0192 = phi i32 [ %sum.sroa.0.1, %bb9 ], [ 0, %start ]
  %iter.sroa.0.0191 = phi ptr [ %iter.sroa.0.1.ph, %bb9 ], [ %_22, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 1
  %x.i = load i8, ptr %iter.sroa.0.0191, align 1, !noalias !1049, !noundef !3
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_29
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1049, !noundef !3
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb18

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb18

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_29
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1049, !noundef !3
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb18

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_29
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1049, !noundef !3
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb18

bb13.loopexit:                                    ; preds = %bb1.i.i, %bb24
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb13.loopexit.split-lp:                           ; preds = %bb2.i26.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb13:                                             ; preds = %bb13.loopexit.split-lp, %bb13.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %bb13.loopexit ], [ %lpad.loopexit.split-lp, %bb13.loopexit.split-lp ]
  %self1.i.i.i.i1.i.i.pr = load i64, ptr %temp, align 8, !alias.scope !1052, !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.pr, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb14, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb13
  %self3.i.i.i.i4.i.i = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8, !alias.scope !1052, !noalias !1065, !nonnull !3, !noundef !3
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1072
  br label %bb14

bb18:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %5 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %5)
  %6 = add nsw i32 %_0.sroa.4.0.i.ph, -48
  %or.cond = icmp ult i32 %6, 10
  br i1 %or.cond, label %bb3.thread, label %bb19

bb3.thread:                                       ; preds = %bb18
  %_14.i157 = icmp sgt i64 %len.i156, -1
  tail call void @llvm.assume(i1 %_14.i157)
  br label %bb2.i135

bb17:                                             ; preds = %bb9
  %_46.pre = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  switch i64 %storemerge, label %bb9thread-pre-split.i [
    i64 0, label %bb2.i26
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb17
  %7 = load i8, ptr %_46.pre, align 1, !alias.scope !1073, !noundef !3
  switch i8 %7, label %bb9.i [
    i8 43, label %bb2.i26
    i8 45, label %bb2.i26
  ]

bb46.loopexit86.split.loop.exit.i:                ; preds = %bb25.i
  %.mux78.le.i = select i1 %_14.i81.i, i8 1, i8 2
  br label %bb2.i26

bb46.loopexit90.split.loop.exit.i:                ; preds = %bb34.i
  %.mux.le.i = select i1 %_14.i.i, i8 1, i8 3
  br label %bb2.i26

bb9thread-pre-split.i:                            ; preds = %bb17
  %.pr.i = load i8, ptr %_46.pre, align 1, !alias.scope !1073
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %8 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %7, %bb7.i ]
  switch i8 %8, label %bb64.i [
    i8 43, label %bb11.i
    i8 45, label %bb10.i
  ]

bb11.i:                                           ; preds = %bb9.i
  %rest.0.i = getelementptr inbounds nuw i8, ptr %_46.pre, i64 1
  %rest.1.i = add nsw i64 %storemerge, -1
  br label %bb64.i

bb10.i:                                           ; preds = %bb9.i
  %rest.03.i = getelementptr inbounds nuw i8, ptr %_46.pre, i64 1
  %rest.14.i = add nsw i64 %storemerge, -1
  %9 = icmp samesign ult i64 %storemerge, 9
  br i1 %9, label %bb19.preheader.i, label %bb33.i

bb19.preheader.i:                                 ; preds = %bb10.i
  %_29.not98.i = icmp eq i64 %rest.14.i, 0
  br i1 %_29.not98.i, label %bb10, label %bb20.i

bb33.i:                                           ; preds = %bb10.i, %bb39.i
  %result.sroa.0.0.i = phi i32 [ %_89.0.i, %bb39.i ], [ 0, %bb10.i ]
  %src.sroa.26.1.i = phi i64 [ %rest.16.i, %bb39.i ], [ %rest.14.i, %bb10.i ]
  %src.sroa.0.1.i = phi ptr [ %rest.05.i, %bb39.i ], [ %rest.03.i, %bb10.i ]
  %_57.not.i = icmp eq i64 %src.sroa.26.1.i, 0
  br i1 %_57.not.i, label %bb10, label %bb34.i

bb34.i:                                           ; preds = %bb33.i
  %10 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i, i32 10)
  %_85.1.i = extractvalue { i32, i1 } %10, 1
  %_65.i = load i8, ptr %src.sroa.0.1.i, align 1, !alias.scope !1073, !noundef !3
  %_64.i = zext i8 %_65.i to i32
  %11 = add nsw i32 %_64.i, -48
  %_14.i.i = icmp ugt i32 %11, 9
  %brmerge.i = select i1 %_14.i.i, i1 true, i1 %_85.1.i
  br i1 %brmerge.i, label %bb46.loopexit90.split.loop.exit.i, label %bb39.i

bb39.i:                                           ; preds = %bb34.i
  %_85.0.i = extractvalue { i32, i1 } %10, 0
  %rest.16.i = add nsw i64 %src.sroa.26.1.i, -1
  %rest.05.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i, i64 1
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i, i32 %11)
  %_89.1.i = extractvalue { i32, i1 } %12, 1
  %_89.0.i = extractvalue { i32, i1 } %12, 0
  br i1 %_89.1.i, label %bb2.i26, label %bb33.i

bb20.i:                                           ; preds = %bb19.preheader.i, %bb23.i
  %src.sroa.0.2101.i = phi ptr [ %rest.08.i, %bb23.i ], [ %rest.03.i, %bb19.preheader.i ]
  %src.sroa.26.2100.i = phi i64 [ %rest.19.i, %bb23.i ], [ %rest.14.i, %bb19.preheader.i ]
  %result.sroa.0.299.i = phi i32 [ %15, %bb23.i ], [ 0, %bb19.preheader.i ]
  %_36.i32 = load i8, ptr %src.sroa.0.2101.i, align 1, !alias.scope !1073, !noundef !3
  %_35.i33 = zext i8 %_36.i32 to i32
  %13 = add nsw i32 %_35.i33, -48
  %_14.i79.i = icmp ult i32 %13, 10
  br i1 %_14.i79.i, label %bb23.i, label %bb2.i26

bb23.i:                                           ; preds = %bb20.i
  %14 = mul i32 %result.sroa.0.299.i, 10
  %rest.19.i = add nsw i64 %src.sroa.26.2100.i, -1
  %rest.08.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i, i64 1
  %15 = sub i32 %14, %13
  %_29.not.i = icmp eq i64 %rest.19.i, 0
  br i1 %_29.not.i, label %bb10, label %bb20.i

bb64.i:                                           ; preds = %bb11.i, %bb9.i
  %src.sroa.26.0.i = phi i64 [ %rest.1.i, %bb11.i ], [ %storemerge, %bb9.i ]
  %src.sroa.0.0.i = phi ptr [ %rest.0.i, %bb11.i ], [ %_46.pre, %bb9.i ]
  %16 = icmp samesign ult i64 %src.sroa.26.0.i, 8
  br i1 %16, label %bb13.preheader.i, label %bb24.i

bb13.preheader.i:                                 ; preds = %bb64.i
  %_16.not104.i = icmp eq i64 %src.sroa.26.0.i, 0
  br i1 %_16.not104.i, label %bb10, label %bb14.i34

bb24.i:                                           ; preds = %bb64.i, %bb30.i
  %result.sroa.0.3.i = phi i32 [ %_81.0.i, %bb30.i ], [ 0, %bb64.i ]
  %src.sroa.26.3.i = phi i64 [ %rest.112.i, %bb30.i ], [ %src.sroa.26.0.i, %bb64.i ]
  %src.sroa.0.3.i = phi ptr [ %rest.011.i, %bb30.i ], [ %src.sroa.0.0.i, %bb64.i ]
  %_42.not.i = icmp eq i64 %src.sroa.26.3.i, 0
  br i1 %_42.not.i, label %bb10, label %bb25.i

bb25.i:                                           ; preds = %bb24.i
  %17 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i, i32 10)
  %_77.1.i = extractvalue { i32, i1 } %17, 1
  %_50.i = load i8, ptr %src.sroa.0.3.i, align 1, !alias.scope !1073, !noundef !3
  %_49.i = zext i8 %_50.i to i32
  %18 = add nsw i32 %_49.i, -48
  %_14.i81.i = icmp ugt i32 %18, 9
  %brmerge77.i = select i1 %_14.i81.i, i1 true, i1 %_77.1.i
  br i1 %brmerge77.i, label %bb46.loopexit86.split.loop.exit.i, label %bb30.i

bb30.i:                                           ; preds = %bb25.i
  %_77.0.i = extractvalue { i32, i1 } %17, 0
  %rest.112.i = add nsw i64 %src.sroa.26.3.i, -1
  %rest.011.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i, i64 1
  %19 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i, i32 %18)
  %_81.1.i = extractvalue { i32, i1 } %19, 1
  %_81.0.i = extractvalue { i32, i1 } %19, 0
  br i1 %_81.1.i, label %bb2.i26, label %bb24.i

bb14.i34:                                         ; preds = %bb13.preheader.i
  %_23.i = load i8, ptr %src.sroa.0.0.i, align 1, !alias.scope !1073, !noundef !3
  %_22.i = zext i8 %_23.i to i32
  %20 = add nsw i32 %_22.i, -48
  %_14.i83.i = icmp ult i32 %20, 10
  br i1 %_14.i83.i, label %bb18.i, label %bb2.i26

bb18.i:                                           ; preds = %bb14.i34
  %_16.not.i = icmp eq i64 %src.sroa.26.0.i, 1
  br i1 %_16.not.i, label %bb10, label %bb14.i34.1

bb14.i34.1:                                       ; preds = %bb18.i
  %rest.015.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 1
  %_23.i.1 = load i8, ptr %rest.015.i, align 1, !alias.scope !1073, !noundef !3
  %_22.i.1 = zext i8 %_23.i.1 to i32
  %21 = add nsw i32 %_22.i.1, -48
  %_14.i83.i.1 = icmp ult i32 %21, 10
  br i1 %_14.i83.i.1, label %bb18.i.1, label %bb2.i26

bb18.i.1:                                         ; preds = %bb14.i34.1
  %22 = mul nuw nsw i32 %20, 10
  %23 = add nuw nsw i32 %21, %22
  %_16.not.i.1 = icmp eq i64 %src.sroa.26.0.i, 2
  br i1 %_16.not.i.1, label %bb10, label %bb14.i34.2

bb14.i34.2:                                       ; preds = %bb18.i.1
  %rest.015.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 2
  %_23.i.2 = load i8, ptr %rest.015.i.1, align 1, !alias.scope !1073, !noundef !3
  %_22.i.2 = zext i8 %_23.i.2 to i32
  %24 = add nsw i32 %_22.i.2, -48
  %_14.i83.i.2 = icmp ult i32 %24, 10
  br i1 %_14.i83.i.2, label %bb18.i.2, label %bb2.i26

bb18.i.2:                                         ; preds = %bb14.i34.2
  %25 = mul nuw nsw i32 %23, 10
  %26 = add nuw nsw i32 %24, %25
  %_16.not.i.2 = icmp eq i64 %src.sroa.26.0.i, 3
  br i1 %_16.not.i.2, label %bb10, label %bb14.i34.3

bb14.i34.3:                                       ; preds = %bb18.i.2
  %rest.015.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 3
  %_23.i.3 = load i8, ptr %rest.015.i.2, align 1, !alias.scope !1073, !noundef !3
  %_22.i.3 = zext i8 %_23.i.3 to i32
  %27 = add nsw i32 %_22.i.3, -48
  %_14.i83.i.3 = icmp ult i32 %27, 10
  br i1 %_14.i83.i.3, label %bb18.i.3, label %bb2.i26

bb18.i.3:                                         ; preds = %bb14.i34.3
  %28 = mul nuw nsw i32 %26, 10
  %29 = add nuw nsw i32 %27, %28
  %_16.not.i.3 = icmp eq i64 %src.sroa.26.0.i, 4
  br i1 %_16.not.i.3, label %bb10, label %bb14.i34.4

bb14.i34.4:                                       ; preds = %bb18.i.3
  %rest.015.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 4
  %_23.i.4 = load i8, ptr %rest.015.i.3, align 1, !alias.scope !1073, !noundef !3
  %_22.i.4 = zext i8 %_23.i.4 to i32
  %30 = add nsw i32 %_22.i.4, -48
  %_14.i83.i.4 = icmp ult i32 %30, 10
  br i1 %_14.i83.i.4, label %bb18.i.4, label %bb2.i26

bb18.i.4:                                         ; preds = %bb14.i34.4
  %31 = mul i32 %29, 10
  %32 = add i32 %30, %31
  %_16.not.i.4 = icmp eq i64 %src.sroa.26.0.i, 5
  br i1 %_16.not.i.4, label %bb10, label %bb14.i34.5

bb14.i34.5:                                       ; preds = %bb18.i.4
  %rest.015.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 5
  %_23.i.5 = load i8, ptr %rest.015.i.4, align 1, !alias.scope !1073, !noundef !3
  %_22.i.5 = zext i8 %_23.i.5 to i32
  %33 = add nsw i32 %_22.i.5, -48
  %_14.i83.i.5 = icmp ult i32 %33, 10
  br i1 %_14.i83.i.5, label %bb18.i.5, label %bb2.i26

bb18.i.5:                                         ; preds = %bb14.i34.5
  %34 = mul i32 %32, 10
  %35 = add i32 %33, %34
  %_16.not.i.5 = icmp eq i64 %src.sroa.26.0.i, 6
  br i1 %_16.not.i.5, label %bb10, label %bb14.i34.6

bb14.i34.6:                                       ; preds = %bb18.i.5
  %rest.015.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 6
  %_23.i.6 = load i8, ptr %rest.015.i.5, align 1, !alias.scope !1073, !noundef !3
  %_22.i.6 = zext i8 %_23.i.6 to i32
  %36 = add nsw i32 %_22.i.6, -48
  %_14.i83.i.6 = icmp ult i32 %36, 10
  br i1 %_14.i83.i.6, label %bb18.i.6, label %bb2.i26

bb18.i.6:                                         ; preds = %bb14.i34.6
  %37 = mul i32 %35, 10
  %38 = add i32 %36, %37
  br label %bb10

bb2.i26:                                          ; preds = %bb39.i, %bb20.i, %bb30.i, %bb14.i34, %bb14.i34.1, %bb14.i34.2, %bb14.i34.3, %bb14.i34.4, %bb14.i34.5, %bb14.i34.6, %start, %bb17, %bb7.i, %bb7.i, %bb46.loopexit86.split.loop.exit.i, %bb46.loopexit90.split.loop.exit.i
  %_0.sroa.12.0.insert.insert.i.ph = phi i8 [ %.mux.le.i, %bb46.loopexit90.split.loop.exit.i ], [ %.mux78.le.i, %bb46.loopexit86.split.loop.exit.i ], [ 1, %bb7.i ], [ 1, %bb7.i ], [ 0, %bb17 ], [ 0, %start ], [ 1, %bb14.i34.6 ], [ 1, %bb14.i34.5 ], [ 1, %bb14.i34.4 ], [ 1, %bb14.i34.3 ], [ 1, %bb14.i34.2 ], [ 1, %bb14.i34.1 ], [ 1, %bb14.i34 ], [ 2, %bb30.i ], [ 1, %bb20.i ], [ 3, %bb39.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i23), !noalias !1076
  store i8 %_0.sroa.12.0.insert.insert.i.ph, ptr %e.i23, align 1, !noalias !1076
  br label %bb2.i26.invoke

bb2.i26.invoke:                                   ; preds = %bb2.i, %bb2.i26
  %39 = phi ptr [ %e.i23, %bb2.i26 ], [ %e.i, %bb2.i ]
  %40 = phi ptr [ @alloc_fcb0459a5c5429e65c8f5decd9e3b356, %bb2.i26 ], [ @alloc_ab67633e08808d3e190b02d350c52308, %bb2.i ]
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %40) #24
          to label %bb2.i26.cont unwind label %bb13.loopexit.split-lp

bb2.i26.cont:                                     ; preds = %bb2.i26.invoke
  unreachable

bb10:                                             ; preds = %bb33.i, %bb23.i, %bb24.i, %bb18.i, %bb18.i.1, %bb18.i.2, %bb18.i.3, %bb18.i.4, %bb18.i.5, %bb18.i.6, %bb13.preheader.i, %bb19.preheader.i
  %result.sroa.0.1.i = phi i32 [ 0, %bb13.preheader.i ], [ 0, %bb19.preheader.i ], [ %20, %bb18.i ], [ %23, %bb18.i.1 ], [ %26, %bb18.i.2 ], [ %29, %bb18.i.3 ], [ %32, %bb18.i.4 ], [ %35, %bb18.i.5 ], [ %38, %bb18.i.6 ], [ %result.sroa.0.3.i, %bb24.i ], [ %15, %bb23.i ], [ %result.sroa.0.0.i, %bb33.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %self1.i.i.i.i1.i.i35 = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1094, !noalias !1097, !noundef !3
  %_6.i.i.i.i2.i.i36 = icmp eq i64 %self1.i.i.i.i1.i.i35, 0
  br i1 %_6.i.i.i.i2.i.i36, label %bb11, label %bb2.i.i.i3.i.i37

bb2.i.i.i3.i.i37:                                 ; preds = %bb10
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_46.pre, i64 noundef %self1.i.i.i.i1.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1099
  br label %bb11

bb14:                                             ; preds = %bb2.i.i.i3.i.i, %bb13
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %self1.i.i.i.i1.i.i40 = load i64, ptr %str, align 8, !range !1038, !alias.scope !1115, !noalias !1118, !noundef !3
  %_6.i.i.i.i2.i.i41 = icmp eq i64 %self1.i.i.i.i1.i.i40, 0
  br i1 %_6.i.i.i.i2.i.i41, label %bb15, label %bb2.i.i.i3.i.i42

bb2.i.i.i3.i.i42:                                 ; preds = %bb14
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_22, i64 noundef %self1.i.i.i.i1.i.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1120
  br label %bb15

bb11:                                             ; preds = %bb2.i.i.i3.i.i37, %bb10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %temp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %self1.i.i.i.i1.i.i45 = load i64, ptr %str, align 8, !range !1038, !alias.scope !1136, !noalias !1139, !noundef !3
  %_6.i.i.i.i2.i.i46 = icmp eq i64 %self1.i.i.i.i1.i.i45, 0
  br i1 %_6.i.i.i.i2.i.i46, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49", label %bb2.i.i.i3.i.i47

bb2.i.i.i3.i.i47:                                 ; preds = %bb11
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_22, i64 noundef %self1.i.i.i.i1.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1141
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49": ; preds = %bb11, %bb2.i.i.i3.i.i47
  %41 = add i32 %sum.sroa.0.1, %result.sroa.0.1.i
  ret i32 %41

bb19:                                             ; preds = %bb18
  %_41 = icmp samesign ugt i32 %_0.sroa.4.0.i.ph, 177
  br i1 %_41, label %bb24, label %bb5

bb24:                                             ; preds = %bb19
; invoke core::unicode::unicode_data::n::lookup_slow
  %_8 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17h22daba5cd9540137E(i32 noundef %_0.sroa.4.0.i.ph)
          to label %bb26 unwind label %bb13.loopexit

bb5:                                              ; preds = %bb19, %bb26
  switch i64 %len.i156, label %bb9thread-pre-split.i130 [
    i64 0, label %bb2.i
    i64 1, label %bb7.i50
  ]

bb7.i50:                                          ; preds = %bb5
  %42 = load i8, ptr %_20.i137223, align 1, !alias.scope !1142, !noundef !3
  switch i8 %42, label %bb9.i54 [
    i8 43, label %bb2.i
    i8 45, label %bb2.i
  ]

bb46.loopexit86.split.loop.exit.i115:             ; preds = %bb25.i103
  %.mux78.le.i116 = select i1 %_14.i81.i107, i8 1, i8 2
  br label %bb2.i

bb46.loopexit90.split.loop.exit.i75:              ; preds = %bb34.i63
  %.mux.le.i76 = select i1 %_14.i.i67, i8 1, i8 3
  br label %bb2.i

bb9thread-pre-split.i130:                         ; preds = %bb5
  %.pr.i131 = load i8, ptr %_20.i137223, align 1, !alias.scope !1142
  br label %bb9.i54

bb9.i54:                                          ; preds = %bb9thread-pre-split.i130, %bb7.i50
  %43 = phi i8 [ %.pr.i131, %bb9thread-pre-split.i130 ], [ %42, %bb7.i50 ]
  switch i8 %43, label %bb64.i95 [
    i8 43, label %bb11.i92
    i8 45, label %bb10.i55
  ]

bb11.i92:                                         ; preds = %bb9.i54
  %rest.0.i93 = getelementptr inbounds nuw i8, ptr %_20.i137223, i64 1
  %rest.1.i94 = add nsw i64 %len.i156, -1
  br label %bb64.i95

bb10.i55:                                         ; preds = %bb9.i54
  %rest.03.i56 = getelementptr inbounds nuw i8, ptr %_20.i137223, i64 1
  %rest.14.i57 = add nsw i64 %len.i156, -1
  %44 = icmp samesign ult i64 %len.i156, 9
  br i1 %44, label %bb19.preheader.i79, label %bb33.i58

bb19.preheader.i79:                               ; preds = %bb10.i55
  %_29.not98.i80 = icmp eq i64 %rest.14.i57, 0
  br i1 %_29.not98.i80, label %bb6, label %bb20.i81

bb33.i58:                                         ; preds = %bb10.i55, %bb39.i69
  %result.sroa.0.0.i59 = phi i32 [ %_89.0.i74, %bb39.i69 ], [ 0, %bb10.i55 ]
  %src.sroa.26.1.i60 = phi i64 [ %rest.16.i71, %bb39.i69 ], [ %rest.14.i57, %bb10.i55 ]
  %src.sroa.0.1.i61 = phi ptr [ %rest.05.i72, %bb39.i69 ], [ %rest.03.i56, %bb10.i55 ]
  %_57.not.i62 = icmp eq i64 %src.sroa.26.1.i60, 0
  br i1 %_57.not.i62, label %bb6, label %bb34.i63

bb34.i63:                                         ; preds = %bb33.i58
  %45 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i59, i32 10)
  %_85.1.i64 = extractvalue { i32, i1 } %45, 1
  %_65.i65 = load i8, ptr %src.sroa.0.1.i61, align 1, !alias.scope !1142, !noundef !3
  %_64.i66 = zext i8 %_65.i65 to i32
  %46 = add nsw i32 %_64.i66, -48
  %_14.i.i67 = icmp ugt i32 %46, 9
  %brmerge.i68 = select i1 %_14.i.i67, i1 true, i1 %_85.1.i64
  br i1 %brmerge.i68, label %bb46.loopexit90.split.loop.exit.i75, label %bb39.i69

bb39.i69:                                         ; preds = %bb34.i63
  %_85.0.i70 = extractvalue { i32, i1 } %45, 0
  %rest.16.i71 = add nsw i64 %src.sroa.26.1.i60, -1
  %rest.05.i72 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i61, i64 1
  %47 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i70, i32 %46)
  %_89.1.i73 = extractvalue { i32, i1 } %47, 1
  %_89.0.i74 = extractvalue { i32, i1 } %47, 0
  br i1 %_89.1.i73, label %bb2.i, label %bb33.i58

bb20.i81:                                         ; preds = %bb19.preheader.i79, %bb23.i88
  %src.sroa.0.2101.i82 = phi ptr [ %rest.08.i90, %bb23.i88 ], [ %rest.03.i56, %bb19.preheader.i79 ]
  %src.sroa.26.2100.i83 = phi i64 [ %rest.19.i89, %bb23.i88 ], [ %rest.14.i57, %bb19.preheader.i79 ]
  %result.sroa.0.299.i84 = phi i32 [ %50, %bb23.i88 ], [ 0, %bb19.preheader.i79 ]
  %_36.i85 = load i8, ptr %src.sroa.0.2101.i82, align 1, !alias.scope !1142, !noundef !3
  %_35.i86 = zext i8 %_36.i85 to i32
  %48 = add nsw i32 %_35.i86, -48
  %_14.i79.i87 = icmp ult i32 %48, 10
  br i1 %_14.i79.i87, label %bb23.i88, label %bb2.i

bb23.i88:                                         ; preds = %bb20.i81
  %49 = mul i32 %result.sroa.0.299.i84, 10
  %rest.19.i89 = add nsw i64 %src.sroa.26.2100.i83, -1
  %rest.08.i90 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i82, i64 1
  %50 = sub i32 %49, %48
  %_29.not.i91 = icmp eq i64 %rest.19.i89, 0
  br i1 %_29.not.i91, label %bb6, label %bb20.i81

bb64.i95:                                         ; preds = %bb11.i92, %bb9.i54
  %src.sroa.26.0.i96 = phi i64 [ %rest.1.i94, %bb11.i92 ], [ %len.i156, %bb9.i54 ]
  %src.sroa.0.0.i97 = phi ptr [ %rest.0.i93, %bb11.i92 ], [ %_20.i137223, %bb9.i54 ]
  %51 = icmp samesign ult i64 %src.sroa.26.0.i96, 8
  br i1 %51, label %bb13.preheader.i117, label %bb24.i98

bb13.preheader.i117:                              ; preds = %bb64.i95
  %_16.not104.i118 = icmp eq i64 %src.sroa.26.0.i96, 0
  br i1 %_16.not104.i118, label %bb6, label %bb14.i119

bb24.i98:                                         ; preds = %bb64.i95, %bb30.i109
  %result.sroa.0.3.i99 = phi i32 [ %_81.0.i114, %bb30.i109 ], [ 0, %bb64.i95 ]
  %src.sroa.26.3.i100 = phi i64 [ %rest.112.i111, %bb30.i109 ], [ %src.sroa.26.0.i96, %bb64.i95 ]
  %src.sroa.0.3.i101 = phi ptr [ %rest.011.i112, %bb30.i109 ], [ %src.sroa.0.0.i97, %bb64.i95 ]
  %_42.not.i102 = icmp eq i64 %src.sroa.26.3.i100, 0
  br i1 %_42.not.i102, label %bb6, label %bb25.i103

bb25.i103:                                        ; preds = %bb24.i98
  %52 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i99, i32 10)
  %_77.1.i104 = extractvalue { i32, i1 } %52, 1
  %_50.i105 = load i8, ptr %src.sroa.0.3.i101, align 1, !alias.scope !1142, !noundef !3
  %_49.i106 = zext i8 %_50.i105 to i32
  %53 = add nsw i32 %_49.i106, -48
  %_14.i81.i107 = icmp ugt i32 %53, 9
  %brmerge77.i108 = select i1 %_14.i81.i107, i1 true, i1 %_77.1.i104
  br i1 %brmerge77.i108, label %bb46.loopexit86.split.loop.exit.i115, label %bb30.i109

bb30.i109:                                        ; preds = %bb25.i103
  %_77.0.i110 = extractvalue { i32, i1 } %52, 0
  %rest.112.i111 = add nsw i64 %src.sroa.26.3.i100, -1
  %rest.011.i112 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i101, i64 1
  %54 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i110, i32 %53)
  %_81.1.i113 = extractvalue { i32, i1 } %54, 1
  %_81.0.i114 = extractvalue { i32, i1 } %54, 0
  br i1 %_81.1.i113, label %bb2.i, label %bb24.i98

bb14.i119:                                        ; preds = %bb13.preheader.i117
  %_23.i123 = load i8, ptr %src.sroa.0.0.i97, align 1, !alias.scope !1142, !noundef !3
  %_22.i124 = zext i8 %_23.i123 to i32
  %55 = add nsw i32 %_22.i124, -48
  %_14.i83.i125 = icmp ult i32 %55, 10
  br i1 %_14.i83.i125, label %bb18.i126, label %bb2.i

bb18.i126:                                        ; preds = %bb14.i119
  %_16.not.i129 = icmp eq i64 %src.sroa.26.0.i96, 1
  br i1 %_16.not.i129, label %bb6, label %bb14.i119.1

bb14.i119.1:                                      ; preds = %bb18.i126
  %rest.015.i128 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 1
  %_23.i123.1 = load i8, ptr %rest.015.i128, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.1 = zext i8 %_23.i123.1 to i32
  %56 = add nsw i32 %_22.i124.1, -48
  %_14.i83.i125.1 = icmp ult i32 %56, 10
  br i1 %_14.i83.i125.1, label %bb18.i126.1, label %bb2.i

bb18.i126.1:                                      ; preds = %bb14.i119.1
  %57 = mul nuw nsw i32 %55, 10
  %58 = add nuw nsw i32 %56, %57
  %_16.not.i129.1 = icmp eq i64 %src.sroa.26.0.i96, 2
  br i1 %_16.not.i129.1, label %bb6, label %bb14.i119.2

bb14.i119.2:                                      ; preds = %bb18.i126.1
  %rest.015.i128.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 2
  %_23.i123.2 = load i8, ptr %rest.015.i128.1, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.2 = zext i8 %_23.i123.2 to i32
  %59 = add nsw i32 %_22.i124.2, -48
  %_14.i83.i125.2 = icmp ult i32 %59, 10
  br i1 %_14.i83.i125.2, label %bb18.i126.2, label %bb2.i

bb18.i126.2:                                      ; preds = %bb14.i119.2
  %60 = mul nuw nsw i32 %58, 10
  %61 = add nuw nsw i32 %59, %60
  %_16.not.i129.2 = icmp eq i64 %src.sroa.26.0.i96, 3
  br i1 %_16.not.i129.2, label %bb6, label %bb14.i119.3

bb14.i119.3:                                      ; preds = %bb18.i126.2
  %rest.015.i128.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 3
  %_23.i123.3 = load i8, ptr %rest.015.i128.2, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.3 = zext i8 %_23.i123.3 to i32
  %62 = add nsw i32 %_22.i124.3, -48
  %_14.i83.i125.3 = icmp ult i32 %62, 10
  br i1 %_14.i83.i125.3, label %bb18.i126.3, label %bb2.i

bb18.i126.3:                                      ; preds = %bb14.i119.3
  %63 = mul nuw nsw i32 %61, 10
  %64 = add nuw nsw i32 %62, %63
  %_16.not.i129.3 = icmp eq i64 %src.sroa.26.0.i96, 4
  br i1 %_16.not.i129.3, label %bb6, label %bb14.i119.4

bb14.i119.4:                                      ; preds = %bb18.i126.3
  %rest.015.i128.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 4
  %_23.i123.4 = load i8, ptr %rest.015.i128.3, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.4 = zext i8 %_23.i123.4 to i32
  %65 = add nsw i32 %_22.i124.4, -48
  %_14.i83.i125.4 = icmp ult i32 %65, 10
  br i1 %_14.i83.i125.4, label %bb18.i126.4, label %bb2.i

bb18.i126.4:                                      ; preds = %bb14.i119.4
  %66 = mul i32 %64, 10
  %67 = add i32 %65, %66
  %_16.not.i129.4 = icmp eq i64 %src.sroa.26.0.i96, 5
  br i1 %_16.not.i129.4, label %bb6, label %bb14.i119.5

bb14.i119.5:                                      ; preds = %bb18.i126.4
  %rest.015.i128.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 5
  %_23.i123.5 = load i8, ptr %rest.015.i128.4, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.5 = zext i8 %_23.i123.5 to i32
  %68 = add nsw i32 %_22.i124.5, -48
  %_14.i83.i125.5 = icmp ult i32 %68, 10
  br i1 %_14.i83.i125.5, label %bb18.i126.5, label %bb2.i

bb18.i126.5:                                      ; preds = %bb14.i119.5
  %69 = mul i32 %67, 10
  %70 = add i32 %68, %69
  %_16.not.i129.5 = icmp eq i64 %src.sroa.26.0.i96, 6
  br i1 %_16.not.i129.5, label %bb6, label %bb14.i119.6

bb14.i119.6:                                      ; preds = %bb18.i126.5
  %rest.015.i128.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 6
  %_23.i123.6 = load i8, ptr %rest.015.i128.5, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.6 = zext i8 %_23.i123.6 to i32
  %71 = add nsw i32 %_22.i124.6, -48
  %_14.i83.i125.6 = icmp ult i32 %71, 10
  br i1 %_14.i83.i125.6, label %bb18.i126.6, label %bb2.i

bb18.i126.6:                                      ; preds = %bb14.i119.6
  %72 = mul i32 %70, 10
  %73 = add i32 %71, %72
  br label %bb6

bb26:                                             ; preds = %bb24
  br i1 %_8, label %bb3.i133, label %bb5

bb3.i133:                                         ; preds = %bb26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %_14.i = icmp sgt i64 %len.i156, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_17.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 2048
  br i1 %_17.i, label %bb2.i135, label %bb4.i134

bb4.i134:                                         ; preds = %bb3.i133
  %_18.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i135

bb2.i135:                                         ; preds = %bb3.thread, %bb4.i134, %bb3.i133
  %ch_len.sroa.0.0.i = phi i64 [ %..i, %bb4.i134 ], [ 2, %bb3.i133 ], [ 1, %bb3.thread ]
  %self2.i.i = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1148, !noundef !3
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i156
  %_7.i.i136 = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i136, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i", !prof !916

bb1.i.i:                                          ; preds = %bb2.i135
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdb66a2bd25f90befE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp, i64 noundef %len.i156, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i)
          to label %.noexc141 unwind label %bb13.loopexit

.noexc141:                                        ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_18.sroa.4.0.temp.sroa_idx, align 8, !alias.scope !1145
  %_20.i137.pre = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8, !alias.scope !1145
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i": ; preds = %.noexc141, %bb2.i135
  %_20.i137 = phi ptr [ %_20.i137223, %bb2.i135 ], [ %_20.i137.pre, %.noexc141 ]
  %count.i = phi i64 [ %len.i156, %bb2.i135 ], [ %count.pre.i, %.noexc141 ]
  %_21.i138 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i138)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i137, i64 %count.i
  br i1 %or.cond, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"
  %_29.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 2048
  %74 = trunc i32 %_0.sroa.4.0.i.ph to i8
  %_5.i.i = and i8 %74, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_0.sroa.4.0.i.ph, 6
  %75 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %75, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i139 = lshr i32 %_0.sroa.4.0.i.ph, 12
  %76 = trunc i32 %_14.i.i139 to i8
  %_12.i.i = and i8 %76, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i140 = lshr i32 %_0.sroa.4.0.i.ph, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i140 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"
  %77 = trunc nuw nsw i32 %_0.sroa.4.0.i.ph to i8
  store i8 %77, ptr %_8.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %78 = or disjoint i8 %75, -64
  store i8 %78, ptr %_8.i, align 1, !noalias !1145
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1, !noalias !1145
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !1145
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !1145
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  %79 = or disjoint i8 %76, -32
  store i8 %79, ptr %_8.i, align 1, !noalias !1145
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !1145
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i2.i, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i156
  br label %bb9

bb2.i:                                            ; preds = %bb5, %bb7.i50, %bb7.i50, %bb39.i69, %bb20.i81, %bb30.i109, %bb14.i119, %bb14.i119.1, %bb14.i119.2, %bb14.i119.3, %bb14.i119.4, %bb14.i119.5, %bb14.i119.6, %bb46.loopexit86.split.loop.exit.i115, %bb46.loopexit90.split.loop.exit.i75
  %_0.sroa.12.0.insert.insert.i52.ph = phi i8 [ %.mux.le.i76, %bb46.loopexit90.split.loop.exit.i75 ], [ %.mux78.le.i116, %bb46.loopexit86.split.loop.exit.i115 ], [ 1, %bb14.i119.6 ], [ 1, %bb14.i119.5 ], [ 1, %bb14.i119.4 ], [ 1, %bb14.i119.3 ], [ 1, %bb14.i119.2 ], [ 1, %bb14.i119.1 ], [ 1, %bb14.i119 ], [ 2, %bb30.i109 ], [ 1, %bb20.i81 ], [ 3, %bb39.i69 ], [ 0, %bb5 ], [ 1, %bb7.i50 ], [ 1, %bb7.i50 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i), !noalias !1151
  store i8 %_0.sroa.12.0.insert.insert.i52.ph, ptr %e.i, align 1, !noalias !1151
  br label %bb2.i26.invoke

bb6:                                              ; preds = %bb33.i58, %bb23.i88, %bb24.i98, %bb18.i126, %bb18.i126.1, %bb18.i126.2, %bb18.i126.3, %bb18.i126.4, %bb18.i126.5, %bb18.i126.6, %bb13.preheader.i117, %bb19.preheader.i79
  %result.sroa.0.1.i78 = phi i32 [ 0, %bb13.preheader.i117 ], [ 0, %bb19.preheader.i79 ], [ %55, %bb18.i126 ], [ %58, %bb18.i126.1 ], [ %61, %bb18.i126.2 ], [ %64, %bb18.i126.3 ], [ %67, %bb18.i126.4 ], [ %70, %bb18.i126.5 ], [ %73, %bb18.i126.6 ], [ %result.sroa.0.3.i99, %bb24.i98 ], [ %50, %bb23.i88 ], [ %result.sroa.0.0.i59, %bb33.i58 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %self1.i.i.i.i1.i.i142 = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1169, !noalias !1172, !noundef !3
  %_6.i.i.i.i2.i.i143 = icmp eq i64 %self1.i.i.i.i1.i.i142, 0
  br i1 %_6.i.i.i.i2.i.i143, label %bb7, label %bb2.i.i.i3.i.i144

bb2.i.i.i3.i.i144:                                ; preds = %bb6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_20.i137223, i64 noundef %self1.i.i.i.i1.i.i142, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1174
  br label %bb7

bb7:                                              ; preds = %bb2.i.i.i3.i.i144, %bb6
  %80 = add i32 %sum.sroa.0.0192, %result.sroa.0.1.i78
  store i64 0, ptr %temp, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  br label %bb9

bb9:                                              ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %bb7
  %_20.i137224 = phi ptr [ inttoptr (i64 1 to ptr), %bb7 ], [ %_20.i137, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  %storemerge = phi i64 [ 0, %bb7 ], [ %new_len.i, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  %sum.sroa.0.1 = phi i32 [ %80, %bb7 ], [ %sum.sroa.0.0192, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  store i64 %storemerge, ptr %_18.sroa.4.0.temp.sroa_idx, align 8
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_29
  br i1 %_7.i.i, label %bb17, label %bb14.i

bb15:                                             ; preds = %bb2.i.i.i3.i.i42, %bb14
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #7 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1175
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1181
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E.exit", label %bb7.i.i, !prof !1183

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1183

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1cffe6cae312e2bcE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %_3.i.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1199, !noalias !1202, !noundef !3
  %_4.i.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1203, !noalias !1204, !noundef !3
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_4.i.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_4.i.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1205, !noalias !1206
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_4.i.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1207, !noalias !1214, !noundef !3
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.i.i.prol, %_4.i.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1205, !noalias !1218
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1199, !noalias !1202, !noundef !3
  %_4.i.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1203, !noalias !1204, !noundef !3
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_4.i.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_4.i.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1205, !noalias !1206
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_4.i.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1207, !noalias !1214, !noundef !3
  %_0.i3.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_3.i.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1205, !noalias !1218
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %_3.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1235, !noalias !1236, !noundef !3
  %_4.i.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1237, !noalias !1238, !noundef !3
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_4.i.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_4.i.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1205, !noalias !1206
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_4.i.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1207, !noalias !1214, !noundef !3
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.i.i.1, %_4.i.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1205, !noalias !1218
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9c35c70fe7a248a9E.exit.i.i.i.1, %start, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1175
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #13

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

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

; core::fmt::Formatter::write_str
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; core::fmt::Formatter::debug_struct_field1_finish
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17hd6ce2f34deb3078cE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

; core::unicode::unicode_data::n::lookup_slow
; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17h22daba5cd9540137E(i32 noundef range(i32 0, 1114112)) unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { noinline noreturn }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
!4 = !{i64 1}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN67_$LT$core..num..error..IntErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3a375f371aa97e4E: %self"}
!7 = distinct !{!7, !"_ZN67_$LT$core..num..error..IntErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3a375f371aa97e4E"}
!8 = !{i8 0, i8 5}
!9 = !{!10}
!10 = distinct !{!10, !7, !"_ZN67_$LT$core..num..error..IntErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3a375f371aa97e4E: %f"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!13 = distinct !{!13, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!18 = distinct !{!18, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4core5slice4sort6shared5pivot7median317he2b12d175a123665E: %c"}
!21 = distinct !{!21, !"_ZN4core5slice4sort6shared5pivot7median317he2b12d175a123665E"}
!22 = !{!23}
!23 = distinct !{!23, !18, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"cmpfunc: %a"}
!26 = distinct !{!26, !"cmpfunc"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"cmpfunc: %b"}
!29 = !{!25, !17, !12}
!30 = !{!28, !23, !15, !20}
!31 = !{!28, !23, !15}
!32 = !{!25, !17, !12, !20}
!33 = !{!34, !36, !38}
!34 = distinct !{!34, !35, !"cmpfunc: %b"}
!35 = distinct !{!35, !"cmpfunc"}
!36 = distinct !{!36, !37, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!37 = distinct !{!37, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!40 = !{!41, !42, !43}
!41 = distinct !{!41, !35, !"cmpfunc: %a"}
!42 = distinct !{!42, !37, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!43 = distinct !{!43, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!46 = distinct !{!46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!51 = distinct !{!51, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"cmpfunc: %a"}
!56 = distinct !{!56, !"cmpfunc"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"cmpfunc: %b"}
!59 = !{!55, !50, !45}
!60 = !{!58, !53, !48}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!63 = distinct !{!63, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!68 = distinct !{!68, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"cmpfunc: %a"}
!73 = distinct !{!73, !"cmpfunc"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"cmpfunc: %b"}
!76 = !{!72, !67, !62}
!77 = !{!75, !70, !65}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!80 = distinct !{!80, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!85 = distinct !{!85, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"cmpfunc: %a"}
!90 = distinct !{!90, !"cmpfunc"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"cmpfunc: %b"}
!93 = !{!89, !84, !79}
!94 = !{!92, !87, !82}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!97 = distinct !{!97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!102 = distinct !{!102, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"cmpfunc: %a"}
!107 = distinct !{!107, !"cmpfunc"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"cmpfunc: %b"}
!110 = !{!106, !101, !96}
!111 = !{!109, !104, !99}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!114 = distinct !{!114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!119 = distinct !{!119, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"cmpfunc: %a"}
!124 = distinct !{!124, !"cmpfunc"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"cmpfunc: %b"}
!127 = !{!123, !118, !113}
!128 = !{!126, !121, !116}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!131 = distinct !{!131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"cmpfunc: %a"}
!141 = distinct !{!141, !"cmpfunc"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"cmpfunc: %b"}
!144 = !{!140, !135, !130}
!145 = !{!143, !138, !133}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!148 = distinct !{!148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!153 = distinct !{!153, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"cmpfunc: %a"}
!158 = distinct !{!158, !"cmpfunc"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"cmpfunc: %b"}
!161 = !{!157, !152, !147}
!162 = !{!160, !155, !150}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!165 = distinct !{!165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!170 = distinct !{!170, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!171 = !{!172}
!172 = distinct !{!172, !170, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"cmpfunc: %a"}
!175 = distinct !{!175, !"cmpfunc"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"cmpfunc: %b"}
!178 = !{!174, !169, !164}
!179 = !{!177, !172, !167}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!182 = distinct !{!182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!187 = distinct !{!187, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"cmpfunc: %a"}
!192 = distinct !{!192, !"cmpfunc"}
!193 = !{!194}
!194 = distinct !{!194, !192, !"cmpfunc: %b"}
!195 = !{!191, !186, !181}
!196 = !{!194, !189, !184}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!199 = distinct !{!199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!204 = distinct !{!204, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!205 = !{!206}
!206 = distinct !{!206, !204, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"cmpfunc: %a"}
!209 = distinct !{!209, !"cmpfunc"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"cmpfunc: %b"}
!212 = !{!208, !203, !198}
!213 = !{!211, !206, !201}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE: %v.0"}
!216 = distinct !{!216, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE"}
!217 = !{!218, !220, !222, !215}
!218 = distinct !{!218, !219, !"cmpfunc: %b"}
!219 = distinct !{!219, !"cmpfunc"}
!220 = distinct !{!220, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!221 = distinct !{!221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!222 = distinct !{!222, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!223 = distinct !{!223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!224 = !{!225, !226, !227, !228}
!225 = distinct !{!225, !219, !"cmpfunc: %a"}
!226 = distinct !{!226, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!227 = distinct !{!227, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!228 = distinct !{!228, !229, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE: %_0"}
!229 = distinct !{!229, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE"}
!230 = !{!228, !231, !215}
!231 = distinct !{!231, !229, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE: %is_less"}
!232 = !{!233, !235, !237, !215}
!233 = distinct !{!233, !234, !"cmpfunc: %b"}
!234 = distinct !{!234, !"cmpfunc"}
!235 = distinct !{!235, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!236 = distinct !{!236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!237 = distinct !{!237, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!238 = distinct !{!238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!239 = !{!240, !241, !242, !243}
!240 = distinct !{!240, !234, !"cmpfunc: %a"}
!241 = distinct !{!241, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!242 = distinct !{!242, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!243 = distinct !{!243, !244, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E: %_0"}
!244 = distinct !{!244, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E"}
!245 = !{!243, !246, !215}
!246 = distinct !{!246, !244, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E: %is_less"}
!247 = !{!248}
!248 = distinct !{!248, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It1"}
!249 = !{!250}
!250 = distinct !{!250, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It1"}
!251 = !{!252}
!252 = distinct !{!252, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It1"}
!253 = !{!228}
!254 = !{!255}
!255 = distinct !{!255, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It1"}
!256 = !{!257}
!257 = distinct !{!257, !219, !"cmpfunc: %a:It1"}
!258 = !{!259}
!259 = distinct !{!259, !219, !"cmpfunc: %b:It1"}
!260 = !{!257, !252, !248, !215}
!261 = !{!259, !255, !250, !228}
!262 = !{!259, !255, !250, !215}
!263 = !{!257, !252, !248, !228}
!264 = !{!265}
!265 = distinct !{!265, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It1"}
!266 = !{!267}
!267 = distinct !{!267, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It1"}
!268 = !{!269}
!269 = distinct !{!269, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It1"}
!270 = !{!243}
!271 = !{!272}
!272 = distinct !{!272, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It1"}
!273 = !{!274}
!274 = distinct !{!274, !234, !"cmpfunc: %a:It1"}
!275 = !{!276}
!276 = distinct !{!276, !234, !"cmpfunc: %b:It1"}
!277 = !{!274, !269, !265, !215}
!278 = !{!276, !272, !267, !243}
!279 = !{!276, !272, !267, !215}
!280 = !{!274, !269, !265, !243}
!281 = !{!282}
!282 = distinct !{!282, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It2"}
!283 = !{!284}
!284 = distinct !{!284, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It2"}
!285 = !{!286}
!286 = distinct !{!286, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It2"}
!287 = !{!288}
!288 = distinct !{!288, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It2"}
!289 = !{!290}
!290 = distinct !{!290, !219, !"cmpfunc: %a:It2"}
!291 = !{!292}
!292 = distinct !{!292, !219, !"cmpfunc: %b:It2"}
!293 = !{!290, !286, !282, !215}
!294 = !{!292, !288, !284, !228}
!295 = !{!292, !288, !284, !215}
!296 = !{!290, !286, !282, !228}
!297 = !{!298}
!298 = distinct !{!298, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It2"}
!299 = !{!300}
!300 = distinct !{!300, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It2"}
!301 = !{!302}
!302 = distinct !{!302, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It2"}
!303 = !{!304}
!304 = distinct !{!304, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It2"}
!305 = !{!306}
!306 = distinct !{!306, !234, !"cmpfunc: %a:It2"}
!307 = !{!308}
!308 = distinct !{!308, !234, !"cmpfunc: %b:It2"}
!309 = !{!306, !302, !298, !215}
!310 = !{!308, !304, !300, !243}
!311 = !{!308, !304, !300, !215}
!312 = !{!306, !302, !298, !243}
!313 = !{!314}
!314 = distinct !{!314, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It3"}
!315 = !{!316}
!316 = distinct !{!316, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It3"}
!317 = !{!318}
!318 = distinct !{!318, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It3"}
!319 = !{!320}
!320 = distinct !{!320, !221, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It3"}
!321 = !{!322}
!322 = distinct !{!322, !219, !"cmpfunc: %a:It3"}
!323 = !{!324}
!324 = distinct !{!324, !219, !"cmpfunc: %b:It3"}
!325 = !{!322, !318, !314, !215}
!326 = !{!324, !320, !316, !228}
!327 = !{!324, !320, !316, !215}
!328 = !{!322, !318, !314, !228}
!329 = !{!330}
!330 = distinct !{!330, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It3"}
!331 = !{!332}
!332 = distinct !{!332, !238, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It3"}
!333 = !{!334}
!334 = distinct !{!334, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It3"}
!335 = !{!336}
!336 = distinct !{!336, !236, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It3"}
!337 = !{!338}
!338 = distinct !{!338, !234, !"cmpfunc: %a:It3"}
!339 = !{!340}
!340 = distinct !{!340, !234, !"cmpfunc: %b:It3"}
!341 = !{!338, !334, !330, !215}
!342 = !{!340, !336, !332, !243}
!343 = !{!340, !336, !332, !215}
!344 = !{!338, !334, !330, !243}
!345 = !{!"branch_weights", i32 4001, i32 4000000}
!346 = !{!"branch_weights", i32 2002, i32 2000}
!347 = !{!348, !350}
!348 = distinct !{!348, !349, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h384784e15f8deb0fE: %_0"}
!349 = distinct !{!349, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h384784e15f8deb0fE"}
!350 = distinct !{!350, !351, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17ha971025a33983918E: %_0"}
!351 = distinct !{!351, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17ha971025a33983918E"}
!352 = !{!353, !355, !357, !359}
!353 = distinct !{!353, !354, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!354 = distinct !{!354, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!355 = distinct !{!355, !356, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6be353fecf43e541E: %self"}
!356 = distinct !{!356, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6be353fecf43e541E"}
!357 = distinct !{!357, !358, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1f0b11387d186fceE: %_1"}
!358 = distinct !{!358, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1f0b11387d186fceE"}
!359 = distinct !{!359, !360, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h864ab320c9ea66b2E: %_1"}
!360 = distinct !{!360, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h864ab320c9ea66b2E"}
!361 = !{!362, !364, !366, !368}
!362 = distinct !{!362, !363, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!363 = distinct !{!363, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!364 = distinct !{!364, !365, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6be353fecf43e541E: %self"}
!365 = distinct !{!365, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6be353fecf43e541E"}
!366 = distinct !{!366, !367, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1f0b11387d186fceE: %_1"}
!367 = distinct !{!367, !"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h1f0b11387d186fceE"}
!368 = distinct !{!368, !369, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h864ab320c9ea66b2E: %_1"}
!369 = distinct !{!369, !"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h864ab320c9ea66b2E"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!372 = distinct !{!372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!377 = distinct !{!377, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E: %scratch.0"}
!380 = distinct !{!380, !"_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E"}
!381 = !{!382}
!382 = distinct !{!382, !377, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"cmpfunc: %a"}
!385 = distinct !{!385, !"cmpfunc"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"cmpfunc: %b"}
!388 = !{!384, !376, !371}
!389 = !{!387, !382, !374, !379}
!390 = !{!387, !382, !374}
!391 = !{!384, !376, !371, !379}
!392 = !{!393, !395, !397}
!393 = distinct !{!393, !394, !"cmpfunc: %a"}
!394 = distinct !{!394, !"cmpfunc"}
!395 = distinct !{!395, !396, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!396 = distinct !{!396, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!397 = distinct !{!397, !398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!398 = distinct !{!398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!399 = !{!400, !401, !402, !379}
!400 = distinct !{!400, !394, !"cmpfunc: %b"}
!401 = distinct !{!401, !396, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!402 = distinct !{!402, !398, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!403 = !{!404, !406, !408}
!404 = distinct !{!404, !405, !"cmpfunc: %a"}
!405 = distinct !{!405, !"cmpfunc"}
!406 = distinct !{!406, !407, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!407 = distinct !{!407, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!408 = distinct !{!408, !409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!409 = distinct !{!409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!410 = !{!411, !412, !413, !379}
!411 = distinct !{!411, !405, !"cmpfunc: %b"}
!412 = distinct !{!412, !407, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!413 = distinct !{!413, !409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h311dac4b0cedfb84E: %a.0"}
!416 = distinct !{!416, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h311dac4b0cedfb84E"}
!417 = !{!379, !418}
!418 = distinct !{!418, !380, !"_ZN4core5slice4sort6stable5drift10create_run17h5b870e62d254a4f3E: %is_less"}
!419 = !{!420}
!420 = distinct !{!420, !416, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h311dac4b0cedfb84E: %b.0"}
!421 = !{!415, !422}
!422 = distinct !{!422, !423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hcefaabadc220a95fE: %self.0"}
!423 = distinct !{!423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hcefaabadc220a95fE"}
!424 = !{!420, !379, !418}
!425 = !{!420, !422}
!426 = !{!415, !379, !418}
!427 = distinct !{!427, !428, !429}
!428 = !{!"llvm.loop.isvectorized", i32 1}
!429 = !{!"llvm.loop.unroll.runtime.disable"}
!430 = distinct !{!430, !429, !428}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E: %v.0"}
!433 = distinct !{!433, !"_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E"}
!434 = !{!435}
!435 = distinct !{!435, !433, !"_ZN4core5slice4sort6stable5merge5merge17h85480b2cd6c462f0E: %scratch.0"}
!436 = !{!432, !435}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!439 = distinct !{!439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!444 = distinct !{!444, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"cmpfunc: %a"}
!449 = distinct !{!449, !"cmpfunc"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"cmpfunc: %b"}
!452 = !{!448, !443, !438, !435}
!453 = !{!451, !446, !441, !454, !432}
!454 = distinct !{!454, !455, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h0bca3c3e8839d6cbE: %self"}
!455 = distinct !{!455, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h0bca3c3e8839d6cbE"}
!456 = !{!451, !446, !441, !432}
!457 = !{!448, !443, !438, !454, !435}
!458 = !{!454, !435}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!461 = distinct !{!461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!466 = distinct !{!466, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"cmpfunc: %a"}
!471 = distinct !{!471, !"cmpfunc"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"cmpfunc: %b"}
!474 = !{!470, !465, !460, !432}
!475 = !{!473, !468, !463, !476, !435}
!476 = distinct !{!476, !477, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hd12f649c685713b8E: %self"}
!477 = distinct !{!477, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hd12f649c685713b8E"}
!478 = !{!473, !468, !463, !435}
!479 = !{!470, !465, !460, !476, !432}
!480 = !{!476, !435}
!481 = !{!482, !484}
!482 = distinct !{!482, !483, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d43c77eebefb442E: %self"}
!483 = distinct !{!483, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d43c77eebefb442E"}
!484 = distinct !{!484, !485, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h586dc30a184aa269E: %_1"}
!485 = distinct !{!485, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h586dc30a184aa269E"}
!486 = !{!487}
!487 = distinct !{!487, !488, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6233037e50631e76E: %v.0"}
!488 = distinct !{!488, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6233037e50631e76E"}
!489 = !{!490}
!490 = distinct !{!490, !488, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6233037e50631e76E: %scratch.0"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!493 = distinct !{!493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!498 = distinct !{!498, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!499 = !{!500}
!500 = distinct !{!500, !498, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"cmpfunc: %a"}
!503 = distinct !{!503, !"cmpfunc"}
!504 = !{!505}
!505 = distinct !{!505, !503, !"cmpfunc: %b"}
!506 = !{!502, !497, !492, !487}
!507 = !{!505, !500, !495, !490, !508}
!508 = distinct !{!508, !488, !"_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6233037e50631e76E: %is_less"}
!509 = !{!505, !500, !495, !487}
!510 = !{!502, !497, !492, !490, !508}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!513 = distinct !{!513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!514 = !{!515}
!515 = distinct !{!515, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!518 = distinct !{!518, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"cmpfunc: %a"}
!523 = distinct !{!523, !"cmpfunc"}
!524 = !{!525}
!525 = distinct !{!525, !523, !"cmpfunc: %b"}
!526 = !{!522, !517, !512, !487}
!527 = !{!525, !520, !515, !490, !508}
!528 = !{!525, !520, !515, !487}
!529 = !{!522, !517, !512, !490, !508}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!532 = distinct !{!532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!533 = !{!534}
!534 = distinct !{!534, !532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!537 = distinct !{!537, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!538 = !{!539}
!539 = distinct !{!539, !537, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"cmpfunc: %a"}
!542 = distinct !{!542, !"cmpfunc"}
!543 = !{!544}
!544 = distinct !{!544, !542, !"cmpfunc: %b"}
!545 = !{!541, !536, !531, !487}
!546 = !{!544, !539, !534, !490, !508}
!547 = !{!544, !539, !534, !487}
!548 = !{!541, !536, !531, !490, !508}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!551 = distinct !{!551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!556 = distinct !{!556, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"cmpfunc: %a"}
!561 = distinct !{!561, !"cmpfunc"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"cmpfunc: %b"}
!564 = !{!560, !555, !550, !487}
!565 = !{!563, !558, !553, !490, !508}
!566 = !{!563, !558, !553, !487}
!567 = !{!560, !555, !550, !490, !508}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!570 = distinct !{!570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!575 = distinct !{!575, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!576 = !{!577}
!577 = distinct !{!577, !575, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!578 = !{!579}
!579 = distinct !{!579, !580, !"cmpfunc: %a"}
!580 = distinct !{!580, !"cmpfunc"}
!581 = !{!582}
!582 = distinct !{!582, !580, !"cmpfunc: %b"}
!583 = !{!579, !574, !569, !487}
!584 = !{!582, !577, !572, !490, !508}
!585 = !{!582, !577, !572, !487}
!586 = !{!579, !574, !569, !490, !508}
!587 = !{!487, !508}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!590 = distinct !{!590, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!591 = !{!592}
!592 = distinct !{!592, !590, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!595 = distinct !{!595, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!596 = !{!597}
!597 = distinct !{!597, !595, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"cmpfunc: %a"}
!600 = distinct !{!600, !"cmpfunc"}
!601 = !{!602}
!602 = distinct !{!602, !600, !"cmpfunc: %b"}
!603 = !{!599, !594, !589, !487}
!604 = !{!602, !597, !592, !490, !508}
!605 = !{!602, !597, !592, !487}
!606 = !{!599, !594, !589, !490, !508}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!609 = distinct !{!609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!610 = !{!611}
!611 = distinct !{!611, !609, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!614 = distinct !{!614, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!615 = !{!616}
!616 = distinct !{!616, !614, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!617 = !{!618}
!618 = distinct !{!618, !619, !"cmpfunc: %a"}
!619 = distinct !{!619, !"cmpfunc"}
!620 = !{!621}
!621 = distinct !{!621, !619, !"cmpfunc: %b"}
!622 = !{!618, !613, !608, !487}
!623 = !{!621, !616, !611, !490, !508}
!624 = !{!621, !616, !611, !487}
!625 = !{!618, !613, !608, !490, !508}
!626 = !{!627}
!627 = distinct !{!627, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!628 = distinct !{!628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!629 = !{!630}
!630 = distinct !{!630, !628, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!633 = distinct !{!633, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"cmpfunc: %a"}
!638 = distinct !{!638, !"cmpfunc"}
!639 = !{!640}
!640 = distinct !{!640, !638, !"cmpfunc: %b"}
!641 = !{!637, !632, !627, !487}
!642 = !{!640, !635, !630, !490, !508}
!643 = !{!640, !635, !630, !487}
!644 = !{!637, !632, !627, !490, !508}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!647 = distinct !{!647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!652 = distinct !{!652, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!653 = !{!654}
!654 = distinct !{!654, !652, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!655 = !{!656}
!656 = distinct !{!656, !657, !"cmpfunc: %a"}
!657 = distinct !{!657, !"cmpfunc"}
!658 = !{!659}
!659 = distinct !{!659, !657, !"cmpfunc: %b"}
!660 = !{!656, !651, !646, !487}
!661 = !{!659, !654, !649, !490, !508}
!662 = !{!659, !654, !649, !487}
!663 = !{!656, !651, !646, !490, !508}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!666 = distinct !{!666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!667 = !{!668}
!668 = distinct !{!668, !666, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!669 = !{!670}
!670 = distinct !{!670, !671, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!671 = distinct !{!671, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!672 = !{!673}
!673 = distinct !{!673, !671, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"cmpfunc: %a"}
!676 = distinct !{!676, !"cmpfunc"}
!677 = !{!678}
!678 = distinct !{!678, !676, !"cmpfunc: %b"}
!679 = !{!675, !670, !665, !487}
!680 = !{!678, !673, !668, !490, !508}
!681 = !{!678, !673, !668, !487}
!682 = !{!675, !670, !665, !490, !508}
!683 = !{!490, !508}
!684 = !{!685, !687, !689, !490}
!685 = distinct !{!685, !686, !"cmpfunc: %b"}
!686 = distinct !{!686, !"cmpfunc"}
!687 = distinct !{!687, !688, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!688 = distinct !{!688, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!689 = distinct !{!689, !690, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!690 = distinct !{!690, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!691 = !{!692, !693, !694, !487, !508}
!692 = distinct !{!692, !686, !"cmpfunc: %a"}
!693 = distinct !{!693, !688, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!694 = distinct !{!694, !690, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!695 = !{!696, !698, !700, !490}
!696 = distinct !{!696, !697, !"cmpfunc: %b"}
!697 = distinct !{!697, !"cmpfunc"}
!698 = distinct !{!698, !699, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!699 = distinct !{!699, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!702 = !{!703, !704, !705, !487, !508}
!703 = distinct !{!703, !697, !"cmpfunc: %a"}
!704 = distinct !{!704, !699, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!705 = distinct !{!705, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!706 = !{!707, !709, !487, !508}
!707 = distinct !{!707, !708, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E: %self"}
!708 = distinct !{!708, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E"}
!709 = distinct !{!709, !710, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE: %_1"}
!710 = distinct !{!710, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE: %v.0"}
!713 = distinct !{!713, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h2ce7223a6699863bE"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!716 = distinct !{!716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!717 = !{!718}
!718 = distinct !{!718, !716, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!721 = distinct !{!721, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE: %_0"}
!724 = distinct !{!724, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE"}
!725 = !{!726}
!726 = distinct !{!726, !721, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"cmpfunc: %a"}
!729 = distinct !{!729, !"cmpfunc"}
!730 = !{!731}
!731 = distinct !{!731, !729, !"cmpfunc: %b"}
!732 = !{!728, !720, !715, !712, !490}
!733 = !{!731, !726, !718, !723, !487, !508}
!734 = !{!731, !726, !718, !712, !490}
!735 = !{!728, !720, !715, !723, !487, !508}
!736 = !{!723, !737, !712, !490, !508}
!737 = distinct !{!737, !724, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he052b5445d928befE: %is_less"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!740 = distinct !{!740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!741 = !{!742}
!742 = distinct !{!742, !740, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!743 = !{!744}
!744 = distinct !{!744, !745, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!745 = distinct !{!745, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E: %_0"}
!748 = distinct !{!748, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E"}
!749 = !{!750}
!750 = distinct !{!750, !745, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!751 = !{!752}
!752 = distinct !{!752, !753, !"cmpfunc: %a"}
!753 = distinct !{!753, !"cmpfunc"}
!754 = !{!755}
!755 = distinct !{!755, !753, !"cmpfunc: %b"}
!756 = !{!752, !744, !739, !712, !490}
!757 = !{!755, !750, !742, !747, !487, !508}
!758 = !{!755, !750, !742, !712, !490}
!759 = !{!752, !744, !739, !747, !487, !508}
!760 = !{!747, !761, !712, !490, !508}
!761 = distinct !{!761, !748, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hec8f594485ec1f48E: %is_less"}
!762 = !{!712, !490}
!763 = !{!712, !490, !508}
!764 = !{!487, !490, !508}
!765 = !{!487, !490}
!766 = !{!767, !769, !508}
!767 = distinct !{!767, !768, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E: %self"}
!768 = distinct !{!768, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E"}
!769 = distinct !{!769, !770, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE: %_1"}
!770 = distinct !{!770, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!773 = distinct !{!773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!774 = !{!775}
!775 = distinct !{!775, !773, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!778 = distinct !{!778, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!779 = !{!780}
!780 = distinct !{!780, !781, !"_ZN4core5slice4sort6shared5pivot7median317he2b12d175a123665E: %c"}
!781 = distinct !{!781, !"_ZN4core5slice4sort6shared5pivot7median317he2b12d175a123665E"}
!782 = !{!783}
!783 = distinct !{!783, !778, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"cmpfunc: %a"}
!786 = distinct !{!786, !"cmpfunc"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"cmpfunc: %b"}
!789 = !{!785, !777, !772, !790}
!790 = distinct !{!790, !791, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc252dbaf84b34ed6E: %v.0"}
!791 = distinct !{!791, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc252dbaf84b34ed6E"}
!792 = !{!788, !783, !775, !780, !793}
!793 = distinct !{!793, !791, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc252dbaf84b34ed6E: %is_less"}
!794 = !{!788, !783, !775, !790}
!795 = !{!785, !777, !772, !780, !793}
!796 = !{!797, !799, !801, !790}
!797 = distinct !{!797, !798, !"cmpfunc: %b"}
!798 = distinct !{!798, !"cmpfunc"}
!799 = distinct !{!799, !800, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!800 = distinct !{!800, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!801 = distinct !{!801, !802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!802 = distinct !{!802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!803 = !{!804, !805, !806, !793}
!804 = distinct !{!804, !798, !"cmpfunc: %a"}
!805 = distinct !{!805, !800, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!806 = distinct !{!806, !802, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!807 = !{!808, !810, !812}
!808 = distinct !{!808, !809, !"cmpfunc: %a"}
!809 = distinct !{!809, !"cmpfunc"}
!810 = distinct !{!810, !811, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!811 = distinct !{!811, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!812 = distinct !{!812, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!813 = distinct !{!813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!814 = !{!815, !816, !817}
!815 = distinct !{!815, !809, !"cmpfunc: %b"}
!816 = distinct !{!816, !811, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!817 = distinct !{!817, !813, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf3c3a5a08f999d20E: %v.0"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf3c3a5a08f999d20E"}
!821 = !{!822}
!822 = distinct !{!822, !820, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17hf3c3a5a08f999d20E: %scratch.0"}
!823 = !{!824, !826, !828, !819}
!824 = distinct !{!824, !825, !"cmpfunc: %b"}
!825 = distinct !{!825, !"cmpfunc"}
!826 = distinct !{!826, !827, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!827 = distinct !{!827, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!828 = distinct !{!828, !829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!829 = distinct !{!829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!830 = !{!831, !832, !833, !822}
!831 = distinct !{!831, !825, !"cmpfunc: %a"}
!832 = distinct !{!832, !827, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!833 = distinct !{!833, !829, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!834 = !{!833}
!835 = !{!828}
!836 = !{!832}
!837 = !{!826}
!838 = !{!831}
!839 = !{!824}
!840 = !{!831, !832, !833, !819}
!841 = !{!824, !826, !828, !822}
!842 = !{!843, !819}
!843 = distinct !{!843, !844, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!844 = distinct !{!844, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!845 = !{!846, !848, !850, !819}
!846 = distinct !{!846, !847, !"cmpfunc: %a"}
!847 = distinct !{!847, !"cmpfunc"}
!848 = distinct !{!848, !849, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!849 = distinct !{!849, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!850 = distinct !{!850, !851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!851 = distinct !{!851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!852 = !{!853, !854, !855, !822}
!853 = distinct !{!853, !847, !"cmpfunc: %b"}
!854 = distinct !{!854, !849, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!855 = distinct !{!855, !851, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!856 = !{!857, !819}
!857 = distinct !{!857, !858, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!858 = distinct !{!858, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!859 = !{!860, !862, !864, !819}
!860 = distinct !{!860, !861, !"cmpfunc: %a"}
!861 = distinct !{!861, !"cmpfunc"}
!862 = distinct !{!862, !863, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!863 = distinct !{!863, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!864 = distinct !{!864, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!865 = distinct !{!865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!866 = !{!867, !868, !869, !822}
!867 = distinct !{!867, !861, !"cmpfunc: %b"}
!868 = distinct !{!868, !863, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!869 = distinct !{!869, !865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!870 = !{!871, !819}
!871 = distinct !{!871, !872, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!872 = distinct !{!872, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!873 = !{!874, !876, !878, !819}
!874 = distinct !{!874, !875, !"cmpfunc: %a"}
!875 = distinct !{!875, !"cmpfunc"}
!876 = distinct !{!876, !877, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!877 = distinct !{!877, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!880 = !{!881, !882, !883, !822}
!881 = distinct !{!881, !875, !"cmpfunc: %b"}
!882 = distinct !{!882, !877, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!883 = distinct !{!883, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!884 = !{!885, !819}
!885 = distinct !{!885, !886, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!886 = distinct !{!886, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!887 = !{!888, !890, !892, !819}
!888 = distinct !{!888, !889, !"cmpfunc: %b"}
!889 = distinct !{!889, !"cmpfunc"}
!890 = distinct !{!890, !891, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!891 = distinct !{!891, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!892 = distinct !{!892, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!893 = distinct !{!893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!894 = !{!895, !896, !897, !822}
!895 = distinct !{!895, !889, !"cmpfunc: %a"}
!896 = distinct !{!896, !891, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!897 = distinct !{!897, !893, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!898 = !{!897}
!899 = !{!892}
!900 = !{!896}
!901 = !{!890}
!902 = !{!895}
!903 = !{!888}
!904 = !{!895, !896, !897, !819}
!905 = !{!888, !890, !892, !822}
!906 = !{!907, !819}
!907 = distinct !{!907, !908, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!908 = distinct !{!908, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!909 = !{!910, !822}
!910 = distinct !{!910, !911, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!911 = distinct !{!911, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!912 = !{!910, !819}
!913 = !{!819, !822}
!914 = distinct !{!914, !428, !429}
!915 = distinct !{!915, !429, !428}
!916 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!917 = !{!918, !920}
!918 = distinct !{!918, !919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE: %pair"}
!919 = distinct !{!919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE"}
!920 = distinct !{!920, !919, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc832d78e7fd9681fE: %self.0"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E: %v.0"}
!923 = distinct !{!923, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN4core5slice4sort6stable9quicksort16stable_partition17he08abf4b141b6288E: %scratch.0"}
!926 = !{!927, !929, !931, !933, !922}
!927 = distinct !{!927, !928, !"cmpfunc: %a"}
!928 = distinct !{!928, !"cmpfunc"}
!929 = distinct !{!929, !930, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!930 = distinct !{!930, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!931 = distinct !{!931, !932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!932 = distinct !{!932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!933 = distinct !{!933, !934, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %b"}
!934 = distinct !{!934, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E"}
!935 = !{!936, !937, !938, !939, !925}
!936 = distinct !{!936, !928, !"cmpfunc: %b"}
!937 = distinct !{!937, !930, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!938 = distinct !{!938, !932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!939 = distinct !{!939, !934, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %a"}
!940 = !{!939}
!941 = !{!933}
!942 = !{!931}
!943 = !{!938}
!944 = !{!929}
!945 = !{!937}
!946 = !{!927}
!947 = !{!936}
!948 = !{!936, !937, !938, !939, !922}
!949 = !{!927, !929, !931, !933, !925}
!950 = !{!951, !922}
!951 = distinct !{!951, !952, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!952 = distinct !{!952, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!953 = !{!954, !956, !958, !960, !922}
!954 = distinct !{!954, !955, !"cmpfunc: %b"}
!955 = distinct !{!955, !"cmpfunc"}
!956 = distinct !{!956, !957, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!957 = distinct !{!957, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!958 = distinct !{!958, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!959 = distinct !{!959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!960 = distinct !{!960, !961, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %a"}
!961 = distinct !{!961, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E"}
!962 = !{!963, !964, !965, !966, !925}
!963 = distinct !{!963, !955, !"cmpfunc: %a"}
!964 = distinct !{!964, !957, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!965 = distinct !{!965, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!966 = distinct !{!966, !961, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %b"}
!967 = !{!968, !922}
!968 = distinct !{!968, !969, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!969 = distinct !{!969, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!970 = !{!971, !973, !975, !977, !922}
!971 = distinct !{!971, !972, !"cmpfunc: %b"}
!972 = distinct !{!972, !"cmpfunc"}
!973 = distinct !{!973, !974, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!974 = distinct !{!974, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!975 = distinct !{!975, !976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!976 = distinct !{!976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!977 = distinct !{!977, !978, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %a"}
!978 = distinct !{!978, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E"}
!979 = !{!980, !981, !982, !983, !925}
!980 = distinct !{!980, !972, !"cmpfunc: %a"}
!981 = distinct !{!981, !974, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!982 = distinct !{!982, !976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!983 = distinct !{!983, !978, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %b"}
!984 = !{!985, !922}
!985 = distinct !{!985, !986, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!986 = distinct !{!986, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!987 = !{!988, !990, !992, !994, !922}
!988 = distinct !{!988, !989, !"cmpfunc: %b"}
!989 = distinct !{!989, !"cmpfunc"}
!990 = distinct !{!990, !991, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!991 = distinct !{!991, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!992 = distinct !{!992, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!993 = distinct !{!993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!994 = distinct !{!994, !995, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %a"}
!995 = distinct !{!995, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E"}
!996 = !{!997, !998, !999, !1000, !925}
!997 = distinct !{!997, !989, !"cmpfunc: %a"}
!998 = distinct !{!998, !991, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!999 = distinct !{!999, !993, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!1000 = distinct !{!1000, !995, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %b"}
!1001 = !{!1002, !922}
!1002 = distinct !{!1002, !1003, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!1003 = distinct !{!1003, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!1004 = !{!1005, !1007, !1009, !1011, !922}
!1005 = distinct !{!1005, !1006, !"cmpfunc: %a"}
!1006 = distinct !{!1006, !"cmpfunc"}
!1007 = distinct !{!1007, !1008, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!1008 = distinct !{!1008, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!1009 = distinct !{!1009, !1010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!1010 = distinct !{!1010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!1011 = distinct !{!1011, !1012, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %b"}
!1012 = distinct !{!1012, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E"}
!1013 = !{!1014, !1015, !1016, !1017, !925}
!1014 = distinct !{!1014, !1006, !"cmpfunc: %b"}
!1015 = distinct !{!1015, !1008, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!1016 = distinct !{!1016, !1010, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!1017 = distinct !{!1017, !1012, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hc4194e0be9762858E: %a"}
!1018 = !{!1017}
!1019 = !{!1011}
!1020 = !{!1009}
!1021 = !{!1016}
!1022 = !{!1007}
!1023 = !{!1015}
!1024 = !{!1005}
!1025 = !{!1014}
!1026 = !{!1014, !1015, !1016, !1017, !922}
!1027 = !{!1005, !1007, !1009, !1011, !925}
!1028 = !{!1029, !922}
!1029 = distinct !{!1029, !1030, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!1030 = distinct !{!1030, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!1031 = !{!1032, !925}
!1032 = distinct !{!1032, !1033, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E: %self"}
!1033 = distinct !{!1033, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h11a1af7a2f68d568E"}
!1034 = !{!1032, !922}
!1035 = !{!922, !925}
!1036 = distinct !{!1036, !428, !429}
!1037 = distinct !{!1037, !429, !428}
!1038 = !{i64 0, i64 -9223372036854775808}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1041 = distinct !{!1041, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1041, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hf0478670d7c5ea9dE: %self"}
!1046 = distinct !{!1046, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hf0478670d7c5ea9dE"}
!1047 = !{i64 0, i64 2}
!1048 = !{i64 0, i64 -9223372036854775807}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN4core3str11validations15next_code_point17h713b4e4560e820c9E: %bytes"}
!1051 = distinct !{!1051, !"_ZN4core3str11validations15next_code_point17h713b4e4560e820c9E"}
!1052 = !{!1053, !1055, !1057, !1059, !1061, !1063}
!1053 = distinct !{!1053, !1054, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1054 = distinct !{!1054, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1055 = distinct !{!1055, !1056, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!1056 = distinct !{!1056, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!1057 = distinct !{!1057, !1058, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E: %self"}
!1058 = distinct !{!1058, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E"}
!1059 = distinct !{!1059, !1060, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E: %_1"}
!1060 = distinct !{!1060, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E"}
!1061 = distinct !{!1061, !1062, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E: %_1"}
!1062 = distinct !{!1062, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E"}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E: %_1"}
!1064 = distinct !{!1064, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1054, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1067 = !{!1063}
!1068 = !{!1061}
!1069 = !{!1059}
!1070 = !{!1057}
!1071 = !{!1055}
!1072 = !{!1055, !1057, !1059, !1061, !1063}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h75c06066e6cce8e0E: argument 0"}
!1075 = distinct !{!1075, !"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h75c06066e6cce8e0E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E: argument 0"}
!1078 = distinct !{!1078, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1081, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E: %_1"}
!1081 = distinct !{!1081, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1084, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E: %_1"}
!1084 = distinct !{!1084, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E"}
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E: %_1"}
!1087 = distinct !{!1087, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E: %self"}
!1090 = distinct !{!1090, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!1093 = distinct !{!1093, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!1094 = !{!1095, !1092, !1089, !1086, !1083, !1080}
!1095 = distinct !{!1095, !1096, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1096 = distinct !{!1096, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1096, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1099 = !{!1092, !1089, !1086, !1083, !1080}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1102, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E: %_1"}
!1102 = distinct !{!1102, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E: %_1"}
!1105 = distinct !{!1105, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1108, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E: %_1"}
!1108 = distinct !{!1108, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E"}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E: %self"}
!1111 = distinct !{!1111, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!1114 = distinct !{!1114, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!1115 = !{!1116, !1113, !1110, !1107, !1104, !1101}
!1116 = distinct !{!1116, !1117, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1117 = distinct !{!1117, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1117, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1120 = !{!1113, !1110, !1107, !1104, !1101}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1123, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E: %_1"}
!1123 = distinct !{!1123, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E: %_1"}
!1126 = distinct !{!1126, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1129, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E: %_1"}
!1129 = distinct !{!1129, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E: %self"}
!1132 = distinct !{!1132, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!1135 = distinct !{!1135, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!1136 = !{!1137, !1134, !1131, !1128, !1125, !1122}
!1137 = distinct !{!1137, !1138, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1138 = distinct !{!1138, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1138, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1141 = !{!1134, !1131, !1128, !1125, !1122}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h75c06066e6cce8e0E: argument 0"}
!1144 = distinct !{!1144, !"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h75c06066e6cce8e0E"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1147, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self"}
!1147 = distinct !{!1147, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE"}
!1148 = !{!1149, !1146}
!1149 = distinct !{!1149, !1150, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E: %self"}
!1150 = distinct !{!1150, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E: argument 0"}
!1153 = distinct !{!1153, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1156, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E: %_1"}
!1156 = distinct !{!1156, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E: %_1"}
!1159 = distinct !{!1159, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E: %_1"}
!1162 = distinct !{!1162, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2048313d501f5e08E"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1165, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E: %self"}
!1165 = distinct !{!1165, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0626aecf59d739b5E"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1168, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E: %self"}
!1168 = distinct !{!1168, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17hac8d5cfa2fa97df2E"}
!1169 = !{!1170, !1167, !1164, !1161, !1158, !1155}
!1170 = distinct !{!1170, !1171, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %self"}
!1171 = distinct !{!1171, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1171, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he3093146d10c89f6E: %_0"}
!1174 = !{!1167, !1164, !1161, !1158, !1155}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E: %self.0"}
!1177 = distinct !{!1177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h07c3a0e56a4010b0E"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"_ZN5alloc5slice11stable_sort17hd40fac6702f9627eE: %v.0"}
!1180 = distinct !{!1180, !"_ZN5alloc5slice11stable_sort17hd40fac6702f9627eE"}
!1181 = !{!1179, !1182, !1176}
!1182 = distinct !{!1182, !1180, !"_ZN5alloc5slice11stable_sort17hd40fac6702f9627eE: argument 1"}
!1183 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!1191 = distinct !{!1191, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"cmpfunc: %a"}
!1196 = distinct !{!1196, !"cmpfunc"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"cmpfunc: %b"}
!1199 = !{!1195, !1190, !1185, !1200, !1179, !1176}
!1200 = distinct !{!1200, !1201, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8e71ea5042877387E: %v.0"}
!1201 = distinct !{!1201, !"_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8e71ea5042877387E"}
!1202 = !{!1198, !1193, !1188, !1182}
!1203 = !{!1198, !1193, !1188, !1200, !1179, !1176}
!1204 = !{!1195, !1190, !1185, !1182}
!1205 = !{!1200, !1179, !1176}
!1206 = !{!1182}
!1207 = !{!1208, !1210, !1212, !1200, !1179, !1176}
!1208 = distinct !{!1208, !1209, !"cmpfunc: %b"}
!1209 = distinct !{!1209, !"cmpfunc"}
!1210 = distinct !{!1210, !1211, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1"}
!1211 = distinct !{!1211, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE"}
!1212 = distinct !{!1212, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b"}
!1213 = distinct !{!1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E"}
!1214 = !{!1215, !1216, !1217, !1182}
!1215 = distinct !{!1215, !1209, !"cmpfunc: %a"}
!1216 = distinct !{!1216, !1211, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0"}
!1217 = distinct !{!1217, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a"}
!1218 = !{!1219, !1221, !1182}
!1219 = distinct !{!1219, !1220, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E: %self"}
!1220 = distinct !{!1220, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea61f274691cbfe6E"}
!1221 = distinct !{!1221, !1222, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE: %_1"}
!1222 = distinct !{!1222, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h5a11eed37c88eeadE"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %a:It1"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h94be9f90597a9af8E: %b:It1"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 0:It1"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hef9fa213647c2c1eE: argument 1:It1"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1196, !"cmpfunc: %a:It1"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1196, !"cmpfunc: %b:It1"}
!1235 = !{!1232, !1228, !1224, !1200, !1179, !1176}
!1236 = !{!1234, !1230, !1226, !1182}
!1237 = !{!1234, !1230, !1226, !1200, !1179, !1176}
!1238 = !{!1232, !1228, !1224, !1182}
