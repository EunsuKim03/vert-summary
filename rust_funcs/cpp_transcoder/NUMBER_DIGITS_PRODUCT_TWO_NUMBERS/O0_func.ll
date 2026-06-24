define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %p = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %a, i32 %b)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl i32>::abs
  %1 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17ha225f3fd5a7aa4e5E"(i32 %_6.0) #21
  store i32 %1, ptr %p, align 4
  %_8 = load i32, ptr %p, align 4
  %_7 = icmp eq i32 %_8, 0
  br i1 %_7, label %bb3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_97acd1531e8ecfd81bb9b8e8fd75e8a8) #19
  unreachable

bb4:                                              ; preds = %bb8, %bb1
  %_10 = load i32, ptr %p, align 4
  %_9 = icmp sgt i32 %_10, 0
  br i1 %_9, label %bb5, label %bb9

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb10

bb9:                                              ; preds = %bb4
  %2 = load i32, ptr %count, align 4
  store i32 %2, ptr %_0, align 4
  br label %bb10

bb5:                                              ; preds = %bb4
  %3 = load i32, ptr %count, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %_11.0 = extractvalue { i32, i1 } %4, 0
  %_11.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_11.1, label %panic1, label %bb6

bb10:                                             ; preds = %bb3, %bb9
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb6:                                              ; preds = %bb5
  store i32 %_11.0, ptr %count, align 4
  %6 = load i32, ptr %p, align 4
  %_14 = icmp eq i32 %6, -2147483648
  %_15 = and i1 false, %_14
  br i1 %_15, label %panic2, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_664b711abcb16e1c2c3175eb1aae2729) #19
  unreachable

bb8:                                              ; preds = %bb6
  %7 = load i32, ptr %p, align 4
  %8 = sdiv i32 %7, 10
  store i32 %8, ptr %p, align 4
  br label %bb4

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e513ff8c1af1f27b02530e290e7bd07f) #19
  unreachable
}
