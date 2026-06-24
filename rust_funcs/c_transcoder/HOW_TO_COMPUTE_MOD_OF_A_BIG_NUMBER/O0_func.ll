define i32 @f_gold(ptr align 1 %num.0, i64 %num.1, i32 %a) unnamed_addr #3 {
start:
  %self.i = alloca [8 x i8], align 4
  %_7 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf4e1731a532099c0E"(ptr align 1 %num.0, i64 %num.1) #20
  %_5.0 = extractvalue { ptr, ptr } %0, 0
  %_5.1 = extractvalue { ptr, ptr } %0, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7c31b2b48f6067beE"(ptr %_5.0, ptr %_5.1) #20
  %_4.0 = extractvalue { ptr, ptr } %1, 0
  %_4.1 = extractvalue { ptr, ptr } %1, 1
  store ptr %_4.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_4.1, ptr %2, align 8
  br label %bb3

bb3:                                              ; preds = %bb13, %start
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %3 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4360ea8c7ddc5b5cE"(ptr align 8 %iter) #20
  store i32 %3, ptr %_7, align 4
  %4 = load i32, ptr %_7, align 4
  %5 = icmp eq i32 %4, 1114112
  %_9 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_9 to i1
  br i1 %6, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %c = load i32, ptr %_7, align 4
  %_13 = load i32, ptr %res, align 4
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_13, i32 10)
  %_14.0 = extractvalue { i32, i1 } %7, 0
  %_14.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_14.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
; call core::char::methods::<impl char>::to_digit
  %8 = call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17ha2fffa42e2319d52E"(i32 %c, i32 10) #20
  %_17.0 = extractvalue { i32, i32 } %8, 0
  %_17.1 = extractvalue { i32, i32 } %8, 1
  store i32 %_17.0, ptr %self.i, align 4
  %9 = getelementptr inbounds i8, ptr %self.i, i64 4
  store i32 %_17.1, ptr %9, align 4
  %10 = load i32, ptr %self.i, align 4
  %11 = getelementptr inbounds i8, ptr %self.i, i64 4
  %12 = load i32, ptr %11, align 4
  %_2.i = zext i32 %10 to i64
  %13 = trunc nuw i64 %_2.i to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb8
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_64773157b488c4d1b1f7b80c23025b7b) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit": ; preds = %bb8
  %14 = getelementptr inbounds i8, ptr %self.i, i64 4
  %val.i = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_14.0, i32 %val.i)
  %_18.0 = extractvalue { i32, i1 } %15, 0
  %_18.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_18.1, label %panic1, label %bb11

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_744860fef430952a91da31bc682ea770) #22
  unreachable

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit"
  %_19 = icmp eq i32 %a, 0
  br i1 %_19, label %panic2, label %bb12

panic1:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h19211f8047f8a7c9E.exit"
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9391b4d297a9c755399a77babf439c63) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_20 = icmp eq i32 %a, -1
  %_21 = icmp eq i32 %_18.0, -2147483648
  %_22 = and i1 %_20, %_21
  br i1 %_22, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9391b4d297a9c755399a77babf439c63) #22
  unreachable

bb13:                                             ; preds = %bb12
  %16 = srem i32 %_18.0, %a
  store i32 %16, ptr %res, align 4
  br label %bb3

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_9391b4d297a9c755399a77babf439c63) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
