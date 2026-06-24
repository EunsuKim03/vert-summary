define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_26 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_20 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he2fa986f23b1bab0E"(ptr sret([12 x i8]) align 4 %_4, i32 0, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5d62a07989d56a04E"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h09dded78c832a326E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_6, align 4
  %3 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  %6 = load i32, ptr %5, align 4
  %_8 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_8 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_13.0 = extractvalue { i32, i1 } %9, 0
  %_13.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_13.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he2fa986f23b1bab0E"(ptr sret([12 x i8]) align 4 %_11, i32 0, i32 %_13.0) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5d62a07989d56a04E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_10, i64 12, i1 false)
  br label %bb11

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2ebac8d38f96d981b5224f6f25d2c51b) #22
  unreachable

bb11:                                             ; preds = %bb18, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %10 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h09dded78c832a326E"(ptr align 4 %iter1) #17
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  store i32 %11, ptr %_15, align 4
  %13 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %_15, align 4
  %15 = getelementptr inbounds i8, ptr %_15, i64 4
  %16 = load i32, ptr %15, align 4
  %_17 = zext i32 %14 to i64
  %17 = trunc nuw i64 %_17 to i1
  br i1 %17, label %bb13, label %bb3

bb13:                                             ; preds = %bb11
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %18, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_23.0 = extractvalue { i32, i1 } %19, 0
  %_23.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_23.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23.0, i32 %j)
  %_24.0 = extractvalue { i32, i1 } %20, 0
  %_24.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_24.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_80342541bcfb452c5ab9d919ea2e2b3c) #22
  unreachable

bb15:                                             ; preds = %bb14
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he2fa986f23b1bab0E"(ptr sret([12 x i8]) align 4 %_20, i32 0, i32 %_24.0) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5d62a07989d56a04E"(ptr sret([12 x i8]) align 4 %_19, ptr align 4 %_20) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_19, i64 12, i1 false)
  br label %bb18

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5271c68042867b79f8810ba8d8c09830) #22
  unreachable

bb18:                                             ; preds = %bb24, %bb22, %bb15
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %21 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h09dded78c832a326E"(ptr align 4 %iter2) #17
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  store i32 %22, ptr %_26, align 4
  %24 = getelementptr inbounds i8, ptr %_26, i64 4
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %_26, align 4
  %26 = getelementptr inbounds i8, ptr %_26, i64 4
  %27 = load i32, ptr %26, align 4
  %_28 = zext i32 %25 to i64
  %28 = trunc nuw i64 %_28 to i1
  br i1 %28, label %bb20, label %bb11

bb20:                                             ; preds = %bb18
  %29 = getelementptr inbounds i8, ptr %_26, i64 4
  %k = load i32, ptr %29, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %j)
  %_33.0 = extractvalue { i32, i1 } %30, 0
  %_33.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_33.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33.0, i32 %k)
  %_34.0 = extractvalue { i32, i1 } %31, 0
  %_34.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_34.1, label %panic6, label %bb22

panic5:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d263acf19a4ace00edee6ca274bbfabf) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_30 = icmp eq i32 %_34.0, %n
  br i1 %_30, label %bb23, label %bb18

panic6:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d263acf19a4ace00edee6ca274bbfabf) #22
  unreachable

bb23:                                             ; preds = %bb22
  %32 = load i32, ptr %result, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1)
  %_35.0 = extractvalue { i32, i1 } %33, 0
  %_35.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_35.1, label %panic7, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_35.0, ptr %result, align 4
  br label %bb18

panic7:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c864d5d368c3e9ccc264ebcf508a4e57) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
