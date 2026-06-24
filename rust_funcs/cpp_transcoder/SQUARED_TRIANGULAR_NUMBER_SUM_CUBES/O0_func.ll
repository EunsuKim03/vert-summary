define i32 @f_gold(i32 %s) unnamed_addr #3 {
start:
  %n = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %n, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_5 = load i32, ptr %sum, align 4
  %_4 = icmp slt i32 %_5, %s
  br i1 %_4, label %bb2, label %bb9

bb9:                                              ; preds = %bb1
  store i32 -1, ptr %_0, align 4
  br label %bb10

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %n, align 4
  %_9 = load i32, ptr %n, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_8, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb3

bb10:                                             ; preds = %bb6, %bb9
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb3:                                              ; preds = %bb2
  %_11 = load i32, ptr %n, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_10.0, i32 %_11)
  %_12.0 = extractvalue { i32, i1 } %2, 0
  %_12.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_12.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_764ad2c1d9e09113431e3684a98882fc) #22
  unreachable

bb4:                                              ; preds = %bb3
  %3 = load i32, ptr %sum, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_12.0)
  %_13.0 = extractvalue { i32, i1 } %4, 0
  %_13.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_13.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_764ad2c1d9e09113431e3684a98882fc) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_13.0, ptr %sum, align 4
  %_15 = load i32, ptr %sum, align 4
  %_14 = icmp eq i32 %_15, %s
  br i1 %_14, label %bb6, label %bb7

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bbcaffdce3383b8bc91733a099ced133) #22
  unreachable

bb7:                                              ; preds = %bb5
  %5 = load i32, ptr %n, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %_16.0 = extractvalue { i32, i1 } %6, 0
  %_16.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_16.1, label %panic3, label %bb8

bb6:                                              ; preds = %bb5
  %7 = load i32, ptr %n, align 4
  store i32 %7, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb7
  store i32 %_16.0, ptr %n, align 4
  br label %bb1

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ab3e3c6949c9e5ead463dfb8399007a9) #22
  unreachable
}
