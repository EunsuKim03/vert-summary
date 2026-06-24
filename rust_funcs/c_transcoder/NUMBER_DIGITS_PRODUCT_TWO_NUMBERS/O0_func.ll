define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #4 {
start:
  %p = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
; call core::num::<impl i32>::abs
  %_5 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17ha225f3fd5a7aa4e5E"(i32 %a) #21
; call core::num::<impl i32>::abs
  %_6 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17ha225f3fd5a7aa4e5E"(i32 %b) #21
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_5, i32 %_6)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb3

bb3:                                              ; preds = %start
  store i32 %_7.0, ptr %p, align 4
  %_9 = load i32, ptr %p, align 4
  %_8 = icmp eq i32 %_9, 0
  br i1 %_8, label %bb4, label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_ebcc3905df9b9c0fb6f048e8ee3492a0) #22
  unreachable

bb5:                                              ; preds = %bb9, %bb3
  %_11 = load i32, ptr %p, align 4
  %_10 = icmp sgt i32 %_11, 0
  br i1 %_10, label %bb6, label %bb10

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb11

bb10:                                             ; preds = %bb5
  %1 = load i32, ptr %count, align 4
  store i32 %1, ptr %_0, align 4
  br label %bb11

bb6:                                              ; preds = %bb5
  %2 = load i32, ptr %count, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_12.1, label %panic1, label %bb7

bb11:                                             ; preds = %bb4, %bb10
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb7:                                              ; preds = %bb6
  store i32 %_12.0, ptr %count, align 4
  %5 = load i32, ptr %p, align 4
  %_15 = icmp eq i32 %5, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic2, label %bb9

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_03d10df805ac438e46ecad242e81f020) #22
  unreachable

bb9:                                              ; preds = %bb7
  %6 = load i32, ptr %p, align 4
  %7 = sdiv i32 %6, 10
  store i32 %7, ptr %p, align 4
  br label %bb5

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_597f544397298845dfac197e82356dd2) #22
  unreachable
}
