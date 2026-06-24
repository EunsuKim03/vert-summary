define i32 @f_gold(ptr align 1 %str1.0, i64 %str1.1, ptr align 1 %str2.0, i64 %str2.1, i32 %k) unnamed_addr #3 {
start:
  %_29 = alloca [16 x i8], align 8
  %_27 = alloca [4 x i8], align 4
  %_25 = alloca [16 x i8], align 8
  %_23 = alloca [4 x i8], align 4
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %common_length = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %_5 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h6ef3a8f4f51a47cfE"(ptr align 1 %str1.0, i64 %str1.1) #20
  %str1_len = trunc i64 %_5 to i32
; call core::str::<impl str>::len
  %_7 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h6ef3a8f4f51a47cfE"(ptr align 1 %str2.0, i64 %str2.1) #20
  %str2_len = trunc i64 %_7 to i32
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %str1_len, i32 %str2_len)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %start
  %_8 = icmp slt i32 %_10.0, %k
  br i1 %_8, label %bb4, label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e74fc019650a18b0db07a29fcba8631d) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 0, ptr %common_length, align 4
  %_15 = call i32 @min(i32 %str1_len, i32 %str2_len)
  %_14 = sext i32 %_15 to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he6c7f3f833643b22E"(i64 0, i64 %_14) #20
  %_12.0 = extractvalue { i64, i64 } %1, 0
  %_12.1 = extractvalue { i64, i64 } %1, 1
  store i64 %_12.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_12.1, ptr %2, align 8
  br label %bb8

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb28

bb8:                                              ; preds = %bb18, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb2eea2a3ccb7c9a7E"(ptr align 8 %iter) #20
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  store i64 %4, ptr %_17, align 8
  %6 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %5, ptr %6, align 8
  %_19 = load i64, ptr %_17, align 8
  %7 = getelementptr inbounds i8, ptr %_17, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = trunc nuw i64 %_19 to i1
  br i1 %9, label %bb11, label %bb19

bb11:                                             ; preds = %bb8
  %10 = getelementptr inbounds i8, ptr %_17, i64 8
  %i = load i64, ptr %10, align 8
; call core::str::<impl str>::chars
  %11 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hde1bb0daf1d0d0d0E"(ptr align 1 %str1.0, i64 %str1.1) #20
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  store ptr %12, ptr %_25, align 8
  %14 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %13, ptr %14, align 8
; call core::iter::traits::iterator::Iterator::nth
  %15 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr align 8 %_25, i64 %i) #20
  store i32 %15, ptr %_23, align 4
; call core::str::<impl str>::chars
  %16 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hde1bb0daf1d0d0d0E"(ptr align 1 %str2.0, i64 %str2.1) #20
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_29, align 8
  %19 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %18, ptr %19, align 8
; call core::iter::traits::iterator::Iterator::nth
  %20 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr align 8 %_29, i64 %i) #20
  store i32 %20, ptr %_27, align 4
; call <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_21 = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h869d9ae51bac05b8E"(ptr align 4 %_23, ptr align 4 %_27) #20
  br i1 %_21, label %bb17, label %bb19

bb19:                                             ; preds = %bb11, %bb8
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 %str1_len)
  %_36.0 = extractvalue { i32, i1 } %21, 0
  %_36.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_36.1, label %panic1, label %bb20

bb17:                                             ; preds = %bb11
  %22 = load i32, ptr %common_length, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 1)
  %_30.0 = extractvalue { i32, i1 } %23, 0
  %_30.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_30.1, label %panic6, label %bb18

bb20:                                             ; preds = %bb19
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_36.0, i32 %str2_len)
  %_37.0 = extractvalue { i32, i1 } %24, 0
  %_37.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_37.1, label %panic2, label %bb21

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3cc0223fdc59bd332d46bee772840a9a) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_39 = load i32, ptr %common_length, align 4
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_39)
  %_40.0 = extractvalue { i32, i1 } %25, 0
  %_40.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_40.1, label %panic3, label %bb22

panic2:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3cc0223fdc59bd332d46bee772840a9a) #22
  unreachable

bb22:                                             ; preds = %bb21
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37.0, i32 %_40.0)
  %_41.0 = extractvalue { i32, i1 } %26, 0
  %_41.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_41.1, label %panic4, label %bb23

panic3:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f327fe77a47e0d6120df22e8b05509a9) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_44 = icmp eq i32 %_41.0, -2147483648
  %_45 = and i1 false, %_44
  br i1 %_45, label %panic5, label %bb25

panic4:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9dbe4732c252702a7647e19bfb45ca1b) #22
  unreachable

bb25:                                             ; preds = %bb23
  %_32 = srem i32 %_41.0, 2
  %_31 = icmp eq i32 %_32, 0
  br i1 %_31, label %bb26, label %bb27

panic5:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_9dbe4732c252702a7647e19bfb45ca1b) #22
  unreachable

bb27:                                             ; preds = %bb25
  store i32 0, ptr %_0, align 4
  br label %bb28

bb26:                                             ; preds = %bb25
  store i32 1, ptr %_0, align 4
  br label %bb28

bb28:                                             ; preds = %bb4, %bb26, %bb27
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb18:                                             ; preds = %bb17
  store i32 %_30.0, ptr %common_length, align 4
  br label %bb8

panic6:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8c37e1541aa2e344e6dffd6d6e3fa5c8) #22
  unreachable

bb10:                                             ; No predecessors!
  unreachable
}
