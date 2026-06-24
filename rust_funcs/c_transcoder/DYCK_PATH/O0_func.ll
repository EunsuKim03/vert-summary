define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb7725a7b756a5661E"(i32 0, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha59e7770e82b55d1E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 2, i32 %n)
  %_13.0 = extractvalue { i32, i1 } %11, 0
  %_13.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_13.1, label %panic3, label %bb7

bb6:                                              ; preds = %bb2
  %_23 = load i32, ptr %res, align 4
  %_26.0 = add i32 %n, 1
  %_26.1 = icmp ult i32 %_26.0, %n
  br i1 %_26.1, label %panic, label %bb13

bb13:                                             ; preds = %bb6
  %_27 = icmp eq i32 %_26.0, 0
  br i1 %_27, label %panic1, label %bb14

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_02c3669967ad16774096700cfb7764f4) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_28 = icmp eq i32 %_26.0, -1
  %_29 = icmp eq i32 %_23, -2147483648
  %_30 = and i1 %_28, %_29
  br i1 %_30, label %panic2, label %bb15

panic1:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_d0b040e08e871cefe1ddf122eb93520e) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_0 = sdiv i32 %_23, %_26.0
  ret i32 %_0

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_d0b040e08e871cefe1ddf122eb93520e) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_14.0 = sub i32 %_13.0, %i
  %_14.1 = icmp ult i32 %_13.0, %i
  br i1 %_14.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5771ddc9c7ed63b53806b6a390878657) #22
  unreachable

bb8:                                              ; preds = %bb7
  %12 = load i32, ptr %res, align 4
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %12, i32 %_14.0)
  %_15.0 = extractvalue { i32, i1 } %13, 0
  %_15.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_15.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fafce79a386375b762c08ef47b5bd084) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_15.0, ptr %res, align 4
  %_18.0 = add i32 %i, 1
  %_18.1 = icmp ult i32 %_18.0, %i
  br i1 %_18.1, label %panic6, label %bb10

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a48e1b0f8c782dfff2139c5a83641e75) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_19 = icmp eq i32 %_18.0, 0
  br i1 %_19, label %panic7, label %bb11

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cff5aa531cf6eda0ba19718478e9793f) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_20 = icmp eq i32 %_18.0, -1
  %14 = load i32, ptr %res, align 4
  %_21 = icmp eq i32 %14, -2147483648
  %_22 = and i1 %_20, %_21
  br i1 %_22, label %panic8, label %bb12

panic7:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_b1665666ed210949fcbb75d6aab657bb) #22
  unreachable

bb12:                                             ; preds = %bb11
  %15 = load i32, ptr %res, align 4
  %16 = sdiv i32 %15, %_18.0
  store i32 %16, ptr %res, align 4
  br label %bb2

panic8:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b1665666ed210949fcbb75d6aab657bb) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
