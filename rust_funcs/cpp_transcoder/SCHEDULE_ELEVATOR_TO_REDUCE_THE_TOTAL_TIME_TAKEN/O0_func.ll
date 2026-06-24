define i32 @f_gold(i32 %n, i32 %k, ptr align 4 %a.0, i64 %a.1) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %f_gold = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd3b458d8fd240d30E"(ptr align 4 %a.0, i64 %a.1) #20
  store i32 0, ptr %f_gold, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf46c0b05e903f6e5E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %0, 0
  %_6.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_6.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %1, align 4
  br label %bb3

bb3:                                              ; preds = %bb13, %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha909d5bcd7ad1a29E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_9, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  %8 = load i32, ptr %7, align 4
  %_11 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_11 to i1
  br i1 %9, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %10, align 4
  %_15 = icmp eq i32 %k, 0
  br i1 %_15, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %f_gold, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_16 = icmp eq i32 %k, -1
  %_17 = icmp eq i32 %i, -2147483648
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_ec12ae67416d12940e6dd43ab2667cf8) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_14 = srem i32 %i, %k
  %_13 = icmp eq i32 %_14, 0
  br i1 %_13, label %bb10, label %bb3

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ec12ae67416d12940e6dd43ab2667cf8) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_21 = sext i32 %i to i64
  %_24 = icmp ult i64 %_21, %a.1
  br i1 %_24, label %bb11, label %panic2

bb11:                                             ; preds = %bb10
  %11 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_21
  %_20 = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_20)
  %_25.0 = extractvalue { i32, i1 } %12, 0
  %_25.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_25.1, label %panic3, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 %a.1, ptr align 8 @alloc_a329828532253b0b81fb05992ca61d3d) #22
  unreachable

bb12:                                             ; preds = %bb11
  %13 = load i32, ptr %f_gold, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 %_25.0)
  %_26.0 = extractvalue { i32, i1 } %14, 0
  %_26.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_26.1, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e601f91119ce91da9f621d32869da4b0) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_26.0, ptr %f_gold, align 4
  br label %bb3

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_86840972ac76d332dd17f43faac526d7) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
