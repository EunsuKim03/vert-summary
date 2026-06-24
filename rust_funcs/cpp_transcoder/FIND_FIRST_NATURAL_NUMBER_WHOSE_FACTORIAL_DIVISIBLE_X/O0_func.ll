define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %fact = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 1, ptr %i, align 4
  store i32 1, ptr %fact, align 4
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %_5 = load i32, ptr %i, align 4
  %_4 = icmp slt i32 %_5, %x
  br i1 %_4, label %bb2, label %bb8

bb8:                                              ; preds = %bb5, %bb1
  %_0 = load i32, ptr %i, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_6 = load i32, ptr %fact, align 4
  %_7 = load i32, ptr %i, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_6, i32 %_7)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  store i32 %_8.0, ptr %fact, align 4
  %_11 = load i32, ptr %fact, align 4
  %_12 = icmp eq i32 %x, 0
  br i1 %_12, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e36cfd29590c29f28e4a17c1b9b0afbb) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_13 = icmp eq i32 %x, -1
  %_14 = icmp eq i32 %_11, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_ae779d210e9e904ff46978c57d09d849) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_10 = srem i32 %_11, %x
  %_9 = icmp eq i32 %_10, 0
  br i1 %_9, label %bb8, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ae779d210e9e904ff46978c57d09d849) #22
  unreachable

bb6:                                              ; preds = %bb5
  %1 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %_16.0 = extractvalue { i32, i1 } %2, 0
  %_16.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_16.1, label %panic3, label %bb7

bb7:                                              ; preds = %bb6
  store i32 %_16.0, ptr %i, align 4
  br label %bb1

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5e28e87ead0dbcee04c51889434afed6) #22
  unreachable
}
