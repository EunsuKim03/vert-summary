define i32 @f_gold(i32 %base) unnamed_addr #3 {
start:
  %base1 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %base, i32 2)
  %_3.0 = extractvalue { i32, i1 } %0, 0
  %_3.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_3.0, ptr %base1, align 4
  %1 = load i32, ptr %base1, align 4
  %_6 = icmp eq i32 %1, -2147483648
  %_7 = and i1 false, %_6
  br i1 %_7, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7437ba8f6569cf90d451f1c703896070) #22
  unreachable

bb3:                                              ; preds = %bb1
  %2 = load i32, ptr %base1, align 4
  %3 = sdiv i32 %2, 2
  store i32 %3, ptr %base1, align 4
  %_9 = load i32, ptr %base1, align 4
  %_11 = load i32, ptr %base1, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11, i32 1)
  %_12.0 = extractvalue { i32, i1 } %4, 0
  %_12.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_12.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_ce567a1f09add0c0cc4b52a9eb5be58a) #22
  unreachable

bb4:                                              ; preds = %bb3
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_9, i32 %_12.0)
  %_13.0 = extractvalue { i32, i1 } %5, 0
  %_13.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_13.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b750da56ff60ad7ec68a671d6092cd77) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_16 = icmp eq i32 %_13.0, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic5, label %bb7

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_85602bca68bcb15d17c7c625c03e3502) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_0 = sdiv i32 %_13.0, 2
  ret i32 %_0

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_85602bca68bcb15d17c7c625c03e3502) #22
  unreachable
}
