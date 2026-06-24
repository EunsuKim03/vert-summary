define i32 @f_gold(i32 %s) unnamed_addr #3 {
start:
  %n = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %n, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_6 = load i32, ptr %n, align 4
  %_7 = load i32, ptr %n, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_6, i32 %_7)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %n, align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_8.0, i32 %_9)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic1, label %bb3

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_301ae8c008524e2e449153d6ede0a9f8) #22
  unreachable

bb3:                                              ; preds = %bb2
  %2 = load i32, ptr %sum, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %_10.0)
  %_11.0 = extractvalue { i32, i1 } %3, 0
  %_11.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_11.1, label %panic2, label %bb4

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_301ae8c008524e2e449153d6ede0a9f8) #22
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_11.0, ptr %sum, align 4
  %_13 = load i32, ptr %sum, align 4
  %_12 = icmp eq i32 %_13, %s
  br i1 %_12, label %bb5, label %bb6

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_06825e9b7638a246adad5b936d0eaf83) #22
  unreachable

bb6:                                              ; preds = %bb4
  %_15 = load i32, ptr %sum, align 4
  %_14 = icmp sgt i32 %_15, %s
  br i1 %_14, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  %4 = load i32, ptr %n, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb10

bb8:                                              ; preds = %bb6
  %5 = load i32, ptr %n, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %_16.0 = extractvalue { i32, i1 } %6, 0
  %_16.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_16.1, label %panic3, label %bb9

bb7:                                              ; preds = %bb6
  store i32 -1, ptr %_0, align 4
  br label %bb10

bb9:                                              ; preds = %bb8
  store i32 %_16.0, ptr %n, align 4
  br label %bb1

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0e1cf7f9bb046a2dfa9717e80779c59f) #22
  unreachable

bb10:                                             ; preds = %bb5, %bb7
  %7 = load i32, ptr %_0, align 4
  ret i32 %7
}
