define i32 @f_gold(i32 %s) unnamed_addr #3 {
start:
  %n = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %n, align 4
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %_5 = load i32, ptr %sum, align 4
  %_4 = icmp slt i32 %_5, %s
  br i1 %_4, label %bb2, label %bb8

bb8:                                              ; preds = %bb1
  store i32 -1, ptr %_0, align 4
  br label %bb9

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %n, align 4
  %_8 = load i32, ptr %n, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_7, i32 %_8)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic, label %bb3

bb9:                                              ; preds = %bb5, %bb8
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb3:                                              ; preds = %bb2
  %2 = load i32, ptr %sum, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %_9.0)
  %_10.0 = extractvalue { i32, i1 } %3, 0
  %_10.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_10.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c78d4449804d3fab4f666690693ae90f) #22
  unreachable

bb4:                                              ; preds = %bb3
  store i32 %_10.0, ptr %sum, align 4
  %_12 = load i32, ptr %sum, align 4
  %_11 = icmp eq i32 %_12, %s
  br i1 %_11, label %bb5, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fc6f5d27326f4157531d6173a9d1385a) #22
  unreachable

bb6:                                              ; preds = %bb4
  %4 = load i32, ptr %n, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_13.0 = extractvalue { i32, i1 } %5, 0
  %_13.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_13.1, label %panic2, label %bb7

bb5:                                              ; preds = %bb4
  %6 = load i32, ptr %n, align 4
  store i32 %6, ptr %_0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 %_13.0, ptr %n, align 4
  br label %bb1

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0cfe0392fb606cca4df993062a735698) #22
  unreachable
}
