define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_18 = alloca [16 x i8], align 8
  %_16 = alloca [4 x i8], align 4
  %_13 = alloca [16 x i8], align 8
  %_11 = alloca [4 x i8], align 4
  %j = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i64 0, ptr %i, align 8
; call core::str::<impl str>::len
  %_4 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h88aa45ae66fc86beE"(ptr align 1 %str.0, i64 %str.1) #19
  %_5.0 = sub i64 %_4, 1
  %_5.1 = icmp ult i64 %_4, 1
  br i1 %_5.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i64 %_5.0, ptr %j, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_98fafc55be6e6fbdbc3727cc134592e8) #22
  unreachable

bb3:                                              ; preds = %bb13, %bb2
  %_7 = load i64, ptr %i, align 8
  %_8 = load i64, ptr %j, align 8
  %_6 = icmp ult i64 %_7, %_8
  br i1 %_6, label %bb4, label %bb14

bb14:                                             ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb15

bb4:                                              ; preds = %bb3
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b8487731fb6dc8E"(ptr align 1 %str.0, i64 %str.1) #19
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_13, align 8
  %3 = getelementptr inbounds i8, ptr %_13, i64 8
  store ptr %2, ptr %3, align 8
  %_14 = load i64, ptr %i, align 8
; call core::iter::traits::iterator::Iterator::nth
  %4 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr align 8 %_13, i64 %_14) #19
  store i32 %4, ptr %_11, align 4
; call core::str::<impl str>::chars
  %5 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc9b8487731fb6dc8E"(ptr align 1 %str.0, i64 %str.1) #19
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  store ptr %6, ptr %_18, align 8
  %8 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %7, ptr %8, align 8
  %_19 = load i64, ptr %j, align 8
; call core::iter::traits::iterator::Iterator::nth
  %9 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr align 8 %_18, i64 %_19) #19
  store i32 %9, ptr %_16, align 4
; call core::cmp::PartialEq::ne
  %_9 = call zeroext i1 @_ZN4core3cmp9PartialEq2ne17hb51585412cf75a59E(ptr align 4 %_11, ptr align 4 %_16) #19
  br i1 %_9, label %bb10, label %bb11

bb15:                                             ; preds = %bb10, %bb14
  %10 = load i32, ptr %_0, align 4
  ret i32 %10

bb11:                                             ; preds = %bb4
  %11 = load i64, ptr %i, align 8
  %_20.0 = add i64 %11, 1
  %_20.1 = icmp ult i64 %_20.0, %11
  br i1 %_20.1, label %panic1, label %bb12

bb10:                                             ; preds = %bb4
  store i32 0, ptr %_0, align 4
  br label %bb15

bb12:                                             ; preds = %bb11
  store i64 %_20.0, ptr %i, align 8
  %12 = load i64, ptr %j, align 8
  %_21.0 = sub i64 %12, 1
  %_21.1 = icmp ult i64 %12, 1
  br i1 %_21.1, label %panic2, label %bb13

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5a1e32fc7b90e1af63a5a83e0353f924) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i64 %_21.0, ptr %j, align 8
  br label %bb3

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_daf12df6b61c935bca8cc4c985eeeb77) #22
  unreachable
}
